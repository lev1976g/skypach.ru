<?php

/* 
	Appointment: �������
	File: rating.php 
 
*/
header("Content-type: text/html; charset=windows-1251");
echo iconv("UTF-8", "WINDOWS-1251", $comment);

if(!defined('MOZG'))
	die('Hacking attempt!');

if($ajax == 'yes')
	NoAjaxQuery();
	
if($logged){
	$act = $_GET['act'];
	$for_user_id = $_POST['for_user_id'];
	$comment = $_POST['comment'];
	$user_id = $user_info['user_id'];
	$nums = str_replace("-", '', $_POST['num']);
	$balanc = $db->super_query("SELECT user_balance FROM `".PREFIX."_users` WHERE user_id = '{$user_id}'");
	$num = $balanc['user_balance']-1;
	$balance = $balanc['user_balance'];
	$rate_date = time();
	switch($act){

// ###################### ���������� ������� � ������ ###################### //
// ###################### ����� ���������� ###################### //

case "view":
$limit_rate = 4;
if($_POST['page_cnt'] > 0)
  $page_cnt = intval($_POST['page_cnt'])*$limit_rate;
else
  $page_cnt = 0;

//echo $page_cnt;
$tpl->load_template('rating/view.tpl');

$sql_rate = $db->super_query("SELECT author_user_id, for_user_id, rate_date, num, comment, user_name, user_lastname, user_photo FROM `".PREFIX."_rating_list` ur left join `".PREFIX."_users` u on u.user_id = ur.author_user_id WHERE for_user_id = '{$user_id}' ORDER by `rate_date` DESC LIMIT {$page_cnt},{$limit_rate}",1);
  //var_dump($sql_rate);
  if($sql_rate){
        $c = 0;
        foreach($sql_rate as $sql_list){
         if($sql_list['user_photo']){
          $ava = '/uploads/users/'.$sql_list['author_user_id'].'/50_'.$sql_list['user_photo'];
         }else{
          $ava = 'templates/Default/images/no_ava_50.png';
         }
         $temp_list.='
          <div class="rate_block">
           <a href="/id'.$sql_list['author_user_id'].'" onClick="Page.Go(this.href); return false"><img src="'.$ava.'" width="50" height="50" /></a>
           <a href="/id'.$sql_list['author_user_id'].'" onClick="Page.Go(this.href); return false"><b>'.$sql_list['user_name'].' '.$sql_list['user_lastname'].'</b></a><br><div style="margin-top:5px">'.$sql_list['comment'].'</div>
           <div class="profile_ratingview">+'.$sql_list['num'].'</div>
           <div class="rate_date">'.megaDateNoTpl($sql_list['rate_date']).'</div>
          </div>'."\n";
         $c++;
        }
  
        if($c > 3 AND !$_POST['page_cnt']){
         $tpl->set('{users}', $temp_list);
         $tpl->set('[prev]', '');
         $tpl->set('[/prev]', '');
         $tpl->compile('content');
        }else if($c < 3 AND !$_POST['page_cnt']){
         $tpl->set('{users}', $temp_list);
         $tpl->set_block("'\\[prev\\](.*?)\\[/prev\\]'si","");
         $tpl->compile('content');
        }
  }else{
   $tpl->set('{users}', '� ��� ���� ��� ������� ��������');
   $tpl->set_block("'\\[prev\\](.*?)\\[/prev\\]'si","");
   $tpl->compile('content');
  }
  if($_POST['page_cnt']){
   echo $temp_list;
  }

AjaxTpl();
die();
$tpl->clear();
$db->free();
break;

case "add":

$comment = ajax_utf8(textFilter($_POST['comment']));
if($for_user_id){
	if($balanc['user_balance'] >= "$nums"){
	
// ################################################### ��������� � �������������� .############################################ //
	$db->query("UPDATE `".PREFIX."_users` SET user_rate = user_rate+{$nums} WHERE user_id = '{$for_user_id}'");
	$db->query("UPDATE `".PREFIX."_users` SET user_balance = user_balance-{$nums} WHERE user_id = '{$user_id}'");

// ################################################### ���������� ������� � ��. ############################################### //
	$db->query("INSERT INTO `".PREFIX."_rating_list` (author_user_id, for_user_id, num, comment, rate_date) VALUES ('{$user_id}', '{$for_user_id}', '{$nums}', '{$comment}', '{$rate_date}')");
	echo '';
	}
}
die();
break;

default:
$tpl->load_template('rating/main.tpl');
$tpl->set('{user-id}', $for_user_id);
$tpl->set('{num}', $num);
$tpl->set('{balance}', $balance);
$tpl->compile('content');
AjaxTpl();
die();
	}
}
?>