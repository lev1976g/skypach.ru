<style>.content{width:633px}</style>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
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
  <li class="active_link">
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
<br>
<div id="content_reload">

<div id="app_edit">

<input type="hidden" id="app_id" value="{id}">

<input type="hidden" id="app_hash" value="{hash}">

<div class="button_div fl_r" style="margin-top: -29px;margin-right: 15px;height:">

<button id="apps_edit_search_btn" onclick="AppsEdit.uSearch()">Добавить администратора</button>

</div>

<div class="app_edit_main">

<div id="app_edit_error_wrap">

<div id="app_edit_error"></div>

</div>

<div id="app_edit_wrap">

<div id="apps_edit_admins">

<div id="apps_edit_summary_wrap" class="summary_wrap" style="display: block;margin-top:20px;">

<div id="apps_edit_summary" class="summary">У приложения 1 администратор</div>

</div>

<div id="apps_edit_users_rows" class="clear_fix">

<div id="apps_edit_admin{uid}" class="apps_edit_user clear_fix">

<div class="apps_edit_user_thumb_wrap fl_l">

<a class="apps_edit_user_thumb" href="/id{uid}">

<img class="apps_edit_user_img" src="{img}" width="32">

</a>

</div>

<div class="apps_edit_user_info fl_l">

<a class="apps_edit_user_name" href="/id{uid}">{name} </a>  <b> главный администратор</b>

</div>

<div class="apps_edit_user_actions fl_r"><a class="apps_edit_user_action" onclick="AppsEdit.uRemoveAdmin({uid})">Разжаловать</a></div>

</div>

{all}

</div>

</div>

</div>

</div>

</div>

</div>
</div>