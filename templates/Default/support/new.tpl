<style>.content{width:633px}</style>
<div id="data">
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/support" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">[group=4]������� �� �������������[/group][not-group=4]��� �������[/not-group]</b>
    </a>
  </li>
  <li class="active_link">
    <a href="/support?act=new" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">����� ������</b>
    </a>
  </li>
</ul></div>

[not-group=4]
<div style="margin-top:30px"></div>
<div class="note_add_bg support_bg">
����� �� ������ �������� ��� � ����� ��������, ��������� � <b>����� ������</b>.
<input type="text" 
	class="videos_input" 
	style="width:450px;margin-top:10px;color:#c1cad0" 
	maxlength="65" 
	id="title"
	value="����������, �������� ��������� � ������ �������.." 
	onblur="if(this.value==''){this.value='����������, �������� ��������� � ������ �������..';this.style.color = '#c1cad0';}" 
	onfocus="if(this.value=='����������, �������� ��������� � ������ �������..'){this.value='';this.style.color = '#000'}"
/>
<div class="input_hr" style="width:593px"></div>
<textarea 
	class="videos_input wysiwyg_inpt" 
	id="question" 
	style="width:450px;height:100px;color:#c1cad0"
	onblur="if(this.value==''){this.value='����������, ���������� � ����� �������� ���� ���������..';this.style.color = '#c1cad0';}" 
	onfocus="if(this.value=='����������, ���������� � ����� �������� ���� ���������..'){this.value='';this.style.color = '#000'}"
>����������, ���������� � ����� �������� ���� ���������..</textarea>
<div class="clear"></div>
<div class="button_div fl_l"><button onClick="support.send(); return false" id="send">���������</button></div>
<div class="button_div_gray fl_l margin_left" id="cancel"><button onClick="Page.Go('/u{uid}'); return false;">������</button></div>
<div class="clear"></div>
</div>
[/not-group]
[group=4]<div class="info_center"><br /><br /><br />�� ������ �� �����.<br /><br /><br /></div>[/group]
</div>