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
        <td bgcolor="#EFEFEF" height="29" style="padding-left:10px;"><div class="navigation">Настройка параметров NextGame.Ru (Модуль разработан DimkA.(c) Dle.In.Ua)</div></td>
    </tr>
</table>
<div class="unterline"></div>
<table width="100%">
HTML;
showRow( "Ключ API: ", "Ваш Секретный ключ. Узнать его Вы можете в разделе <a href='http://nextgame.ru/user/channels'>Редактирование площадки.</a>", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[api_key]\" value=\"{$nextgame['api_key']}\" size=40>" );
showRow( "ID Площадки: ", "Идентификатор сайта, получаемый при регистрации на платформе.  Узнать его Вы можете в разделе <a href='http://nextgame.ru/user/channels'>Редактирование площадки.</a>", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[site_id]\" value=\"{$nextgame['site_id']}\" size=40>" );
showRow( "Период кэширования данных : ", "Период хранения данных кешированых данных. Задается в МИНУТАХ (рекомендуемое значение 60 )", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[cache_time]\" value=\"{$nextgame['cache_time']}\" size=40>" );
showRow( "Игр на страницу : ", "Количество игр которые будут выводится на странице (рекомендуемое значение 20 )", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[per_page]\" value=\"{$nextgame['per_page']}\" size=40>" );
showRow( "Игр в блоке \"Новые игры\" : ", "Количество игр которые будут выводится в блоке Новые игры(Если используются) (значение по-умолчанию 5 )", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[num_new]\" value=\"{$nextgame['num_new']}\" size=40>" );
showRow( "Игр в блоке \"Рекомендуемые игры\" : ", "Количество игр которые будут выводится в блоке Рекомендуемые игры(Если используются) (значение по-умолчанию 5 )", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[num_recomend]\" value=\"{$nextgame['num_recomend']}\" size=40>" );
showRow( "Играть используя учетную записью сайта  : ", "Пользователи сайта будут заходить в приложение под учетной записью сайта.", makeDropDown(array("yes"=>"Да","no"=>"Нет"),"game_conf[site_player]",$nextgame['site_player']) );
showRow( "Ссылка на API : ", "Ссылка на API. Без особой необходимости не изменять.", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[api_url]\" value=\"{$nextgame['api_url']}\" size=40>" );
showRow( "Тема ПС при отправки с игры : ", "Если вы используете функцию отправки сообщения пользователю то укажите тему с которой будут приходить сообщения. URL функции отправки сообщения пользователю:<br /> (<b>{$config['http_home_url']}engine/modules/nextgame/nextgame.xml.php?method=sendmessage</b>).", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[subj_pm]\" value=\"{$nextgame['subj_pm']}\" size=40>" );
showRow( "Тема ПС при отправки приглашения в игру : ", "Если вы используете функцию отправки приглашений пользователя в игру то укажите тему с которой будут приходить сообщения.  URL функции отправки приглашения в игру :<br /> (<b>{$config['http_home_url']}engine/modules/nextgame/nextgame.xml.php?method=sendinvite</b>).", "<input class=\"edit bk\" type=text style=\"text-align: center;\" name=\"game_conf[subj_invite]\" value=\"{$nextgame['subj_invite']}\" size=40>" );
showRow( "Сообщение ПС при отправки приглашения в игру : ", "Если вы используете функцию отправки приглашений пользователя в игру то укажите сообщение которое будет приходить вашему пользователю. Можно использовать HTML. Теги сообщения:<br /> <b>{gamer}</b> - имя пользователя который отправляет приглашение,<br /><b>[game_link]ссылка[/game_link]</b>- формирует ссылку на приложение в которое приглашают пользователя.(<strong>ссылка</strong> это ваш текст который будет активной ссылкой)<br /><strong>{game_name}</strong> - Название игры", "<textarea class=\"edit bk\" style=\"width:350px;height:100px;\" name=\"game_conf[message_invite]\">{$nextgame['message_invite']}</textarea>" );
showRow( "Запуск приложения  : ", "Выбирете вариант запуска приложений(открывалось во всплывающем окне по ссылке или открывалось в фиксированном, встроенном в страницу фрейме).", makeDropDown(array("link"=>"Cсылка в виде названия","iframe"=>"Фрейме 760 пикселей"),"game_conf[open_type]",$nextgame['open_type']) );
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