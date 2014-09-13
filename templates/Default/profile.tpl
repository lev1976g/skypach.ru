<div style="width:603px"></div>
<link type="text/css" rel="stylesheet" href="{theme}/style/page.css"></link>
<link media="screen" href="{theme}/style/rate.css" type="text/css" rel="stylesheet" />  
<script type="text/javascript">[ava]Profile.LoadPhoto();[/ava]
$(document).ready(function(){
	music.jPlayerInc();
	$('#wall_text, .fast_form_width').autoResize();
	[owner]if($('.profile_onefriend_happy').size() > 4) $('#happyAllLnk').show();[/owner]
});
$(document).click(function(event){
	wall.event(event);
});
</script>
<script type="text/javascript">
var startResizeCss = false;
var user_id = '{user-id}';
$(document).ready(function(){
$(window).scroll(function(){
  if($('#type_page').val() == 'profile'){
   if($(document).height() - $(window).height() <= $(window).scrollTop()+($(document).height()/2-250)){
        wall.page(user_id);
   }
   if($(window).scrollTop() < $('#fortoAutoSizeStyleProfile').offset().top){
        startResizeCss = false;
        $('#addStyleClass').remove();
   }
   if($(window).scrollTop() > $('#fortoAutoSizeStyleProfile').offset().top && !startResizeCss max='2'){
        startResizeCss = true;
        $('body').append('<div id="addStyleClass"><style type="text/css" media="all">.wallrecord{margin-left:-210px}.infowalltext_f{font-size:11px}.public_likes_user_block{margin-left:425px}.wall_fast_opened_form{width:548px;margin-left:-150px}.wall_fast_block{width:558px;margin-top:2px;margin-left:-150px}.fast_form_width{width: 98%;}.public_wall_all_comm{width:542px;margin-top:2px;margin-bottom:-2px}.player_mini_mbar_wall{width:648px;margin-bottom:0px}#audioForSize{min-width:648px}.wall_rec_autoresize{width:648px}.wall_fast_ava img{width:50px}.wall_fast_ava{width:60px}.wall_fast_comment_text{margin-left:57px}.wall_fast_date{margin-left:0px;font-size:11px}.public_wall_all_comm{margin-left:-150px}.size10{font-size:11px}.public_wall_like{color: #95ADC0;padding: 5px 7px;margin-top: -6px;}.wall_delete {background: url("/templates/Default/images/close_a_wall.png") no-repeat;width: 11px;height: 11px;float: right;margin-top: 2px;cursor: pointer;}.wall_tell_all {backgroundurl("../images/transp.png") no-repeat -33px -264px;width: 11px;height: 11px;float: right;margin-top: 2px;margin-left: 6px;opacity: 0.5;}</style></div>');
   }
  }
});
});
$(document).click(function(event){
wall.event(event);
});
</script>

<input type="hidden" id="type_page" value="profile" />

<div id="jquery_jplayer"></div>

<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />
<div class="ava"> 
[owner][/owner][not-owner][/not-owner]
 <div id="owner_photo_wrap">
   [owner] <div id="owner_photo_top_bubble_wrap">
  <div id="owner_photo_top_bubble">
    <div class="owner_photo_bubble_delete_wrap" onClick="Profile.DelPhoto(); $('.profileMenu').hide(); return false;">
      <div class="owner_photo_bubble_delete"></div>
    </div>
  </div>
</div>  [/owner]
  <div id="page_avatar"><a id="profile_photo_link"><a href="" onclick="Photo.Profile('{user-id}', '{user-ph}'); return false"><img src='{ava}' width='200px'></a></div>
  [owner]
<div id="owner_photo_bubble_wrap">
    <div id="owner_photo_bubble">

<div class="owner_photo_bubble_action owner_photo_bubble_action_update" onClick="Profile.LoadPhoto(); $('.profileMenu').hide(); return false;">
  <span class="owner_photo_bubble_action_in">Загрузить новую фотографию</span>
