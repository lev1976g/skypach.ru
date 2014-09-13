<style>.content{width:633px}</style>
<script type="text/javascript">
$(document).ready(function(){
	music.jPlayerInc();
	$('.fast_form_width').autoResize();
});
$(document).click(function(event){
	wall.event(event);
});
</script>

<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="{activetab-own}">
    <a href="/wall{uid}_sec=own" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Записи {name}</b>
    </a>
  </li>
  <li class="{activetab-}">
    <a href="/wall{uid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Все записи</b>
    </a>
  </li>
  <li class="">
    <a href="/notes/{uid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Заметки {name}</b>
    </a>
  </li>
[record-tab]
  <li class="{activetab-record}">
    <a href="/wall{uid}_{rec-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Запись на стене</b>
    </a>
  </li>
[/record-tab]
  <li class="t_r" id="full_wall_return">
    <a href="/id{uid}" onClick="Page.Go(this.href); return false;">
      Перейти к странице
    </a>
  </li>
</ul></div><br>



<div class="clear"></div><div style="margin-top:10px;"></div>
<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />