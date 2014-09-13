<?php
/* 
	Appointment: �������� ������� �����
	File: functions.php 
 
*/
if(!defined('MOZG'))
	die('Hacking attempt!');

class microTimer {
	function start(){
		global $starttime;
		$mtime = microtime();
		$mtime = explode( ' ', $mtime );
		$mtime = $mtime[1] + $mtime[0];
		$starttime = $mtime;
	}
	function stop(){
		global $starttime;
		$mtime = microtime();
		$mtime = explode( ' ', $mtime );
		$mtime = $mtime[1] + $mtime[0];
		$endtime = $mtime;
		$totaltime = round( ($endtime - $starttime), 5 );
		return $totaltime;
	}
}
function totranslit($var, $lower = true, $punkt = true) {
	global $langtranslit;
	
	if ( is_array($var) ) return "";

	if (!is_array ( $langtranslit ) OR !count( $langtranslit ) ) {

		$langtranslit = array(
		'�' => 'a', '�' => 'b', '�' => 'v',
		'�' => 'g', '�' => 'd', '�' => 'e',
		'�' => 'e', '�' => 'zh', '�' => 'z',
		'�' => 'i', '�' => 'y', '�' => 'k',
		'�' => 'l', '�' => 'm', '�' => 'n',
		'�' => 'o', '�' => 'p', '�' => 'r',
		'�' => 's', '�' => 't', '�' => 'u',
		'�' => 'f', '�' => 'h', '�' => 'c',
		'�' => 'ch', '�' => 'sh', '�' => 'sch',
		'�' => '', '�' => 'y', '�' => '',
		'�' => 'e', '�' => 'yu', '�' => 'ya',
		"�" => "yi", "�" => "ye",
		
		'�' => 'A', '�' => 'B', '�' => 'V',
		'�' => 'G', '�' => 'D', '�' => 'E',
		'�' => 'E', '�' => 'Zh', '�' => 'Z',
		'�' => 'I', '�' => 'Y', '�' => 'K',
		'�' => 'L', '�' => 'M', '�' => 'N',
		'�' => 'O', '�' => 'P', '�' => 'R',
		'�' => 'S', '�' => 'T', '�' => 'U',
		'�' => 'F', '�' => 'H', '�' => 'C',
		'�' => 'Ch', '�' => 'Sh', '�' => 'Sch',
		'�' => '', '�' => 'Y', '�' => '',
		'�' => 'E', '�' => 'Yu', '�' => 'Ya',
		"�" => "yi", "�" => "ye",
		);

	}
	
	$var = str_replace( ".php", "", $var );
	$var = trim( strip_tags( $var ) );
	$var = preg_replace( "/\s+/ms", "-", $var );

	$var = strtr($var, $langtranslit);
	
	if ( $punkt ) $var = preg_replace( "/[^a-z0-9\_\-.]+/mi", "", $var );
	else $var = preg_replace( "/[^a-z0-9\_\-]+/mi", "", $var );

	$var = preg_replace( '#[\-]+#i', '-', $var );

	if ( $lower ) $var = strtolower( $var );
	
	if( strlen( $var ) > 200 ) {
		
		$var = substr( $var, 0, 200 );
		
		if( ($temp_max = strrpos( $var, '-' )) ) $var = substr( $var, 0, $temp_max );
	
	}
	
	return $var;
}
function GetVar($v){
	if(ini_get('magic_quotes_gpc'))
		return stripslashes($v) ;
	return $v;
}
function check_xss(){
	$url = html_entity_decode(urldecode($_SERVER['QUERY_STRING']));
	
	if($url){
		if((strpos( $url, '<' ) !== false) || (strpos( $url, '>' ) !== false) || (strpos( $url, '"' ) !== false) || (strpos( $url, './' ) !== false) || (strpos( $url, '../' ) !== false) || (strpos( $url, '\'' ) !== false) || (strpos( $url, '.php' ) !== false)){
			if($_GET['go'] != "search" AND $_GET['go'] != "messages") 
				die('Hacking attempt!');
		}
	}
	
	$url = html_entity_decode( urldecode( $_SERVER['REQUEST_URI'] ) );
	if($url){
		if((strpos($url, '<') !== false) || (strpos($url, '>') !== false) || (strpos($url, '"') !== false) || (strpos($url, '\'') !== false)){
			if($_GET['go'] != "search" AND $_GET['go'] != "messages")
				die('Hacking attempt!');
		}
	}
}
function langdate($format, $stamp){
	global $langdate;
	return strtr(@date($format, $stamp), $langdate);
}
function navigation($gc, $num, $type){
	global $tpl, $page;

	$gcount = $gc;
	$cnt = $num;
	$items_count = $cnt;
	$items_per_page = $gcount;
	$page_refers_per_page = 5;
	$pages = '';		
	$pages_count = ( ( $items_count % $items_per_page != 0 ) ) ? floor( $items_count / $items_per_page ) + 1 : floor( $items_count / $items_per_page );
	$start_page = ( $page - $page_refers_per_page <= 0  ) ? 1 : $page - $page_refers_per_page + 1;
	$page_refers_per_page_count = ( ( $page - $page_refers_per_page < 0 ) ? $page : $page_refers_per_page ) + ( ( $page + $page_refers_per_page > $pages_count ) ? ( $pages_count - $page )  :  $page_refers_per_page - 1 );
			
	if($page > 1)
		$pages .= '<a href="'.$type.($page-1).'" onClick="Page.Go(this.href); return false">&laquo;</a>';
	else
		$pages .= '';
				
	if ( $start_page > 1 ) {
		$pages .= '<a href="'.$type.'1" onClick="Page.Go(this.href); return false">1</a>';
		$pages .= '<a href="'.$type.( $start_page - 1 ).'" onClick="Page.Go(this.href); return false">...</a>';
			
	}
					
	for ( $index = -1; ++$index <= $page_refers_per_page_count-1; ) {
		if ( $index + $start_page == $page )
			$pages .= '<span>' . ( $start_page + $index ) . '</span>';
		else 
			$pages .= '<a href="'.$type.($start_page+$index).'" onClick="Page.Go(this.href); return false">'.($start_page+$index).'</a>';
	} 
			
	if ( $page + $page_refers_per_page <= $pages_count ) { 
		$pages .= '<a href="'.$type.( $start_page + $page_refers_per_page_count ).'" onClick="Page.Go(this.href); return false">...</a>';
		$pages .= '<a href="'.$type.$pages_count.'" onClick="Page.Go(this.href); return false">'.$pages_count.'</a>';	
	} 
				
	$resif = $cnt/$gcount;
	if(ceil($resif) == $page)
		$pages .= '';
	else
		$pages .= '<a href="'.$type.($page+1).'" onClick="Page.Go(this.href); return false">&raquo;</a>';

	if ( $pages_count <= 1 )
		$pages = '';

	$tpl_2 = new mozg_template();
	$tpl_2->dir = TEMPLATE_DIR;
	$tpl_2->load_template('nav.tpl');
	$tpl_2->set('{pages}', $pages);
	$tpl_2->compile('content');
	$tpl_2->clear();
	$tpl->result['content'] .= $tpl_2->result['content'];
}
function box_navigation($gc, $num, $id, $function, $act){
	global $tpl, $page;
	$gcount = $gc;
	$cnt = $num;
	$items_count = $cnt;
	$items_per_page = $gcount;
	$page_refers_per_page = 5;
	$pages = '';		
	$pages_count = ( ( $items_count % $items_per_page != 0 ) ) ? floor( $items_count / $items_per_page ) + 1 : floor( $items_count / $items_per_page );
	$start_page = ( $page - $page_refers_per_page <= 0  ) ? 1 : $page - $page_refers_per_page + 1;
	$page_refers_per_page_count = ( ( $page - $page_refers_per_page < 0 ) ? $page : $page_refers_per_page ) + ( ( $page + $page_refers_per_page > $pages_count ) ? ( $pages_count - $page )  :  $page_refers_per_page - 1 );
	
	if(!$act)
		$act = "''";
	else
		$act = "'{$act}'";
			
	if($page > 1)
		$pages .= '<a href="" onClick="'.$function.'('.$id.', '.($page-1).', '.$act.'); return false">&laquo;</a>';
	else
		$pages .= '';
				
	if ( $start_page > 1 ) {
		$pages .= '<a href="" onClick="'.$function.'('.$id.', 1, '.$act.'); return false">1</a>';
		$pages .= '<a href="" onClick="'.$function.'('.$id.', '.($start_page-1).', '.$act.'); return false">...</a>';
			
	}
					
	for ( $index = -1; ++$index <= $page_refers_per_page_count-1; ) {
		if ( $index + $start_page == $page )
			$pages .= '<span>' . ( $start_page + $index ) . '</span>';
		else 
			$pages .= '<a href="" onClick="'.$function.'('.$id.', '.($start_page+$index).', '.$act.'); return false">'.($start_page+$index).'</a>';
	} 
			
	if ( $page + $page_refers_per_page <= $pages_count ) { 
		$pages .= '<a href="" onClick="'.$function.'('.$id.', '.($start_page + $page_refers_per_page_count).', '.$act.'); return false">...</a>';
		$pages .= '<a href="" onClick="'.$function.'('.$id.', '.$pages_count.', '.$act.'); return false">'.$pages_count.'</a>';	
	} 
				
	$resif = $cnt/$gcount;
	if(ceil($resif) == $page)
		$pages .= '';
	else
		$pages .= '<a href="/" onClick="'.$function.'('.$id.', '.($page+1).', '.$act.'); return false">&raquo;</a>';

	if ( $pages_count <= 1 )
		$pages = '';

	$tpl_2 = new mozg_template();
	$tpl_2->dir = TEMPLATE_DIR;
	$tpl_2->load_template('nav.tpl');
	$tpl_2->set('{pages}', $pages);
	$tpl_2->compile('content');
	$tpl_2->clear();
	$tpl->result['content'] .= $tpl_2->result['content'];
}
function msgbox($title, $text, $tpl_name) {
	global $tpl;
	
	$tpl_2 = new mozg_template();
	$tpl_2->dir = TEMPLATE_DIR;
	
	$tpl_2->load_template($tpl_name.'.tpl');
	$tpl_2->set('{error}', $text);
	$tpl_2->set('{title}', $title);
	$tpl_2->compile('info');
	$tpl_2->clear();
	
	$tpl->result['info'] .= $tpl_2->result['info'];
}
function check_smartphone() {
	if($_SESSION['mobile_enable'])
		return true;

	$phone_array = array('iphone', 'android', 'pocket', 'palm', 'windows ce', 'windowsce', 'cellphone', 'opera mobi', 'operamobi', 'ipod', 'small', 'sharp', 'sonyericsson', 'symbian', 'symbos', 'opera mini', 'nokia', 'htc_', 'samsung', 'motorola', 'smartphone', 'blackberry', 'playstation portable', 'tablet browser', 'android');
	$agent = strtolower($_SERVER['HTTP_USER_AGENT']);

	foreach($phone_array as $value){
		if(strpos($agent, $value) !== false) 
			return true;
	}

	return false;
}
function creat_system_cache($prefix, $cache_text){
	$filename = ENGINE_DIR . '/cache/system/'.$prefix.'.php';

	$fp = fopen($filename, 'wb+');
	fwrite($fp,$cache_text);
	fclose($fp);
	
	@chmod($filename, 0666);
}
function system_cache($prefix) {
	$filename = ENGINE_DIR.'/cache/system/'.$prefix.'.php';
	return @file_get_contents($filename);
}
function mozg_clear_cache(){
	$fdir = opendir(ENGINE_DIR.'/cache/'.$folder);
	
	while($file = readdir($fdir))
		if($file != '.' and $file != '..' and $file != '.htaccess' and $file != 'system')
			@unlink(ENGINE_DIR.'/cache/'.$file);
}
function mozg_clear_cache_folder($folder){
	$fdir = opendir(ENGINE_DIR.'/cache/'.$folder);
	
	while($file = readdir($fdir))
		@unlink(ENGINE_DIR.'/cache/'.$folder.'/'.$file);
}
function mozg_clear_cache_file($prefix) {
	@unlink(ENGINE_DIR.'/cache/'.$prefix.'.tmp');
}
function mozg_mass_clear_cache_file($prefix){
	$arr_prefix = explode('|', $prefix);
	foreach($arr_prefix as $file)
		@unlink(ENGINE_DIR.'/cache/'.$file.'.tmp');
}
function mozg_create_folder_cache($prefix){
	if(!is_dir(ROOT_DIR.'/system/cache/'.$prefix)){
		@mkdir(ROOT_DIR.'/system/cache/'.$prefix, 0777);
		@chmod(ROOT_DIR.'/system/cache/'.$prefix, 0777);
	}
}
function mozg_create_cache($prefix, $cache_text) {
	$filename = ENGINE_DIR.'/cache/'.$prefix.'.tmp';
	$fp = fopen($filename, 'wb+');
	fwrite($fp, $cache_text);
	fclose($fp);
	@chmod($filename, 0666);
}
function mozg_cache($prefix) {
	$filename = ENGINE_DIR.'/cache/'.$prefix.'.tmp';
	return @file_get_contents($filename);
}
function clean_url($url) {
	if( $url == '' ) return;
	
	$url = str_replace( "http://", "", strtolower( $url ) );
	$url = str_replace( "https://", "", $url );
	if( substr( $url, 0, 4 ) == 'www.' ) $url = substr( $url, 4 );
	$url = explode( '/', $url );
	$url = reset( $url );
	$url = explode( ':', $url );
	$url = reset( $url );
	
	return $url;
}

