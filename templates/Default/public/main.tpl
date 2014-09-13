<style>.content{width:633px}</style>
<script type="text/javascript" src="http://vdrugon.org/min/index.php?charset=windows-1251&amp;g=general&amp;6"></script>

<script type="text/javascript">
$(document).ready(function(){
	$('#wall_text, .fast_form_width').autoResize();
	myhtml.checked(['{settings-comments}']);
	music.jPlayerInc();
	$(window).scroll(function(){
		if($(document).height() - $(window).height() <= $(window).scrollTop()+($(document).height()/2-250)){
			groups.wall_page();
		}
	});
	langNumric('langNumricAll', '{audio-num}', 'аудиозапись', 'аудиозаписи', 'аудиозаписей', 'аудиозапись', 'аудиозаписей');
});
$(document).click(function(event){
	wall.event(event);
});
</script>
<div id="jquery_jplayer"></div>
<div id="addStyleClass"></div>
<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />
<input type="hidden" id="public_id" value="{id}" />
<div class="ava fl_r" style="margin-right:0px" onMouseOver="groups.wall_like_users_five_hide()">
 <img src="{photo}" id="ava" />
 <div class="menuleft" style="margin-top:5px">
<a href="/" onClick="groups.inviteBox('{id}'); return false"><div>Пригласить друзей</div></a>
  [admin]<a href="/" onClick="groups.loadphoto('{id}'); return false"><div>Изменить фотографию</div></a>
  <span id="del_pho_but" class="{display-ava}"><a href="/" onClick="groups.delphoto('{id}'); return false;"><div>Удалить фотографию</div></a></span>
  <a href="/" onClick="groups.editform(); return false"><div>Управление страницей</div></a>[/admin]
 </div>
  <div class="publick_subscblock">
   <div id="yes" class="{yes}">
    <div class="button_div fl_l" style="margin-bottom:15px;line-height:15px"><button onClick="groups.login('{id}'); return false" style="width:174px">Подписаться</button></div>
    <div id="num2">{num-2}</div>
   </div>
   <div id="no" class="{no}" style="text-align:left">
	Вы подписаны на новости этого сообщества.<br />
    <div style="margin-top:7px"></div>
	<a href="/public{id}" onClick="groups.exit2('{id}', '{viewer-id}'); return false">Отписаться</a>
   </div>
   <div class="clear"></div>
  </div><br>
 <div class="module clear people_module" id="profile_friends">
  <a onClick="groups.all_people('{id}')"  class="module_header">
  <div class="header_top clear_fix">
    Подписчики
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    {num}
  </div>
</a>
	<div class="public_usersblockhidden">{users}</div>
    <div class="clear"></div>
   </div>

 [feedback]<div class="public_vlock cursor_pointer" onClick="groups.allfeedbacklist('{id}')">Контакты [yes][admin]<a href="/public{id}" class="fl_r" onClick="groups.allfeedbacklist('{id}'); return false">ред.</a>[/admin][/yes]</div>
 <div class="public_bg" id="feddbackusers">
  [yes]<div class="color777 public_margbut">{num-feedback}</div>[/yes]
  {feedback-users}
  [no]<div class="line_height color777" align="center">Страницы представителей, номера телефонов, e-mail<br />
  <a href="/public{id}" onClick="groups.addcontact('{id}'); return false">Добавить контакты</a></div>[/no]
 </div>[/feedback]
[audios]<div class="module clear people_module" id="profile_friends">
  <a onClick="Page.Go('/public/audio{id}'); return false"  class="module_header">
  <div class="header_top clear_fix">
    Аудиозаписи
  </div> [yesaudio]
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    {audio-num} добавлено
  </div>
</a>
[/yesaudio]
  {audios}
  [noaudio] <div class="public_bg" id="feddbackusers"><div class="line_height color777" align="center">Композиции или другие аудиоматериалы<br />
  <a href="/public/audio{id}" onClick="Page.Go(this.href); return false">Добавить аудиозапись</a></div> </div>[/noaudio]
 </div>[/audios]

[videos]
<div class="module clear people_module" id="profile_friends">
  <a onClick="Page.Go('/public/videos{id}'); return false"  class="module_header">
  <div class="header_top clear_fix">
    Видеозаписи
  </div></a>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    [yesvideo]{videos-num} добавлено[/yesvideo]

[yesvideo]</div><div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">[/yesvideo]
  {videos}
[yesvideo]</div>[/yesvideo]
  [novideo]<br><div class="line_height color777" align="center">Ролики с Вашим участием и другие видеоматериалы<br />
  <a href="/public/videos{id}" onClick="Page.Go(this.href); return false">Добавить видеозапись</a></div><br>[/novideo]
 </div>  [novideo]</div>[/novideo][/videos]

 <div id="fortoAutoSizeStyle"></div>
</div>
<div class="profiewr">
 <div id="public_editbg_container">
 <div class="public_editbg_container">
 <div class="fl_l" style="width:560px">
 <div class="public_title" id="e_public_title">{title}{real_communities}</div>
