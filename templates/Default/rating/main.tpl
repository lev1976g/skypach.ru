<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<script>
req.send('comment='+encodeURIComponent('������ ���'));
</script>
<div id="modal_box">
  <div id="box_all_audios" class="box_pos" style="display: block;">
    <div class="box_bg" style="width:480px;margin-top:52.5px;">
      <div class="box_title" id="box_title_all_audios">
        �������
        <div class="box_close" onclick="Box.Close('all_audios', 0); return false;"></div>
      </div>
      <div class="box_conetnt" id="box_content_all_audios" style="height:320px;overflow-y:;">
        <div class="bg_show" style="width:430px;"></div>
        <div id="jquery_jplayer"></div>
        <input type="hidden" id="teck_id" value="0">
        <input type="hidden" id="typePlay" value="standart">
        <div class="cover_edit_title"><div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="height:22px">
<a><div><b>1 �����</b></div></a>
  <a ><div><b>3 ������</b></div></a>
   <div class="buttonsprofileSec"> <a><div><b>������ ����������</b></div></a></div>
 </div></div>
        <div class="clear"></div>
        <div style="padding:10px;padding-bottom:15px;">
<div class="err_yellow name_errors" style="font-weight:normal;margin-left:0px;"><b>�������</b> - ���������� ����������, ������� �������� ��� ���������� ������� ���������� ��� ������ � � ������� ������. �� ������� �� ����� ����������, ��� ����������� ������� � �����������.</div>
<h1>�������������?</h1>
<div style="margin-left:6px">���� ��������� (�������������):</div>
   <div class="rating_iny"><div style='margin-left:-145px;margin-top: -40px;'>
<input type="text" class="inpst" id="comment" name="comment" maxlength="45" style="width: 300px; height: 96px; font-size: 12px;">  </div><div style='margin-top:-80px; margin-left:320px;'>
  + <input type="text" name="num" class="inpst" maxlength="3" id="rate_num" onKeyUp="rating.update()" /></div>

	<input type="hidden" id="balance" value="{balance}" />
   </div>
  
  <div class="clear"></div>
 </div>
 <div class="clear"></div>
</div>
<div class="box_footer">
  <div id="box_bottom_left_text" class="fl_l">
    <img id="box_loading" style="display:none;padding-top:8px;padding-left:5px;" src="/templates/Default/images/loading_mini.gif" alt="">
  </div>
<div class="button_div fl_l" style="margin-left:255px;"><button onClick="rating.save('{user-id}')" id="saverate" formmethod="post">�������� �������</button></div>
  <div class="button_div_gray fl_r">
    <button onclick="Box.Close('all_audios', 0); return false;">������</button>
  </div>
</div>
  </div>
</div>