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
      <b class="tab_word">��� ����������</b>
    </a>
  </li> 
  <li class="">
    <a href="/albums/comments/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">����������� � ��������</b>
    </a>
  </li>
<li class="t_r">
       <a href="" onClick="Albums.CreatAlbum(); return false;">������� ������</a>
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
      <b class="tab_word">��� �������</b>
    </a>
  </li> 
  <li class="active_link">
    <a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">�������� �������</b>
    </a>
  </li> 
 [owner] 
<li class="">
    <a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">�������� ����������</b>
    </a>
  </li>
[/owner]

 [not-owner]<li class="t_r">
       <a href="/id{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>
    </li>[/not-owner]
</ul></div>

<div class="clear"></div><div style="margin-top:8px;"></div>

<div class="summary_wrap" style="">
    <div class="summary">� ������� {num} ����������<span class="divide">|</span><span><a href="/albums/view/{aid}/comments/" onClick="Page.Go(this.href); return false;">����������� � �������</a></span>[owner]<span class="divide">|</span><span><a href="/albums/editphotos/{aid}" onClick="Page.Go(this.href); return false;">�������� ������� ����������</a></span>[/owner]</div>
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
      <b class="tab_word">������</b>
    </a>
  </li> 

<li class="">
    <a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">�������� ����������</b>
    </a>
  </li>

<li class="">
    <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">��� �������</b>
    </a>
  </li> 
</ul></div>

<div class="clear"></div><div style="margin-top:8px;"></div>

<div class="summary_wrap" style="">
    <div class="summary">� ������� {num} ����������<span class="divide">|</span><span><a href="/albums/view/{aid}/comments/" onClick="Page.Go(this.href); return false;">����������� � �������</a></span><span class="divide">|</span><span><a href="/albums/editphotos/{aid}" onClick="Page.Go(this.href); return false;"><b>�������� ������� ����������</b></a></span></div>
  </div>

<div class="clear"></div><div style="margin-top:8px;"></div>
[/editphotos]


[comments]
<script type="text/javascript" src="{theme}/js/albums.view.js"></script>

<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:600px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">��� ����������</b>
    </a>
  </li> 
  <li class="active_link">
    <a href="/albums/comments/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">����������� � ��������</b>
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
      <b class="tab_word">[not-owner]������ {name}[/not-owner][owner]������[/owner]</b>
    </a>
  </li> 
 [owner] 
<li class="">
    <a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">�������� ����������</b>
    </a>
  </li>
[/owner]
<li class="">
    <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">��� ����������</b>
    </a>
  </li> 
 [not-owner]<li class="t_r">
       <a href="/id{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>
    </li>[/not-owner]
</ul></div>

<div class="clear"></div><div style="margin-top:8px;"></div>

<div class="summary_wrap" style="">
    <div class="summary">� ������� {num} ����������[owner]<span class="divide">|</span><span><a href="/albums/editphotos/{aid}" onClick="Page.Go(this.href); return false;">�������� ������� ����������</a></span>[/owner]</div>
  </div>
[/albums-comments]
[all-photos]
<script type="text/javascript" src="{theme}/js/albums.view.js"></script>
<div class="buttonsprofile albumsbuttonsprofile" style="height:10px;">
 <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">[not-owner]��� ������� {name}[/not-owner][owner]��� �������[/owner]</a>
 [owner]<a href="" onClick="Albums.CreatAlbum(); return false;">������� ������</a>[/owner]
 <a href="/albums/comments/{user-id}" onClick="Page.Go(this.href); return false;">����������� � ��������</a>
 <div class="activetab"><a href="/photos{user-id}" onClick="Page.Go(this.href); return false;"><div>����� ����������</div></a></div>
 [not-owner]<a href="/id{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>[/not-owner]
</div>
<div class="clear"></div><div style="margin-top:8px;"></div>
[/all-photos]