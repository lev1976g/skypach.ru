<?php
if( !defined( 'DATALIFEENGINE' ) OR !defined( 'LOGGED_IN' ) ) {
	die( "Hacking attempt!" );
}

if( ! $user_group[$member_id['user_group']]['admin_blockip'] ) {
	msg( "error", $lang['index_denied'], $lang['index_denied'] );
}

	function showRow($title = "", $description = "", $field = "") {
		echo "<tr>
        <td style=\"padding:4px\" class=\"option\">
        <b>$title</b><br /><span class=small>$description</span>
        <td width=394 align=middle >
        $field
        </tr><tr><td background=\"engine/skins/images/mline.gif\" height=1 colspan=2></td></tr>";
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
if($_REQUEST['action']=="savegames"){
    if( $member_id['user_group'] != 1 ) {
		msg( "error", $lang['opt_denied'], $lang['opt_denied'] );
	}
    	$game_conf = $_POST['game_conf'];
	
	include_once ENGINE_DIR . '/classes/parse.class.php';
	$parse = new ParseFilter();
	$parse->safe_mode = true;;
	
	$game_conf['message_invite'] = $parse->process( stripslashes( trim( $game_conf['message_invite'] ) ) );
	$game_conf['message_invite'] = str_replace( '"', '&quot;', $parse->BB_Parse( $game_conf['message_invite'], false ) );
	
	$find[] = "'\r'";
	$replace[] = "";
	$find[] = "'\n'";
	$replace[] = "";
	//$game_conf = $game_conf + $config;
	
	$handler = fopen( ENGINE_DIR . '/data/nextgame.config.php', "w" );
	
	fwrite( $handler, "<?PHP \n\n//NextGame Configurations for Dle\n\n\$nextgame = array (\n\n" );
	foreach ( $game_conf as $name => $value ) {
		
		if( $name != "message_invite" ) {
			
			$value = trim( strip_tags(stripslashes( $value )) );
			$value = htmlspecialchars( $value, ENT_QUOTES);
			$value = preg_replace( $find, $replace, $value );
			
			$name = trim( strip_tags(stripslashes( $name )) );
			$name = htmlspecialchars( $name, ENT_QUOTES );
			$name = preg_replace( $find, $replace, $name );
		
		
		$value = str_replace( "$", "&#036;", $value );
		$value = str_replace( "{", "&#123;", $value );
		$value = str_replace( "}", "&#125;", $value );
		
		$name = str_replace( "$", "&#036;", $name );
		$name = str_replace( "{", "&#123;", $name );
		$name = str_replace( "}", "&#125;", $name );
		}
		fwrite( $handler, "'{$name}' => \"{$value}\",\n\n" );
	
	}
	fwrite( $handler, ");\n\n?>" );
	fclose( $handler );
	
	clear_cache();
	msg( "info", $lang['opt_sysok'], "$lang[opt_sysok_1]<br /><br /><a href=$PHP_SELF?mod=nextgame>$lang[db_prev]</a>" );
}

require(ENGINE_DIR."/data/nextgame.config.php");
	include_once ENGINE_DIR . '/classes/parse.class.php';
	$parse = new ParseFilter( Array (), Array (), 1, 1 );
	
	$nextgame['message_invite'] = str_replace( '&quot;', '"', $nextgame['message_invite'] );
	$nextgame['message_invite'] = $parse->decodeBBCodes( $nextgame['message_invite'], false );
echoheader( "", "" ); 

echo <<<HTML
<link rel="stylesheet" type="text/css" media="all" href="engine/skins/calendar-blue.css" title="win2k-cold-1" />
<form action="" method="post">
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
        <td bgcolor="#EFEFEF" height="29" style="padding-left:10px;"><div class="navigation">��������� ���������� NextGame.Ru (������ ���������� DimkA.(c) Dle.In.Ua)</div></td>
    </tr>
</table>
<div class="unterline"></div>
<table width="100%">
HTML;
showRow( "���� API: ", "��� ��������� ����. ������ ��� �� ������ � ������� <a href='http://nextgame.ru/user/channels'>�������������� ��������.</a>", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[api_key]\" value=\"{$nextgame['api_key']}\" size=40>" );
showRow( "ID ��������: ", "������������� �����, ���������� ��� ����������� �� ���������.  ������ ��� �� ������ � ������� <a href='http://nextgame.ru/user/channels'>�������������� ��������.</a>", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[site_id]\" value=\"{$nextgame['site_id']}\" size=40>" );
showRow( "������ ����������� ������ : ", "������ �������� ������ ����������� ������. �������� � ������� (������������� �������� 60 )", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[cache_time]\" value=\"{$nextgame['cache_time']}\" size=40>" );
showRow( "��� �� �������� : ", "���������� ��� ������� ����� ��������� �� �������� (������������� �������� 20 )", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[per_page]\" value=\"{$nextgame['per_page']}\" size=40>" );
showRow( "��� � ����� \"����� ����\" : ", "���������� ��� ������� ����� ��������� � ����� ����� ����(���� ������������) (�������� ��-��������� 5 )", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[num_new]\" value=\"{$nextgame['num_new']}\" size=40>" );
showRow( "��� � ����� \"������������� ����\" : ", "���������� ��� ������� ����� ��������� � ����� ������������� ����(���� ������������) (�������� ��-��������� 5 )", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[num_recomend]\" value=\"{$nextgame['num_recomend']}\" size=40>" );
showRow( "������ ��������� ������� ������� �����  : ", "������������ ����� ����� �������� � ���������� ��� ������� ������� �����.", makeDropDown(array("yes"=>"��","no"=>"���"),"game_conf[site_player]",$nextgame['site_player']) );
showRow( "������ �� API : ", "������ �� API. ��� ������ ������������� �� ��������.", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[api_url]\" value=\"{$nextgame['api_url']}\" size=40>" );
showRow( "���� �� ��� �������� � ���� : ", "���� �� ����������� ������� �������� ��������� ������������ �� ������� ���� � ������� ����� ��������� ���������. URL ������� �������� ��������� ������������:<br /> (<b>{$config['http_home_url']}engine/modules/nextgame/nextgame.xml.php?method=sendmessage</b>).", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[subj_pm]\" value=\"{$nextgame['subj_pm']}\" size=40>" );
showRow( "���� �� ��� �������� ����������� � ���� : ", "���� �� ����������� ������� �������� ����������� ������������ � ���� �� ������� ���� � ������� ����� ��������� ���������.  URL ������� �������� ����������� � ���� :<br /> (<b>{$config['http_home_url']}engine/modules/nextgame/nextgame.xml.php?method=sendinvite</b>).", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[subj_invite]\" value=\"{$nextgame['subj_invite']}\" size=40>" );
showRow( "��������� �� ��� �������� ����������� � ���� : ", "���� �� ����������� ������� �������� ����������� ������������ � ���� �� ������� ��������� ������� ����� ��������� ������ ������������. ����� ������������ HTML. ���� ���������:<br /> <b>{gamer}</b> - ��� ������������ ������� ���������� �����������,<br /><b>[game_link]������[/game_link]</b>- ��������� ������ �� ���������� � ������� ���������� ������������.(<strong>������</strong> ��� ��� ����� ������� ����� �������� �������)<br /><strong>{game_name}</strong> - �������� ����", "<textarea class=\"edit bk\" style=\"width:350px;height:100px;\" name=\"game_conf[message_invite]\">{$nextgame['message_invite']}</textarea>" );
showRow( "������ ����������  : ", "�������� ������� ������� ����������(����������� �� ����������� ���� �� ������ ��� ����������� � �������������, ���������� � �������� ������).", makeDropDown(array("link"=>"C����� � ���� ��������","iframe"=>"������ 760 ��������"),"game_conf[open_type]",$nextgame['open_type']) );
echo<<<HTML
 <tr>
        <td colspan="2" style="padding-left:5px;"><input type="submit" class="buttons" value="&nbsp;{$lang['user_save']}&nbsp;">
     <input type="hidden" name="mod" value="nextgame">
	 <input type="hidden" name="user_hash" value="$dle_login_hash" />
     <input type="hidden" name="action" value="savegames"></td>
    </tr>
</table>
</form>
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
HTML;


echofooter();

?>