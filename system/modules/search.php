<?php
/* 
	Appointment: �����
	File: search.php 
 
*/
if(!defined('MOZG')){
	die('Hacking attempt!');
}
if($ajax == 'yes')
	NoAjaxQuery();

	$metatags['title'] = $lang['search'];
        $_SERVER['QUERY_STRING'] = strip_tags($_SERVER['QUERY_STRING']);
	$query_string = preg_replace("/&page=[0-9]+/i", '', $_SERVER['QUERY_STRING']);
	$user_id = $user_info['user_id'];

	if($_GET['page'] > 0) $page = intval($_GET['page']); else $page = 1;
	$gcount = 20;
	$limit_page =($page-1)*$gcount;

	$query = $db->safesql(ajax_utf8(strip_data(urldecode($_GET['query']))));
	if($_GET['n']) $query = $db->safesql(strip_data(urldecode($_GET['query'])));
	$query = strtr($query, array(' ' => '%')); //�������� ������� �� �������� ���� ����� ��� ������
	
	$type = intval($_GET['type']) ? intval($_GET['type']) : 1;
	$sex = intval($_GET['sex']);
	$day = intval($_GET['day']);
	$month = intval($_GET['month']);
	$year = intval($_GET['year']);
	$country = intval($_GET['country']);
	$city = intval($_GET['city']);
	$online = intval($_GET['online']);
	$user_photo = intval($_GET['user_photo']);
	$sp = intval($_GET['sp']);
	
	//����� ��������� ����������
	if($sex) $sql_sort .= "AND user_sex = '{$sex}'";
	if($day) $sql_sort .= "AND user_day = '{$day}'";
	if($month) $sql_sort .= "AND user_month = '{$month}'";
	if($year) $sql_sort .= "AND user_year = '{$year}'";
	if($country) $sql_sort .= "AND user_country = '{$country}'";
	if($city) $sql_sort .= "AND user_city = '{$city}'";
	if($online) $sql_sort .= "AND user_last_visit >= '{$online_time}'";
	if($user_photo) $sql_sort .= "AND user_photo != ''";
	if($sp) $sql_sort .= "AND SUBSTRING(user_sp, 1, 1) regexp '[[:<:]]({$sp})[[:>:]]'";

	//������ SQL ������ � �� �� ����� ������
	if($type == 1){ //���� �������� ����� "�� �����"
		$sql_query = "SELECT SQL_CALC_FOUND_ROWS user_id, user_real, user_paid, user_search_pref, user_photo, user_birthday, user_country_city_name, user_last_visit, vkava1 FROM `".PREFIX."_users` WHERE user_search_pref LIKE '%{$query}%' {$sql_sort} ORDER by `user_rate` DESC LIMIT {$limit_page}, {$gcount}";
		$sql_count = "SELECT COUNT(*) AS cnt FROM `".PREFIX."_users` WHERE user_search_pref LIKE '%{$query}%' {$sql_sort}";
	} elseif($type == 2 AND $config['video_mod'] == 'yes' AND $config['video_mod_search'] == 'yes'){ //���� �������� ����� "�� ������������"
		$sql_query = "SELECT SQL_CALC_FOUND_ROWS id, photo, title, add_date, comm_num, owner_user_id FROM `".PREFIX."_videos` WHERE title LIKE '%{$query}%' AND privacy = 1 ORDER by `add_date` DESC LIMIT {$limit_page}, {$gcount}";
		$sql_count = "SELECT COUNT(*) AS cnt FROM `".PREFIX."_videos` WHERE title LIKE '%{$query}%' AND privacy = 1";
	} elseif($type == 3){ //���� �������� ����� "�� ��������"
		$sql_query = "SELECT SQL_CALC_FOUND_ROWS ".PREFIX."_notes.id, title, full_text, owner_user_id, date, comm_num, ".PREFIX."_users.user_photo, user_search_pref FROM ".PREFIX."_notes LEFT JOIN ".PREFIX."_users ON ".PREFIX."_notes.owner_user_id = ".PREFIX."_users.user_id WHERE title LIKE '%{$query}%' OR full_text LIKE '%{$query}%' ORDER by `date` DESC LIMIT {$limit_page}, {$gcount}";
		$sql_count = "SELECT COUNT(*) AS cnt FROM `".PREFIX."_notes` WHERE title LIKE '%{$query}%' OR full_text LIKE '%{$query}%'";
	} elseif($type == 4){ //���� �������� ����� "�� ����������"
		$sql_query = "SELECT SQL_CALC_FOUND_ROWS id, title, photo, traf, adres FROM `".PREFIX."_communities` WHERE title LIKE '%{$query}%' ORDER by `traf` DESC, `photo` DESC LIMIT {$limit_page}, {$gcount}";
		$sql_count = "SELECT COUNT(*) AS cnt FROM `".PREFIX."_communities` WHERE title LIKE '%{$query}%'";
	} elseif($type == 5 AND $config['audio_mod'] == 'yes' AND $config['audio_mod_search'] == 'yes'){ //���� �������� ����� "�� �����������"
		$sql_query = "SELECT SQL_CALC_FOUND_ROWS aid, auser_id, name, url, artist, ".PREFIX."_users.user_search_pref FROM ".PREFIX."_audio LEFT JOIN ".PREFIX."_users ON ".PREFIX."_audio.auser_id = ".PREFIX."_users.user_id WHERE name LIKE '%{$query}%' OR artist LIKE '%{$query}%' ORDER by `adate` DESC LIMIT {$limit_page}, {$gcount}";
		$sql_count = "SELECT COUNT(*) AS cnt FROM `".PREFIX."_audio` WHERE artist LIKE '%{$query}%' OR name LIKE '%{$query}%'";
	} elseif($type == 6){ // ������������� ����������
		$sql_query = "SELECT SQL_CALC_FOUND_ROWS id, recommendation, title, photo, traf, adres FROM `".PREFIX."_communities` WHERE title LIKE '%{$query}%' and recommendation=1 ORDER by `traf` DESC, `photo` DESC LIMIT {$limit_page}, {$gcount}";
		$sql_count = "SELECT COUNT(*) AS cnt FROM `".PREFIX."_communities` WHERE title LIKE '%{$query}%' and recommendation=1";
    } else {
		$sql_query = false;
		$sql_count = false;
	}
	
	if($sql_query)
		$sql_ = $db->super_query($sql_query, 1);
	
	//������� ���-�� ������� �� ��
	if($sql_count AND $sql_)
		$count = $db->super_query($sql_count);

	//Head ������
	$tpl->load_template('search/head.tpl');
	if($query)
		$tpl->set('{query}', stripslashes(stripslashes(strtr($query, array('%' => ' ')))));
	else
		$tpl->set('{query}', '������� ������� ����� ����� ��� ���');
	$_GET['query'] = $db->safesql(ajax_utf8(strip_data(urldecode($_GET['query']))));
	if($_GET['n']) $_GET['query'] = $db->safesql(strip_data(urldecode($_GET['query'])));
	$tpl->set('{query-people}', str_replace(array('&type=2', '&type=3', '&type=4', '&type=5'), '&type=1', $_SERVER['QUERY_STRING']));
	$tpl->set('{query-videos}', '&type=2&query='.$_GET['query']);
	$tpl->set('{query-notes}', '&type=3&query='.$_GET['query']);
	$tpl->set('{query-groups}', '&type=4&query='.$_GET['query']);
	$tpl->set('{query-audios}', '&type=5&query='.$_GET['query']);
	$tpl->set('{query-recommendation}', '&type=6&query='.$_GET['query']);
	
	if($online) $tpl->set('{checked-online}', 'online');
	else $tpl->set('{checked-online}', '0');
		
	if($user_photo) $tpl->set('{checked-user-photo}', 'user_photo');
	else $tpl->set('{checked-user-photo}', '0');
	
	$tpl->set("{activetab-{$type}}", 'buttonsprofileSec');
	$tpl->set("{type}", $type);
	
	$tpl->set('{sex}', installationSelected($sex, '<option value="1">�������</option><option value="2">�������</option>'));
	$tpl->set('{day}', installationSelected($day, '<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>'));
	$tpl->set('{month}', installationSelected($month, '<option value="1">������</option><option value="2">�������</option><option value="3">�����</option><option value="4">������</option><option value="5">���</option><option value="6">����</option><option value="7">����</option><option value="8">�������</option><option value="9">��������</option><option value="10">�������</option><option value="11">������</option><option value="12">�������</option>'));
	$tpl->set('{year}', installationSelected($year, '<option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option>'));
			
	if($count['cnt']){
		$tpl->set('[yes]', '');
		$tpl->set('[/yes]', '');
		
		if($type == 1) 
		//���� �������� ����� "�� �����"
		$tpl->set('{count}', $count['cnt'].' '.gram_record($count['cnt'], 'fave'));
		elseif($type == 2 AND $config['video_mod'] == 'yes') //���� �������� ����� "�� ������������"
			$tpl->set('{count}', $count['cnt'].' '.gram_record($count['cnt'], 'videos'));
		elseif($type == 3) //���� �������� ����� "�� ��������"
			$tpl->set('{count}', $count['cnt'].' '.gram_record($count['cnt'], 'notes'));
		elseif($type == 4) //���� �������� ����� "�� �����������"
			$tpl->set('{count}', $count['cnt'].' '.gram_record($count['cnt'], 'se_groups'));
		elseif($type == 5) //���� �������� ����� "�� ������������"
			$tpl->set('{count}', $count['cnt'].' '.gram_record($count['cnt'], 'audio'));
		elseif($type == 6) //������������� ����������
			$tpl->set('{count}', $count['cnt'].' '.gram_record($count['cnt'], 'se_groups'));	
	} else 
		$tpl->set_block("'\\[yes\\](.*?)\\[/yes\\]'si","");

	if($type == 1){
		$tpl->set('[search-tab]', '');
		$tpl->set('[/search-tab]', '');
	} else
		$tpl->set_block("'\\[search-tab\\](.*?)\\[/search-tab\\]'si","");
	
	//################## ��������� ������ ##################//
	$sql_country = $db->super_query("SELECT SQL_CALC_FOUND_ROWS * FROM `".PREFIX."_country` ORDER by `name` ASC", true, "country", true);
	foreach($sql_country as $row_country)
		$all_country .= '<option value="'.$row_country['id'].'">'.stripslashes($row_country['name']).'</option>';
			
	$tpl->set('{country}', installationSelected($country, $all_country));
	
	//################## ��������� ������ ##################//
	if($type == 1){
		$sql_city = $db->super_query("SELECT SQL_CALC_FOUND_ROWS id, name FROM `".PREFIX."_city` WHERE id_country = '{$country}' ORDER by `name` ASC", true, "country_city_".$country, true);
		foreach($sql_city as $row2) 
			$all_city .= '<option value="'.$row2['id'].'">'.stripslashes($row2['name']).'</option>';

		$tpl->set('{city}', installationSelected($city, $all_city));
	}
	
	$tpl->compile('info');
	
	//��������� ������ �� ����� ���� �� ���� ������ ����� � �������
	if($sql_){
	
		//���� �������� ����� "�� �����"
		if($type == 1){
			$tpl->load_template('search/result_people.tpl');
			foreach($sql_ as $row){

    			  if($row['user_real']){ 
				$tpl->set('{user_real}', ' <div class="search_verified" title="������������� ��������"></div>');
				}else{
				$tpl->set('{user_real}', ''); 
				};

        		  if($row['user_paid']){ 
    			$tpl->set('{user_paid}', ' <div class="search_paid" title="����������� ������� ��������"></div>');
				}else{
				$tpl->set('{user_paid}', ''); 
				};

			    $tpl->set('{user-id}', $row['user_id']);
				$tpl->set('{user-id}', $row['user_id']);
				$tpl->set('{name}', $row['user_search_pref']);
				if($row['user_photo']) 
					$tpl->set('{ava}', $config['home_url'].'uploads/users/'.$row['user_id'].'/100_'.$row['user_photo']);
				else 
					if($row['vkava1']){
					$tpl->set('{ava}', $row['vkava1']);
					} else {
					$tpl->set('{ava}', '{theme}/images/100_no_ava.png');
					}

				//������� �����
				$user_birthday = explode('-', $row['user_birthday']);
				$tpl->set('{age}', user_age($user_birthday[0], $user_birthday[1], $user_birthday[2]));
				
				$user_country_city_name = explode('|', $row['user_country_city_name']);
				$tpl->set('{country}', $user_country_city_name[0]);
				if($user_country_city_name[1])
					$tpl->set('{city}', ', '.$user_country_city_name[1]);
				else
					$tpl->set('{city}', '');
					
				if($row['user_id'] != $user_id){
					$tpl->set('[owner]', '');
					$tpl->set('[/owner]', '');
				} else
					$tpl->set_block("'\\[owner\\](.*?)\\[/owner\\]'si","");
				
				if($row['user_last_visit'] >= $online_time)
					$tpl->set('{online}', $lang['online']);
				else
					$tpl->set('{online}', '');
				
				//�������� ������ ������������� ���� � ������� � ����� ������� ������� ���
				$check_friend = $db->super_query("SELECT user_id FROM `".PREFIX."_friends` WHERE user_id = '{$user_info['user_id']}' AND friend_id = '{$row['user_id']}'");
				if($check_friend)
					$tpl->set_block("'\\[no-friends\\](.*?)\\[/no-friends\\]'si","");
				else {
					$tpl->set('[no-friends]', '');
					$tpl->set('[/no-friends]', '');
				}
				$tpl->compile('content');
			}

		//���� �������� ����� "�� ������������"
		} elseif($type == 2){
			$tpl->load_template('search/result_video.tpl');
			foreach($sql_ as $row){
				$tpl->set('{photo}', $row['photo']);
				$tpl->set('{title}', stripslashes($row['title']));
				$tpl->set('{user-id}', $row['owner_user_id']);
				$tpl->set('{id}', $row['id']);
				$tpl->set('{close-link}', '/index.php?'.$query_string.'&page='.$page);
				$tpl->set('{comm}', $row['comm_num'].' '.gram_record($row['comm_num'], 'comments'));
				megaDate(strtotime($row['add_date']), 1, 1);
				$tpl->compile('content');
			}
			
		//���� �������� ����� "�� ��������"
		} elseif($type == 3){
			$tpl->load_template('search/result_note.tpl');
			foreach($sql_ as $row){
				if($row['user_photo'])
					$tpl->set('{ava}', $config['home_url'].'uploads/users/'.$row['owner_user_id'].'/50_'.$row['user_photo']);
				else
					$tpl->set('{ava}', '{theme}/images/no_ava_50.png');
				
				$tpl->set('{user-id}', $row['owner_user_id']);
				$tpl->set('{short-text}', stripslashes(strip_tags(substr($row['full_text'], 0, 200))).'...');
				$tpl->set('{title}', stripslashes($row['title']));
				$tpl->set('{name}', $row['user_search_pref']);
				$tpl->set('{note-id}', $row['id']);
				megaDate(strtotime($row['date']), 1, 1);
				if($row['comm_num'])
					$tpl->set('{comm-num}', $row['comm_num'].' '.gram_record($row['comm_num'], 'comments'));
				else
					$tpl->set('{comm-num}', $lang['note_no_comments']);
				$tpl->compile('content');
			}

		//���� �������� ����� "�� �����������"
		} elseif($type == 4){
			$tpl->load_template('search/result_groups.tpl');
			foreach($sql_ as $row){
if($row['com_real']){ 
				$tpl->set('{real_communities}', ' <div class="search_verified" title="������������� ��������"></div>');
				}else{
				$tpl->set('{real_communities}', ''); 
				}
				if($row['photo'])
					$tpl->set('{ava}', '/uploads/groups/'.$row['id'].'/100_'.$row['photo']);
				else
					$tpl->set('{ava}', '{theme}/images/no_ava_groups_100.gif');
				
			$tpl->set('{public-id}', $row['id']);
				$tpl->set('{name}', stripslashes($row['title']));
				$tpl->set('{note-id}', $row['id']);
				$tpl->set('{traf}', $row['traf'].' '.gram_record($row['traf'], 'groups_users'));
				if($row['adres']) $tpl->set('{adres}', $row['adres']);
				else $tpl->set('{adres}', 'public'.$row['id']);
				$tpl->compile('content');
			}

		//���� �������� ����� "�� �����������"
		} elseif($type == 5){
			$tpl->load_template('search/result_audio.tpl');
			$jid = 0;
			foreach($sql_ as $row){
				$jid++;
				$tpl->set('{jid}', $jid);
				$tpl->set('{aid}', $row['aid']);
				$tpl->set('{url}', $row['url']);
				$tpl->set('{artist}', stripslashes($row['artist']));
				$tpl->set('{name}', stripslashes($row['name']));
				$tpl->set('{author-n}', substr($row['user_search_pref'], 0, 1));
				$expName = explode(' ', $row['user_search_pref']);
				$tpl->set('{author-f}', $expName[1]);
				$tpl->set('{author-id}', $row['auser_id']);
				$tpl->compile('content');
			}
		} elseif($type == 6){
			$tpl->load_template('search/result_groups.tpl');
			foreach($sql_ as $row){
				if($row['photo'])
					$tpl->set('{ava}', '/uploads/groups/'.$row['id'].'/100_'.$row['photo']);
				else
					$tpl->set('{ava}', '{theme}/images/no_ava_groups_100.gif');
				
				$tpl->set('{public-id}', $row['id']);
				$tpl->set('{name}', stripslashes($row['title']));
				$tpl->set('{note-id}', $row['id']);
				$tpl->set('{traf}', $row['traf'].' '.gram_record($row['traf'], 'groups_users'));
				if($row['adres']) $tpl->set('{adres}', $row['adres']);
				else $tpl->set('{adres}', 'public'.$row['id']);
				$tpl->compile('content');
			}	
		} else
			msgbox('', $lang['search_none'], 'info_2');

		navigation($gcount, $count['cnt'], '/index.php?'.$query_string.'&page=');
	} else
		msgbox('', '', 'info_search');
	
	$tpl->clear();
	$db->free();

?>