<script type="text/javascript">var page_cnt_rate = 1;</script>

<div id="modal_box">
  <div id="box_all_audios" class="box_pos" style="display: block;">
    <div class="box_bg" style="width:450px;margin-top:52.5px;">
      <div class="box_title" id="box_title_all_audios">
        Рейтинг
        <div class="box_close" onclick="Box.Close('all_audios', 0); return false;"></div>
      </div>
      <div class="box_conetnt" id="box_content_all_audios" style="height:400px;overflow-y:scroll;">
        <div class="bg_show" style="width:400px;"></div>
        <div id="jquery_jplayer"></div>
        <input type="hidden" id="teck_id" value="0">
        <input type="hidden" id="typePlay" value="standart">
        <div class="cover_edit_title"><div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="height:22px">
 <div class="buttonsprofileSec"> <a href="/settings/privacy" onClick="Page.Go(this.href); return false;"><div><b>Голоса</b></div></a></div>
  <a href="/balance?act=invited" onClick="Page.Go(this.href); return false;"><div><b>Приглашенные</b></div></a>
  <a onClick="subscriptions.fall('{uid}')"><div><b>Поклонники</b></div></a>
 </div></div>
        <div class="clear"></div>
        <div style="padding:10px;padding-bottom:15px;">
<div class="err_yellow name_errors" style="font-weight:normal;margin-left:5px;"><b>Рейтинг</b> - социальный показатель, который помогает нам определять порядок участников при поиске и в списках друзей. Он зависит от таких параметров, как колличество голосов и поклонников.</div>

  <div id="rating_users" style="width:100px;margin-left:50px;margin-top:2px;">{users}</div>
  <div class="clear"></div>
 
  <div class="clear"></div>
 </div>
 <div class="clear"></div>
</div>

<div class="box_footer">
  <div id="box_bottom_left_text" class="fl_l">
    <img id="box_loading" style="display:none;padding-top:8px;padding-left:5px;" src="/templates/Default/images/loading_mini.gif" alt="">
 [prev]<a onClick="rating.page(1)"  id="rate_prev_ubut"><div id="load_rate_prev_ubut" style="padding-top:5px;padding-left:3px;">Показать предыдущие повышения</div></a>[/prev]
  </div>
  <div class="button_div_gray fl_r">
    <button onclick="Box.Close('all_audios', 0); return false;">Отмена</button>
  </div>
</div>
  </div>
</div>