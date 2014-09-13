<?php

/* 
	Appointment: Лото
	File: loto.php 
 
*/
header("Content-type: text/html; charset=windows-1251");

if(!defined('MOZG'))
	die('Hacking attempt!');

if($ajax == 'yes')
	NoAjaxQuery();
	
if($logged){
	$act = $_GET['act'];
	$numer = $_POST['numer'];
	$golos = $_POST['golos'];
	$user_id = $user_info['user_id'];
	$rand = rand(1,3);
	$balanc = $db->super_query("SELECT user_balance FROM `".PREFIX."_users` WHERE user_id = '{$user_id}'");
	$date = time();
	switch($act){

// ###################### Показываем рейтинг и голоса ###################### //
// ###################### Нужно переделать ###################### //



case "go":

if($golos >= 1 AND $balanc['user_balance'] >= $golos){
	$db->query("UPDATE `".PREFIX."_users` SET user_balance = user_balance-{$golos} WHERE user_id = '{$user_id}'");


	if($numer == $rand){
	$db->query("UPDATE `".PREFIX."_users` SET user_balance = user_balance+{$golos}*2 WHERE user_id = '{$user_id}'");
			if($user_info['user_sex'] = 1){
				$sex = 'Я только что выйграл<b> ';
			} else {
				$sex = 'Я только что выйграла<b> ';
			}
	$fb = $golos * 2;
	$text = $sex. $fb.'</b> голосов в приложении <a href=\"/app3\" onClick=\"Page.Go(this.href); return false;\">Лото - Выйграй голоса</a>.<br> Присоединяйся!';
	$db->query("INSERT INTO `".PREFIX."_wall` (author_user_id, add_date, text, for_user_id, type) VALUES ('{$user_id}','{$server_time}','{$text}','{$user_id}', 'через приложение <a href=\"/app3\" onClick=\"Page.Go(this.href); return false\">Лото</a>')");
	$db->query("UPDATE `".PREFIX."_users` SET user_wall_num = user_wall_num+1 WHERE user_id = '{$user_id}'");

	echo '<link media="screen" href="/templates/Default/style/style.css" type="text/css" rel="stylesheet" />
<img src="/templates/Default/images/loto.jpg" style="position:absolute;z-index:1;margin-left:12px;margin-top:20px;border-radius:10px;width:600px;">
<img src="/templates/Default/images/loto-fon.jpg" style="position:absolute;width:626px">  
<div id="maindiv" style="

width: 400px;

height: 230px;

background-color: #ced7df;

border-radius: 20px;

color: #ffffff;

padding: 15px;

opacity: 0.8;

margin-left:98px;

margin-top:160px;
">
<div style="background-color: #000000;padding: 15px;border-radius: 20px;">
Система загадывает число от <b>1</b> до <b>2</b>.<br>Если Вы отгадали, ставка - возвращается в удвоенном размере.
<br><br><br>
<div class="err_yellow no_display pass_errors" id="win" style="font-weight:normal;width:378px;margin-left:210px;">Вы выйграли</div>
<div class="err_red no_display pass_errors" id="fail" style="font-weight:normal;width:378px;margin-left:210px;">Вы проиграли</div>
<center>
 <form action="index.php/?go=loto&act=go" method="POST">
<div style="font-size:30px;text-shadow: 0px 0px 10px #8bff00;">Вы выйграли!!!</div><br><br><br><a href="/?go=loto">Еще раз!</a>
</form>

<center><br>Проигранные голоса мы не возвращаем!</center>
</div>';
	} else 
	echo '<link media="screen" href="/templates/Default/style/style.css" type="text/css" rel="stylesheet" />
<img src="/templates/Default/images/loto.jpg" style="position:absolute;z-index:1;margin-left:12px;margin-top:20px;border-radius:10px;width:600px;">
<img src="/templates/Default/images/loto-fon.jpg" style="position:absolute;width:626px">  
<div id="maindiv" style="

width: 400px;

height: 230px;

background-color: #ced7df;

border-radius: 20px;

color: #ffffff;

padding: 15px;

opacity: 0.8;

margin-left:98px;

margin-top:160px;
">
<div style="background-color: #000000;padding: 15px;border-radius: 20px;">
Система загадывает число от <b>1</b> до <b>2</b>.<br>Если Вы отгадали, ставка - возвращается в удвоенном размере.
<br><br><br>
<div class="err_yellow no_display pass_errors" id="win" style="font-weight:normal;width:378px;margin-left:210px;">Вы выйграли</div>
<div class="err_red no_display pass_errors" id="fail" style="font-weight:normal;width:378px;margin-left:210px;">Вы проиграли</div>
<center>
 <form action="index.php/?go=loto&act=go" method="POST">
<div style="font-size:30px;text-shadow: 0px 0px 10px #ff0000;">Вы проиграли :(</div><br><br><br><a href="/?go=loto">Еще раз!</a>
</form>

<center><br>Проигранные голоса мы не возвращаем!</center>
</div>';

	if($golos >= 100){
	$db->query("UPDATE `".PREFIX."_users` SET user_rate = user_rate+20 WHERE user_id = '{$user_id}'");
	$db->query("INSERT INTO `".PREFIX."_rating_list` (author_user_id, for_user_id, num, comment, rate_date) VALUES ('{$user_id}', '{$user_id}', '20', 'Через приложение <b>Лото</b>', '{$server_time}')");
	} else 
	$db->query("UPDATE `".PREFIX."_users` SET user_rate = user_rate+1 WHERE user_id = '{$user_id}'");
	$db->query("INSERT INTO `".PREFIX."_rating_list` (author_user_id, for_user_id, num, comment, rate_date) VALUES ('{$user_id}', '{$user_id}', '1', 'Через приложение <b>Лото</b>', '{$server_time}')");
	


}
 else {
echo '<link media="screen" href="/templates/Default/style/style.css" type="text/css" rel="stylesheet" />
<img src="/templates/Default/images/loto.jpg" style="position:absolute;z-index:1;margin-left:12px;margin-top:20px;border-radius:10px;width:600px;">
<img src="/templates/Default/images/loto-fon.jpg" style="position:absolute;width:626px">  
<div id="maindiv" style="

width: 400px;

height: 230px;

background-color: #ced7df;

border-radius: 20px;

color: #ffffff;

padding: 15px;

opacity: 0.8;

margin-left:98px;

margin-top:160px;
">
<div style="background-color: #000000;padding: 15px;border-radius: 20px;">
Система загадывает число от <b>1</b> до <b>2</b>.<br>Если Вы отгадали, ставка - возвращается в удвоенном размере.
<br><br><br>
<div class="err_yellow no_display pass_errors" id="win" style="font-weight:normal;width:378px;margin-left:210px;">Вы выйграли</div>
<div class="err_red no_display pass_errors" id="fail" style="font-weight:normal;width:378px;margin-left:210px;">Вы проиграли</div>
<center>
 <form action="index.php/?go=loto&act=go" method="POST">
<div style="font-size:30px;text-shadow: 0px 0px 10px #ff0000;">Недостаточно голосов</div><br><br><br><a href="/?go=loto">Еще раз!</a>
</form>

<center><br>Проигранные голоса мы не возвращаем!</center>
</div>';
}
die();
break;

default:

$tpl->set('{balance}', $balanc['user_balance']);
$tpl->load_template('loto/main.tpl');
$tpl->compile('content');
AjaxTpl();
die();
break;

	}
}
?>