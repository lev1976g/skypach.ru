<?
/* 
	Appointment: ��������� �����
	File: init.php
 
*/
if(!defined('MOZG'))
	die('Hacking attempt!');

	
@include ENGINE_DIR.'/data/config.php';

if(!$config['home_url']) die("TOEngine not installed. Please run install.php");

include ENGINE_DIR.'/classes/mysql.php';
include ENGINE_DIR.'/data/db.php';
include ENGINE_DIR.'/classes/templates.php';
if($config['gzip'] == 'yes') include ENGINE_DIR.'/modules/gzip.php';
include ROOT_DIR.'/lang/Russian/site.lng';
include ENGINE_DIR.'/modules/functions.php';

if($_GET['act'] == 'activate')
	include ENGINE_DIR . "/modules/activate.php";

if($_GET['act'] == 'change_mobile'){
	$_SESSION['user_mobile'] = 1;
	header("Location: /?go=main");
}

if($_GET['act'] == 'change_fullver'){
	$_SESSION['user_mobile'] = 0;
	header("Location: /");
}

if($_SESSION['user_mobile'] == 1){
	if($_GET['go'] == 'messages'){ 	$_GET['go'] = 'im'; }
	$config['temp'] = 'mobile';
	if($_GET['go'] == '' AND $_GET['act'] != 'logout'){ 	header("Location: /?go=main"); exit; }
}

$tpl = new mozg_template;
$tpl->dir = ROOT_DIR.'/templates/'.$config['temp'];
define('TEMPLATE_DIR', $tpl->dir);

$_DOCUMENT_DATE = false;
$Timer = new microTimer();
$Timer->start();

$server_time = intval($_SERVER['REQUEST_TIME']);

include ENGINE_DIR.'/modules/login.php';

if($_GET['act'] == 'newpass')
	include ENGINE_DIR . "/modules/settings.php";


if($config['offline'] == "yes") include ENGINE_DIR . '/modules/offline.php';
if($user_info['user_delet']) include ENGINE_DIR . '/modules/profile_delet.php';
if($user_info['user_emailed'] == 1) include ENGINE_DIR . '/modules/profile_disabled.php';
if($user_info['user_banpass'] == 1) include ENGINE_DIR . '/modules/profile_banpass.php';
$sql_banned = $db->super_query("SELECT * FROM ".PREFIX."_banned", true, "banned", true);
if(isset($sql_banned)) $blockip = check_ip($sql_banned); else $blockip = false;
if($user_info['user_ban_date'] >= $server_time OR $user_info['user_ban_date'] == '0' OR $blockip) include ENGINE_DIR . '/modules/profile_ban.php';

//���� ���� ��������� �� ��������� ��������� ���� ��������� � ������� ������ � �� ������ ��������
if($logged){
	if(!$user_info['user_lastupdate']) $user_info['user_lastupdate'] = 1;

	//���������� 3 �������.
	if(date('Y-m-d', $user_info['user_lastupdate']) < date('Y-m-d', $server_time))
		$sql_balance = ", user_balance = user_balance+3, user_lastupdate = '{$server_time}'";

    //�� ��������� ������.
	//if(date('Y-m-d', $user_info['user_lastupdate']) < date('Y-m-d', $server_time))
	//	$sql_balance = ", user_lastupdate = '{$server_time}' ";

	$db->query("UPDATE LOW_PRIORITY `".PREFIX."_users` SET user_last_visit = '{$server_time}' {$sql_balance} WHERE user_id = '{$user_info['user_id']}'");
}

//��������� ����� �������������
$user_group = unserialize(serialize(array(
							1 => array( #�������������
								'addnews' => '1', 
							),
							2 => array( #������� ���������
								'addnews' => '0', 
							),
							3 => array( #���������
								'addnews' => '0', 
							),
							4 => array( #������������
								'addnews' => '0', 
							), 
							5 => array( #������������
								'addnews' => '0', 
							),
						)));

//����� �������
$online_time = $server_time - $config['online_time'];

include ENGINE_DIR.'/mod.php';
?>