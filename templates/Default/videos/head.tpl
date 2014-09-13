<style>.content{width:633px}</style>
<script type="text/javascript">
$(document).ready(function(){
	videos.scroll();
});
</script>

<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:600px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="active_link">
    <a href="/videos/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">[owner]Все видеозаписи[/owner][not-owner]К видеозаписям {name}[/not-owner]</b>
    </a>
  </li>
 [admin-video-add][owner]
  <li class="">
    <a href="/" onClick="videos.add(); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Добавить видеоролик</b>
    </a>
  </li>[/owner][/admin-video-add]
[not-owner]
<li class="">
    <a href="/u{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">К странице {name}</b>
    </a>
  </li>
[/not-owner]
</ul></div>
<div style="margin-top:0px"></div>

<div class="clear"></div><div style="margin-top:10px;"></div>
<input type="hidden" value="{user-id}" id="user_id" />
<input type="hidden" id="set_last_id" />
<input type="hidden" id="videos_num" value="{videos_num}" />