<style>.content{width:633px}</style>
[all-friends]
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:600px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="active_link">
    <a href="/friends/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">��� ������</b>
    </a>
  </li>
  <li class="">
    <a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������ ������</b>
    </a>
  </li>
   [owner]<li class="">
    <a href="/friends/requests" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������ � ������ {demands}</b>
    </a>
  </li>[/owner]
   [not-owner]<li class="">
    <a href="/id{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">� �������� {name}</b>
    </a>
  </li>[/not-owner]
</ul></div>
[/all-friends]

[request-friends]
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:600px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/friends/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">��� ������</b>
    </a>
  </li>
  <li class="">
    <a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������ ������</b>
    </a>
  </li>
<li class="active_link">
    <a href="/friends/requests" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������ � ������ {demands}</b>
    </a>
  </li>
</ul></div><br>
[/request-friends]

[online-friends]
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:600px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/friends/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">��� ������</b>
    </a>
  </li>
  <li class="active_link">
    <a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������ ������</b>
    </a>
  </li>
   [owner]<li class="">
    <a href="/friends/requests" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������ � ������ {demands}</b>
    </a>
  </li>[/owner]
   [not-owner]<li class="">
    <a href="/id{user-id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">� �������� {name}</b>
    </a>
  </li>[/not-owner]
</ul></div><br>
[/online-friends]