<style>.content{width:633px}</style>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;">
  <ul class="t0" id="groups_list_tabs">
    <li class="" id="groups_tab_groups">
      <a href="/groups/" onmousedown="nav.go(this, event)" onClick="Page.Go(this.href); return false;">
        <b class="tl1"><b></b></b><b class="tl2"></b>
        <b class="tab_word">Сообщества</b>
      </a>
    </li>
    <li class="active_link" style="" id="groups_tab_admin">
      <a href="/?go=groups&act=admin" onmousedown="nav.go(this, event)" onClick="Page.Go(this.href); return false;">
        <b class="tl1"><b></b></b><b class="tl2"></b>
        <b class="tab_word">Управление</b>
      </a>
    </li>
    <li class="t_r">
       <a href="/groups" onClick="groups.createbox(); return false">Создать сообщество</a>
    </li>
  </ul>
</div>
<div class="margin_top_10"></div><div class="allbar_title" [yes]style="margin-bottom:0px;border-bottom:0px"[/yes]>[yes]Вы руководитель в {num}[/yes][no]Вы не управляете ни одним сообществом[/no]</div>
[no]<div class="info_center"><br /><br />
Вы не управляете ни одним сообществом. 
<br /><br />
Вы можете <a href="/groups" onClick="groups.createbox(); return false">создать сообщество</a> или воспользоваться <a href="/" onClick="gSearch.open_tab(); gSearch.select_type('4', 'по сообществам'); return false" id="se_link">поиском по сообществам</a>.<br /><br /><br />
</div>[/no]