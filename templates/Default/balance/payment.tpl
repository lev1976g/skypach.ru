<script type="text/javascript">
$(document).ready(function(){
  $('#payment_num').focus().val('1');
  payment.update();
});
</script>
<div class="miniature_box">
 <div class="miniature_pos" style="width:500px">
  <div class="payment_title">
   <img src="{ava}" width="50" height="50" />
   <div class="fl_l">
    �� ����������� �������� ������.<br />
    ��� ������� ������: <b>{balance} �����</b>
   </div>
   <div class="fl_r">
    <a class="cursor_pointer" onClick="viiBox.clos('payment_2', 1)">�������</a>
   </div>
   <div class="clear"></div>
  </div>
  <div class="clear"></div>
  <div class="payment_h2" style="text-align:center">������� �������� ���������� ������� ��� ��������:</div>
  <center>
   <input type="text" class="inpst payment_inp" maxlength="4" id="payment_num" onKeyUp="payment.update()" />
   <div class="rating_text_balance">� ��� <span id="rt">���������</span> <b id="num">{balance}</b> �������</div>
   <input type="hidden" id="balance" value="{balance}" />
   <input type="hidden" id="cnt" value="{cnt}" />
   <input type="hidden" id="userid" value="{userid}" />
  </center>
  <div class="button_div fl_l" style="margin-left:210px;margin-top:15px"><button onClick="payment.save()" id="saverate">��������</button></div>
  <div class="clear"></div>

<div style="margin-top: 40px; margin-bottom: -35px;">
    <div class="payment_title">
    <div class="fl_l">
<img src="{theme}/images/contact_info_50.png" id="feedimg" align="left" />
<div class="texta" style="width:80px;margin-top:12px">ID ��������:</div>
 <input type="text" id="upage" class="inpst" maxlength="9" style="width:180px;margin-top:15px" onKeyUp="payments.checkPaymentUser()" />
  </div>
   <div class="clear"></div>
   </div>
</div>

 </div>
 <div class="clear" style="height:50px"></div>
</div>