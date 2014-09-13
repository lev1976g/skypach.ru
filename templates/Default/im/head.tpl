<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/" onClick="im.settTypeMsg(); return false" id="settTypeMsg">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Диалоги</b>
    </a>
  </li>
<li class="active_link">
    <a onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Просмотр диалогов</b>
    </a>
  </li>
</ul></div><div class="clear" style="margin-top:10px;"></div>
<script type="text/javascript">
$(document).ready(function(){
	vii_interval = setInterval('im.updateDialogs()', 2000);
});
</script><div class="im_flblock"><div class="no_display"><a href="/" style="font-weight:normal" onClick="im.settTypeMsg(); return false" id="settTypeMsg">{msg-type}</a></div><div class="clear"></div><span id="updateDialogs"></span>{dialogs}<div class="clear"></div></div><div class="im_head fl_l" id="imViewMsg"><div class="info_center"><div style="padding-top:20px">Вы можете выбрать любого собеседника из левой колонки и начать с ним общение в онлайн режиме, без обновления страницы.</div>Приятного общения!</div><div style="padding-top:20px"></div></div>