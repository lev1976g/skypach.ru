[inbox]<script type="text/javascript">
$(document).ready(function(){
	var query = $('#msg_query').val();
	if(query == '����� �� ���������� ����������')
		$('#msg_query').css('color', '#c1cad0');
});
</script>
<style>.nav{margin-top:10px}</style>
<style>.content{width:633px}</style>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="active_link">
    <a href="/messages" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">����������</b>
    </a>
  </li>
  <li class="">
    <a href="/messages/outbox" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������������</b>
    </a>
  </li>
</ul></div>
<div style="margin-top:0px"></div>
<div class="msg_se_bg"><input type="text" value="{query}" class="fave_input msg_se_inp fl_l" onBlur="if(this.value==''){this.value='����� �� ���������� ����������';this.style.color = '#c1cad0';}" onFocus="if(this.value=='����� �� ���������� ����������'){this.value='';this.style.color = '#000'}" id="msg_query" maxlength="130" onKeyPress="if(event.keyCode == 13)messages.search();" />
<div class="button_div fl_l msg_pad_top"><button onClick="messages.search(); return false">�����</button></div>
<div class="clear"></div>
</div>
<div class="msg_speedbar">{msg-cnt} &nbsp;|&nbsp; <a href="/" style="font-weight:normal" onClick="im.settTypeMsg(); return false" id="settTypeMsg">{msg-type}</a></div>[/inbox]
[outbox]<script type="text/javascript">
$(document).ready(function(){
	var query = $('#msg_query').val();
	if(query == '����� �� ������������ ����������')
		$('#msg_query').css('color', '#c1cad0')
});
</script>
<style>.nav{margin-top:10px}</style>
<style>.content{width:633px}</style>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/messages" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">����������</b>
    </a>
  </li>
  <li class="active_link">
    <a href="/messages/outbox" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������������</b>
    </a>
  </li>
</ul></div>
<div style="margin-top:0px"></div>
<div class="msg_se_bg"><input type="text" value="{query}" class="fave_input msg_se_inp fl_l" onblur="if(this.value==''){this.value='����� �� ������������ ����������';this.style.color = '#c1cad0';}" onfocus="if(this.value=='����� �� ������������ ����������'){this.value='';this.style.color = '#000'}" id="msg_query" maxlength="130" onKeyPress="if(event.keyCode == 13)messages.search(1);" />
<div class="button_div fl_l msg_pad_top"><button onClick="messages.search(1); return false">�����</button></div>
<div class="clear"></div>
</div>
<div class="msg_speedbar">{msg-cnt}</div>[/outbox]
[review]

<script type="text/javascript">
$(document).ready(function(){
	var query = $('#msg_query').val();
	if(query == '����� �� ���������� ����������')
		$('#msg_query').css('color', '#c1cad0');
});
</script>
<style>.nav{margin-top:10px}</style>
<style>.content{width:633px}</style>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/messages" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">����������</b>
    </a>
  </li>
  <li class="">
    <a href="/messages/outbox" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������������</b>
    </a>
  </li>
  <li class="active_link">
    <a href="/" onClick="Page.Go('/messages/show/{mid}'); return false">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">�������� ���������</b>
    </a>
  </li>
</ul></div>
<div style="margin-top:0px"></div>




[/review]