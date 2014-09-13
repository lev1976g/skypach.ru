<?php

/*
Appointment: Активация профиля с проверкой по hid
File: activate.php
*/

if(!defined('MOZG'))
die("Hacking attempt!");

$hid = intval($_GET['hid']);
if($hid){
$db->query("UPDATE `".PREFIX."_users` SET `user_emailed`=0 WHERE `user_reg_date` = '{$hid}'");
}


header("Location: /");


?>