<?php
/* 
	Appointment: Гости пользователя
	File: guests.php 
 
*/
if(!defined('MOZG'))
	die('Hacking attempt!');

//Если страница вызвана через AJAX то включаем защиту, чтоб не могли обращаться напрямую к странице
if($ajax == 'yes')
	NoAjaxQuery();

if($logged){
	$act = $_GET['act'];
	$metatags['title'] = 'Гости';

	if($_GET['page'] > 0) $page = intval($_GET['page']); else $page = 1;
	$gcount = 20;
	$limit_page = ($page-1)*$gcount;
				
	switch($act){
		
		//################### Чистим счетчик гостей ###################//
		case "clear":
			$user_id = intval($user_info['user_id']);
                        $sql_guests = $db->super_query("SELECT SQL_CALC_FOUND_ROWS see_guests FROM `".PREFIX."_users` WHERE user_id = '{$user_id}'");
			if($sql_guests){

				$db->query("UPDATE LOW_PRIORITY `".PREFIX."_users` SET see_guests = '' WHERE user_id = '{$user_id}'");	
                         }else{
				msgbox('', 'Еще никто не заходил к вам в гости :(', 'info_2');
                              }
		break;
		

			default:
				


					

				//################### Просмотр всех друзей ###################//
				$get_user_id = intval($_GET['user_id']);
				if(!$get_user_id)
					$get_user_id = intval($user_info['user_id']);
					
				$sql_guests = $db->super_query("SELECT SQL_CALC_FOUND_ROWS user_name, see_guests FROM `".PREFIX."_users` WHERE user_id = '{$get_user_id}'");
			        if($sql_guests){
                                        $gram_name = gramatikName($sql_guests['user_name']);
                                        $tpl->load_template('guests/head.tpl');
                                        $tpl->set('{name}', $gram_name);
					$tpl->set('{user-id}', $get_user_id);
					if($get_user_id == $user_info['user_id']){
						$tpl->set('[owner]', '');
						$tpl->set('[/owner]', '');
						$tpl->set_block("'\\[not-owner\\](.*?)\\[/not-owner\\]'si","");
					} else {
						$tpl->set('[not-owner]', '');
						$tpl->set('[/not-owner]', '');
						$tpl->set_block("'\\[owner\\](.*?)\\[/owner\\]'si","");
					}
						
					$tpl->compile('info');
				$guests_num = count(array_unique(explode('|',$sql_guests['see_guests']))) - 1;
	
				$guests_arr = array_unique(explode('|',$sql_guests['see_guests']));
                                foreach($guests_arr as $guest_id) {		
				$sql_ = $db->super_query("SELECT SQL_CALC_FOUND_ROWS user_id, user_country_city_name, user_search_pref, user_birthday, user_photo, user_last_visit FROM `".PREFIX."_users` WHERE user_id = '{$guest_id}' ORDER by rand() DESC LIMIT {$limit_page}, {$gcount}", 1);

						if($sql_){
							$tpl->load_template('guests/friend.tpl');
							foreach($sql_ as $row){
								$user_country_city_name = explode('|', $row['user_country_city_name']);
								$tpl->set('{country}', $user_country_city_name[0]);
									
								if($user_country_city_name[1])
									$tpl->set('{city}', ', '.$user_country_city_name[1]);
								else
									$tpl->set('{city}', '');
										
								$tpl->set('{user-id}', $row['user_id']);
								$tpl->set('{name}', $row['user_search_pref']);
									
								if($row['user_photo'])
									$tpl->set('{ava}', $config['home_url'].'uploads/users/'.$row['user_id'].'/100_'.$row['user_photo']);
								else
									$tpl->set('{ava}', '{theme}/images/100_no_ava.png');
								
								if($row['user_last_visit'] >= $online_time)
									$tpl->set('{online}', $lang['online']);
								else
									$tpl->set('{online}', '');
								
								//Возраст юзера
								$user_birthday = explode('-', $row['user_birthday']);
								$tpl->set('{age}', user_age($user_birthday[0], $user_birthday[1], $user_birthday[2]));
	
								if($row['user_id'] == $user_info['user_id'])
									$tpl->set_block("'\\[viewer\\](.*?)\\[/viewer\\]'si","");
								else {
									$tpl->set('[viewer]', '');
									$tpl->set('[/viewer]', '');
                                                                 if($get_user_id == $user_info['user_id']){
					                        $tpl->set('[owner]', '');
					                        $tpl->set('[/owner]', '');
					                        $tpl->set_block("'\\[not-owner\\](.*?)\\[/not-owner\\]'si","");

                                                                 } else {
					                        $tpl->set('[not-owner]', '');
					                        $tpl->set('[/not-owner]', '');
					                        $tpl->set_block("'\\[owner\\](.*?)\\[/owner\\]'si","");
				                                }
								}

								$tpl->compile('content');
							}
							navigation($gcount, $guests_num, $config['home_url'].'guests/'.$get_user_id.'/page/');
						}
					}
                                        }

	}
	$db->free();
	$tpl->clear();
} else {
	$user_speedbar = 'Информация';
	msgbox('', $lang['not_logged'], 'info');
}
?>