</div>

<div class="owner_photo_bubble_action owner_photo_bubble_action_crop" onClick="Profile.miniature(); return false;">
  <span class="owner_photo_bubble_action_in">Изменить миниатюру</span>
</div>

</div>
  </div>  [/owner]
  </div>
[not-owner][/not-owner][owner][/owner]

<div class="menuleft" style="margin-top:5px">
[owner]<a href="/editmypage" onClick="Page.Go(this.href); $('.profileMenu').hide(); return false;"><div>Редактировать страницу</div></a>
<a onClick="doLoad.data(1); rating.addbox('{user-id}')">Повысить рейтинг</a><div class="more_div"></div>[gifts]<a href="/gifts{user-id}" onClick="Page.Go(this.href); return false" ><span class="fl_r profile_gifts"></span><div>Мои подарки<span class="fl_r" style="font-size:10px;opacity: 0.7">{gifts-num}</span></div></a>[/gifts][fans]<a onClick="subscriptions.fall('{user-id}')"><span class="fl_r profile_sub"></span><div>Мои поклонники<span class="fl_r" style="font-size:10px;opacity: 0.7">{fans}</span></div></a>[/fans]
</a>[/owner]
[not-owner][blacklist]
<div id="profile_main_actions">[privacy-msg]<div class="profile_action_btn profile_msg_msg" id="profile_message_send"><div class="button_wide button_div"><button href="/" onClick="messages.new_({user-id}); return false" style="width:182px;margin-top:-2px;">Отправить сообщение</button></div></div>[/privacy-msg][yes-friends]<div id="friend_status"><div class="friend_status_info"><div onMouseOver="friends.friends_del({user-id})" onMouseOut="friends.friends_del1({user-id})">{name} у Вас в друзьях</div></div></div>[/yes-friends][no-friends]<div class="button_wide button_div"><button href="/" onClick="friends.add({user-id}); return false" style="width:182px;margin-top:-2px;height:23px;">Добавить в друзья</button></div>[/no-friends]</div>
[gifts]<a href="/gifts{user-id}" onClick="Page.Go(this.href); return false" ><span class="fl_r profile_gifts"></span><div>Подарки {namel}<span class="fl_r" style="font-size:10px;opacity: 0.7">{gifts-num}</span></div></a>[/gifts]
[no-gifts]<a onClick="gifts.box('{user-id}'); return false"><span class="fl_r profile_gifts"></span><div>Отправить подарок</span></div></a>[/no-gifts]
[fans]<a onClick="subscriptions.fall('{user-id}'); return false"><span class="fl_r profile_sub"></span><div>Поклонники {namel}<span class="fl_r" style="font-size:10px;opacity: 0.7">{fans}</span></div></a>[/fans]
<div class="more_div"></div>
[blacklist][no-subscription]<a href="/" onClick="subscriptions.add({user-id}); return false" id="lnk_unsubscription"><span class="fl_r profile_rat"></span><div><span id="text_add_subscription">Стать поклонником</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addsubscription_load" class="no_display" style="margin-right:-13px" /></div></a>[/no-subscription][/blacklist]
[yes-subscription]<a href="/" onClick="subscriptions.del({user-id}); return false" id="lnk_unsubscription"><span class="fl_r profile_rat"></span><div><span id="text_add_subscription">Перестать быть поклонником</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addsubscription_load" class="no_display" style="margin-right:-13px" /></div></a>[/yes-subscription]
<div onClick="settings.privacyOpen('msg')" id="privacy_lnk_msg"><a>Прочее</a></div>
 <div class="profile_openmenu no_display" id="privacyMenu_msg">
  <div id="selected_p_privacy_lnk_msg" class="sett_selected" onClick="settings.privacyClose('msg')">Прочее</div>
 [no-fave] <div class="sett_hover" onClick="fave.add({user-id}); return false" id="addfave_but"><span id="text_add_fave">Добавить в закладки</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addfave_load" class="no_display" /></div>[/no-fave]
