<?php
/*
=====================================================
 Модуль: MemChat v.1.4
-----------------------------------------------------
 Автор: MSW
-----------------------------------------------------
 Сайт поддержки: http://0-web.ru
=====================================================
 Файл: memchat.php
=====================================================
*/

if( !defined( 'DATALIFEENGINE' ) OR !defined( 'LOGGED_IN' ) ) {
	die( "Hacking attempt!" );
}

if( $member_id['user_group'] != 1 ) {
	msg( "error", $lang['index_denied'], $lang['index_denied'] );
}

if( $action == "save" ) {
	if( $member_id['user_group'] != 1 ) {
		msg( "error", $lang['opt_denied'], $lang['opt_denied'] );
	}

	if( $_REQUEST['user_hash'] == "" or $_REQUEST['user_hash'] != $dle_login_hash ) {
		die( "Hacking attempt! User not found" );
	}

	$save_con = $_POST['save_con'];
	$save_con['moder_grp'] = implode(',', $_REQUEST['moder_grp']);

	$find[] = "'\r'";
	$replace[] = "";
	$find[] = "'\n'";
	$replace[] = "";

	$handler = fopen( ENGINE_DIR . '/data/config.memchat.php', "w" );
	fwrite( $handler, "<?php\n//MemChat Configurations\n\$memchat_conf = array (\n" );
	foreach ( $save_con as $name => $value ) {
		$value = trim( stripslashes( $value ) );
		$value = htmlspecialchars( $value, ENT_QUOTES);
		$value = preg_replace( $find, $replace, $value );

		fwrite( $handler, "'{$name}' => \"{$value}\",\n" );
	}
	fwrite( $handler, ");\n?>" );
	fclose( $handler );

	msg( "info", $lang['opt_sysok'], "$lang[opt_sysok_1]<br /><br /><a href=$PHP_SELF?mod=memchat>$lang[db_prev]</a>" );
} else {
	require_once (ENGINE_DIR.'/data/config.memchat.php');
	include_once ROOT_DIR."/language/{$config['langs']}/memchat_adm.lng";
	echoheader("", "");

function showRow($title = "", $description = "", $field = "") {
	echo "<tr><td style=\"padding:4px\" class=\"option\"><b>{$title}</b><br /><span class=small>{$description}</span><td width=\"30%\" align=\"left\">{$field}</tr><tr><td background=\"engine/skins/images/mline.gif\" height=1 colspan=2></td></tr>";
	$bg = "";
	$i ++;
}

function makeDropDown($options, $name, $selected) {
	$output = "<select name=\"$name\">\r\n";
	foreach ( $options as $value => $description ) {
		$output .= "<option value=\"$value\"";
		if( $selected == $value ) {
			$output .= " selected ";
		}
		$output .= ">$description</option>\n";
	}
	$output .= "</select>";
	return $output;
}

echo <<<HTML
<script language='JavaScript' type="text/javascript">
function ChangeOption(selectedOption) {
	document.getElementById('main').style.display = "none";
	document.getElementById('smile').style.display = "none";

	document.getElementById(selectedOption).style.display = "";
	document.getElementById('main_').className = "";
	document.getElementById('smile_').className = "";

	document.getElementById(selectedOption+'_').className = "selected";
}
</script>

<style>
.selected {
    background: #dfdfdf;
}
</style>

<div style="padding-top:5px;padding-bottom:2px;">
<table width="100%">
 <tr>
  <td width="4"><img src="engine/skins/images/tl_lo.gif" width="4" height="4" border="0"></td>
  <td background="engine/skins/images/tl_oo.gif"><img src="engine/skins/images/tl_oo.gif" width="1" height="4" border="0"></td>
  <td width="6"><img src="engine/skins/images/tl_ro.gif" width="6" height="4" border="0"></td>
 </tr>
 <tr>
  <td background="engine/skins/images/tl_lb.gif"><img src="engine/skins/images/tl_lb.gif" width="4" height="1" border="0"></td>
  <td style="padding:5px;" bgcolor="#FFFFFF">
   <table width="100%">
    <tr>
     <td bgcolor="#EFEFEF" height="29" style="padding-left:10px;"><div class="navigation"><b>{$lang_m['title']}</b></div></td>
    </tr>
   </table>

   <div class="unterline"></div>
   <table width="100%">
    <tr>
     <td style="padding:2px;">
      <table style="text-align:center;" width="100%" height="35px">
       <tr style="vertical-align:middle;" >
        <td id="main_" class="selected"><a href="javascript:ChangeOption('main');"><img title="{$lang_m['main']}" src="engine/skins/images/memchat_main.png" border="0"></a></td>
        <td id="smile_"><a href="javascript:ChangeOption('smile');"><img title="{$lang_m['smiles']}" src="engine/skins/images/memchat_smile.png" border="0"></a></td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
  </td>
  <td background="engine/skins/images/tl_rb.gif"><img src="engine/skins/images/tl_rb.gif" width="6" height="1" border="0"></td>
 </tr>
 <tr>
  <td><img src="engine/skins/images/tl_lu.gif" width="4" height="6" border="0"></td>
  <td background="engine/skins/images/tl_ub.gif"><img src="engine/skins/images/tl_ub.gif" width="1" height="6" border="0"></td>
  <td><img src="engine/skins/images/tl_ru.gif" width="6" height="6" border="0"></td>
 </tr>
</table>
</div>
<form action="$PHP_SELF?mod=memchat&action=save" name="conf" id="conf" method="post">
HTML;

echo <<<HTML
<div style="padding-top:5px;padding-bottom:2px;">
<table width="100%">
 <tr>
  <td width="4"><img src="engine/skins/images/tl_lo.gif" width="4" height="4" border="0"></td>
  <td background="engine/skins/images/tl_oo.gif"><img src="engine/skins/images/tl_oo.gif" width="1" height="4" border="0"></td>
  <td width="6"><img src="engine/skins/images/tl_ro.gif" width="6" height="4" border="0"></td>
 </tr>
 <tr>
  <td background="engine/skins/images/tl_lb.gif"><img src="engine/skins/images/tl_lb.gif" width="4" height="1" border="0"></td>
  <td style="padding:5px;" bgcolor="#FFFFFF">
   <table width="100%">
HTML;

echo <<<HTML
    <tr style='' id="main">
     <td>
      <table width="100%">
       <tr>
        <td bgcolor="#EFEFEF" height="29" style="padding-left:10px;"><b>{$lang_m['main']}</b></td>
       </tr>
      </table>
      <div class="unterline"></div>
      <table width="100%">
HTML;

($memchat_conf['cache']) ? "" : $memchat_conf['cache']="file";
showRow($lang_m['cache'], $lang_m['vcache'], makeDropDown(array("file"=>$lang_m['file'], "mem"=>$lang_m['mem']), "save_con[cache]", $memchat_conf['cache']));

($memchat_conf['cache_name']) ? "" : $memchat_conf['cache_name'] = "memchat";
showRow($lang_m['cache_name'], $lang_m['vcache_name'], "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"save_con[cache_name]\" value=\"{$memchat_conf['cache_name']}\" size=20>" );

echo "<tr><td colspan=2><div class=\"unterline\"></div></td></tr>";

($memchat_conf['mem_host']) ? "" : $memchat_conf['mem_host'] = "localhost";
showRow($lang_m['mem_host'], $lang_m['vmem_host'], "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"save_con[mem_host]\" value=\"{$memchat_conf['mem_host']}\" size=20>" );

($memchat_conf['mem_port']) ? "" : $memchat_conf['mem_port'] = "11211";
showRow($lang_m['mem_port'], $lang_m['vmem_port'], "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"save_con[mem_port]\" value=\"{$memchat_conf['mem_port']}\" size=20>" );

echo "<tr><td colspan=2><div class=\"unterline\"></div></td></tr>";

($memchat_conf['mess_numm']) ? "" : $memchat_conf['mess_numm'] = 100;
showRow($lang_m['mess_numm'], $lang_m['vmess_numm'], "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"save_con[mess_numm]\" value=\"{$memchat_conf['mess_numm']}\" size=10>" );

($memchat_conf['text_numm']) ? "" : $memchat_conf['text_numm'] = 10;
showRow($lang_m['text_numm'], $lang_m['vtext_numm'], "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"save_con[text_numm]\" value=\"{$memchat_conf['text_numm']}\" size=10>" );

($memchat_conf['time_reload']) ? "" : $memchat_conf['time_reload'] = 30;
showRow($lang_m['time_reload'], $lang_m['vtime_reload'], "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"save_con[time_reload]\" value=\"{$memchat_conf['time_reload']}\" size=10>" );

echo "<tr><td colspan=2><div class=\"unterline\"></div></td></tr>";

($memchat_conf['moder_grp']) ? "" : $memchat_conf['moder_grp']=1;
$moder_grp = <<<HTML
<select multiple="" style="border:1px solid #9E9E9E; color:#000000; font-family:Verdana; font-size:11px; height:80px; width:316px;" name="moder_grp[]">
HTML;
$grp = explode(",", $memchat_conf['moder_grp']);
$grp_sql = $db->query("SELECT id, group_name FROM ".PREFIX."_usergroups");
while($row=$db->get_array($grp_sql)) {
	$s = (in_array($row['id'], $grp)) ? "selected" : "";
	$moder_grp.="<option value=\"{$row['id']}\" style=\"color: black;\" {$s}>{$row['group_name']}</option>";
}
$moder_grp .= "</select>";
showRow($lang_m['moder_grp'], $lang_m['vmoder_grp'], $moder_grp);

echo "<tr><td colspan=2><div class=\"unterline\"></div></td></tr>";

($memchat_conf['time_readonly']) ? "" : $memchat_conf['time_readonly'] = 0;
showRow($lang_m['time_readonly'], $lang_m['vtime_readonly'], "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"save_con[time_readonly]\" value=\"{$memchat_conf['time_readonly']}\" size=10>" );

($memchat_conf['restricted']) ? "" : $memchat_conf['restricted']="yes";
showRow($lang_m['restricted'], $lang_m['vrestricted'], makeDropDown(array("yes"=>$lang_m['yes'], "no"=>$lang_m['no']), "save_con[restricted]", $memchat_conf['restricted']));


echo <<<HTML
       <tr><td colspan=2><div class="unterline"></div></td></tr>
      </table>
     </td>
    </tr>
HTML;

echo <<<HTML
    <tr style='display:none' id="smile">
     <td>
      <table width="100%">
       <tr>
        <td bgcolor="#EFEFEF" height="29" style="padding-left:10px;"><b>{$lang_m['smiles']}</b></td>
       </tr>
      </table>
      <div class="unterline"></div>
      <table width="100%">
HTML;

echo "<tr><td colspan=2><b>Обработка смайлов через админку ожидается в следующей версии. Следите за появлением новых версий на сайте <a href=\"http://0-web.ru\">0-WEB.RU</a></b><br><br>Выразить благорарность MSW за разработку можно по средствам вебмани:<br>Z974836831699<br>R167272790699</td></tr>";

echo <<<HTML
       <tr><td colspan=2><div class="unterline"></div></td></tr>
      </table>
     </td>
    </tr>
HTML;

echo <<<HTML
    <tr style='' id="btn_save">
     <td style="padding-top:10px; padding-bottom:10px;padding-right:10px;" colspan="2">
      <input type="hidden" name="user_hash" value="{$dle_login_hash}" /><input type="submit" class="buttons" value="&nbsp;&nbsp;{$lang['user_save']}&nbsp;&nbsp;"></td>
    </tr>
   </table>
  </td>
  <td background="engine/skins/images/tl_rb.gif"><img src="engine/skins/images/tl_rb.gif" width="6" height="1" border="0"></td>
 </tr>
 <tr>
  <td><img src="engine/skins/images/tl_lu.gif" width="4" height="6" border="0"></td>
  <td background="engine/skins/images/tl_ub.gif"><img src="engine/skins/images/tl_ub.gif" width="1" height="6" border="0"></td>
  <td><img src="engine/skins/images/tl_ru.gif" width="6" height="6" border="0"></td>
 </tr>
</table>
</div></form>
HTML;

echo <<<HTML
   <div style="padding-top: 5px; padding-bottom: 10px;">
   <table width="100%">
    <tr>
     <td bgcolor="#efefef" align="center" height="40" style="padding-right: 10px;"><div class="navigation">Copyright &copy; 2011 created by <b>MSW</b>, icq: 365888, mail: msw@mail.ru, site: <a target="_blank" href="http://0-web.ru/"><b>0-web.ru</b></a></div></td>
    </tr>
   </table>
   </div>
  </td>
  <td background="engine/skins/images/tb_rt.gif" width="4"><img border="0" width="4" height="1" src="engine/skins/images/tb_rt.gif"></td>
 </tr>
 <tr>
  <td background="engine/skins/images/tb_lb.gif" height="16"></td>
  <td background="engine/skins/images/tb_tb.gif"></td>
  <td background="engine/skins/images/tb_rb.gif"></td>
 </tr>
</table>
HTML;
}
?>