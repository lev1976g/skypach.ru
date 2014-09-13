<style>.content{width:633px}</style>
<script type="text/javascript" src="{theme}/js/profile_edit.js"></script>
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/profile_edit.css?26"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?33"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/aes_light.css?23"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?65"></link>
[general]

<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="active_link">
    <a href="/editmypage" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Основное</b>
    </a>
  </li>
  <li class="">
    <a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Контакты</b>
    </a>
  </li>
  <li class="">
    <a href="/editmypage/interests"onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Интересы</b>
    </a>
  </li>
  <li class="">
    <a href="/editmypage/career" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Карьера</b>
    </a>
  </li>
</ul></div>
<br>
<div id="profile_editor" style="margin:-12px;">
  <div id="pedit_result"></div>
  <div id="pedit_general">
<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;width:92%;margin-left:15px;"></div>
<div class="texta2">Пол:</div>
 <div class="padstylej"><select id="sex" class="inpst" onChange="sp.check()">
  <option value="0">- Не выбрано -</option>
  {sex}
 </select></div>
<div class="mgclr"></div>
<div class="[sp-all]no_display[/sp-all]" id="sp_block"><div class="texta2">Семейное положение:</div>
 <div class="padstylej">
 <div class="[user-m]no_display[/user-m]" id="sp_sel_m"><select id="sp" class="inpst" onChange="sp.openfriends()">
  <option value="0">- Не выбрано -</option>
  <option value="1" [instSelect-sp-1]>Не женат</option>
  <option value="2" [instSelect-sp-2]>Есть подруга</option>
  <option value="3" [instSelect-sp-3]>Помовлен</option>
  <option value="4" [instSelect-sp-4]>Женат</option>
  <option value="5" [instSelect-sp-5]>Влюблён</option>
  <option value="6" [instSelect-sp-6]>Всё сложно</option>
  <option value="7" [instSelect-sp-7]>В активном поиске</option>
 </select></div>
 <div class="[user-w]no_display[/user-w]" id="sp_sel_w"><select id="sp_w" class="inpst" onChange="sp.openfriends()">
  <option value="0">- Не выбрано -</option>
  <option value="1" [instSelect-sp-1]>Не замужем</option>
  <option value="2" [instSelect-sp-2]>Есть друг</option>
  <option value="3" [instSelect-sp-3]>Помовлена</option>
  <option value="4" [instSelect-sp-4]>Замужем</option>
  <option value="5" [instSelect-sp-5]>Влюблена</option>
  <option value="6" [instSelect-sp-6]>Всё сложно</option>
  <option value="7" [instSelect-sp-7]>В активном поиске</option>
 </select></div>
 </div>
<div class="mgclr"></div></div>
<div class="[sp]no_display[/sp]" id="sp_type">
<div class="texta2" id="sp_text">{sp-text}</div>
 <div class="padstylej fl_l"><div style="margin-top:3px;margin-bottom:10px;padding-left:1px;float:left"><a href="/" id="sp_name" onClick="sp.openfriends(); return false">{sp-name}</a></div><img src="{theme}/images/close_a_wall.png" class="sp_del" onClick="sp.del()" /></div>
<div class="mgclr"></div>
<input type="hidden" id="sp_val" />
</div>
<div class="texta2">Дата рождения:</div>
 <div class="padstylej"><select id="day" class="inpst">
  <option>- День -</option>
  {user-day}
 </select>
 <select id="month" class="inpst">
  <option>- Месяц -</option>
  {user-month}
 </select>
 <select id="year" class="inpst">
  <option>- Год -</option>{user-year}
 </select></div>
<div class="mgclr"></div>
<div class="texta2">Страна:</div>
 <div class="padstylej"><select id="country" class="inpst" onChange="Profile.LoadCity(this.value); return false;">
  <option value="0">- Не выбрано -</option>
  {country}
 </select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" /></div>
<div class="mgclr"></div>
<span id="city"><div class="texta2">Город:</div>
 <div class="padstylej"><select id="select_city" class="inpst">
  <option value="0">- Не выбрано -</option>
  {city}
 </select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" /></div>
<div class="mgclr"></div></span>
<div class="texta2">&nbsp;</div>    <div class="pedit_controls_separator"></div><div class="button_div fl_l" style="margin-top:15px;"><button id="saveform">Сохранить</button></div><div class="mgclr"></div></div></div>
[/general]
[contact]

<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/editmypage"onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Основное</b>
    </a>
  </li>
  <li class="active_link">
    <a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Контакты</b>
    </a>
  </li>
  <li class="">
    <a href="/editmypage/interests" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Интересы</b>
    </a>
  </li>
  <li class="">
    <a href="/editmypage/career" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Карьера</b>
    </a>
  </li>
</ul></div><br>
<div id="profile_editor" style="margin:-12px;">
  <div id="pedit_result"></div>
  <div id="pedit_general">
