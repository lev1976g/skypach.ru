<style>.content{width:633px}</style>
[all-albums]
[admin-drag][owner]<script type="text/javascript">
$(document).ready(function(){
	Albums.Drag();
});
</script>[/owner][/admin-drag]

<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:600px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="active_link">
    <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Все фотографии</b>
    </a>
  </li> 
  <li class="">
    <a href="/albums/comments/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Комментарии к альбомам</b>
    </a>
  </li>
<li class="t_r">
       <a href="" onClick="Albums.CreatAlbum(); return false;">Создать альбом</a>
    </li>
</ul></div>
[/all-albums]
[view]

<input type="hidden" id="all_p_num" value="{all_p_num}" />
<input type="hidden" id="aid" value="{aid}" />

<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:600px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
<li class="">
    <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Все альбомы</b>
    </a>
  </li> 
  <li class="active_link">
    <a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Просмотр альбома</b>
    </a>
  </li> 
 [owner] 
<li class="">
    <a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Добавить фотографии</b>
    </a>
  </li>
[/owner]

 [not-owner]<li class="t_r">
       <a href="/id{user-id}" onClick="Page.Go(this.href); return false;">К странице {name}</a>
    </li>[/not-owner]
</ul></div>

<div class="clear"></div><div style="margin-top:8px;"></div>

<div class="summary_wrap" style="">
    <div class="summary">В альбоме {num} фотографий<span class="divide">|</span><span><a href="/albums/view/{aid}/comments/" onClick="Page.Go(this.href); return false;">Комментарии к альбому</a></span>[owner]<span class="divide">|</span><span><a href="/albums/editphotos/{aid}" onClick="Page.Go(this.href); return false;">Изменить порядок фотографий</a></span>[/owner]</div>
  </div>
[/view]
[editphotos]
[admin-drag]<script type="text/javascript">
$(document).ready(function(){
	Photo.Drag();
});
</script>[/admin-drag]
<script type="text/javascript" src="{theme}/js/albums.view.js"></script>
<input type="hidden" id="all_p_num" value="{all_p_num}" />
<input type="hidden" id="aid" value="{aid}" />


<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:600px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="active_link">
    <a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Альбом</b>
    </a>
  </li> 

<li class="">
    <a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Добавить фотографии</b>
    </a>
  </li>

<li class="">
    <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Все альбомы</b>
    </a>
  </li> 
</ul></div>

<div class="clear"></div><div style="margin-top:8px;"></div>

<div class="summary_wrap" style="">
    <div class="summary">В альбоме {num} фотографий<span class="divide">|</span><span><a href="/albums/view/{aid}/comments/" onClick="Page.Go(this.href); return false;">Комментарии к альбому</a></span><span class="divide">|</span><span><a href="/albums/editphotos/{aid}" onClick="Page.Go(this.href); return false;"><b>Изменить порядок фотографий</b></a></span></div>
  </div>

<div class="clear"></div><div style="margin-top:8px;"></div>
[/editphotos]


[comments]
<script type="text/javascript" src="{theme}/js/albums.view.js"></script>

<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:600px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Все фотографии</b>
    </a>
  </li> 
  <li class="active_link">
    <a href="/albums/comments/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Комментарии к альбомам</b>
    </a>
  </li>
</ul></div>

[/comments]


[albums-comments]
<script type="text/javascript" src="{theme}/js/albums.view.js"></script>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:600px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="active_link">
    <a href="/albums/view/{aid}/" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">[not-owner]Альбом {name}[/not-owner][owner]Альбом[/owner]</b>
    </a>
  </li> 
 [owner] 
<li class="">
    <a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Добавить фотографии</b>
    </a>
  </li>
[/owner]
<li class="">
    <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Все фотографии</b>
    </a>
  </li> 
 [not-owner]<li class="t_r">
       <a href="/id{user-id}" onClick="Page.Go(this.href); return false;">К странице {name}</a>
    </li>[/not-owner]
</ul></div>

<div class="clear"></div><div style="margin-top:8px;"></div>

<div class="summary_wrap" style="">
    <div class="summary">В альбоме {num} фотографий[owner]<span class="divide">|</span><span><a href="/albums/editphotos/{aid}" onClick="Page.Go(this.href); return false;">Изменить порядок фотографий</a></span>[/owner]</div>
  </div>
[/albums-comments]
[all-photos]
<script type="text/javascript" src="{theme}/js/albums.view.js"></script>
<div class="buttonsprofile albumsbuttonsprofile" style="height:10px;">
 <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">[not-owner]Все альбомы {name}[/not-owner][owner]Все альбомы[/owner]</a>
 [owner]<a href="" onClick="Albums.CreatAlbum(); return false;">Создать альбом</a>[/owner]
 <a href="/albums/comments/{user-id}" onClick="Page.Go(this.href); return false;">Комментарии к альбомам</a>
 <div class="activetab"><a href="/photos{user-id}" onClick="Page.Go(this.href); return false;"><div>Обзор фотографий</div></a></div>
 [not-owner]<a href="/id{user-id}" onClick="Page.Go(this.href); return false;">К странице {name}</a>[/not-owner]
</div>
<div class="clear"></div><div style="margin-top:8px;"></div>
[/all-photos]