[yes-fave]<div class="sett_hover" onClick="fave.delet({user-id}); return false" id="addfave_load"><span id="text_add_fave">Удалить из закладок</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addfave_load" class="no_display" /></div>[/yes-fave]
  [no-blacklist]<div class="sett_hover" onClick="settings.addblacklist({user-id}); return false" id="addblacklist_but"><span id="text_add_blacklist">Заблокировать</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addblacklist_load" class="no_display" /></div>[/no-blacklist]
[yes-blacklist]<div class="sett_hover" onClick="settings.delblacklist({user-id}, 1); return false" id="addblacklist_but"><span id="text_add_blacklist">Разблокировать</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addblacklist_load" class="no_display" /></div>[/yes-blacklist]
 </div>


[/not-owner]

</div>
[not-owner]
[yes-friends]
<div class="friends_del no_display" id="wall_text_{user-id}" style="margin-left:20px">
 <div class="news_wall_liked_ic"></div>
 <div class="news_wall_msg_text">{name} доступны все Ваши материалы,<br> предназначенные для друзей.<br><a onClick="friends.delet({user-id}); return false">Удалить {namel} из друзей.</a>. <div class="clear"></div></div>
</div>
[/yes-friends]
[/not-owner]
<div class="profile_rate_pos">
{rating}
</div>
<div class="clear"></div>
[blacklist]<div class="leftcbor">
[common-friends]


<div class="module clear people_module" id="profile_friends">
  <a href="/friends/common/{user-id}" onClick="Page.Go(this.href); return false"  class="module_header">
  <div class="header_top clear_fix">
    <span class="right_link fl_r"  onClick="Page.Go(this.href='/friends/common/{user-id}'); return false">все</span>
    Общие друзья
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    Всего {mutual-num}
  </div>
</a>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{mutual_friends}<div class="clear"></div>
</div></div><br> 

[/common-friends]

 
 [friends]
<div class="module clear people_module" id="profile_friends">
  <a href="/friends/{user-id}" onClick="Page.Go(this.href); return false"  class="module_header">
  <div class="header_top clear_fix">
    <span class="right_link fl_r"  onmouseover="this.parentNode.parentNode.href='/news/updates'" onmouseout="this.parentNode.parentNode.href='/friends/{user-id}'">обновления</span>
    Друзья
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    Всего {friends-num}
  </div>
</a>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{friends}<div class="clear"></div>
</div></div><br> [/friends]


 [online-friends]

<div class="module clear people_module" id="profile_friends">
  <a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false"  class="module_header">
  <div class="header_top clear_fix">
    Друзья на сайте
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    В сети {online-friends-num} друзей
  </div>
</a>

 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{online-friends}<div class="clear"></div>
 </div> </div><br> [/online-friends]


 [subscriptions]
<div class="module clear people_module" id="profile_friends">
  <a onClick="groups.all_groups_user('{user-id}')"  class="module_header">
  <div class="header_top clear_fix">
    Кумиры
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    {subscriptions-num} кумиров
   </div>
</a>

 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{subscriptions}<div class="clear"></div>
 </div> </div>[/subscriptions]

 [groups]

<div class="module clear people_module" id="profile_friends">
  <a onClick="groups.all_groups_user('{user-id}')"  class="module_header">
  <div class="header_top clear_fix">
    Интересные страницы
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    Всего {groups-num} страниц
  </div>
</a>

 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{groups}<div class="clear"></div>
 </div> </div>[/groups]

 [albums]

<div class="module clear people_module" id="profile_friends">
  <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false"  class="module_header">
  <div class="header_top clear_fix">
    Альбомы
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    Всего {albums-num}
  </div>
</a>

{albums}<div class="clear"></div></div>
 [/albums]

 [videos]
