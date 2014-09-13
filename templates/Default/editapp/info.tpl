<style>.content{width:633px}</style>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="active_link">
   <a href="/editapp/info_{id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Информация</b>
    </a>
  </li>
  <li class="">
<a href="/editapp/options_{id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Настройки</b>
    </a>
  </li>
  <li class="">

<a href="/editapp/payments_{id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Платежи</b>
    </a>
  </li>
  <li class="">
<a href="/editapp/admins_{id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Администраторы</b>
    </a>
  </li>

    <li class="t_r">
       <a href="/app{id}" onclick="return nav.go(this, event, {noback: true})" >К приложению</a>
    </li>
</ul></div><br>
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/profile_edit.css?26"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?33"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/aes_light.css?23"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?65"></link>
<div id="profile_editor" style="margin:-12px;">





<div>

<div id="apps_options_saved" class="apps_edit_success"></div>

<table class="apps_edit_table apps_edit_info">

<tbody>

<td class="apps_edit_info_r" valign="top">

<tr>

<td class="apps_edit_label ta_r">Название:</td>

<td>

<input class="text" type="text" id="app_name" value="{title}">

</td>

</tr>

<tr>

<td class="apps_edit_label ta_r">Описание:</td>

<td>

<textarea class="text" id="app_desc" style="height:50px;">{desc}</textarea>

</td>

</tr>

<tr>

<td class="label ta_r"></td>

<td class="apps_edit_info_save">

<input type="hidden" id="app_id" value="{id}">

<input type="hidden" id="app_hash" value="{hash}">

<div class="button_div fl_l">

<button id="app_save_btn" onclick="AppsEdit.SaveOptions('save_info',{id});" style="width: 145px;">Сохранить изменения</button>

</div>

</td>

</tr>

</td>

</tbody>

</table>

<div class="clear" style="margin:20px 0;border-bottom: 1px solid #D5DBE4;;"></div>

<table class="apps_edit_table apps_edit_info">

<tbody>

<td>

<tr>

<td class="apps_edit_info_narrow">

<div id="apps_edit_img_block_reload" class="apps_edit_img_block">

<img id="apps_img_reload" src="{img}" align="left" id="apps_edit_img_small" class="apps_edit_img_small">


<div id="apps_edit_upload_small">
<br><br><br><br><br><br><br><br>
<div class="button_div fl_l">

<button onclick="AppsEdit.LoadPhoto({id}); $('.profileMenu').hide(); return false;">Выбрать файл</button>

</div>

</div>

</div>

</td>

</tr>

</td>

</tbody>

</table>

</div>
</div>