<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;width:92%;margin-left:15px;"></div>
<div class="texta2">Мобильный телефон:</div><input type="text" id="phone" class="inpst" maxlength="50" value="{phone}" style="width:200px;" /><span id="validPhone"></span><div class="mgclr"></div>
<div class="texta2">В контакте:</div><input type="text" id="vk" class="inpst" maxlength="100" value="{vk}" style="width:200px;" /><span id="validVk"></span><div class="mgclr"></div>
<div class="texta2">Одноклассники:</div><input type="text" id="od" class="inpst" maxlength="100" value="{od}" style="width:200px;" /><span id="validOd"></span><div class="mgclr"></div>
<div class="texta2">FaceBook:</div><input type="text" id="fb" class="inpst" maxlength="100" value="{fb}" style="width:200px;" /><span id="validFb"></span><div class="mgclr"></div>
<div class="texta2">Skype:</div><input type="text" id="skype" class="inpst" maxlength="100" value="{skype}" style="width:200px;" /><span id="validSkype"></span><div class="mgclr"></div>
<div class="texta2">ICQ:</div><input type="text" id="icq" class="inpst" maxlength="9" value="{icq}" style="width:200px;" /><span id="validIcq"></span><div class="mgclr"></div>
<div class="texta2">Личный сайт:</div><input type="text" id="site" class="inpst" maxlength="100" value="{site}" style="width:200px;" /><span id="validSite"></span><div class="mgclr"></div>
<div class="texta2">&nbsp;</div><div class="pedit_controls_separator"></div><div class="button_div fl_l" style="margin-top:15px;"><button name="save" id="saveform_contact">Сохранить</button></div><div class="mgclr"></div></div></div>
[/contact]
[interests]
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/editmypage" onmousedown="return ProfileEditor.go(this, event)" onclick="return checkEvent(event)">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Основное</b>
    </a>
  </li>
  <li class="">
    <a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Контакты</b>
    </a>
  </li>
  <li class="active_link">
    <a href="/editmypage/interests" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Интересы</b>
    </a>
  </li>
  <li class="">
    <a href="/editmypage/career" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Карьера</b>
    </a>
  </li>
</ul></div><br>
<div id="profile_editor" style="margin:-12px;">
  <div id="pedit_result"></div>
  <div id="pedit_general">
<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;width:92%;margin-left:15px;"></div>
<div class="texta3">Деятельность:</div><textarea id="activity" class="inpst" style="width:300px;height:70px;overflow:hidden;">{activity}</textarea><div class="mgclr"></div>
<div class="texta3">Интересы:</div><textarea id="interests" class="inpst" style="width:300px;height:70px;">{interests}</textarea><div class="mgclr"></div>
<div class="texta3">Любимая музыка:</div><textarea id="music" class="inpst" style="width:300px;height:70px;">{music}</textarea><div class="mgclr"></div>
<div class="texta3">Любимые фильмы:</div><textarea id="kino" class="inpst" style="width:300px;height:70px;">{kino}</textarea><div class="mgclr"></div>
<div class="texta3">Любимые книги:</div><textarea id="books" class="inpst" style="width:300px;height:70px;">{books}</textarea><div class="mgclr"></div>
<div class="texta3">Любимые игры:</div><textarea id="games" class="inpst" style="width:300px;height:70px;">{games}</textarea><div class="mgclr"></div>
<div class="texta3">Любимые цитаты:</div><textarea id="quote" class="inpst" style="width:300px;height:70px;">{quote}</textarea><div class="mgclr"></div>
<div class="texta3">О себе:</div><textarea id="myinfo" class="inpst" style="width:300px;height:70px;">{myinfo}</textarea><div class="mgclr"></div>
<div class="texta3">&nbsp;</div><div class="pedit_controls_separator"></div><div class="button_div fl_l" style="margin-top:15px;"><button name="save" id="saveform_interests">Сохранить</button></div><div class="mgclr"></div></div></div>
[/interests]
[xfields]
<script type="text/javascript">
$(document).ready(function(){
	//Сохранение доп.полей
	$('#saveform_xfields').click(function(){
		butloading('saveform_xfields', '55', 'disabled', '');
		$.post('/index.php?go=editprofile&act=save_xfields', {{for-js-list}}, function(d){
			$('#info_save').html(lang_infosave).show();
			butloading('saveform_xfields', '55', 'enabled', lang_box_save);
		});
	});
});
</script>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/editmypage" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Основное</b>
    </a>
  </li>
  <li class="">
    <a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Контакты</b>
    </a>
  </li>
  <li class="">
    <a href="/editmypage/interests" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Интересы</b>
    </a>
  </li>
  <li class="active_link">
    <a href="/editmypage/career" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Карьера</b>
    </a>
  </li>
</ul></div>
<br>
<div id="profile_editor" style="margin:-12px;">
  <div id="pedit_result"></div>
  <div id="pedit_general">
<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;width:92%;margin-left:15px;"></div>
{xfields}
<div class="texta2">&nbsp;</div><div class="pedit_controls_separator"></div><div class="button_div fl_l" style="margin-top:15px;"><button name="save" id="saveform_xfields">Сохранить</button></div><div class="mgclr"></div></div></div>
[/xfields]