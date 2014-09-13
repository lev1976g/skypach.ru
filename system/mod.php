<?php
/* 
	Appointment: ����������� �������
	File: mod.php 
 
*/
if(!defined('MOZG'))
	die('Hacking attempt!');

if(isset($_GET['go']))
	$go = htmlspecialchars(strip_tags(stripslashes(trim(urldecode(mysql_escape_string($_GET['go']))))));
else
	$go = "main";

$mozg_module = $go;

check_xss();

switch($go){
	
	//�����������
	case "register":
		include ENGINE_DIR.'/modules/register.php';
	break;

	
	//������� ������������
	case "profile":
		$spBar = true;
		include ENGINE_DIR.'/modules/profile.php';
	break;

	//����
	case "loto":
 	include ENGINE_DIR.'/modules/loto.php';
	break;

	//ADS
	case "ads":
 	include ENGINE_DIR.'/modules/ads.php';
	break;

 //developers
 case "developers":
  
  include ENGINE_DIR.'/modules/developers.php';
 break;

	//�������������� ���� ��������
	case "editprofile":
		$spBar = true;
		include ENGINE_DIR.'/modules/editprofile.php';
	break;

	//����� ���� realtime
	case "leftmenu":
		include ENGINE_DIR.'/modules/leftmenu.php';
	break;
	
	//�������� �������
	case "loadcity":
		include ENGINE_DIR.'/modules/loadcity.php';
	break;

	//���
	case "chat":
		include ENGINE_DIR.'/modules/mchat.php';
	break;

//������
	case "audio":
		if($config['audio_mod'] == 'yes')
			include ENGINE_DIR.'/modules/audio.php';
		else {
			$spBar = true;
			$user_speedbar = '����������';
			msgbox('', '������ ��������.', 'info');
		}
	break;

	//����������
	case "apps":
		$cssTpl = true;
		$css_loading = 'apps';
		include ENGINE_DIR.'/modules/apps.php';
	break;
	
	// �������� ����������
    case "delete_app":;
    $id = intval($_POST['id']);
    if($id){
        $sql_ = $db->super_query("SELECT id, flash, img FROM `".PREFIX."_apps` WHERE id = '$id' ");
        $db->super_query("DELETE FROM `".PREFIX."_apps` WHERE id = '$id'"); 
        $del_dir = '/uploads/apps/'.$sql_['id'].'/';
        @unlink($del_dir.$sql_['flash']);
        @unlink($del_dir.$sql_['img']);    
}
	//���. ����������
	case "editapp":
		$cssTpl = true;
		$css_loading = 'apps_edit';
		include ENGINE_DIR.'/modules/editapp.php';
	break;

	
	//�������
	case "albums":
		$spBar = true;
		if($config['album_mod'] == 'yes')
			include ENGINE_DIR.'/modules/albums.php';
		else {
			$user_speedbar = '����������';
			msgbox('', '������ ��������.', 'info');
		}
	break;

	//��������
	case "graffiti":
		include ENGINE_DIR.'/modules/graffiti.php';
	break;

	//�������� ����������
	case "photo":
		include ENGINE_DIR.'/modules/photo.php';
	break;
	
	//������
	case "friends":
		$spBar = true;
		include ENGINE_DIR.'/modules/friends.php';
	break;
	
	//��������
	case "fave":
		$spBar = true;
		include ENGINE_DIR.'/modules/fave.php';
	break;

	//��
	case "vklogin":
		include ENGINE_DIR.'/modules/vklogin.php';
	break;
	
	//���������
	case "messages":
		$spBar = true;
		include ENGINE_DIR.'/modules/messages.php';
	break;
	
	//�������
	case "im":
		include ENGINE_DIR.'/modules/im.php';
	break;

	//�������
	case "notes":
		$spBar = true;
		include ENGINE_DIR.'/modules/notes.php';
	break;
	
	//��������
	case "subscriptions":
		include ENGINE_DIR.'/modules/subscriptions.php';
	break;
	
	//�����
	case "videos":
		$spBar = true;
		if($config['video_mod'] == 'yes')
			include ENGINE_DIR.'/modules/videos.php';
		else {
			$user_speedbar = '����������';
			msgbox('', '������ ��������.', 'info');
		}
	break;
	
	//�����
	case "search":
		include ENGINE_DIR.'/modules/search.php';
	break;
	
	//�����
	case "wall":
		$spBar = true;
		include ENGINE_DIR.'/modules/wall.php';
	break;
	
	//������
	case "status":
		include ENGINE_DIR.'/modules/status.php';
	break;
	
	//�������
	case "news":
		$spBar = true;
		include ENGINE_DIR.'/modules/news.php';
	break;
	
	//���������
	case "settings":
		include ENGINE_DIR.'/modules/settings.php';
	break;
	
	//������
	case "support":
		include ENGINE_DIR.'/modules/support.php';
	break;
	
	//�������������� �������
	case "restore":
		include ENGINE_DIR.'/modules/restore.php';
	break;
	
	//�������� �������� ��� ������������ ������ �� �����, �������, ��� ���������
	case "attach":
		include ENGINE_DIR.'/modules/attach.php';
	break;
	
	//���� �����
	case "blog":
		$spBar = true;
		include ENGINE_DIR.'/modules/blog.php';
	break;

	//Inline ���
	case "im_chat":
		include ENGINE_DIR.'/modules/im_chat.php';
	break;

	//������
	case "balance":
		include ENGINE_DIR.'/modules/balance.php';
	break;
	
	//�������
	case "gifts":
		include ENGINE_DIR.'/modules/gifts.php';
	break;

	//����������
	case "groups":
		include ENGINE_DIR.'/modules/groups.php';
	break;
	
	//���������� -> ��������� ��������
	case "public":
		$spBar = true;
		include ENGINE_DIR.'/modules/public.php';
	break;

	//���������� -> ��������� �������� -> ����������
	case "groups_forum":
		include ENGINE_DIR.'/modules/groups_forum.php';
	break;

	//���������� -> �������� ����
	case "attach_groups":
		include ENGINE_DIR.'/modules/attach_groups.php';
	break;

	//����� � ����
	case "audio_player":
		if($config['audio_mod'] == 'yes')
			include ENGINE_DIR.'/modules/audio_player.php';
		else {
			$spBar = true;
			$user_speedbar = '����������';
			msgbox('', '������ ��������.', 'info');
		}
	break;



	//����������� ��������
	case "static":
		include ENGINE_DIR.'/modules/static.php';
	break;

	//������ � ����
	case "ajaxfriends":
		include ENGINE_DIR.'/modules/ajaxfriends.php';
	break;

	//��������� � ����
	case "ajaxmsg":
		include ENGINE_DIR.'/modules/ajaxmsg.php';
	break;

	//�������� �������� �� ����
	case "distinguish":
		include ENGINE_DIR.'/modules/distinguish.php';
	break;

	//�������� ���� ��� �������� ������
	case "happy_friends_block_hide":
		$_SESSION['happy_friends_block_hide'] = 1;
		die();
	break;

	//�������� ���� ��� �������� ������
	case "fast_search":
		include ENGINE_DIR.'/modules/fast_search.php';
	break;

	//������
	case "report":
		include ENGINE_DIR.'/modules/report.php';
	break;

	// ������
	case "alias":
	$spBar = true;
    $alias = $db->safesql($_GET['url']);
	if($alias){
 	$alias_public = $db->super_query("SELECT id,title FROM `".PREFIX."_communities` WHERE adres = '".$alias."' "); //��������� ������ � ��������� �������
	$alias_user = $db->super_query("SELECT user_id, user_search_pref FROM `".PREFIX."_users` WHERE alias = '".$alias."'"); // ��������� ������ � �������������
    if($alias_user){   			
	    $_GET['id']= $alias_user['user_id'];
	    include ENGINE_DIR.'/modules/profile.php';
		}elseif($alias_public){   		
		$_GET['pid']= $alias_public['id'];
		include ENGINE_DIR.'/modules/public.php';
	}else{
	$spBar = true;
			$user_speedbar = '����������';
			msgbox('', '�������� ��� <b>'.$alias.'</b> �������� ��� �����������.', 'info');
	}
	}
    break;	



	//�������� ������ � ���������� ��� �����
	case "repost":
		include ENGINE_DIR.'/modules/repost.php';
	break;

	//������������ ����������
	case "updates":
		include ENGINE_DIR.'/modules/updates.php';
	break;

	//���������
	case "doc":
		include ENGINE_DIR.'/modules/doc.php';
	break;

	//������
	case "votes":
		include ENGINE_DIR.'/modules/votes.php';
	break;
	
	//���������� -> ��������� �������� -> �����������
	case "public_audio":
		include ENGINE_DIR.'/modules/public_audio.php';
	break;

	//���������� -> ��������� �������� -> �����������
	case "public_videos":
		include ENGINE_DIR.'/modules/public_videos.php';
	break;

	//���������� -> ��������� �������� -> �������� ������
	case "public_photos":
		include ENGINE_DIR.'/modules/public_photos.php';
	break;



//�������
case "rating":
include ENGINE_DIR.'/modules/rating.php';
break;

		default:
			$spBar = true;
			
			/*if($logged)
				header("Location: /u{$user_info['user_id']}");
			else*/
				if($go != 'main')
					msgbox('', $lang['no_str_bar'], 'info');
}

if(!$metatags['title'])
	$metatags['title'] = $config['home'];
	
if($user_speedbar) 
	$speedbar = $user_speedbar;
else 
	$speedbar = $lang['welcome'];

$headers = '<title>'.$metatags['title'].'</title>
<meta name="generator" content="TOEngine" />
<meta http-equiv="content-type" content="text/html; charset=windows-1251" />';
?>