<style>.content{width:633px}</style>
<div class="t_bar tabs clear_fix" style="margin-top:-10px;width:607px;margin-left:-12px;"><ul id="pedit_filters" class="t0">
  <li class="">
   <a href="/editapp/info_{id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">����������</b>
    </a>
  </li>
  <li class="active_link">
<a href="/editapp/options_{id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">���������</b>
    </a>
  </li>
  <li class="">

<a href="/editapp/payments_{id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">�������</b>
    </a>
  </li>
  <li class="">
<a href="/editapp/admins_{id}" onClick="Page.Go(this.href); return false;">
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">��������������</b>
    </a>
  </li>

    <li class="t_r">
       <a href="/app{id}" onclick="return nav.go(this, event, {noback: true})" >� ����������</a>
    </li>
</ul></div><br>
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/profile_edit.css?26"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?33"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/aes_light.css?23"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?65"></link>
<div id="profile_editor" style="margin:-12px;">


<div id="app_edit_error"></div>

<div>

<div id="apps_options_saved" class="apps_edit_success"></div>

<div class="apps_edit_top"></div>

<table class="apps_edit_table">
<br>
<tbody>

<tr>

<td class="apps_edit_label ta_r">ID ����������:</td>

<td class="apps_edit_t"> <b>{id}</b>

<input type="hidden" id="app_id" value="{id}">

<input type="hidden" id="app_hash" value="{hash}">

</td>

</tr>

<tr>

<td class="apps_edit_label ta_r">���������� ����:</td>

<td class="apps_edit">

<input type="text" class="text" id="app_secret2" value="{secret}">

</td>

</tr>

</tbody>

</table>

<div style="">

<table class="apps_edit_table">

<tbody>

<tr>

<td class="apps_edit_label ta_r">���������:</td>

<td>

<select name="status" id="status"  class="inpst">{option}</select>

</td>

</tr>

</tbody>

</table>

</div>

<div id="apps_edit_container_opts" style="">

<div class="apps_edit_header">��������� ����������</div>
<br>
<table class="apps_edit_table">

<tbody>

<tr>

<td class="apps_edit_label ta_r">��� ����������:</td>

<td>

<select id="type" name="type" class="inpst" onchange="AppsEdit.type()">{type} </select>

</td>

</tr>

</tbody>

</table>

<table id="apps_edit_iframe_options" class="apps_edit_table"  style="display: {siframe};">

<tbody>

<tr>

<td class="apps_edit_label ta_r">����� IFrame:</td>

<td>

<input class="text" type="text" id="app_iframe_url" value="{url}">

</td>

</tr>

<tr>

<td class="apps_edit_label ta_r">������ IFrame:</td>

<td>

<input class="text text_small" type="text" id="app_iframe_width" value="{width}"> <span class="apps_edit_iframe_res">x</span>

<input class="text text_small" type="text" id="app_iframe_height" value="{height}">

</td>

</tr>

</tbody>

</table>

<div id="apps_edit_flash_options" style="display: {sflash};">

<div class="apps_edit_header">�������� SWF-����������</div>

<table class="apps_edit_table">

<tbody><tr><td class="label"></td><td><a onclick="AppsEdit.updateSWF({id});" class="cursor_pointer">��������� ����������</a></td></tr>

</tbody></table>

</div>

</div>

<table id="apps_edit_save" class="apps_edit_table">

<tbody>

<tr>

<td class="label"></td>

<td>

<div class="button_div fl_l">

<button id="app_save_btn" onclick="AppsEdit.SaveOptions('save_options',{id});">��������� ���������</button>

</div>
<br><br>
<div id="app_save_info" style="padding: 5px; margin-left: 150px;"></div>

</td>

</tr>

</tbody>

</table>

</div>

<div class="apps_edit_other">


<div style="margin-left:183px">
<div class="clear" style="margin: 10px 0;color: #2B587A;font-weight: bold;font-size: 14px;">�������� ����������</div>

<div class="clear" style="margin:10px 0;">���� �� ������� ��� ����������, �� ��� �� ������� ��� ������������.</div>

<div class="button_div" style="width:138px;">

<button id="app_save_btn" onclick="AppsEdit.DeleteApp({id});">������� ����������</button>

</div>

</div> </div></div>