<br>
<div class="module clear people_module" id="profile_friends">
  <a href="/videos/{user-id}" onClick="Page.Go(this.href); return false"  class="module_header">
  <div class="header_top clear_fix">
    Видиозаписи
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    Всего {videos-num} видео
  </div>
</a>

 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{videos}<div class="clear"></div></div></div>
[/videos]

[audios]<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value="1" />
<a href="/audio{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none">
<div class="albtitle" style="margin-top:5px">Аудиозаписи<div><b>Все</b></div></div></a>
<div class="p_header_bottom">
    <span class="fl_r"></span>
 {audios-num}
  </div>{audios}<div class="clear"></div>[/audios]

 [notes]

<div class="module clear people_module" id="profile_friends">
  <a href="/notes/{user-id}" onClick="Page.Go(this.href); return false"  class="module_header">
  <div class="header_top clear_fix">
    Заметки
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    Всего {notes-num}
  </div>
</a>

 <div class="newmesnobg" style="padding-right:0px;padding-left:3px">{notes}<div class="clear"></div>
 </div></div>[/notes]
<div class="clear"></div>
<span id="fortoAutoSizeStyleProfile"></span>
</div>[/blacklist]
</div>

<div class="profiewr">
[owner]<div class="set_status_bg no_display" id="set_status_bg">
 <input type="text" id="status_text" class="status_inp" value="{val-status-text}" style="width:500px;" maxlength="255" onKeyPress="if(event.keyCode == 13)gStatus.set()" />
 <div class="fl_l status_text"><span class="no_status_text [status]no_display[/status]">Введите здесь текст Вашего статуса.</span><a href="/" class="yes_status_text [no-status]no_display[/no-status]" onClick="gStatus.set(1); return false">Удалить статус</a></div>
 [status]<div class="button_div_gray fl_r status_but margin_left"><button>Отмена</button></div>[/status]
 <div class="button_div fl_r status_but"><button id="status_but" onClick="gStatus.set()">Сохранить</button></div>
 </div>[/owner]