$domain_cookie = explode (".", clean_url( $_SERVER['HTTP_HOST'] ));
$domain_cookie_count = count($domain_cookie);
$domain_allow_count = -2;

if($domain_cookie_count > 2){

	if(in_array($domain_cookie[$domain_cookie_count-2], array('com', 'net', 'org') )) 
		$domain_allow_count = -3;
		
	if($domain_cookie[$domain_cookie_count-1] == 'ua' ) 
		$domain_allow_count = -3;
		
	$domain_cookie = array_slice($domain_cookie, $domain_allow_count);
}

$domain_cookie = ".".implode(".", $domain_cookie);

define('DOMAIN', $domain_cookie);

function set_cookie($name, $value, $expires) {
	
	if( $expires ) {
		
		$expires = time() + ($expires * 86400);
	
	} else {
		
		$expires = FALSE;
	
	}
	
	if( PHP_VERSION < 5.2 ) {
		
		setcookie($name, $value, $expires, "/", DOMAIN . "; HttpOnly");
	
	} else {
		
		setcookie($name, $value, $expires, "/", DOMAIN, NULL, TRUE);
	
	}
}
function strip_data($text) {
	$quotes = array ("\x27", "\x22", "\x60", "\t", "\n", "\r", "'", ",", "/", ";", ":", "@", "[", "]", "{", "}", "=", ")", "(", "*", "&", "^", "%", "$", "<", ">", "?", "!", '"' );
	$goodquotes = array ("-", "+", "#" );
	$repquotes = array ("\-", "\+", "\#" );
	$text = stripslashes( $text );
	$text = trim( strip_tags( $text ) );
	$text = str_replace( $quotes, '', $text );
	$text = str_replace( $goodquotes, $repquotes, $text );
	return $text;
}
function installationSelected($id, $options){
	$source = str_replace('value="'.$id.'"', 'value="'.$id.'" selected', $options);
	return $source;
}
function ajax_utf8($source){
	return iconv('utf-8', 'windows-1251', $source);
}
function xfieldsdataload($id){
	if( $id == "" ) return;
	
	$xfieldsdata = explode( "||", $id );
	foreach ( $xfieldsdata as $xfielddata ) {
		list ( $xfielddataname, $xfielddatavalue ) = explode( "|", $xfielddata );
		$xfielddataname = str_replace( "&#124;", "|", $xfielddataname );
		$xfielddataname = str_replace( "__NEWL__", "\r\n", $xfielddataname );
		$xfielddatavalue = str_replace( "&#124;", "|", $xfielddatavalue );
		$xfielddatavalue = str_replace( "__NEWL__", "\r\n", $xfielddatavalue );
		$data[$xfielddataname] = $xfielddatavalue;
	}
	
	return $data;
}
function profileload() {
	$path = ENGINE_DIR.'/data/xfields.txt';
	$filecontents = file($path);

	if(!is_array($filecontents)){
		exit('���������� ��������� ����');
	}
				
	foreach($filecontents as $name => $value){
		$filecontents[$name] = explode("|", trim($value));
		foreach($filecontents[$name] as $name2 => $value2){
			$value2 = str_replace("&#124;", "|", $value2); 
			$value2 = str_replace("__NEWL__", "\r\n", $value2);
			$filecontents[$name][$name2] = $value2;
		}
	}
	return $filecontents;
}
function NoAjaxQuery(){
	if(clean_url($_SERVER['HTTP_REFERER']) != clean_url($_SERVER['HTTP_HOST']) AND $_SERVER['REQUEST_METHOD'] != 'POST')
		header('Location: /index.php?go=none');
}
function replace_rn($source){
	
	$find[] = "'\r'";
	$replace[] = "";
	$find[] = "'\n'";
	$replace[] = "";
	
	$source = preg_replace($find, $replace, $source);
	
	return $source;
	
}
function myBr($source){
	
	$find[] = "'\r'";
	$replace[] = "<br />";
	
	$find[] = "'\n'";
	$replace[] = "<br />";

	$source = preg_replace($find, $replace, $source);
	
	return $source;
	
}
function myBrRn($source){

	$find[] = "<br />";
	$replace[] = "\r";
	$find[] = "<br />";
	$replace[] = "\n";
	
	$source = str_replace($find, $replace, $source);
	
	return $source;
}
function rn_replace($source){
	
	$find[] = "'\r'";
	$replace[] = "";
	$find[] = "'\n'";
	$replace[] = "";
	
	$source = preg_replace($find, $replace, $source);
	
	return $source;
	
}
function gram_record($num,$type){
	
	$strlen_num = strlen($num);
	
	if($num <= 21){
		$numres = $num;
	} elseif($strlen_num == 2){
		$parsnum = substr($num,1,2);
		$numres = str_replace('0','10',$parsnum);
	} elseif($strlen_num == 3){
		$parsnum = substr($num,2,3);
		$numres = str_replace('0','10',$parsnum);
	} elseif($strlen_num == 4){
		$parsnum = substr($num,3,4);
		$numres = str_replace('0','10',$parsnum);
	} elseif($strlen_num == 5){
		$parsnum = substr($num,4,5);
		$numres = str_replace('0','10',$parsnum);
	}
	
	if($type == 'rec'){
		if($numres == 1){
			$gram_num_record = '������';
		} elseif($numres < 5){
			$gram_num_record = '������';
		} elseif($numres < 21){
			$gram_num_record = '�������';
		} elseif($numres == 21){
			$gram_num_record = '������';
		}
	}
	
	if($type == 'comments'){
		if($numres == 0){
			$gram_num_record = '������������';
		} elseif($numres == 1){
			$gram_num_record = '�����������';
		} elseif($numres < 5){
			$gram_num_record = '�����������';
		} elseif($numres < 21){
			$gram_num_record = '������������';
		} elseif($numres == 21){
			$gram_num_record = '�����������';
		}
	}
	
	if($type == 'albums'){
		if($numres == 0){
			$gram_num_record = '��������';
		} elseif($numres == 1){
			$gram_num_record = '������';
		} elseif($numres < 5){
			$gram_num_record = '�������';
		} elseif($numres < 21){
			$gram_num_record = '��������';
		} elseif($numres == 21){
			$gram_num_record = '������';
		}
	}
	
	if($type == 'photos'){
		if($numres == 0){
			$gram_num_record = '����������';
		} elseif($numres == 1){
			$gram_num_record = '����������';
		} elseif($numres < 5){
			$gram_num_record = '����������';
		} elseif($numres < 21){
			$gram_num_record = '����������';
		} elseif($numres == 21){
			$gram_num_record = '����������';
		}
	}
	
	if($type == 'friends_demands'){
		if($numres == 0){
			$gram_num_record = '��� ������ � ������';
		} elseif($numres == 1){
			$gram_num_record = '������ � ������';
		} elseif($numres < 5){
			$gram_num_record = '������ � ������';
		} elseif($numres < 21){
			$gram_num_record = '������ � ������';
		} elseif($numres == 21){
			$gram_num_record = '������ � ������';
		}
	}
	
	if($type == 'user_age'){
		if($numres == 0){
			$gram_num_record = '���';
		} elseif($numres == 1){
			$gram_num_record = '���';
		} elseif($numres < 5){
			$gram_num_record = '����';
		} elseif($numres < 21){
			$gram_num_record = '���';
		} elseif($numres == 21){
			$gram_num_record = '���';
		}
	}
	
	if($type == 'friends'){
		if($numres == 0){
			$gram_num_record = '��� ������';
		} elseif($numres == 1){
			$gram_num_record = '����';
		} elseif($numres < 5){
			$gram_num_record = '�����';
		} elseif($numres < 21){
			$gram_num_record = '������';
		} elseif($numres == 21){
			$gram_num_record = '����';
		}
	}
	
	if($type == 'friends_online'){
		if($numres == 0){
			$gram_num_record = '��� ������';
		} elseif($numres == 1){
			$gram_num_record = '���� �� �����';
		} elseif($numres < 5){
			$gram_num_record = '����� �� �����';
		} elseif($numres < 21){
			$gram_num_record = '������ �� �����';
		} elseif($numres == 21){
			$gram_num_record = '���� �� �����';
		}
	}
	
	if($type == 'fave'){
		if($numres == 0){
			$gram_num_record = '��� �����';
		} elseif($numres == 1){
			$gram_num_record = '�������';
		} elseif($numres < 5){
			$gram_num_record = '��������';
		} elseif($numres < 21){
			$gram_num_record = '�������';
		} elseif($numres == 21){
			$gram_num_record = '�������';
		}
	}
	
	if($type == 'prev'){
		if($numres == 0){
			$gram_num_record = '��� ������������';
		} elseif($numres == 1){
			$gram_num_record = '����������';
		} elseif($numres < 5){
			$gram_num_record = '����������';
		} elseif($numres < 21){
			$gram_num_record = '����������';
		} elseif($numres == 21){
			$gram_num_record = '����������';
		}
	}
	
	if($type == 'subscr'){
		if($numres == 0){
			$gram_num_record = '��� �����������';
		} elseif($numres == 1){
			$gram_num_record = '��������';
		} elseif($numres < 5){
			$gram_num_record = '��������';
		} elseif($numres < 21){
			$gram_num_record = '��������';
		} elseif($numres == 21){
			$gram_num_record = '��������';
		}
	}
	
	if($type == 'videos'){
		if($numres == 0){
			$gram_num_record = '��� ������������';
		} elseif($numres == 1){
			$gram_num_record = '�����������';
		} elseif($numres < 5){
			$gram_num_record = '�����������';
		} elseif($numres < 21){
			$gram_num_record = '������������';
		} elseif($numres == 21){
			$gram_num_record = '�����������';
		}
	}
	
	if($type == 'notes'){
		if($numres == 0){
			$gram_num_record = '��� �������';
		} elseif($numres == 1){
			$gram_num_record = '�������';
		} elseif($numres < 5){
			$gram_num_record = '�������';
		} elseif($numres < 21){
			$gram_num_record = '�������';
		} elseif($numres == 21){
			$gram_num_record = '�������';
		}
	}
	
	if($type == 'like'){
		if($numres == 0){
			$gram_num_record = '��������';
		} elseif($numres == 1){
			$gram_num_record = '��������';
		} elseif($numres < 5){
			$gram_num_record = '�����';
		} elseif($numres < 21){
			$gram_num_record = '�����';
		} elseif($numres == 21){
			$gram_num_record = '��������';
		}
	}
	
	if($type == 'updates'){
		if($numres == 0){
			$gram_num_record = '';
		} elseif($numres == 1){
			$gram_num_record = '��������';
		} elseif($numres < 5){
			$gram_num_record = '�������';
		} elseif($numres < 21){
			$gram_num_record = '�������';
		} elseif($numres == 21){
			$gram_num_record = '��������';
		}
	}
	
	if($type == 'msg'){
		if($numres == 1){
			$gram_num_record = '���������';
		} elseif($numres < 5){
			$gram_num_record = '���������';
		} elseif($numres < 21){
			$gram_num_record = '���������';
		} elseif($numres == 21){
			$gram_num_record = '���������';
		}
	}
	
	if($type == 'questions'){
		if($numres == 1){
			$gram_num_record = '������';
		} elseif($numres < 5){
			$gram_num_record = '�������';
		} elseif($numres < 21){
			$gram_num_record = '��������';
		} elseif($numres == 21){
			$gram_num_record = '������';
		}
	}

	if($type == 'gifts'){
		if($numres == 1){
			$gram_num_record = '�������';
		} elseif($numres < 5){
			$gram_num_record = '�������';
		} elseif($numres < 21){
			$gram_num_record = '��������';
		} elseif($numres == 21){
			$gram_num_record = '�������';
		}
	}

	if($type == 'groups_users'){
		if($numres == 1){
			$gram_num_record = '��������';
		} elseif($numres < 5){
			$gram_num_record = '���������';
		} elseif($numres < 21){
			$gram_num_record = '����������';
		} elseif($numres == 21){
			$gram_num_record = '��������';
		}
	}
	
	if($type == 'groups'){
		if($numres == 1){
			$gram_num_record = '����������';
		} elseif($numres < 5){
			$gram_num_record = '�����������';
		} elseif($numres < 21){
			$gram_num_record = '�����������';
		} elseif($numres == 21){
			$gram_num_record = '����������';
		}
	}
	
	if($type == 'subscribers'){
		if($numres == 1){
			$gram_num_record = '���������';
		} elseif($numres < 5){
			$gram_num_record = '����������';
		} elseif($numres < 21){
			$gram_num_record = '�����������';
		} elseif($numres == 21){
			$gram_num_record = '���������';
		}
	}
	
	if($type == 'subscribers2'){
		if($numres == 1){
			$gram_num_record = '���������� <span id="traf2">'.$num.'</span> �������';
		} elseif($numres < 5){
			$gram_num_record = '����������� <span id="traf2">'.$num.'</span> ��������';
		} elseif($numres < 21){
			$gram_num_record = '����������� <span id="traf2">'.$num.'</span> �������';
		} elseif($numres == 21){
			$gram_num_record = '���������� <span id="traf2">'.$num.'</span> �������';
		}
	}
	
	if($type == 'feedback'){
		if($numres == 1){
			$gram_num_record = '�������';
		} elseif($numres < 5){
			$gram_num_record = '��������';
		} elseif($numres < 21){
			$gram_num_record = '���������';
		} elseif($numres == 21){
			$gram_num_record = '�������';
		}
	}

	if($type == 'se_groups'){
		if($numres == 1){
			$gram_num_record = '����������';
		} elseif($numres < 5){
			$gram_num_record = '����������';
		} elseif($numres < 21){
			$gram_num_record = '���������';
		} elseif($numres == 21){
			$gram_num_record = '����������';
		}
	}

	if($type == 'audio'){
		if($numres == 1){
			$gram_num_record = '�����';
		} elseif($numres < 5){
			$gram_num_record = '�����';
		} elseif($numres < 21){
			$gram_num_record = '�����';
		} elseif($numres == 21){
			$gram_num_record = '�����';
		}
	}

	if($type == 'apps'){
		if($numres == 0){
			$gram_num_record = '����������';
		} elseif($numres == 1){
			$gram_num_record = '��������';
		} elseif($numres < 5){
			$gram_num_record = '���������';
		} elseif($numres < 21){
			$gram_num_record = '����������';
		} elseif($numres == 21){
			$gram_num_record = '��������';
		}
	}

	
	if($type == 'video_views'){
		if($numres == 1){
			$gram_num_record = '��������';
		} elseif($numres < 5){
			$gram_num_record = '���������';
		} elseif($numres < 21){
			$gram_num_record = '����������';
		} elseif($numres == 21){
			$gram_num_record = '��������';
		}
	}
	
	return $gram_num_record;
}
function gramatikName($source){
	$name_u_gram = $source;
	$str_1_name = strlen($name_u_gram);
	$str_2_name = $str_1_name-2;
	$str_3_name = substr($name_u_gram, $str_2_name, $str_1_name);
	$str_5_name = substr($name_u_gram, 0, $str_2_name);
	$str_4_name = strtr($str_3_name,array(
					'��' => '��',
					'��' => '���',
					'��' => '���',
					'��' => '��',
					'��' => '���',
					'��' => '��',
					'��' => '��',
					'��' => '��',
					'��' => '���',
					'��' => '��',
					'��' => '��',
					'��' => '��',
					'��' => '���',
					'��' => '���',
					'��' => '���',
					'��' => '���',
					'��' => '���',
					'��' => '��',
					'��' => '��',
					'��' => '��',
					'��' => '��',
					'��' => '���',
					'��' => '��',
					'��' => '���',
					'��' => '��',
					'��' => '���',
					'��' => '���',
					'��' => '��',
					'��' => '���',
					'��' => '���',
					'��' => '��',
					'��' => '���',
					'��' => '���',
					'��' => '���',
					'��' => '���',
					'��' => '���',
					'��' => '��',
					'��' => '��',
					'��' => '���',
					'��' => '���'
					));
	$name_user_gram = $str_5_name.$str_4_name;
	return $name_user_gram;
}

