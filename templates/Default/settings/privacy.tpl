<style>.content{width:633px}</style>
<script type="text/javascript">
$(document).click(function(event){
	settings.event(event);
});
</script>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
    <a href="/settings" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">�����</b>
    </a>
  </li>
  <li class="active_link">
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
</ul></div>
<br>
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/profile_edit.css?26"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?33"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/aes_light.css?23"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?65"></link>
<div id="profile_editor" style="margin:-12px;">
  <div id="pedit_result"></div>
  <div id="pedit_general">
<div class="err_yellow no_display" id="ok_update" style="font-weight:normal;">����� ��������� ����������� �������� � ����.</div>

<div class="texta color_000" style="width:350px">��� ����� ������ ��� ������ <b>���������</b>:</div>
 <div class="sett_privacy" onClick="settings.privacyOpen('msg')" id="privacy_lnk_msg">{val_msg_text}</div>
 <div class="sett_openmenu no_display" id="privacyMenu_msg">
  <div id="selected_p_privacy_lnk_msg" class="sett_selected" onClick="settings.privacyClose('msg')">{val_msg_text}</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_msg', '��� ������������', '1', 'privacy_lnk_msg')">��� ������������</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_msg', '������ ������', '2', 'privacy_lnk_msg')">������ ������</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_msg', '�����', '3', 'privacy_lnk_msg')">�����</div>
 </div>
 <input type="hidden" id="val_msg" value="{val_msg}" />
<div class="mgclr"></div>

<div class="texta color_000" style="width:350px">��� ����� ����� ������ �� ���� <b>�����</b>:</div>
 <div class="sett_privacy" onClick="settings.privacyOpen('wall1')" id="privacy_lnk_wall1">{val_wall1_text}</div>
 <div class="sett_openmenu no_display" id="privacyMenu_wall1" style="margin-top:-1px">
  <div id="selected_p_privacy_lnk_wall1" class="sett_selected" onClick="settings.privacyClose('wall1')">{val_wall1_text}</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_wall1', '��� ������������', '1', 'privacy_lnk_wall1')">��� ������������</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_wall1', '������ ������', '2', 'privacy_lnk_wall1')">������ ������</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_wall1', '������ �', '3', 'privacy_lnk_wall1')">������ �</div>
 </div>
 <input type="hidden" id="val_wall1" value="{val_wall1}" />
<div class="mgclr"></div>

<div class="texta color_000" style="width:350px">��� ����� ��������� ��������� �� ���� <b>�����</b>:</div>
 <div class="sett_privacy" onClick="settings.privacyOpen('wall2')" id="privacy_lnk_wall2">{val_wall2_text}</div>
 <div class="sett_openmenu no_display" id="privacyMenu_wall2" style="margin-top:-1px">
  <div id="selected_p_privacy_lnk_wall2" class="sett_selected" onClick="settings.privacyClose('wall2')">{val_wall2_text}</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_wall2', '��� ������������', '1', 'privacy_lnk_wall2')">��� ������������</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_wall2', '������ ������', '2', 'privacy_lnk_wall2')">������ ������</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_wall2', '������ �', '3', 'privacy_lnk_wall2')">������ �</div>
 </div>
 <input type="hidden" id="val_wall2" value="{val_wall2}" />
<div class="mgclr"></div>

<div class="texta color_000" style="width:350px">��� ����� �������������� ��� <b>������</b>:</div>
 <div class="sett_privacy" onClick="settings.privacyOpen('wall3')" id="privacy_lnk_wall3">{val_wall3_text}</div>
 <div class="sett_openmenu no_display" id="privacyMenu_wall3" style="margin-top:-1px">
  <div id="selected_p_privacy_lnk_wall3" class="sett_selected" onClick="settings.privacyClose('wall3')">{val_wall3_text}</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_wall3', '��� ������������', '1', 'privacy_lnk_wall3')">��� ������������</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_wall3', '������ ������', '2', 'privacy_lnk_wall3')">������ ������</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_wall3', '������ �', '3', 'privacy_lnk_wall3')">������ �</div>
 </div>
 <input type="hidden" id="val_wall3" value="{val_wall3}" />
<div class="mgclr"></div>

<div class="texta color_000" style="width:350px">��� ����� �������� ���������� ���� <b>��������</b>:</div>
 <div class="sett_privacy" onClick="settings.privacyOpen('info')" id="privacy_lnk_info">{val_info_text}</div>
 <div class="sett_openmenu no_display" id="privacyMenu_info" style="margin-top:-1px">
  <div id="selected_p_privacy_lnk_info" class="sett_selected" onClick="settings.privacyClose('info')">{val_info_text}</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_info', '��� ������������', '1', 'privacy_lnk_info')">��� ������������</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_info', '������ ������', '2', 'privacy_lnk_info')">������ ������</div>
  <div class="sett_hover" onClick="settings.setPrivacy('val_info', '������ �', '3', 'privacy_lnk_info')">������ �</div>
 </div>
 <input type="hidden" id="val_info" value="{val_info}" />
<div class="mgclr"></div>

<div class="texta color_000" style="width:352px">&nbsp;</div>
 <div class="button_div fl_l"><button onClick="settings.savePrivacy(); return false" id="savePrivacy">���������</button></div>
<div class="mgclr"></div></div></div>