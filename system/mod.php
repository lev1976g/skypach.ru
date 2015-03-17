<?php
/* 
	Appointment: Ïîäêëþ÷åíèå ìîäóëåé
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
	
	//Ðåãèñòðàöèÿ
	case "register":
		include ENGINE_DIR.'/modules/register.php';
	break;

	
	//Ïðîôèëü ïîëüçîâàòåëÿ
	case "profile":
		$spBar = true;
		include ENGINE_DIR.'/modules/profile.php';
	break;

	//Ëîòî
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

	//Ðåäàêòèðîâàíèå ìîåé ñòðàíèöû
	case "editprofile":
		$spBar = true;
		include ENGINE_DIR.'/modules/editprofile.php';
	break;

	//ëåâîå ìåíþ realtime
	case "leftmenu":
		include ENGINE_DIR.'/modules/leftmenu.php';
	break;
	
	//Çàãðóçêà ãîðîäîâ
	case "loadcity":
		include ENGINE_DIR.'/modules/loadcity.php';
	break;

	//÷àò
	case "chat":
		include ENGINE_DIR.'/modules/mchat.php';
	break;

//Ìóçûêà
	case "audio":
		if($config['audio_mod'] == 'yes')
			include ENGINE_DIR.'/modules/audio.php';
		else {
			$spBar = true;
			$user_speedbar = 'Èíôîðìàöèÿ';
			msgbox('', 'Ñåðâèñ îòêëþ÷åí.', 'info');
		}
	break;

	//Ïðèëîæåíèÿ
	case "apps":
		$cssTpl = true;
		$css_loading = 'apps';
		include ENGINE_DIR.'/modules/apps.php';
	break;
	
	// Óäàëåíèå ïðèëîæåíèÿ
    case "delete_app":;
    $id = intval($_POST['id']);
    if($id){
        $sql_ = $db->super_query("SELECT id, flash, img FROM `".PREFIX."_apps` WHERE id = '$id' ");
        $db->super_query("DELETE FROM `".PREFIX."_apps` WHERE id = '$id'"); 
        $del_dir = '/uploads/apps/'.$sql_['id'].'/';
        @unlink($del_dir.$sql_['flash']);
        @unlink($del_dir.$sql_['img']);    
}
	//Ðåä. Ïðèëîæåíèÿ
	case "editapp":
		$cssTpl = true;
		$css_loading = 'apps_edit';
		include ENGINE_DIR.'/modules/editapp.php';
	break;

	
	//Àëüáîìû
	case "albums":
		$spBar = true;
		if($config['album_mod'] == 'yes')
			include ENGINE_DIR.'/modules/albums.php';
		else {
			$user_speedbar = 'Èíôîðìàöèÿ';
			msgbox('', 'Ñåðâèñ îòêëþ÷åí.', 'info');
		}
	break;

	//Ãðàôôèòè
	case "graffiti":
		include ENGINE_DIR.'/modules/graffiti.php';
	break;

	//Ïðîñìîòð ôîòîãðàôèè
	case "photo":
		include ENGINE_DIR.'/modules/photo.php';
	break;
	
	//Äðóçüÿ
	case "friends":
		$spBar = true;
		include ENGINE_DIR.'/modules/friends.php';
	break;
	
	//Çàêëàäêè
	case "fave":
		$spBar = true;
		include ENGINE_DIR.'/modules/fave.php';
	break;

	//Âê
	case "vklogin":
		include ENGINE_DIR.'/modules/vklogin.php';
	break;
	
	//Ñîîáùåíèÿ
	case "messages":
		$spBar = true;
		include ENGINE_DIR.'/modules/messages.php';
	break;
	
	//Äèàëîãè
	case "im":
		include ENGINE_DIR.'/modules/im.php';
	break;

	//Çàìåòêè
	case "notes":
		$spBar = true;
		include ENGINE_DIR.'/modules/notes.php';
	break;
	
	//Ïîäïèñêè
	case "subscriptions":
		include ENGINE_DIR.'/modules/subscriptions.php';
	break;
	
	//Âèäåî
	case "videos":
		$spBar = true;
		if($config['video_mod'] == 'yes')
			include ENGINE_DIR.'/modules/videos.php';
		else {
			$user_speedbar = 'Èíôîðìàöèÿ';
			msgbox('', 'Ñåðâèñ îòêëþ÷åí.', 'info');
		}
	break;
	
	//Ïîèñê
	case "search":
		include ENGINE_DIR.'/modules/search.php';
	break;
	
	//Ñòåíà
	case "wall":
		$spBar = true;
		include ENGINE_DIR.'/modules/wall.php';
	break;
	
	//Ñòàòóñ
	case "status":
		include ENGINE_DIR.'/modules/status.php';
	break;
	
	//Íîâîñòè
	case "news":
		$spBar = true;
		include ENGINE_DIR.'/modules/news.php';
	break;
	
	//Íàñòðîéêè
	case "settings":
		include ENGINE_DIR.'/modules/settings.php';
	break;
	
	//Ïîìîùü
	case "support":
		include ENGINE_DIR.'/modules/support.php';
	break;
	
	//Âîîñòàíîâëåíèå äîñòóïà
	case "restore":
		include ENGINE_DIR.'/modules/restore.php';
	break;
	
	//Çàãðóçêà êàðòèíîê ïðè ïðèêðèïëåíèè ôàéëîâ ñî ñòåíû, çàìåòîê, èëè ñîîáùåíèé
	case "attach":
		include ENGINE_DIR.'/modules/attach.php';
	break;
	
	//Áëîã ñàéòà
	case "blog":
		$spBar = true;
		include ENGINE_DIR.'/modules/blog.php';
	break;

	//Inline ÷àò
	case "im_chat":
		include ENGINE_DIR.'/modules/im_chat.php';
	break;

	//Áàëàíñ
	case "balance":
		include ENGINE_DIR.'/modules/balance.php';
	break;
	
	//Ïîäàðêè
	case "gifts":
		include ENGINE_DIR.'/modules/gifts.php';
	break;

	//Ñîîáùåñòâà
	case "groups":
		include ENGINE_DIR.'/modules/groups.php';
	break;
	
	//Ñîîáùåñòâà -> Ïóáëè÷íûå ñòðàíèöû
	case "public":
		$spBar = true;
		include ENGINE_DIR.'/modules/public.php';
	break;

	//Ñîîáùåñòâà -> Ïóáëè÷íûå ñòðàíèöû -> Îáñóæäåíèÿ
	case "groups_forum":
		include ENGINE_DIR.'/modules/groups_forum.php';
	break;

	//Ñîîáùåñòâà -> Çàãðóçêà ôîòî
	case "attach_groups":
		include ENGINE_DIR.'/modules/attach_groups.php';
	break;

	//Ïëååð â îêíå
	case "audio_player":
		if($config['audio_mod'] == 'yes')
			include ENGINE_DIR.'/modules/audio_player.php';
		else {
			$spBar = true;
			$user_speedbar = 'Èíôîðìàöèÿ';
			msgbox('', 'Ñåðâèñ îòêëþ÷åí.', 'info');
		}
	break;



	//Ñòàòè÷åñêèå ñòðàíèöû
	case "static":
		include ENGINE_DIR.'/modules/static.php';
	break;

	//Çàÿâêè â Àÿêñ
	case "ajaxfriends":
		include ENGINE_DIR.'/modules/ajaxfriends.php';
	break;

	//Ñîîáùåíèÿ â Àÿêñ
	case "ajaxmsg":
		include ENGINE_DIR.'/modules/ajaxmsg.php';
	break;

	//Âûäåëèòü ÷åëîâåêà íà ôîòî
	case "distinguish":
		include ENGINE_DIR.'/modules/distinguish.php';
	break;

	//Ñêðûâàåì áëîê Äíè ðîæäåíüÿ äðóçåé
	case "happy_friends_block_hide":
		$_SESSION['happy_friends_block_hide'] = 1;
		die();
	break;

	//Ñêðûâàåì áëîê Äíè ðîæäåíüÿ äðóçåé
	case "fast_search":
		include ENGINE_DIR.'/modules/fast_search.php';
	break;

	//Æàëîáû
	case "report":
		include ENGINE_DIR.'/modules/report.php';
	break;

	// Àëèàñû
	case "alias":
	$spBar = true;
    $alias = $db->safesql($_GET['url']);
	if($alias){
 	$alias_public = $db->super_query("SELECT id,title FROM `".PREFIX."_communities` WHERE adres = '".$alias."' "); //Ïðîâåðÿåì àäðåñà ó ïóáëè÷íûõ ñòðàíèö
	$alias_user = $db->super_query("SELECT user_id, user_search_pref FROM `".PREFIX."_users` WHERE alias = '".$alias."'"); // Ïðîâåðÿåì àäðåñà ó ïîëüçîâàòåëåé
    if($alias_user){   			
	    $_GET['id']= $alias_user['user_id'];
	    include ENGINE_DIR.'/modules/profile.php';
		}elseif($alias_public){   		
		$_GET['pid']= $alias_public['id'];
		include ENGINE_DIR.'/modules/public.php';
	}else{
	$spBar = true;
			$user_speedbar = 'Èíôîðìàöèÿ';
			msgbox('', 'Äîìåííîå èìÿ <b>'.$alias.'</b> ñâîáîäíî äëÿ ðåãèñòðàöèè.', 'info');
	}
	}
    break;	



	//Îòïðàâêà çàïèñè â ñîîáùåñòâî èëè äðóãó
	case "repost":
		include ENGINE_DIR.'/modules/repost.php';
	break;

	//Ìîìåíòàëüíûå îïîâåùàíèÿ
	case "updates":
		include ENGINE_DIR.'/modules/updates.php';
	break;

	//Äîêóìåíòû
	case "doc":
		include ENGINE_DIR.'/modules/doc.php';
	break;

	//Îïðîñû
	case "votes":
		include ENGINE_DIR.'/modules/votes.php';
	break;
	
	//Ñîîáùåñòâà -> Ïóáëè÷íûå ñòðàíèöû -> Àóäèîçàïèñè
	case "public_audio":
		include ENGINE_DIR.'/modules/public_audio.php';
	break;

	//Ñîîáùåñòâà -> Ïóáëè÷íûå ñòðàíèöû -> Âèäåîçàïèñè
	case "public_videos":
		include ENGINE_DIR.'/modules/public_videos.php';
	break;

	//Ñîîáùåñòâà -> Ïóáëè÷íûå ñòðàíèöû -> Îñíîâíîé àëüáîì
	case "public_photos":
		include ENGINE_DIR.'/modules/public_photos.php';
	break;



//Ðåéòèíã
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
<meta name="generator" content="Soc Engine" />
<meta http-equiv="content-type" content="text/html; charset=windows-1251" />';
?>
