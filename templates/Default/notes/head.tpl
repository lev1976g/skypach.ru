<style>.content{width:633px}</style>
[all]
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="active_link">
    <a href="/notes/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">[owner]Мои заметки[/owner][not-owner]Заметки {name}[/not-owner]</b>
    </a>
  </li> [owner]
  <li class="">
    <a href="/notes/add" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Добавить запись</b>
    </a>
  </li>[/owner]
[not-owner]<li class="">
   <a href="/u{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">К странице {name}</b>
    </a>
  </li>[/not-owner]
</ul></div>

<div class="clear"></div><div style="margin-top:10px;"></div>
[/all]
[add]
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/notes/" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Мои заметки</b>
    </a>
  </li> 
  <li class="active_link">
    <a href="/notes/add" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Добавить запись</b>
    </a>
  </li>
</ul></div>
<div class="clear"></div><div style="margin-top:12px;"></div>
[/add]
[edit]
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/notes" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Мои заметки</b>
    </a>
  </li> 
<li class="active_link">
    <a href="/notes/edit/{note-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Редактирование заметки</b>
    </a>
  </li>
</ul></div>
<div class="clear"></div><div class="hralbum" style="margin-top:1px;"></div>
[/edit]
[view]
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/notes/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">[owner]Мои заметки[/owner][not-owner]Заметки {name}[/not-owner]</b>
    </a>
  </li> 
<li class="active_link">
    <a href="/notes/view/{note-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Просмотр заметки</b>
    </a>
  </li>
[not-owner]<li class="">
   <a href="/id{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">К странице {name}</b>
    </a>
  </li>[/not-owner]
</ul></div>

<div class="clear"></div><div style="margin-top:-10px;"></div>


[/view]