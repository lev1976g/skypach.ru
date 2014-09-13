<link media="screen" href="{theme}/style/style.css" type="text/css" rel="stylesheet" />
<img src="/templates/Default/images/loto.jpg" style="position:absolute;z-index:1;margin-left:12px;margin-top:20px;border-radius:10px;width:600px;">
<img src="/templates/Default/images/loto-fon.jpg" style="position:absolute;width:626px">  
<div id="maindiv" style="

width: 400px;

height: 230px;

background-color: #ced7df;

border-radius: 20px;

color: #ffffff;

padding: 15px;

opacity: 0.8;

margin-left:98px;

margin-top:160px;
">
<div style="background-color: #000000;padding: 15px;border-radius: 20px;">
Ваш баланс <b>{balance}</b> голосов.<br><br>
Система загадывает цифру от <b>1</b> до <b>3</b>.<br>Если Вы отгадали, ставка - возвращается в удвоенном размере.
<br><br><br>
<div class="err_yellow no_display pass_errors" id="win" style="font-weight:normal;width:378px;margin-left:210px;">Вы выйграли</div>
<div class="err_red no_display pass_errors" id="fail" style="font-weight:normal;width:378px;margin-left:210px;">Вы проиграли</div>
<center>
 <form action="/?go=loto&act=go" method="POST">
<div style="font-size:20px;"><b>Число</b>
<select id="numer" name="numer" class=" " style="width:80px;height:35px;font-size:30px;">
  <option> </option>
  <option value="1">1</option><option value="2">2</option>
 </select>
<select id="golos" name="golos" class=" " style="width:80px;height:35px;font-size:30px;">
  <option> </option>
  <option value="1">1</option><option value="10">10</option><option value="25">25</option>
<option value="50">50</option>
<option value="100">100</option>
 </select> <b>Ставка</b></div></center>
<br><br><br>
<div class="button_div fl_r" style="margin-right:152px"><button type="submit">Го-го</button></div><br>
</form>
</div>
<center><br>Проигранные голоса мы не возвращаем!</center>
</div>