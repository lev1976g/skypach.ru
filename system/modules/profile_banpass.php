<?php
/* 
	Appointment: Настройки
	File: settings.php 
 
*/
if(!defined('MOZG'))
	die('Hacking attempt!');

if($ajax == 'yes')
	NoAjaxQuery();


	$tpl->load_template('profile_banpass.tpl');
	$tpl->compile('main');
	echo str_replace('{theme}', '/templates/'.$config['temp'], $tpl->result['main']);
	die();

?>