<div class="titleu">{name} {lastname} <div class="online_time">{online}</div></div>

 <div class="status">
 <div>
 [player-link]<a class="cursor_pointer" onClick="doLoad.js(0); $('#audioPlayer').html(''); player.open(0, 0, {aid});">[/player-link]
 [owner]<a href="/" id="new_status" onClick="gStatus.open(); return false">[/owner]
 [blacklist]{status-text}[/blacklist]
 [owner]</a>[/owner]
 [player-link]</a>[/player-link]
 </div>
 [owner]<span id="tellBlockPos"></span>
 <div class="status_tell_friends no_display">
 <div class="status_str"></div>
 <div class="html_checkbox" id="tell_friends" onClick="myhtml.checkbox(this.id); gStatus.startTell()">Рассказать друзьям</div>
 </div>[/owner]
 [owner]<a href="#" onClick="gStatus.open(); return false" id="status_link" [status]class="no_display"[/status]>изменить статус</a>[/owner]
 </div>

 
 [not-all-country]<div class="flpodtext">Страна:</div> <div class="flpodinfo"><a href="/?go=search&country={country-id}" onClick="Page.Go(this.href); return false">{country}</a></div>[/not-all-country]
 [not-all-city]<div class="flpodtext">Город:</div> <div class="flpodinfo"><a href="/?go=search&country={country-id}&city={city-id}" onClick="Page.Go(this.href); return false">{city}</a></div>[/not-all-city]
 [blacklist][not-all-birthday]<div class="flpodtext">День рождения:</div> <div class="flpodinfo">{birth-day}</div>[/not-all-birthday]
 [privacy-info][sp]<div class="flpodtext">Семейное положение:</div> <div class="flpodinfo">{sp}</div>[/sp][/privacy-info]

 <div class="flpodtext"></div>
 <div class="cursor_pointer" onClick="Profile.MoreInfo(); return false" id="moreInfoLnk"><div class="public_wall_all_comm profile_hide_opne" id="moreInfoText">Показать подробную информацию</div></div>
 <div id="moreInfo" class="no_display">
 [privacy-info][not-block-contact]<div class="fieldset"><div class="w2_a" [owner]style="width:230px;"[/owner]>Контактная информация [owner]<span><a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">редактировать</a></span>[/owner]</div></div>
 [not-contact-phone]<div class="flpodtext">Моб. телефон:</div> <div class="flpodinfo">{phone}</div>[/not-contact-phone]
 [not-contact-vk]<div class="flpodtext">В контакте:</div> <div class="flpodinfo">{vk}</div>[/not-contact-vk]
 [not-contact-od]<div class="flpodtext">Одноклассники:</div> <div class="flpodinfo">{od}</div>[/not-contact-od]
 [not-contact-fb]<div class="flpodtext">FaceBook:</div> <div class="flpodinfo">{fb}</div>[/not-contact-fb]
 [not-contact-skype]<div class="flpodtext">Skype:</div> <div class="flpodinfo"><a href="skype:{skype}">{skype}</a></div>[/not-contact-skype]
 [not-contact-icq]<div class="flpodtext">ICQ:</div> <div class="flpodinfo">{icq}</div>[/not-contact-icq]
 [not-contact-site]<div class="flpodtext">Веб-сайт:</div> <div class="flpodinfo">{site}</div>[/not-contact-site][/not-block-contact]
 <div class="fieldset"><div class="w2_b" [owner]style="width:200px;"[/owner]>Личная информация [owner]<span><a href="/editmypage/interests" onClick="Page.Go(this.href); return false;">редактировать</a></span>[/owner]</div></div>{not-block-info}
 [not-info-activity]<div class="flpodtext">Деятельность:</div> <div class="flpodinfo">{activity}</div>[/not-info-activity]
 [not-info-interests]<div class="flpodtext">Интересы:</div> <div class="flpodinfo">{interests}</div>[/not-info-interests]
 [not-info-music]<div class="flpodtext">Любимая музыка:</div> <div class="flpodinfo">{music}</div>[/not-info-music]
 [not-info-kino]<div class="flpodtext">Любимые фильмы:</div> <div class="flpodinfo">{kino}</div>[/not-info-kino]
 [not-info-books]<div class="flpodtext">Любимые книги:</div> <div class="flpodinfo">{books}</div>[/not-info-books]
 [not-info-games]<div class="flpodtext">Любимые игры:</div> <div class="flpodinfo">{games}</div>[/not-info-games]
 [not-info-quote]<div class="flpodtext">Любимые цитаты:</div> <div class="flpodinfo">{quote}</div>[/not-info-quote]
 [not-info-myinfo]<div class="flpodtext">О себе:</div> <div class="flpodinfo">{myinfo}</div>[/not-info-myinfo]<br>[/privacy-info]

[xfgiven_country]<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/profile.css?196"></link><div class="fieldset"><div class="w2_b" [owner]style="width:130px;"[/owner]>Карьера [owner]<span><a href="/editmypage/career" onClick="Page.Go(this.href); return false;">редактировать</a></span>[/owner]</div></div>
<div class="profile_info">
  <div class="clear_fix " style="margin:-7px">
  <div class="flpodtext" style="margin-top:-3px;">Место работы:</div>
  <div class="labeled fl_l" style="margin-left:15px;"><a href="#" onclick="return nav.go(this, event);">[xfvalue_mr]</a><br>[xfgiven_city][xfvalue_city][/xfgiven_city], [xfgiven_gnr][xfvalue_gnr][/xfgiven_gnr]-[xfgiven_gor][xfvalue_gor][/xfgiven_gor]<br><a href="#" onclick="return nav.go(this, event);">[xfgiven_dol][xfvalue_dol][/xfgiven_dol]</a></div>
</div>
</div>

[/xfgiven_country]
 </div>

[phet]
<a href="/albums/{user-id}" style="text-decoration:none" onclick="Page.Go(this.href); return false"><div class="albtitle" style="margin-top:5px">Фотографии<span class="fl_r" id="wall_rec_num">добавить фотографии</span></div></a>
<div class="page_post_sized_thumbs clear_fix profile_sized_photos" style="width: 397px; height: 85px;">{five-photo}</div>
[/phet]



 [gifts]<a href="/gifts{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle" style="margin-top:5px">Подарки<div><b>Все</b></div></div><div class="p_header_bottom">
    <span class="fl_r"></span>
[not-owner]   <a class="fl_r" onClick="gifts.box('{user-id}'); return false">Отправить подарок</a>[/not-owner]
    {gifts-text}
  </div><br><center style="width:444px;margin-left:-25px">{gifts}</center><div class="clear"></div></a><br>[/gifts]



 <a href="/wall{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle" style="border-bottom:0px">Стена <span id="wall_rec_num">{wall-rec-num}</span><div class="mono_ico_wall"></div></div></a>
 [privacy-wall]<div class="newmes" id="wall_tab" style="border-bottom:0px;margin-bottom:-5px">
  <input type="hidden" value="[owner]Что у Вас нового?[/owner][not-owner]Написать сообщение...[/not-owner]" id="wall_input_text" />
  <input type="text" class="wall_inpst" value="[owner]Что у Вас нового?[/owner][not-owner]Написать сообщение...[/not-owner]" onMouseDown="wall.form_open(); return false" id="wall_input" style="margin:0px" />
  <div class="no_display" id="wall_textarea">
   <textarea id="wall_text" class="wall_inpst wall_fast_opened_texta"
	onKeyUp="wall.CheckLinkText(this.value)"
	onBlur="wall.CheckLinkText(this.value, 1)"
   >
   </textarea>
   <div id="attach_files" class="margin_top_10 no_display"></div>
   <div id="attach_block_lnk" class="no_display clear">
   <div class="attach_link_bg">
    <div align="center" id="loading_att_lnk"><img src="{theme}/images/loading_mini.gif" style="margin-bottom:-2px" /></div>
    <img src="" align="left" id="attatch_link_img" class="no_display cursor_pointer" onClick="wall.UrlNextImg()" />
	<div id="attatch_link_title"></div>
	<div id="attatch_link_descr"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">Ссылка: <a href="/" id="attatch_link_url" target="_blank"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', 'Не прикреплять', 'attach_lnk_')" id="attach_lnk_1" onClick="wall.RemoveAttachLnk()" /></div>
   <input type="hidden" id="attach_lnk_stared" />
   <input type="hidden" id="teck_link_attach" />
   <span id="urlParseImgs" class="no_display"></span>
   </div>
   <div class="clear"></div>
   <div id="attach_block_vote" class="no_display">
   <div class="attach_link_bg">
	<div class="texta">Тема опроса:</div><input type="text" id="vote_title" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" 
		onKeyUp="$('#attatch_vote_title').text(this.value)"
	/><div class="mgclr"></div>
	<div class="texta">Варианты ответа:<br /><small><span id="addNewAnswer"><a class="cursor_pointer" onClick="Votes.AddInp()">добавить</a></span> | <span id="addDelAnswer">удалить</span></small></div><input type="text" id="vote_answer_1" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div class="texta">&nbsp;</div><input type="text" id="vote_answer_2" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div id="addAnswerInp"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">Опрос: <a id="attatch_vote_title" style="text-decoration:none;cursor:default"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', 'Не прикреплять', 'attach_vote_')" id="attach_vote_1" onClick="Votes.RemoveForAttach()" /></div>
   <input type="hidden" id="answerNum" value="2" />
   </div>
   <div class="clear"></div>
   <input id="vaLattach_files" type="hidden" />
   <div class="clear"></div>
   <div class="button_div fl_l margin_top_10"><button onClick="wall.send(); return false" id="wall_send">Отправить</button></div>
   <div class="wall_attach fl_r" onClick="wall.attach_menu('open', this.id, 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', this.id, 'wall_attach_menu')" id="wall_attach">Прикрепить</div>
   <div class="wall_attach_menu no_display" onMouseOver="wall.attach_menu('open', 'wall_attach', 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', 'wall_attach', 'wall_attach_menu')" id="wall_attach_menu">
    <div class="wall_attach_icon_smile" id="wall_attach_link" onClick="wall.attach_addsmile()">Смайлик</div>
    <div class="wall_attach_icon_photo" id="wall_attach_link" onClick="wall.attach_addphoto()">Фотографию</div>
    <div class="wall_attach_icon_video" id="wall_attach_link" onClick="wall.attach_addvideo()">Видеозапись</div>
    <div class="wall_attach_icon_audio" id="wall_attach_link" onClick="wall.attach_addaudio()">Аудиозапись</div>
