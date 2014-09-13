{if $se_pms_task == 1 && $user->user_exists == 1}
{literal}
<style type="text/css">
div#newPMS{position:fixed; background:none; bottom:10px; right:10px}
div.pmsNew{width:300px; position:relative; text-align:left; border:1px solid #d7dff6; padding:5px; background:#fff; -webkit-box-shadow:1px 1px 5px #aaa; -khtml-box-shadow:1px 1px 5px #aaa; -icab-box-shadow:1px 1px 5px #aaa; -moz-box-shadow:1px 1px 5px #aaa; -o-box-shadow:1px 1px 5px #aaa; box-shadow:1px 1px 5px #aaa; border-radius:4px; -moz-border-radius:4px; -webkit-border-radius:4px; -khtml-border-radius:4px; -o-border-radius:4px; -icab-border-radius:4px}
div.pmsNewTitle{padding-bottom:5px; font-weight:bold; color:#555; font-size:11px}
a.pmsNewPhoto{text-decoration:none; display:block; float:left; width:60px; height:60px; padding-right:5px}
a.pmsNew{text-decoration:none; display:block; float:left; color:#000; width:235px; height:60px; overflow:hidden; text-align:left}
span.pmsNewName{color:#4272db; font-weight:bold; white-space:nowrap; display:inline-block}
span.pmsNewText{text-decoration:none; font-size:11px; color:#000}
span.pmsNewText img{margin-bottom:-3px; width:16px}
</style>
<script type="text/javascript">
var request = new Request({
  url: 'new_pms.php?new_pms={/literal}{$se_pms_task}{literal}',
  method: 'get',
  onComplete: function(response) {
    $('newPMS').set('html',response);
  }
})
var newPMS = function() {
  request.send();
};
newPMS.periodical(1000); // Меняем на свое значение в миллисекундах
</script>
{/literal}
<div id='newPMS'></div>
{/if}

<div id="footer_wrap" class="fl_r" style="width: 661px;">
      <div id="bottom_nav">
  <a href="/help.php?page=about">о сайте</a>
  <a href="/terms">правила</a>
  <a href="/ads.php">реклама</a>
  <a href="/news.php">блог</a>
  <a href="/jobs.php" style="">вакансии</a>
    <a href="/id1" style="">техподдержка</a>
</div>
<div id="footer" class="clear">
  <div class="copy_lang">Демонстрация Движка &copy; 2012</div>
  <div>
    <small><a href="/id1">Имя Фамилия</a></small>

  </div>
</div>
    </div>
    <div class="clear"></div>
  </div>
</div></div></div>
  <div class="progress" id="global_prg"></div>


{literal}
  <script type="text/javascript">
    if (parent && parent != window && (browser.msie || browser.opera || browser.mozilla || browser.chrome || browser.safari || browser.iphone)) {
      document.getElementsByTagName('body')[0].innerHTML = '';
    } else {
      domReady();
      updateMoney(0);
gSearch.init();
if (window.qArr && qArr[5]) qArr[5] = [5, "по товарам", "", "goods", 0x00000100];
if (browser.iphone || browser.ipad || browser.ipod) {
  setStyle(bodyNode, {webkitTextSizeAdjust: 'none'});
}
cur.lang = extend(cur.lang || {}, {
  show_full: 'показать подробную информацию',
  hide_full: 'скрыть подробную информацию',
  sure_delete_photo: 'Вы уверены, что хотите удалить фотографию?',
  change_current_info: 'изменить статус',
  share_current_info: 'Рассказать друзьям',
  create_poll: 'Опрос',
  dont_attach: 'Не прикреплять'
});
Profile.init({"user_id":"{/literal}{$owner->user_info.user_id}","loc":"{$owner->user_info.user_username}","back":"{$owner->user_displayname}"{literal},"reply_names":[],"max_post_len":280,"post_hash":"dad54131539889107d","media_types":[["photo","Фотографию"],["video","Видеозапись"],["audio","Аудиозапись"],["graffiti","Граффити"]],"wall_type":"own","wall_no":"Нет записей","wall_counts":["","%s запись","%s записи","%s записей"],"all_link":"к записям Ярослава","own_link":"ко всем записям","share":{"url":"http:\/\/cs6033.vkontakte.ru\/upload.php","hash":"a095697dceadd54c76496e851df10242","rhash":"0917c705579caa51f9489d0770222420"},"upload":{"url":"http:\/\/cs10927.vkontakte.ru\/upload.php","params":{"act":"do_add","aid":-14,"gid":0,"mid":40297585,"hash":"6ded2727117c3d9a76bdd4ba4a58273c","rhash":"e399676d0ca76d5a98844bcff6abcc86","vk":"","from_host":"vkontakte.ru"},"opts":{"server":"10927","default_error":1,"error_hash":"aaebedf0b44f9dcc679b94df5de45b99","ext_re":"\\.(gif|jpg|jpeg|png)$","lang":{"max_files_warning":null,"wall_drop_photos_here":"Перенесите сюда фотографии, чтобы прикрепить их к записи","wall_release_photos_here":"Отпустите клавишу мыши, чтобы прикрепить фотографии","wall_photos_drag_hint":"Сюда можно перетаскивать фотографии"}}},"photos_count":3,"skip_one":0,"photos":[],"info":["<a class=\"profile_info_link noselect\" onclick=\"Profile.showFull()\">показать подробную информацию<\/a>","<a class=\"profile_info_link noselect\" onclick=\"Profile.hideFull()\">скрыть подробную информацию<\/a>"],"mail_cache":["Новое сообщение","\n<div class=\"mail_box_content clear_fix\">\n  <div class=\"label fl_l ta_r\">\n    Кому:\n  <\/div>\n  <div class=\"labeled_link fl_l\">\n    <a class=\"mem_link\" href=\"\/mistik31\">Ярослав Косухин<\/a>\n  <\/div>\n\n  <div class=\"label fl_l ta_r\">\n    Тема:\n  <\/div>\n  <div class=\"labeled fl_l\">\n    <input type=\"text\" class=\"text\" id=\"write_box_subj\" maxlength=\"64\"  onchange=\"curBox().changed=true;\" \/>\n  <\/div>\n\n  <div class=\"label fl_l ta_r\">\n    Сообщение:\n  <\/div>\n  <div class=\"labeled fl_l\">\n    <textarea id=\"write_box_text\" onkeydown=\"if (event.ctrlKey && event.keyCode == 13) cur.submitBoxMessage();\" onchange=\"curBox().changed=true;\"><\/textarea>\n  <\/div>\n\n  <div class=\"fl_r\" id=\"mail_box_add_row\"><a class=\"link\" id=\"mail_box_add_link\">Прикрепить<\/a><\/div>\n\n  <div class=\"label fl_l\"><\/div>\n  <div class=\"labeled fl_l\">\n    <div id=\"mail_box_added_row\" class=\"media_preview\"><\/div>\n  <\/div>\n<\/div>","cur.addMailBoxMedia = null;\ncur.decodedHashes = {};\ncur.dec_hash = function(hash) {\n    (function(_){cur.decodedHashes[_]=(function(__){var ___=ge?'':'___';for(____=0;____<__.length;++____)___+=__.charAt(__.length-____-1);return geByClass?___:'___';})(_.substr(_.length-5)+_.substr(4,_.length-12));})(hash);\n  }\ncur.decodehash = function(hash) {\n  cur.dec_hash(hash);\n  return cur.decodedHashes[hash];\n}\n\ncur.mediaTypes = [[\"photo\",\"Фотографию\"],[\"video\",\"Видеозапись\"],[\"audio\",\"Аудиозапись\"],[\"doc\",\"Документ\"]];\n\ncur.submitBoxMessage = function() {\n  if (isVisible(ge('sending_progress'))) return;\n\n  if (!trim(val('write_box_text')) &&\n      (!(cur.addMailBoxMedia.chosenMedia || []).length &&\n       !(cur.addMailBoxMedia.chosenMedias || []).length)) {\n    notaBene('write_box_text');\n    return;\n  }\n  var media = cur.addMailBoxMedia.chosenMedia,\n    medias = cur.addMailBoxMedia.chosenMedias,\n    mediaVal = [],\n    params = {\n      act: 'a_send',\n      ajax: 1,\n      chas: cur.decodehash('2a8a06127d20c223ffca8b5f0'),\n      to_id: 40297585,\n      title: val('write_box_subj'),\n      message: val('write_box_text'),\n      from: 'box'\n    };\n  each(medias || [media], function (k, v) {\n    if (!v) return;\n    mediaVal.push(v[0] + ':' + v[1]);\n  });\n  params.media = mediaVal.join(',');\n  ajax.post('al_mail.php', params, {onDone: function(text) {\n    box.hideProgress();\n    box.hide();\n    showDoneBox(text);\n  }, showProgress: box.showProgress, hideProgress: box.hideProgress});\n}\n\nbox.removeButtons();\nbox.addButton(getLang('global_cancel'), null, 'no');\nbox.addButton('Отправить', cur.submitBoxMessage);\nbox.setControlsText('<a id=\"send_msg_to_history\" href=\"\/write40297585?hist=1\" onclick=\"return writeFullPage(event);\">Показать историю переписки<\/a>');\n\nwindow.writeFullPage = function(e) {\n  if (checkEvent(e)) return true;\n  box.showProgress();\n  var query = {'0': 'write40297585', hist: 1, message: val('write_box_text'), title: val('write_box_subj'), media: ''};\n  debugLog(query, cur.addMailBoxMedia.chosenMedia, cur.addMailBoxMedia.chosenMediaData);\n  if (cur.addMailBoxMedia.chosenMedia) {\n    query.media = cur.addMailBoxMedia.chosenMedia.join('*') + ';' + ((isArray(cur.addMailBoxMedia.chosenMediaData) ? cur.addMailBoxMedia.chosenMediaData.join('*') : cur.addMailBoxMedia.chosenMediaData) || '');\n  }\n  nav.go(query, null, {noframe: 1});\n  return false;\n}\nsetTimeout(function() {\n  ge('write_box_text').focus();\n}, 0);\n\nvar tmp = cur.postTo;\ncur.postTo = false;\nbox.setOptions({onHide: function() { cur.postTo = tmp; }});\n\nstManager.add(['page.js', 'page.css'], function() {\n  cur.addMailBoxMedia = initAddMedia('mail_box_add_link', 'mail_box_added_row', cur.mediaTypes, {mail: 1});\n  cur.addMailBoxMedia.onChange = function() {\n    box.changed = true;\n  }\n});"],"fr_click":"30bf4813902f2bd3e1,31746313,106074959,42221943,52691004,44802548,79743416","add_queue_key":{"key":"0wJzfOOJqy5rN97jLdKJJa7tyUHYdyuB6Vhz8ay439phheiYSpTdeQlx","ts":"1959355319"},"wall_tpl":{"reply_form":"<div id=\"reply_box%post_id%\" class=\"reply_box clear_fix\" onclick=\"return cancelEvent(event)\">\n    <div class=\"reply_form\">\n    <input type=\"hidden\" id=\"reply_to%post_id%\" value=\"\" \/>\n    <div class=\"reply_field_wrap clear_fix\">\n      <div class=\"reply_field_tail\"><\/div>\n      <textarea\n        id=\"reply_field%post_id%\"\n        class=\"fl_l reply_field\"\n        placeholder=\"Комментировать..\"\n        onkeydown=\"wall.onReplySubmit('%post_id%', event)\"\n        onfocus=\"wall.showEditReply('%post_id%')\"\n        onkeyup=\"wall.checkTextLen(this, 'reply_warn%post_id%')\"\n      ><\/textarea>\n    <\/div>\n    <div class=\"reply_warn clear\" id=\"reply_warn%post_id%\"><\/div>\n    <div id=\"submit_reply%post_id%\" class=\"submit_reply clear\">\n      <div class=\"fl_l reply_button_wrap\"><div class=\"button_blue\"><button id=\"reply_button%post_id%\" onclick=\"wall.sendReply('%post_id%', event);\">Отправить<\/button><\/div><\/div>\n      <div id=\"reply_to_title%post_id%\" class=\"reply_to_title fl_l\"><\/div>\n      <div id=\"reply_hint%post_id%\" class=\"reply_hint fl_l\"><span class=\"reply_hint_text\" onmouseover=\"wall.replySubmitTooltip('%post_id%', 1);\" onmouseout=\"wall.replySubmitTooltip('%post_id%', 0);\"><\/span><\/div>\n    <\/div>\n  <\/div>\n<\/div>","reply_multiline":true,"reply_multiline_intro":false,"reply_fast":"<div id=\"post%reply_id%\" class=\"reply reply_dived clear \" onmouseover=\"wall.actsOver('%reply_id%')\" onmouseout=\"wall.actsOut('%reply_id%')\" >\n  <div class=\"reply_table\">\n    <a class=\"reply_image\" href=\"\/mistik31\">\n      <img src=\"http:\/\/cs4272.vkontakte.ru\/u40297585\/e_e3183ab5.jpg\" width=\"50\" height=\"50\" class=\"reply_image\" \/>\n    <\/a>\n    <div class=\"reply_info\">\n      \n      <div class=\"reply_text\">\n        <a class=\"author\" href=\"\/mistik31\">Ярослав Косухин<\/a>\n        <div class=\"wall_reply_text\">%message%<\/div>\n        \n      <\/div>\n      <div class=\"info_footer\">\n        \n        <span class=\"fl_r reply_actions\" id=\"actions%reply_id%\"><\/span>\n        %date% \n      <\/div>\n    <\/div>\n  <\/div>\n<\/div>","reply_multiline_hint":"<div class=\"reply_submit_hint_wrap\" onclick=\"event.cancelBubble = true;\">\n  <div class=\"reply_submit_hint_title\">Настройки отправки<\/div>\n  <div id=\"reply_submit_hint_opts\">\n    <div class=\"radiobtn %disabled%\" onclick=\"radiobtn(this, 0, 'reply_submit'); wall.onReplySubmitChanged(0);\"><div><\/div><b>Enter<\/b> — отправка сообщения<br><b>Shift+Enter<\/b> — перенос строки<\/div>\n    <div class=\"radiobtn %enabled%\" onclick=\"radiobtn(this, 1, 'reply_submit'); wall.onReplySubmitChanged(1);\"><div><\/div><b>Ctrl+Enter<\/b> — отправка сообщения<br><b>Enter<\/b> — перенос строки<\/div>\n  <\/div>\n<\/div>","own_reply_link":"<span class=\"divide\">|<\/span><a class=\"reply_link\" onclick=\"showBox('al_wall.php', {act: 'own_reply', post: '%post_id%'}, {stat: ['ui_controls.css', 'ui_controls.js', 'mentions.js']})\">Ответить<\/a>","post":"<div id=\"post%post_id%\" class=\"post\" onmouseover=\"wall.postOver('%post_id%')\" onmouseout=\"wall.postOut('%post_id%')\" onclick=\"wall.postClick('%post_id%', event);\">\n  <div class=\"post_table\">\n    <div class=\"post_image\">\n      <a class=\"post_image\" href=\"%link%\"><img src=\"%photo%\" width=\"50\" height=\"50\"\/><\/a>\n      %online%\n    <\/div>\n    <div class=\"post_info\">\n      %del%\n      <div class=\"wall_text\">%name% %text%<\/div>\n      <div class=\"post_like_wrap fl_r\" onmouseover=\"wall.postLikeOver('%post_id%')\" onmouseout=\"wall.postLikeOut('%post_id%')\" onclick=\"wall.like('%post_id%', '1327056280_e12236baa7e7641265'); event.cancelBubble = true;\">\n  <div class=\"post_like\">\n    <span class=\"post_like_link fl_l\" id=\"like_link%post_id%\">Мне нравится<\/span>\n    <i class=\"post_like_icon no_likes fl_l\" id=\"like_icon%post_id%\"><\/i>\n    <span class=\"post_like_count fl_l\" id=\"like_count%post_id%\"><\/span>\n  <\/div>\n<\/div>\n      <div class=\"replies\"><div class=\"reply_link_wrap\" id=\"wpe_bottom%post_id%\">\n  <small><a href=\"\/wall%post_id%\" onclick=\"return nav.go(this, event)\">%date%<\/a><\/small><span id=\"reply_link%post_id%\" class=\"reply_link\"><span class=\"divide\">|<\/span><a class=\"reply_link\" onclick=\"wall.showEditReply('%post_id%')\">Комментировать<\/a><\/span>\n<\/div>\n<div class=\"replies_wrap clear\" id=\"replies_wrap%post_id%\" style=\"display: none;\">\n  <div id=\"replies%post_id%\"><input type=\"hidden\" id=\"start_reply%post_id%\" value=\"\"\/><\/div>\n  <div class=\"reply_fakebox_wrap\" id=\"reply_fakebox%post_id%\" onclick=\"wall.showEditReply('%post_id%')\"><div class=\"reply_fakebox\">Комментировать..<\/div><\/div><input type=\"hidden\" id=\"post_hash%post_id%\" value=\"1327056280_e125db785b261a0ac0\" \/>\n<\/div><\/div>\n    <\/div>\n  <\/div>\n<\/div>","reply":"<div id=\"post%reply_id%\" class=\"reply reply_dived clear %classname%\" onmouseover=\"wall.actsOver('%reply_id%')\" onmouseout=\"wall.actsOut('%reply_id%')\" %attr%>\n  <div class=\"reply_table\">\n    <a class=\"reply_image\" href=\"%link%\">\n      <img src=\"%photo%\" width=\"50\" height=\"50\" class=\"reply_image\" \/>\n    <\/a>\n    <div class=\"reply_info\">\n      %delete_link%\n      <div class=\"reply_text\">\n        <a class=\"author\" href=\"%link%\">%name%<\/a>\n        <div class=\"wall_reply_text\">%text%<\/div>\n        %media%\n      <\/div>\n      <div class=\"info_footer\">\n        <div class=\"like_wrap fl_r\" onclick=\"wall.like('%like_id%', '1327056280_e12236baa7e7641265'); event.cancelBubble = true;\" onmouseover=\"wall.likeOver('%like_id%')\" onmouseout=\"wall.likeOut('%like_id%')\">\n  <i class=\"no_likes fl_l\" id=\"like_icon%like_id%\"><\/i>\n  <span class=\"like_count fl_l\" id=\"like_count%like_id%\"><\/span>\n<\/div>\n        <span class=\"fl_r reply_actions\" id=\"actions%reply_id%\">%acts%<\/span>\n        <a class=\"wd_lnk\" href=\"\/wall%post_id%?reply=%reply_msg_id%\" onclick=\"return nav.go(this, event)\">%date%<\/a> %to_link%\n      <\/div>\n    <\/div>\n  <\/div>\n<\/div>","del":"<div class=\"fl_r delete_post_wrap\">\n  <div class=\"delete_post\">\n    <div id=\"delete_post%post_id%\" onclick=\"wall.deletePost('%post_id%', '1327056280_f82460bf5d15378235');\" onmouseover=\"wall.activeDeletePost('%post_id%', 'Удалить запись')\" onmouseout=\"wall.deactiveDeletePost('%post_id%')\"><\/div>\n  <\/div>\n<\/div>","spam":"<div class=\"fl_r delete_post_wrap\">\n  <div class=\"delete_post\">\n    <div id=\"delete_post%post_id%\" onclick=\"wall.markAsSpam('%post_id%', '1327056280_66b05e0602d0f29c96');\" onmouseover=\"wall.activeDeletePost('%post_id%', 'Отметить как спам')\" onmouseout=\"wall.deactiveDeletePost('%post_id%')\"><\/div>\n  <\/div>\n<\/div>","del_reply":"<div class=\"fl_r delete_post_wrap\">\n  <div class=\"delete_post\">\n    <div id=\"delete_post%reply_id%\" onclick=\"wall.deletePost('%reply_id%', '1327056280_f82460bf5d15378235');\" onmouseover=\"wall.activeDeletePost('%reply_id%', 'Удалить')\" onmouseout=\"wall.deactiveDeletePost('%reply_id%')\"><\/div>\n  <\/div>\n<\/div>","spam_reply":"<div class=\"fl_r delete_post_wrap\">\n  <div class=\"delete_post\">\n    <div id=\"delete_post%reply_id%\" onclick=\"wall.markAsSpam('%reply_id%', '1327056280_66b05e0602d0f29c96');\" onmouseover=\"wall.activeDeletePost('%reply_id%', 'Это спам')\" onmouseout=\"wall.deactiveDeletePost('%reply_id%')\"><\/div>\n  <\/div>\n<\/div>","like_reply":"<span class=\"like_link\" id=\"like_link%like_id%\" onclick=\"wall.like('%like_id%', '1327056280_e12236baa7e7641265'); event.cancelBubble = true;\"  onmouseover=\"wall.likeOver('%like_id%')\" onmouseout=\"wall.likeOut('%like_id%', {tthide: 1})\">Мне нравится<\/span>","answer_reply":"<a class=\"reply_to_link\" href=\"#\" onmouseup=\"return wall.replyTo('%post_id%', %reply_msg_id%, %reply_uid%, event);\" onclick=\"cancelEvent(event);return false;\">Ответить<\/a>","poll_stats":"<tr><td colspan=\"2\" class=\"page_poll_text\">%option_text%<\/td><\/tr>\n<tr>\n  <td class=\"page_poll_row\">\n    <div class=\"page_poll_percent\" style=\"width: %css_percent%%\"><\/div>\n    <div class=\"page_poll_row_count\">%count%<\/div>\n  <\/td>\n  <td class=\"page_poll_row_percent ta_r\"><nobr><b>%percent%%<\/b><\/nobr><\/td>\n<\/tr>","poll_hash":"1327056280_e5743c7cde1d21f8b2","date_format":"сегодня в {hour}:{minute}","time_system":false,"abs_timestamp":1327056280,"lang":{"wall_M_replies_of_N":["","%s комментарий из {link}{all}{\/link}","%s последних комментария из {link}{all}{\/link}","%s последних комментариев из {link}{all}{\/link}"],"wall_hide_replies":"Скрыть комментарии","wall_show_n_of_m_last":["","Показать последние %s комментарий из {count}","Показать последние %s комментария из {count}","Показать последние %s комментариев из {count}"],"wall_show_all_n_replies":["","Показать %s комментарий","Показать все %s комментария","Показать все %s комментариев"],"wall_N_replies":["","%s комментарий","%s комментария","%s комментариев"],"wall_three_last_replies":"три последних комментария","wall_all_replies":"все комментарии","wall_x_new_replies_more":["","Добавлен %s новый комментарий","Добавлены %s новых комментария","Добавлены %s новых комментариев"],"wall_X_people_voted":["","Проголосовал <b>%s<\/b> человек.","Проголосовало <b>%s<\/b> человека.","Проголосовало <b>%s<\/b> человек."],"wall_reply_submit_hint_1":"Shift+Enter – перевод строки","wall_reply_submit_hint_2":"Ctrl+Enter – отправка сообщения","wall_reply_submit_hint_1_more":"Enter – отправка сообщения, Shift+Enter – перевод строки","wall_reply_submit_hint_2_more":"Enter – перевод строки, Ctrl+Enter – отправка сообщения","wall_just_now":["","только что","две секунды назад","три секунды назад","четыре секунды назад","пять секунд назад"],"wall_X_seconds_ago_words":["","только что","две секунды назад","три секунды назад","четыре секунды назад","пять секунд назад"],"wall_X_seconds_ago":["","%s секунду назад","%s секунды назад","%s секунд назад"],"wall_X_minutes_ago_words":["","минуту назад","две минуты назад","три минуты назад","4 минуты назад","5 минут назад"],"wall_X_minutes_ago":["","%s минуту назад","%s минуты назад","%s минут назад"],"wall_X_hours_ago_words":["","час назад","два часа назад","три часа назад","четыре часа назад","пять часов назад"],"wall_X_hours_ago":["","%s час назад","%s часа назад","%s часов назад"]}},"qversion":8,"wall_oid":"40297585","info_hash":"aca283337faf509552","photo_hash":"910ca64417c5e4885d","profph_hash":"7339a9334454a52868","gifts_hash":"5e423bb6d606034355"});
if (1) {
  hide('support_link_td');
}
var ts_input = ge('ts_input'), oldFF = browser.mozilla && parseInt(browser.version) < 8;
if (browser.mozilla && !oldFF) {
  setStyle(ts_input, {padding: (vk.rtl ? '3px 22px 4px 4px' : '3px 4px 4px 22px')});
}
placeholderSetup(ts_input, {back: false, reload: true});
if (browser.opera || browser.msie || oldFF) {
  setStyle(ts_input, {padding: (vk.rtl ? '3px 22px 4px 4px' : '3px 4px 4px 22px')});
}
if (browser.chrome) {
  setStyle(ts_input, {padding: (vk.rtl ? '4px 23px 3px 2px' : '4px 3px 3px 23px')});
}
TopSearch.init();
if (browser.msie8 || browser.msie7) {
  var st = {border: '1px solid #a6b6c6'};
  if (hasClass(ge('ts_wrap'), 'vk')) {
    if (vk.rtl) st.left = '1px';
    else st.right = '0px';
  } else {
    if (vk.rtl) st.right = '146px';
    else st.left = '146px';
  }
  setStyle(ge('ts_cont_wrap'), st);
}
window.tsHintsEnabled = 0;
zNav([], {});
    }
  </script>{/literal}