<div class="more_div" style="margin-top:10px;"></div>
  <div class="{descr-css}" id="descr_display"><div class="flpodtext">Описание:</div> <div class="flpodinfo" id="e_descr">{descr}</div></div>
  <div class="flpodtext">Дата создания:</div> <div class="flpodinfo">{date}</div><br>
 </div>
 [admin]<div class="public_editbg fl_l no_display" id="edittab1">
  <div class="public_title">Редактирование страницы</div>
  <div class="public_hr"></div>
  <div class="texta">Название:</div>
   <input type="text" id="title" class="inpst" maxlength="100"  style="width:260px;" value="{title}" />
  <div class="mgclr"></div>
  <div class="texta">Описание:</div>
   <textarea id="descr" class="inpst" style="width:260px;height:80px">{edit-descr}</textarea>
  <div class="mgclr"></div>
  <div class="texta">Адрес страницы:</div>
   <input type="hidden" id="prev_adres_page" class="inpst" maxlength="100"  style="width:260px;" value="{adres}" />
   <input type="text" id="adres_page" class="inpst" maxlength="100"  style="width:260px;" value="{adres}" />
  <div class="mgclr"></div>
  <div class="texta">&nbsp;</div>
   <div class="html_checkbox" id="comments" onClick="myhtml.checkbox(this.id)" style="margin-bottom:8px">Комментарии включены</div>
<div class="mgclr clear"></div>
<div class="texta">&nbsp;</div>
   <div class="html_checkbox" id="discussion" onClick="myhtml.checkbox(this.id)" style="margin-bottom:8px">Обсуждения включены</div>
  <div class="mgclr clear"></div>
  <div class="texta">&nbsp;</div>
   <a href="/public{id}" onClick="groups.edittab_admin(); return false">Назначить администраторов &raquo;</a>
  <div class="mgclr"></div>
  <div class="texta">&nbsp;</div>
   <div class="button_div fl_l"><button onClick="groups.saveinfo('{id}'); return false" id="pubInfoSave">Сохранить</button></div>
   <div class="button_div_gray fl_l margin_left"><button onClick="groups.editformClose(); return false">Отмена</button></div>
  <div class="mgclr"></div>
 </div>
 <div class="public_editbg fl_l no_display" id="edittab2">
  <div class="public_title">Руководители страницы</div>
  <div class="public_hr"></div>
  <input 
	type="text" 
	placeholder="Введите ID пользователя" 
	class="videos_input" 
	style="width: 370px"
	onKeyPress="if(event.keyCode == 13)groups.addadmin('{id}')"
	id="new_admin_id"
   />
  <div class="clear"></div>
  <div style="width:385px" id="admins_tab">{admins}</div>
  <div class="clear"></div>
  <div class="button_div fl_l"><button onClick="groups.editform(); return false">Назад</button></div>
 </div>[/admin]
 </div>
 </div>
[discussion]
<div class="module clear people_module" id="profile_friends">
  <a href="/forum{id}" onClick="Page.Go(this.href); return false"  class="module_header">
  <div class="header_top clear_fix">
    Обсуждения 
  </div> 
  <div class="p_header_bottom">
    <span class="fl_r"></span></a>
    {forum-num} тема<a href="/forum{id}?act=new" onClick="Page.Go(this.href); return false" class="fl_r {no}">Новая тема</a>
  </div>

 {thems}

 </div>
[/discussion]
 <div class="albtitle" style="border-bottom:0px">{rec-num}</div>
 [admin]<div class="newmes" id="wall_tab" style="border-bottom:0px;margin-bottom:-5px">
  <input type="hidden" value="Что у Вас нового?" id="wall_input_text" />
  <input type="text" class="wall_inpst" value="Что у Вас нового?" onMouseDown="wall.form_open(); return false" id="wall_input" style="margin:0px" />
  <div class="no_display" id="wall_textarea">
   <textarea id="wall_text" class="wall_inpst wall_fast_opened_texta" style="width:368px"
	onKeyUp="wall.CheckLinkText(this.value)"
	onBlur="wall.CheckLinkText(this.value, 1)"
	onKeyPress="if(event.keyCode == 10 || (event.ctrlKey && event.keyCode == 13)) groups.wall_send('{id}')"
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
   <div class="button_div fl_l margin_top_10"><button onClick="groups.wall_send('{id}'); return false" id="wall_send">Отправить</button></div>
   <div class="wall_attach fl_r" onClick="wall.attach_menu('open', this.id, 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', this.id, 'wall_attach_menu')" id="wall_attach">Прикрепить</div>
   <div class="wall_attach_menu no_display" onMouseOver="wall.attach_menu('open', 'wall_attach', 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', 'wall_attach', 'wall_attach_menu')" id="wall_attach_menu">
    <div class="wall_attach_icon_smile" id="wall_attach_link" onClick="wall.attach_addsmile()">Смайлик</div>    
    <div class="wall_attach_icon_photo" id="wall_attach_link" onClick="groups.wall_attach_addphoto(0, 0, '{id}')">Фотографию</div>
    <div class="wall_attach_icon_video" id="wall_attach_link" onClick="groups.wall_video_add_box()">Видеозапись</div>
    <div class="wall_attach_icon_audio" id="wall_attach_link" onClick="wall.attach_addaudio()">Аудиозапись</div>
	<div class="wall_attach_icon_doc" id="wall_attach_link" onClick="wall.attach_addDoc()">Документ</div>
	<div class="wall_attach_icon_vote" id="wall_attach_link" onClick="$('#attach_block_vote').slideDown('fast');wall.attach_menu('close', 'wall_attach', 'wall_attach_menu');$('#vote_title').focus();$('#vaLattach_files').val($('#vaLattach_files').val()+'vote|start||')">Опрос</div>
   </div>
  </div>
  <div class="clear"></div>
 </div>[/admin]
 <div id="public_wall_records">{records}</div>
 <div class="cursor_pointer {wall-page-display}" onClick="groups.wall_page('{id}'); return false" id="wall_all_records"><div class="public_wall_all_comm" id="load_wall_all_records" style="margin-left:0px">к предыдущим записям</div></div>
 <input type="hidden" id="page_cnt" value="1" />
</div>
<div class="clear"></div>