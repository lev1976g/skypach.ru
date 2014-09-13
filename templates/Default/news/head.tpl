<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/common.css?391" />
<style>.content{width:633px}</style>
[news]<script type="text/javascript">
var page_cnt = 1;
$(document).ready(function(){
	music.jPlayerInc();
	$('#wall_text, .fast_form_width').autoResize();
	$(window).scroll(function(){
		if($(document).height() - $(window).height() <= $(window).scrollTop()+($(document).height()/2-250)){
			news.page();
		}
	});
});
$(document).click(function(event){
	wall.event(event);
});
</script>
<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />
<input type="hidden" id="type" value="{type}" />
<div id="main_feed">
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;">
  <ul class="t0">
    <li id="feedtab_news" class="{activetab-}">
      <a onmousedown="return feed.switchSection('news', event);" onClick="Page.Go(this.href); return false;" href="/news"><b class="tl1"><b></b></b><b class="tl2"></b>
       <b class="tab_word">Новости</b>
      </a>
    </li>
    <li id="feedtab_notifications" class="{activetab-notifications}">
      <a onClick="Page.Go(this.href); return false;" href="/news/notifications"><b class="tl1"><b></b></b><b class="tl2"></b>
       <b class="tab_word">Ответы<span class="count" id="feed_notify_count"></span></b>
      </a>
    </li>
    <li id="feedtab_source" class="{activetab-updates}">
      <a onClick="Page.Go(this.href); return false;" href="/news/updates"><b class="tl1"><b></b></b><b class="tl2"></b>
       <b class="tab_word">Обновления</b>
      </a>
    </li>
  </ul>
</div>
</div>
<div class="clear"></div>
<div class="newmes" id="wall_tab" style="border-bottom:0px;margin-bottom:-5px;width:597px;margin-left:-12px;padding:15px;">
<div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="height:22px">
  <div class="buttonsprofileSec"><a href="/news" onClick="Page.Go(this.href); return false;"><div><b>Лента</b></div></a></div>
  
  <a  onClick="Page.Go(this.href); return false;" href="/news/photos"><div><b>Фотографии</b></div></a>
  
  <a onClick="Page.Go(this.href); return false;" href="/news/videos"><div><b>Видеозаписи</b></div></a>
 </div>
 </div><br>
<div class="allbar_title" style="border-bottom:0px;margin-bottom:0px">Показаны последние новости</div>
[/news]
[bottom]<span id="news"></span>
[bottom]<span id="news"></span>
<div onClick="news.page()" id="wall_l_href_news" class="cursor_pointer"><div class="photo_all_comm_bg wall_upgwi" id="loading_news" style="width:750px">Показать предыдущие новости</div></div>[/bottom]