<?php
/*
=====================================================
 Модуль MemChat v.1.4
=====================================================
 Автор MSW
 Сайт поддержки: http://0-web.ru/
=====================================================
*/

define('DATALIFEENGINE', true);
define('ROOT_DIR', '../..');
define('ENGINE_DIR', 'system');

if($_POST['edit']) {
	@error_reporting ( E_ALL ^ E_WARNING ^ E_NOTICE );
	@ini_set ( 'display_errors', true );
	@ini_set ( 'html_errors', false );
	@ini_set ( 'error_reporting', E_ALL ^ E_WARNING ^ E_NOTICE );
	@session_start();

	include ENGINE_DIR . '/data/config.php';
	require_once ENGINE_DIR . '/classes/mysql.php';
	require_once ENGINE_DIR . '/data/db.php';
	require_once ENGINE_DIR . '/modules/functions.php';
	require_once ENGINE_DIR . '/modules/login.php';
//	require_once ENGINE_DIR . '/init.php';
	@header("Content-type: text/css; charset={$config['charset']}");
}

include ENGINE_DIR . 'system/data/config.memchat.php';

#*** Тип кеширования
if($memchat_conf['cache']=="mem") {
	$memcache = new Memcache;
	$memcache->connect($memchat_conf['mem_host'], $memchat_conf['mem_port']);
	$mem_name = $memchat_conf['cache_name'];
} else {
	$mem_name = "system/cache/temp/".$memchat_conf['cache_name'];
}

