<?php
/* 
	Appointment: Левое меню realtime режим
	File: leftmenu.php 
 
*/
if(!defined('MOZG'))
	die('Hacking attempt!');

if($ajax == 'yes')
	NoAjaxQuery();
	$act = $_GET['act'];
$user_id = $user_info['user_id'];

if($logged){
	$owner = $db->super_query("SELECT user_id, user_friends_demands, user_pm_num, user_gifts, user_support, user_new_mark_photos, user_balance, user_rate, user_new_groups FROM `".PREFIX."_users` WHERE user_id = '{$user_id}'");
	switch($act){

case"requrest":
if($owner['user_friends_demands'] >= 1){
echo "+{$owner['user_friends_demands']}";
}
AjaxTpl();
die();
$tpl->clear();
$db->free();
break;

case"photo":
if($owner['user_new_mark_photos'] >= 1){
echo "+{$owner['user_new_mark_photos']}";
}
AjaxTpl();
die();
$tpl->clear();
$db->free();
break;


case"msg":
if($owner['user_pm_num'] >= 1){
echo "+{$owner['user_pm_num']}";
}
AjaxTpl();
die();
$tpl->clear();
$db->free();
break;


case"groups":
if($owner['user_new_groups'] >= 1){
echo "<span class=\"left_count_wrap  fl_r\">+{$owner['user_new_groups']}</span>";
}
AjaxTpl();
die();
$tpl->clear();
$db->free();
break;

case"balance":
if($owner['user_balance'] >= 1){
echo "<div style=\"width:120px;text-align: center; padding: 5px; background: none repeat scroll 0% 0% rgb(247, 247, 247); border-bottom: 1px solid rgb(221, 221, 221); margin: 0px 0px 0px;\" id=\"left_balance_box\">
  <div style=\"padding-top: 2px;\" id=\"coins_left\">
    У Вас 
    <b>{$owner['user_balance']}</b>
     неиспользованных голосов.
  </div>
  <br>
  <a href=\"/balance\" onclick=\"Page.Go(this.href); return false\">Подробнее »</a>
</div>";
}
AjaxTpl();
die();
$tpl->clear();
$db->free();
break;


}
}