<div class="wall_attach_icon_photo" id="wall_attach_link" onClick="wall.attach_addgraffiti('{user-id}')">Граффити</div>
    <div class="wall_attach_icon_doc" id="wall_attach_link" onClick="wall.attach_addDoc()">Документ</div>
    <div class="wall_attach_icon_vote" id="wall_attach_link" onClick="$('#attach_block_vote').slideDown('fast');wall.attach_menu('close', 'wall_attach', 'wall_attach_menu');$('#vote_title').focus();$('#vaLattach_files').val($('#vaLattach_files').val()+'vote|start||')">Опрос</div>
   </div>
  </div>
  <div class="clear"></div>
 </div>[/privacy-wall]
 <div id="wall_records">{records}[no-records]<div class="wall_none" [privacy-wall]style="border-top:0px"[/privacy-wall]><Br>На стене пока нет ни одной записи.</div>[/no-records]</div>
 [wall-link]<span id="wall_all_record"></span><div onClick="wall.page('{user-id}'); return false" id="wall_l_href" class="cursor_pointer"><div class="photo_all_comm_bg wall_upgwi" id="wall_link">к предыдущим записям</div></div>[/wall-link][/blacklist]
 [not-blacklist]<div class="err_yellow" style="font-weight:normal;margin-top:5px">{name} ограничила доступ к своей странице.</div>[/not-blacklist]
</div>
<div class="clear"></div>[owner][gifts]
    <script type="text/javascript">
var theElement = document.getElementById("gift"); 
theElement.innerHTML = "<div class=\"left_gift\"><div class=\"body\"><center><a href=\"/id{from-gift}\" onClick=\"Page.Go(this.href); return false\">от {gift-name} {gift-lastname}</a></center><div class=\"more_div\"></div><a href=\"/gifts{user-id}\" onClick=\"Page.Go(this.href); return false\"><img src=\"/uploads/gifts/{gift}.png\" /></a></div></div>";
</script>
[/gifts][/owner]
<script type="text/javascript">

var theElement = document.getElementById("csupport"); 
theElement.innerHTML = "{csupport}";

</script>




[rate]
<script type="text/javascript">
var theElement = document.getElementById("rate"); 
theElement.innerHTML = "<div class=\"rateBluePlus\">+{rate}</div><div class=\"rateBlueBody\"><div class=\"rBlue\">{rate-name} {rate-lastname}</div><div class=\"bigPlus\" onclick=\"doLoad.data('1'); rating.view()\">+{rate}</div></div>";
</script>
[/rate]

[owner][happy-friends]
<script type="text/javascript">
var theElement = document.getElementById("happy-friends"); 
theElement.innerHTML = "<div class=\"left_box attention\" style=\"width:120px;\"><h4>Напоминание</h4><div><a onclick=\"return nav.change()\">Сегодня</a> день рождение {happy-friends}.</div></div>";
</script>
 [/happy-friends][/owner]