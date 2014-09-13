<?php
/* 
	Appointment: Баланс
	File: balance.php 
 
*/
if(!defined('MOZG'))
	die('Hacking attempt!');

if($ajax == 'yes')
	NoAjaxQuery();

if($logged){
$act = $_GET['act'];
  $user_id = $user_info['user_id'];
      $for_user_id = $_POST['for_user_id'];
      $nums = str_replace("-", '', $_POST['num']);
     $balanc = $db->super_query("SELECT user_balance FROM `".PREFIX."_users` WHERE user_id = '{$user_id}'");
 $metatags['title'] = $lang['balance'];
	
	switch($act){
	
	 //################### Выводим фотографию юзера при указании ИД страницы ###################//
  case "checkPaymentUser":
   NoAjaxQuery();
   $id = intval($_POST['id']);
   $row = $db->super_query("SELECT user_photo, user_search_pref FROM `".PREFIX."_users` WHERE user_id = '{$id}'");
   if($row) echo $row['user_search_pref']."|".$row['user_photo'];
   die();
  break;
 //################### Окно передачи голосов ###################//
  case "payment_2":
        if($for_user_id){
   if($balanc['user_balance'] >= "$nums"){

  //###### Считываем и перезаписываем ######//
   $db->query("UPDATE `".PREFIX."_users` SET user_balance = user_balance+{$nums} WHERE user_id = '{$for_user_id}'");
   $db->query("UPDATE `".PREFIX."_users` SET user_balance = user_balance-{$nums} WHERE user_id = '{$user_id}'");
   echo '';
   }
  }

   //подщет пользователей
     $rowus = $db->super_query("SELECT COUNT(*) AS cnt FROM `".PREFIX."_users` WHERE user_id");
    $row = $db->super_query("SELECT user_photo, user_id FROM `".PREFIX."_users` WHERE user_id = '{$user_id}'");
   $tpl->load_template('balance/payment.tpl');
   if($row['user_photo']){
    $tpl->set('{ava}', $config['home_url'].'uploads/users/'.$row['user_id'].'/50_'.$row['user_photo']);
   } else {
    $tpl->set('{ava}', '/templates/Default/images/no_ava_50.png');
   }
			if($row['user_photo']){
				$tpl->set('[ava]', '');
				$tpl->set('[/ava]', '');
				$tpl->set_block("'\\[no-ava\\](.*?)\\[/no-ava\\]'si","");
			} else {
				$tpl->set('[no-ava]', '');
				$tpl->set('[/no-ava]', '');
				$tpl->set_block("'\\[ava\\](.*?)\\[/ava\\]'si","");
			}

   $tpl->set('{balance}', $balanc['user_balance']);
   $tpl->set('{cnt}', $rowus['cnt']);
   $tpl->set('{userid}', $row['user_id']);
   $tpl->compile('content');


  AjaxTpl();
  die();
  $tpl->clear();
  $db->free();
  break;
		
		//################### Страница приглашения дург ###################//
		case "invite":
			$tpl->load_template('balance/invite.tpl');
			$tpl->set('{uid}', $user_id);
			$tpl->compile('content');
		break;		
		
		//################### Страница приглашённых друзей ###################//
		case "invited":
			$tpl->load_template('balance/invited.tpl');
			$tpl->compile('info');
			$sql_ = $db->super_query("SELECT tb1.ruid, tb2.user_name, user_search_pref, user_birthday, user_last_visit, user_photo FROM `".PREFIX."_invites` tb1, `".PREFIX."_users` tb2 WHERE tb1.uid = '{$user_id}' AND tb1.ruid = tb2.user_id", 1);
			if($sql_){
				$tpl->load_template('balance/invitedUser.tpl');
				foreach($sql_ as $row){
					$user_country_city_name = explode('|', $row['user_country_city_name']);
					$tpl->set('{country}', $user_country_city_name[0]);

					if($user_country_city_name[1])
						$tpl->set('{city}', ', '.$user_country_city_name[1]);
					else
						$tpl->set('{city}', '');

					$tpl->set('{user-id}', $row['ruid']);
					$tpl->set('{name}', $row['user_search_pref']);
					
					if($row['user_photo'])
						$tpl->set('{ava}', '/uploads/users/'.$row['ruid'].'/100_'.$row['user_photo']);
					else
						$tpl->set('{ava}', '{theme}/images/100_no_ava.png');
					
					//Возраст юзера
					$user_birthday = explode('-', $row['user_birthday']);
					$tpl->set('{age}', user_age($user_birthday[0], $user_birthday[1], $user_birthday[2]));
					
					OnlineTpl($row['user_last_visit']);
					$tpl->compile('content');
				}
			} else
				msgbox('', '<br /><br />Вы еще никого не приглашали.<br /><br /><br />', 'info_2');
		break;
		
		default:
		
			//################### Вывод текущего счета ###################//
			$owner = $db->super_query("SELECT user_balance FROM `".PREFIX."_users` WHERE user_id = '{$user_id}'");
			$tpl->load_template('balance/main.tpl');
			$tpl->set('{ubm}', $owner['user_balance']);
			$tpl->compile('content');
	}
	$tpl->clear();
	$db->free();
} else {
	$user_speedbar = $lang['no_infooo'];
	msgbox('', $lang['not_logged'], 'info');
}
?>