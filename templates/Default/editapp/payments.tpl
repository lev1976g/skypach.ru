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
  <li class="active_link">

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

<div id="app_edit_error"></div>



<div style="padding:15px;">

<div class="app_stat_head no_padd no_lpadd">История платежей - На балансе: {balance} голосов</div>

<div id="app_payments_settings_err" class="error" style="display: none; margin: 0 0 15px 0;"></div>

<div id="app_user_cont" style="margin-bottom: 20px;">

<table id="app_payments_table" cellspacing="0" cellpadding="0" class="wk_table">

<tbody>

<tr>

<th style="width:300px;padding: 1px 5px 2px;">

<div class="app_time_label">Пользователь</div>

</th>

<th style="padding: 1px 5px 2px;">

<div class="app_time_label">голосов</div>

</th>

<th style="width:155px; padding: 1px 5px 2px;">

<div class="app_time_label">Время</div>

</th>

</tr>{payments}</tbody>

</table>

</div>

<br class="clear">

</div></div>
