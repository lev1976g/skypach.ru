<style>.content{width:633px}</style>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="active_link">
    <a href="/settings" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">�����</b>
    </a>
  </li>
  <li class="">
    <a href="/settings/privacy" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">�����������</b>
    </a>
  </li>
  <li class="">
    <a href="/settings/blacklist" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������ ������</b>
    </a>
  </li>
  <li class="">
    <a href="/balance" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">������</b>
    </a>
  </li>
</ul></div><br>
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/profile_edit.css?26"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?33"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/aes_light.css?23"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?65"></link>
<div id="profile_editor" style="margin:-12px;">
  <div id="pedit_result"></div>
  <div id="pedit_general">
<div class="err_yellow name_errors {code-1}" style="font-weight:normal;margin-top:25px">��� ��������� �� ������ � �������� ��������� ����� ������. �������� ����������� ��� ��������� � ������, ������������ �� ����� �������� ����.</div>
<div class="err_yellow name_errors {code-2}" style="font-weight:normal;margin-top:25px">��� ��������� �� ������ � ������ ��������� ����� ������. �������� ����������� ��� ��������� � ������, ������������ �� ������� �������� ����.</div>
<div class="err_yellow name_errors {code-3}" style="font-weight:normal;margin-top:25px">����� ����� ����������� ����� ��� ������� ������� �� �����.</div>
<div class="margin_top_10"></div><h2 style="width:400px;margin-left:100px;">�������� ������</h2>
<div class="err_red no_display pass_errors" id="err_pass_1" style="font-weight:normal;width:378px;margin-left:100px;">������ �� ������, ��� ��� ������� ������ ����� �����������.</div>
<div class="err_red no_display pass_errors" id="err_pass_2" style="font-weight:normal;width:378px;margin-left:100px;">������ �� ������, ��� ��� ����� ������ �������� �����������.</div>
<div class="err_yellow no_display pass_errors" id="ok_pass" style="font-weight:normal;width:378px;margin-left:100px;">������ ������� ������.</div>
<div class="texta2">������ ������:</div><input type="password" id="old_pass" class="inpst" maxlength="100" style="width:150px;" /><span id="validOldpass"></span><div class="mgclr"></div>
<div class="texta2">����� ������:</div><input type="password" id="new_pass" class="inpst" maxlength="100" style="width:150px;" onMouseOver="myhtml.title('', '������ ������ ���� �� ����� 6 �������� � �����', 'new_pass')" /><span id="validNewpass"></span><div class="mgclr"></div>
<div class="texta2">��������� ������:</div><input type="password" id="new_pass2" class="inpst" maxlength="100" style="width:150px;" onMouseOver="myhtml.title('', '������� ��� ��� ����� ������', 'new_pass2')" /><span id="validNewpass2"></span><div class="mgclr"></div>
<div class="texta2">&nbsp;</div><div class="button_div fl_l"><button onClick="settings.saveNewPwd(); return false" id="saveNewPwd">�������� ������</button></div><div class="mgclr"></div>
<br>
<div class="margin_top_10"></div><br><h2 style="width:400px;margin-left:100px;">�������� ���</h2>
<div class="err_red no_display name_errors" id="err_name_1" style="font-weight:normal;width:378px;margin-left:100px;">����������� ������� � ������� ���������.</div>
<div class="err_yellow no_display name_errors" id="ok_name" style="font-weight:normal;width:378px;margin-left:100px;">��������� ������� ���������.</div><br>
<div class="texta2">���� ���:</div><input type="text" id="name" class="inpst" maxlength="100"  style="width:150px;" value="{name}" /><span id="validName"></span><div class="mgclr"></div>
<div class="texta2">���� �������:</div><input type="text" id="lastname" class="inpst" maxlength="100"  style="width:150px;" value="{lastname}" /><span id="validLastname"></span><div class="mgclr"></div>
<div class="texta2">&nbsp;</div><div class="button_div fl_l"><button onClick="settings.saveNewName(); return false" id="saveNewName">�������� ���</button></div><div class="mgclr"></div>
<br>
<div class="margin_top_10"></div><br><h2 style="width:400px;margin-left:100px;">����� ����� ����������� �����</h2>
<div class="err_yellow name_errors no_display" id="ok_email" style="font-weight:normal;width:378px;margin-left:100px;">�� <b>���</b> �������� ����� ������ ������ � ��������������.</div>
<div class="err_red no_display name_errors" id="err_email" style="font-weight:normal;width:378px;margin-left:100px;">������������ email �����</div>
<div class="texta2">������� �����:</div><div style="color:#555;margin-top:13px;margin-bottom:10px">{email}</div><div class="mgclr"></div>
<div class="texta2">����� �����:</div><input type="text" id="email" class="inpst" maxlength="100" style="width:150px;" /><span id="validName"></span><div class="mgclr"></div>
<div class="texta2">&nbsp;</div><div class="button_div fl_l"><button onClick="settings.savenewmail(); return false" id="saveNewEmail">��������� �����</button></div><div class="mgclr"></div>
<br>
<div class="margin_top_10"></div><br><h2 style="width:400px;margin-left:100px;">������������ ����� ��������</h2>
<div class="texta2">��������� ����������:</div>
<div style="margin:4px 0" class="fl_l" id="acts" onmouseover="myhtml.title('', 'IP ���������� ��������� {ip}', 'acts')">{log-user}</div>
<div class="mgclr"></div>
<div class="margin_top_10"></div>
<div class="margin_top_10"></div>
<div class="mgclr"></div>
<div class="texta">&nbsp;</div>
<div style="margin-left:235px;">
<a onClick="settings.logs(); return false">���������� ������� ����������</a>
</div>
<div class="mgclr"></div>
<br>
<div class="margin_top_10"></div><br><h2 style="width:400px;margin-left:100px;">����� ����� ��������</h2>
<div class="err_yellow no_display name_errors" id="ok_alias" style="font-weight:normal;width:378px;margin-left:100px;">����� ������������ �������� ��� ������� ����������.</div>
<div class="err_red no_display name_errors" id="err_alias_str" style="font-weight:normal;width:378px;margin-left:100px;">������������ �����.</div>
<div class="err_red no_display name_errors" id="err_alias_name" style="font-weight:normal;width:378px;margin-left:100px;">����� ��� �����.</div>
<div class="texta2">����� ��������:</div><div style='margin-top:13px'>{id}</div><div class="mgclr"></div>
<div class="texta2">����� ��������:</div><font style="color:#555">http://vk.com/</font><input type="text" id="alias" class="inpst" maxlength="10"  style="width:150px;" value="{alias}" /><div class="mgclr"></div>
<div class="texta2">&nbsp;</div><div class="button_div fl_l"><button onClick="settings.savealias(); return false" id="saveAlias">�������� �����</button></div><div class="mgclr"></div>

</div></div>