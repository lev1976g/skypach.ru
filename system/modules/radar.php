<?php
/* 
	Appointment: Радар by Embush
	File: radar.php 
 
*/
if(!defined('MOZG'))
	die('You never have to spend Embush');

if($ajax == 'yes')
	NoAjaxQuery();

if($logged){
	$act = $_GET['act'];
	$user_id = $user_info['user_id'];
	$metatags['title'] = 'Радар';
	$price = 10; // Устанавливаем цену
$row = $db->super_query("SELECT user_id, user_photo, user_balance, user_comm FROM `".PREFIX."_users` WHERE user_id = '{$user_id}'");
		       
	switch($act){
		
		//################### Добавляемся ###################//
		case "add":
                     if($owner['user_balance'] < $price){					
 $db->query("UPDATE `".PREFIX."_users` SET user_balance = user_balance-10 , user_comm = 1 WHERE user_id = '{$user_id}'");
                     header('Location: /radar');
                         }else{
 msgbox('', 'На вашем счете недостаточно голосов, пожалуйста, пополните баланс!', 'info_2');
                         }

		break;
				
		default:		
			//################### Страница "Радар" ###################//
                     $owner = $db->super_query("SELECT user_balance FROM `".PREFIX."_users` WHERE user_id = '{$user_id}'");
			$tpl->load_template('radar/main.tpl');
                     if($owner['user_balance'] < $price OR $row['user_comm'] = 1){
			$tpl->set('[noo]', '');
			$tpl->set('[/noo]', '');
			} else 
			$tpl->set_block("'\\[noo\\](.*?)\\[/noo\\]'si","");
                     if($row['user_comm'] == 1){
			$tpl->set('[comm_yes]', '');
			$tpl->set('[/comm_yes]', '');
			} else 
			$tpl->set_block("'\\[comm_yes\\](.*?)\\[/comm_yes\\]'si","");
			if($row['user_comm'] != 1){
			$tpl->set('[comm_no]', '');
			$tpl->set('[/comm_no]', '');
			} else 
			$tpl->set_block("'\\[comm_no\\](.*?)\\[/comm_no\\]'si","");
                     if($owner['user_balance'] >= $price){
			$tpl->set('{ubm}', ''.$owner['user_balance'].' голосов');
                     $ost = $owner['user_balance'] - $price;
                     $tpl->set('{ost}', '(останется '.$ost.' голосов.)');
                     }else{
                     $tpl->set('{ubm}', 'У Вас недостаточно голосов.');
                     $tpl->set('{ost}', '');
                     }
                     $tpl->set('{price}', $price);
			$tpl->compile('content');

	}
	$tpl->clear();
	$db->free();

} else {
	$user_speedbar = $lang['no_infooo'];
	msgbox('', $lang['not_logged'], 'info');
}

?>