function Hacking(){
	global $ajax, $lang;
	
	if($ajax){
		NoAjaxQuery();
		echo <<<HTML
<script type="text/javascript">
document.title = '{$lang['error']}';
document.getElementById('speedbar').innerHTML = '{$lang['error']}';
document.getElementById('page').innerHTML = '{$lang['no_notes']}';
</script>
HTML;
		die();
	} else
		return header('Location: /index.php?go=none');
}
function textFilter($source, $substr_num = false, $strip_tags = false){
	global $db;
	
	if(function_exists("get_magic_quotes_gpc") AND get_magic_quotes_gpc())
		$source = stripslashes($source);  
	
	$find = array('/data:/i', '/about:/i', '/vbscript:/i', '/onclick/i', '/onload/i', '/onunload/i', '/onabort/i', '/onerror/i', '/onblur/i', '/onchange/i', '/onfocus/i', '/onreset/i', '/onsubmit/i', '/ondblclick/i', '/onkeydown/i', '/onkeypress/i', '/onkeyup/i', '/onmousedown/i', '/onmouseup/i', '/onmouseover/i', '/onmouseout/i', '/onselect/i', '/javascript/i');
		
	$replace = array("d&#097;ta:", "&#097;bout:", "vbscript<b></b>:", "&#111;nclick", "&#111;nload", "&#111;nunload", "&#111;nabort", "&#111;nerror", "&#111;nblur", "&#111;nchange", "&#111;nfocus", "&#111;nreset", "&#111;nsubmit", "&#111;ndblclick", "&#111;nkeydown", "&#111;nkeypress", "&#111;nkeyup", "&#111;nmousedown", "&#111;nmouseup", "&#111;nmouseover", "&#111;nmouseout", "&#111;nselect", "j&#097;vascript");

	$source = preg_replace("#<iframe#i", "&lt;iframe", $source);
	$source = preg_replace("#<script#i", "&lt;script", $source);
		
	if(!$substr_num)
		$substr_num = 25000;

	$source = $db->safesql(myBr(htmlspecialchars(substr(trim($source), 0, $substr_num))));
	
	$source = str_ireplace("{", "&#123;", $source);
	$source = str_ireplace("`", "&#96;", $source);
	$source = str_ireplace("{theme}", "&#123;theme}", $source);
	
	$source = preg_replace($find, $replace, $source);
	
	if($strip_tags)
		$source = strip_tags($source);

	return $source;
}
function textFilter2($source){
    if (preg_match('/^[a-zA-Z0-9\.\_\-\:\/]+$/',$source)){
           //$source = "";
           ;
    } else {
           $source = "";
    };
	return $source;
}
function user_age($user_year, $user_month, $user_day){
	global $server_time;
	
	if($user_year){
		$current_year = date('Y', $server_time);
		$current_month = date('n', $server_time);
		$current_day = date('j', $server_time);
		
		$current_str = strtotime($current_year.'-'.$current_month.'-'.$current_day);
		$current_user = strtotime($current_year.'-'.$user_month.'-'.$user_day);

		if($current_str >= $current_user)
			$user_age = $current_year-$user_year;
		else
			$user_age = $current_year-$user_year-1;

		if($user_month AND $user_month AND $user_day)
			return $user_age.' '.gram_record($user_age, 'user_age');
		else
			return false;
	}
}
function megaDate($date, $func = false, $full = false){
	global $tpl, $server_time;

	$date_comm = $date;
	
	if(date('Y-m-d', $date_comm) == date('Y-m-d', $server_time))
		return $tpl->set('{date}', langdate('������� � H:i', $date_comm));
	elseif(date('Y-m-d', $date_comm) == date('Y-m-d', ($server_time-84600)))
		return $tpl->set('{date}', langdate('����� � H:i', $date_comm));
	else
		if($func == 'no_year')
			return $tpl->set('{date}', langdate('j M � H:i', $date_comm));
		else
			if($full)
				return $tpl->set('{date}', langdate('j F Y � H:i', $date_comm));
			else
				return $tpl->set('{date}', langdate('j M Y � H:i', $date_comm));
}
function megaDateNoTpl($date, $func = false, $full = false){
	global $server_time;

	if(date('Y-m-d', $date) == date('Y-m-d', $server_time))
		return $date = langdate('������� � H:i', $date);
	elseif(date('Y-m-d', $date) == date('Y-m-d', ($server_time-84600)))
		return $date = langdate('����� � H:i', $date);
	else
		if($func == 'no_year')
			return $date = langdate('j M � H:i', $date);
		else
			if($full)
				return $date = langdate('j F Y � H:i', $date);
			else
				return $date = langdate('j M Y � H:i', $date);
}
function OnlineTpl($time){
	global $tpl, $online_time, $lang;
	if($time >= $online_time)
		return $tpl->set('{online}', $lang['online']);
	else
		return $tpl->set('{online}', '');
}
function AjaxTpl(){
	global $tpl, $config;
	echo str_replace('{theme}', '/templates/'.$config['temp'], $tpl->result['info'].$tpl->result['content']);
}
function GenerateAlbumPhotosPosition($uid, $aid = false){
	global $db;
	
	//������� ��� ���������� �� ������� � ��������� �� ������� ������ ��� ��������� �������
	if($uid AND $aid){
		$sql_ = $db->super_query("SELECT SQL_CALC_FOUND_ROWS id FROM `".PREFIX."_photos` WHERE album_id = '{$aid}' ORDER by `position` ASC", 1);
		$count = 1;
		foreach($sql_ as $row){
			$db->query("UPDATE LOW_PRIORITY `".PREFIX."_photos` SET position = '{$count}' WHERE id = '{$row['id']}'");
			$photo_info .= $count.'|'.$row['id'].'||';
			$count++;
		}
		mozg_create_cache('user_'.$uid.'/position_photos_album_'.$aid, $photo_info);
	}
}
function CheckFriends($friendId){
	global $user_info;
	
	$openMyList = mozg_cache("user_{$user_info['user_id']}/friends");

	if(stripos($openMyList, "u{$friendId}|") !== false)
		return true;
	else
		return false;
}
function CheckBlackList($userId){
	global $user_info;
	
	$openMyList = mozg_cache("user_{$userId}/blacklist");

	if(stripos($openMyList, "|{$user_info['user_id']}|") !== false)
		return true;
	else
		return false;
}
function MyCheckBlackList($userId){
	global $user_info;
	
	$openMyList = mozg_cache("user_{$user_info['user_id']}/blacklist");

	if(stripos($openMyList, "|{$userId}|") !== false)
		return true;
	else
		return false;
}
function check_ip($ips){
	$_IP = $_SERVER['REMOTE_ADDR'];
	$blockip = FALSE;
	if(is_array($ips)){
		foreach($ips as $ip_line){
			$ip_arr = rtrim($ip_line['ip']);
			$ip_check_matches = 0;
			$db_ip_split = explode(".", $ip_arr);
			$this_ip_split = explode(".", $_IP);
			for($i_i = 0; $i_i < 4; $i_i ++){
				if($this_ip_split[$i_i] == $db_ip_split[$i_i] or $db_ip_split[$i_i] == '*'){
					$ip_check_matches += 1;
				}
			}
			if($ip_check_matches == 4){
				$blockip = $ip_line['ip'];
				break;
			}
		}
	}
	return $blockip;
}


function convert_unicode ($t, $to = 'windows-1251')
{
$to = strtolower($to);
if ($to == 'utf-8') {
return urldecode($t);
} else {
if(function_exists("get_magic_quotes_gpc") && get_magic_quotes_gpc() ) $t = stripslashes( $t );
if ( function_exists('iconv') ) $t = iconv("UTF-8", $to ."//IGNORE", $t);
else $t = "The library iconv is not supported by your server";
}

return urldecode($t);
}




?>