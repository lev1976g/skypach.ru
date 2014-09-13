<?php
/* 
	Appointment: Сообщества -> Публичные страницы -> Основной альбом
	File: public_photos.php 
	Author: Excalibur
	Engine: Vii Engine
	ICQ: 525511
	URL: http://soc-book.ru/ or http://lineage18.ru/
	Данный код защищен авторскими правами
*/
if(!defined('MOZG'))
	die('Hacking attempt!');

if($logged){

	$act = $_GET['act'];
	$user_id = $user_info['user_id'];
	
	switch($act){
		
		
		//################### Удаление фото ###################//
		case "del":
			
			NoAjaxQuery();
			
			$pid = intval($_POST['pid']);
			$id = intval($_POST['id']);
			
			$infoGroup = $db->super_query("SELECT admin FROM `".PREFIX."_communities` WHERE id = '{$pid}'");
			
			if(strpos($infoGroup['admin'], "u{$user_id}|") !== false) $public_admin = true;
			else $public_admin = false;
			
			$row = $db->super_query("SELECT public_id, photo, add_date FROM `".PREFIX."_communities_photos` WHERE id = '{$id}'");
			
			if($public_admin AND $row['public_id'] == $pid){
				
				//Директория загрузки фото
				$upload_dir = ROOT_DIR.'/uploads/videos/'.$row['owner_user_id'];
				
				$expPho = end(explode('/', $row['photo']));
				@unlink($upload_dir.'/'.$expPho);
				
				$db->query("DELETE FROM `".PREFIX."_communities_photo` WHERE id = '{$id}'");

				$db->query("UPDATE `".PREFIX."_communities` SET videos_num = videos_num - 1 WHERE id = '{$pid}'");
				
				
			}
			
			die();
			
		break;
		
		
		//################### Страница всех фоток ###################//
		default:
			
			$metatags['title'] = 'Основной альбом сообщества';
			
			$pid = intval($_GET['pid']);
			
			$sql_limit = 20;
			
			if($_POST['page'] > 0) $page_cnt = intval($_POST['page']) * $sql_limit;
			else $page_cnt = 0;
			
			if($page_cnt)
				NoAjaxQuery();
			
			$infoGroup = $db->super_query("SELECT photos_num, adres, admin FROM `".PREFIX."_communities` WHERE id = '{$pid}'");
			
			if(strpos($infoGroup['admin'], "u{$user_id}|") !== false) $public_admin = true;
			else $public_admin = false;
				
			if($infoGroup['photos_num']){
			
				$sql_ = $db->super_query("SELECT id, public_id, add_date, photo FROM `".PREFIX."_communities_photos` WHERE public_id = '{$pid}' ORDER by `add_date` DESC LIMIT {$page_cnt}, {$sql_limit}", 1);
				
				if($sql_){

					$tpl->load_template('public_photos/photo.tpl');
					
					$tpl->result['content'] .= '<div id="allGrAudis">';
				
					foreach($sql_ as $row){

						$tpl->set('{photo}', stripslashes($row['photo']));
						$tpl->set('{title}', stripslashes($row['title']));
						$tpl->set('{id}', $row['id']);
						$tpl->set('{pid}', $pid);
						
						if($row['descr'])
							$tpl->set('{descr}', stripslashes($row['descr']).'...');
						else
							$tpl->set('{descr}', '');
							
						$tpl->set('{comm}', $row['comm_num'].' '.gram_record($row['comm_num'], 'comments'));
						megaDate(strtotime($row['add_date']));
						
						//Права админа
						if($public_admin){
						
							$tpl->set('[admin-group]', '');
							$tpl->set('[/admin-group]', '');
							$tpl->set_block("'\\[all-users\\](.*?)\\[/all-users\\]'si","");
							
						} else {
						
							$tpl->set_block("'\\[admin-group\\](.*?)\\[/admin-group\\]'si","");
							$tpl->set('[all-users]', '');
							$tpl->set('[/all-users]', '');
							
						}
						
						$tpl->compile('content');
						
					}
					
					if($infoGroup['photos_num'] > $sql_limit AND !$page_cnt)
						$tpl->result['content'] .= '<div id="ListAudioAddedLoadAjax"></div><div class="cursor_pointer" style="margin-top:-4px" onClick="ListAudioAddedLoadAjax()" id="wall_l_href_se_audiox"><div class="public_wall_all_comm profile_hide_opne" style="width:754px" id="wall_l_href_audio_se_loadx">Показать больше фотографий</div></div>';
						
					$tpl->result['content'] .= '</div>';
				
				}
				
			}
				
			if(!$page_cnt){
				
				$tpl->load_template('public_photos/top.tpl');
				$tpl->set('{pid}', $pid);
					
				if($infoGroup['adres']) $tpl->set('{adres}', $infoGroup['adres']);
				else $tpl->set('{adres}', 'public'.$pid);
						
				if($infoGroup['photos_num']) $tpl->set('{videos-num}', $infoGroup['photos_num'].' <span id="langNumricAll"></span>');
				else $tpl->set('{photos-num}', 'Нет фотографий');
					
				$tpl->set('{x-photos-num}', $infoGroup['photos_num']);
					
				if(!$infoGroup['photos_num']){
				
					$tpl->set('[no]', '');
					$tpl->set('[/no]', '');
					$tpl->set_block("'\\[yes\\](.*?)\\[/yes\\]'si","");
					
				} else {
				
					$tpl->set('[yes]', '');
					$tpl->set('[/yes]', '');
					$tpl->set_block("'\\[no\\](.*?)\\[/no\\]'si","");
				}
				
				$tpl->compile('info');
				
			}
			
			if($page_cnt){
			
				AjaxTpl();
				die();
				
			}
			
	}
	
	$tpl->clear();
	$db->free();
	
} else {

	$user_speedbar = 'Информация';
	msgbox('', $lang['not_logged'], 'info');
	
}
?>