#****** Добавление сообщения ******#
if($_POST['edit'] == 1) {
	if($is_logged && $member_id['restricted']==0) {
		require_once ENGINE_DIR.'/classes/parse.php';
		$parse = new ParseFilter( );
		$parse->safe_mode = true;

		$message = addslashes($parse->BB_Parse(iconv("utf-8","windows-1251",strip_tags($_POST['message'])), false));

		if(iconv_strlen($message) >= $memchat_conf['text_numm']) {
			#****** Смайлы *** start ******#
			$s = $r = array();
			for ($i = 1, $len = 9; $i < $len; $i++) {
				$s[$i] = "/\[S:{$i}\]/";
				$r[$i] = "<img src=\"/uploads/smiles/{$i}.gif\" style=\"border:none;\" align=\"absmiddle\" alt=\"{$i}\">";
			}

			#****** Текстовый эквивалент ******#
			$s[] = "/:\)/";
			$r[] = "<img src=\"/uploads/smiles/1.gif\" style=\"border:none;\" align=\"absmiddle\" alt=\":)\">";
			$s[] = "/=\)/";
			$r[] = "<img src=\"/uploads/smiles/1.gif\" style=\"border:none;\" align=\"absmiddle\" alt=\":)\">";
			$s[] = "/\(:/";
			$r[] = "<img src=\"/uploads/smiles/1.gif\" style=\"border:none;\" align=\"absmiddle\" alt=\":)\">";
			$s[] = "/\(=/";
			$r[] = "<img src=\"/uploads/smiles/1.gif\" style=\"border:none;\" align=\"absmiddle\" alt=\":)\">";
			$s[] = "/:\(/";
			$r[] = "<img src=\"/uploads/smiles/2.gif\" style=\"border:none;\" align=\"absmiddle\" alt=\":(\">";
			$s[] = "/=\(/";
			$r[] = "<img src=\"/uploads/smiles/2.gif\" style=\"border:none;\" align=\"absmiddle\" alt=\":(\">";
			$s[] = "/\):/";
			$r[] = "<img src=\"/uploads/smiles/2.gif\" style=\"border:none;\" align=\"absmiddle\" alt=\":(\">";
			$s[] = "/\)=/";
			$r[] = "<img src=\"/uploads/smiles/2.gif\" style=\"border:none;\" align=\"absmiddle\" alt=\":(\">";

			$message = preg_replace($s, $r, $message, 1);
			#****** Смайлы *** stop  ******#

			$db->query("INSERT INTO ".PREFIX."_mchat (name, uid, gid, message, date) VALUES ('{$member_id['name']}', '{$member_id['user_id']}', '{$member_id['user_group']}', '{$message}', '".time()."')");

			#*** Тип кеширования
			if($memchat_conf['cache']=="mem") {
				$memcache->set($mem_name, "");
			} else {
				create_cache($mem_name,"");
			}
		}
	}

#****** Построение кеша ******#
} elseif($_POST['edit'] == 2) {
	#*** Тип кеширования
	if($memchat_conf['cache']=="mem") {
		$mess = $memcache->get($mem_name);
	} else {
		$mess = dle_cache($mem_name);
	}

	if(!$mess) {
		require_once ENGINE_DIR.'/classes/parse.php';
		$parse = new ParseFilter( );
		$parse->safe_mode = true;
		$user_group = get_vars("usergroup");

		$db->query("SELECT * FROM ".PREFIX."_mchat ORDER BY id DESC LIMIT {$memchat_conf['mess_numm']}");
		while ($row = $db->get_row()) {
			$usr = $user_group[$row['gid']]['group_prefix'].$row['name'].$user_group[$row['gid']]['group_suffix'];
			$u_name = "<font onclick=\"mchat_nick('{$row['name']}', '{$row['uid']}', '{$row['id']}', '".urlencode($row['name'])."')\" style=\"cursor:pointer;\">{$usr}</font>";

			if(date(Ymd, $row['date']) == date(Ymd, time())) {
				$date = "Сегодня, ".date("H:i", $row['date']);
			} elseif(date(Ymd, $row['date']) == date(Ymd, (time() - 86400))) {
				$date = "Вчера, ".date("H:i", $row['date']);
			} else {
				$date = date("d.m.Y H:i", $row['date']);
			}

			$mess .= "<div class=\"mchat_mes ui-corner-all\"><div class=\"mchat_head\">{$u_name}<div id=\"m_{$row['id']}\" class=\"mchat_date\">{$date}</div></div><div class=\"mchat_text\">".stripslashes($row['message'])."</div></div>";
		}

		#*** Тип кеширования
		if($memchat_conf['cache']=="mem") {
			$memcache->set($mem_name, $mess);
		} else {
			create_cache($mem_name, $mess);
		}
	}
	echo $mess;

#****** Удаление ******#
} elseif($_POST['edit'] == 3 && $is_logged) {
	$moder_usr = in_array($member_id['user_group'], explode(",", $memchat_conf['moder_grp']));
	if($moder_usr) {
		$mid = intval($_POST['mid']);
		$db->query("DELETE FROM ".PREFIX."_mchat WHERE id='{$mid}'");

		#*** Тип кеширования
		if($memchat_conf['cache']=="mem") {
			$memcache->set($mem_name, "");
		} else {
			create_cache($mem_name,"");
		}
	}

#****** Вывод модуля ******#
} else {
	#*** Тип кеширования
	if($memchat_conf['cache']=="mem") {
		$mess = $memcache->get($mem_name);
	} else {
		$mess = dle_cache($mem_name);
	}

	if ($is_logged) {
		if(time()-$member_id['reg_date']<$memchat_conf['time_readonly']*86400) {
			$send_js = "";
			$send_fr = "<div id=\"mchat-style\" style=\"padding: 1px; text-align: center;\">Писать в чате можно по истечению {$memchat_conf['time_readonly']} дней после даты регистрации.</div>";
		} elseif($memchat_conf['restricted']=="yes" && $member_id['restricted']>0) {
			$send_js = "";
			if($member_id['restricted_days']>0) $end_restricted = langdate( "j M Y H:i", $member_id['restricted_date'] );
			else $end_restricted = "пожизнено";
			$send_fr = "<div id=\"mchat-style\" style=\"padding: 1px; text-align: center;\">Режим \"Только чтение\" до:<br>{$end_restricted}</div>";
		} else {
$send_js = <<<HTML

$(document).ready(function() {
	$("#mess").bbedit({
		smilies: '1,2,3,4,5,6,7,8'
	});
});

function sendMes() {
	var mes = jQuery('#mess').val();
	jQuery('#mess').val("");
	$.post(dle_root + "system/modules/mchat.php",
		{edit:1, message:mes},
		function(){
			refreshChat();
		});
}
HTML;
$send_fr = <<<HTML
<script type="text/javascript" src="/system/classes/js/jquery.bbedit.min.js"></script>

<form onsubmit="sendMes(); return false;" method="post" onkeypress="if(event.keyCode==10 || (event.ctrlKey && event.keyCode==13)) {sendMes();}">

<div class="bbedit-container bbedit-skin-blue ui-corner-all">
<textarea id="mess" style="width: 274px;" class="bbedit-textarea" rows="2"></textarea>
</div>

<input type="button" onclick="sendMes();" value="Отправить (Ctrl+Enter)">
</form>
HTML;
		}
	} else {
		$send_js = "";
		$send_fr = "<div id=\"mchat-style\" style=\"padding: 1px; text-align: center;\"><br />Только зарегистрированные пользователи могут отправлять сообщения <a href=\"/index.php?do=login\">войдите</a> или <a href=\"/index.php?do=register\">зарегистрируйтесь</a>.</div>";
	}

if($is_logged) {
	$moder_usr = in_array($member_id['user_group'], explode(",", $memchat_conf['moder_grp']));
	if($moder_usr) {
$del_js = <<<HTML
function mchat_del(mid) {
	$.post("/system/modules/mchat.php",
		{edit:3, mid:mid},
		function() {
			refreshChat();
		});
}
HTML;
$del = <<<HTML
 <span class=\"ui-icon ui-icon-close\" onclick=\"mchat_del('"+mid+"')\" style=\"cursor:pointer; float:left;\" title=\"Удалить\"></span>
HTML;
	}
}

	if($member_id['user_group']!=5) {
$not_refr = <<<HTML
setInterval ("refreshChat()", {$memchat_conf['time_reload']}000);
HTML;
	}

$content .= <<<HTML
<link rel="stylesheet" type="text/css" href="/templates/{$config['skin']}/css/bbedit.css" />
<script language="javascript" type="text/javascript">
<!--
function mchat_rep(n){
	$('#mess').focus().val('[b]'+n+'[/b], ');
}
function mchat_nick(n, id, mid, urln){
	$('#m_'+mid).html("<span class=\"ui-icon ui-icon-comment\" onClick=\"mchat_rep('"+n+"')\" style=\"cursor:pointer; float:left;\" title=\"Ответить\"></span> <span class=\"ui-icon ui-icon-person\" onclick=\"ShowProfile('"+urln+"', '/user/"+urln+"/'); return false;\" style=\"cursor:pointer; float:left;\" title=\"Профиль\"></span> <a class=\"ui-icon ui-icon-mail-open\" style=\"float:left;\" href=/index.php?do=pm&doaction=newpm&user="+id+" title=\"Написать ЛС\"></a>{$del}");
}
{$send_js}
{$del_js}
function refreshChat() {
	$.post("/system/modules/mchat.php",
		{edit:2},
		function(data) {
			$('#chat-mess').html(data);
		});
}
{$not_refr}
//-->
</script>

<div class="menu_t" onClick="refreshChat()" style="cursor:pointer;">Общалка</div><a href=\"http://mylim.ru\">.</a>
<div class="menu_c">
<div id="chat-mess" style="overflow: auto; width: 274px; height: 350px; background-color: #f0f0f0; padding: 2px;">{$mess}</div>
{$send_fr}
</div>
HTML;
	echo $content;
}

#*** Тип кеширования
if($memchat_conf['cache']=="mem") {
	$memcache->close();
}
?>