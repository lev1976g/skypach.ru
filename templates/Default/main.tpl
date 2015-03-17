<!DOCTYPE html>
<html lang="ru">
{header}

<noscript><meta http-equiv="refresh" content="0; URL=/badbrowser.php"></noscript>
<link rel="stylesheet" type="text/css" href="{theme}/style/common.css?391" />
<link media="screen" href="{theme}/style/style.css" type="text/css" rel="stylesheet" />  
<link media="screen" href="{theme}/style/apps.css" type="text/css" rel="stylesheet" /> 
<link media="screen" href="{theme}/style/apps_edit.css" type="text/css" rel="stylesheet" />  
{js}[not-logged]<script type="text/javascript" src="{theme}/js/reg.js"></script>[/not-logged]
<link rel="shortcut icon" href="/favicon.ico" />
<script src="/checkxss.js"></script>
<script src="{theme}/js/notW.js"></script>
<script src="{theme}/js/apps.js"></script>
<script src="{theme}/js/apps_edit.js"></script>
<script src="{theme}/js/leftmenu.js"></script>
</head>
<body onresize="onBodyResize()" class="is_rtl font_default pads ">
<script src="/templates/Default/js/audio_player.js"></script>
<script src="/templates/Default/js/jquery.lib.js"></script>
<script src="/templates/Default/js/main.js"></script>
<script src="/templates/Default/js/profile.js"></script>
<div class="scroll_fix_bg no_display" onMouseDown="myhtml.scrollTop()"><div class="scroll_fix_page_top">Íàâåðõ</div></div>
<div id="doLoad"></div>
  <div class="head">
    <div>

 [logged]<a class="udinsMy" href="/news/notifications/{news-link}" onClick="Page.Go(this.href); return false;" id="news_link"><span id="new_news">{new-news}</span></a>[/logged]
  [not-logged]<a href="/" class="udinsMy"></a>[/not-logged]
  [logged]<div class="headmenu">
     <!--search-->
   <div id="seNewB">
    <input type="text" value="Ïîèñê" class="fave_input search_input" 
		onBlur="if(this.value==''){this.value='Ïîèñê';this.style.color = '#c1cad0';}" 
		onFocus="if(this.value=='Ïîèñê'){this.value='';this.style.color = '#000'}" 
		onKeyPress="if(event.keyCode == 13) gSearch.go();"
		onKeyUp="FSE.Txt()"
		onClick="if(this.value != 0) $('.fast_search_bg').show()"
	id="query" maxlength="65" />
	<div id="search_types">
	 <input type="hidden" value="1" id="se_type" />
	 <div class="search_type" id="search_selected_text" onClick="gSearch.open_types('#sel_types'); return false">ïî ëþäÿì</div>
	 <div class="search_alltype_sel no_display" id="sel_types">
	  <div id="1" onClick="gSearch.select_type(this.id, 'ïî ëþäÿì'); FSE.GoSe($('#query').val()); return false" class="search_type_selected">ïî ëþäÿì</div>
	  <div id="2" onClick="gSearch.select_type(this.id, 'ïî âèäåîçàïèñÿì'); FSE.GoSe($('#query').val()); return false">ïî âèäåîçàïèñÿì</div>
	  <div id="3" onClick="gSearch.select_type(this.id, 'ïî çàìåòêàì');  FSE.GoSe($('#query').val()); return false">ïî çàìåòêàì</div>
	  <div id="4" onClick="gSearch.select_type(this.id, 'ïî ñîîáùåñòâàì'); FSE.GoSe($('#query').val()); return false">ïî ñîîáùåñòâàì</div>
	  <div id="5" onClick="gSearch.select_type(this.id, 'ïî àóäèîçàïèñÿì');  FSE.GoSe($('#query').val()); return false">ïî àóäèîçàïèñÿì</div>
	 </div>
	</div>
   <div class="fast_search_bg no_display" id="fast_search_bg">
   <a href="/" style="padding:12px;background:#eef3f5" onClick="gSearch.go(); return false" onMouseOver="FSE.ClrHovered(this.id)" id="all_fast_res_clr1"><text>Èñêàòü</text> <b id="fast_search_txt"></b><div class="fl_r fast_search_ic"></div></a>
   <span id="reFastSearch"></span>
   </div>
   </div>
   <!--/search-->
  <a href="/?go=search" onClick="Page.Go(this.href); return false">ëþäè</a>
  <a href="/?go=search&type=4" onclick="Page.Go(this.href); return false;">ñîîáùåñòâà</a>
  <a href="/apps" onclick="Page.Go(this.href); return false;">èãðû</a>
<a href="/audio" onClick="doLoad.js(0); player.open(); return false;" id="fplayer_pos">ìóçûêà           <div id="head_play_btn1" onmouseover="addClass(this, 'over');" onmouseout="removeClass(this, 'over'); removeClass(this, 'down')" onmousedown="addClass(this, 'down')" onmouseup="removeClass(this, 'down')" onclick="headPlayPause(event)"></div></a>
  <a href="/support?act=new" onclick="Page.Go(this.href); return false;">ïîìîùü</a>
  <a href="/?act=logout">âûéòè</a>
</div>
   </div>
   <!--/search-->
  </div>[/logged]
[not-logged]
<div class="headmenu">
     <!--search-->
   <div id="seNewB">
    
   </div>
   </div>
   <!--/search-->

</div>
   </div>
   <!--/search-->
  </div>
[/not-logged]

<div class="clear"></div>
<div></div>
<div class="autowr" [not-logged] style="width: 800px;" [/not-logged]>
[logged][/logged]
[not-logged]<div class="leftpanel" >
  <form method="POST" action="">
   <div class="flLg">Òåëåôîí èëè e-mail:</div><input type="text" name="email" id="log_email" class="inplog" maxlength="50" />
   <div class="flLg"">Ïàðîëü</div><input type="password" name="password" id="log_password" class="inplog" maxlength="50" />
   <div class="logpos">
<div style="margin-top:2px">
    <div class="button_div" style="width:113px;margin-right:-2px"><button name="log_in" id="login_but" style="width:113px">Âîéòè</button></div></div>
	<div style="margin-top:5px"><a href="/restore" onClick="Page.Go(this.href); return false">Çàáûëè ïàðîëü?</a></div>
   </div>
  </form>
 </div>[/not-logged]
[logged]<div class="leftmenu" style="float:left;position:relative;right:93px;top:-9px">
<div id="menu" style="float:left">
<ul>
<li><span class='fl_r'><a href='/editmypage' onClick="Page.Go(this.href); return false;">ðåä.</a></span><a href="{my-page-link}" onClick="Page.Go(this.href); return false;">Ìîÿ Ñòðàíèöà</a></li>
<li><a href="/friends" onClick="Page.Go(this.href); return false;" id="requests_link">Ìîè Äðóçüÿ </a><div style="margin-top:-15px;">{demands} </div></li><div style="margin-top:15px;"></div>
<li><a href="/albums/{my-id}" onClick="Page.Go(this.href); return false;" id="requests_link_new_photos">Ìîè Ôîòîãðàôèè {new_photos}</a></li>
<li><a href="/videos" onClick="Page.Go(this.href); return false;">Ìîè Âèäåîçàïèñè</a></li>
<li><a href="/audio" onClick="Page.Go(this.href); return false;">Ìîè Àóäèîçàïèñè</a></li>
<li><a href="/messages" onClick="Page.Go(this.href); return false;">Ìîè Ñîîáùåíèÿ</a><div style="margin-top:-15px;">{msg} </div></li><div style="margin-top:15px;"></div>
<li><a href="/groups/" onClick="Page.Go(this.href); return false;">Ìîè Ãðóïïû</a><div style="margin-top:-15px;">{groups} </div></li><div style="margin-top:15px;"></div>
<li><a href="/news/notifications" onClick="Page.Go(this.href); return false;">Ìîè Íîâîñòè</a></li>
<li><a href="/fave" onClick="Page.Go(this.href); return false;">Ìîè Çàêëàäêè</a></li>
<li><a href="/notes" onClick="Page.Go(this.href); return false;">Ìîè Çàìåòêè</a></li>
<li><a href="/settings" onClick="Page.Go(this.href); return false;">Ìîè Íàñòðîéêè</a></li>
<div class="more_div"></div>
<li><a href="/apps" onClick="Page.Go(this.href); return false">Ïðèëîæåíèÿ</a></li>
<li><a href="/docs" onClick="Page.Go(this.href); return false">Äîêóìåíòû</a></li>
<li><a href="/ads&act=ads_target" onClick="Page.Go(this.href); return false">Ðåêëàìà</a></li>
<li><a href="/support" onClick="Page.Go(this.href); return false">Ïîääåðæêà {new-support}</b></a></li>

</ul>
<br>

<div id="happy-friends"></div>
<div id="balance"></div>
<br>

<style>
.left_gift_bonus, .left_rate_plus {
  color: #C4BB98;
  font-size: 0.9em;
  font-weight: bold;
  margin-top: -11px;
}
.left_gift {
  border-bottom: 1px solid #DCDCDC;
  width:130px;
  margin-bottom: 10px;
}
.left_gift .body {
  background: #F7F7F7;
  border: 6px solid #EAEAEA;
  padding: 4px 4px 7px;
  text-align: center;
  overflow: hidden;
  word-wrap: break-word;
}
.left_gift .body div {
  border-bottom: 0px solid #DCDCDC;
  margin: 0px 3px 7px;
  padding-bottom: 2px;
  margin-top: 4px;

}
.left_gift.gold {
  border-color: #C4BB98;
}
.left_gift.gold .body {
  background: #FEF9E1;
  border-color: #E9DEB4;
}
.left_gift.gold .body div {
  border-color: #C4BB98;
}
</style>

<div id="gift"></div>

<style>
.ad_box_new {
  background: #FFFFFF;
  border: 1px solid #DCE3E9;
  border-width: 1px 0px 1px 0px;
  padding: 0px 0px 11px 0px;
  margin: 0px;
  width: 118px;
  overflow: hidden;
  text-align: center;
  display: block;
}
a.ad_box_new:hover {
  text-decoration: none;
}
.ad_title_new {
  font-weight: bold;
  font-size: 11px;
  margin: 8px 3px 0px 3px;
  color: #36638E;
  text-align: center
}
.ad_box_new img {
  margin-top: 9px
}

</style>

<div id="rate"></div>
<div id="ads_view" style="display:none;"></div>
<div class="im_chat_block ui-draggable" style="display:none;" id="im_chat_block">

<div class="im_chathead fl_l" onmousedown="drag_object(event, this.parentNode, 2000, 300)">Äèàëîãè</div>
<div class="im_chathead2 fl_l"></div>
<div class="im_chatclose fl_r" onclick="im_chat.close();"><div></div></div>
<div class="clear"></div>
<div class="fc_clist_online_wrap fl_r" onmouseover="myhtml.title('', 'Ïîêàçàòü òîëüêî äèàëîãè', 'fc_clist_online_active')" onclick="im_chat.mail();"><div id="fc_clist_online_active" class="fc_clist_online fc_clist_online_active"></div></div>
<div class="im_chatSearch">
<input type="text" id="im_chatSearch" placeholder="Íà÷íèòå ââîäèòü èìÿ..." onkeydown="im_chat.search();" class="im_chatsearchtext" value="">
</div>
<span id="updateDialogs"></span>
<div class="im_chatserch"></div>
<div class="im_chatbody">

<div class="info_center" style="font-size:11px;padding:5px;margin-top:60px">Ââåäèòå èìÿ è âûáåðèòå ïîëüçîâàòåëÿ, ÷òîáû íà÷àòü äèàëîã.</div>
<div class='clear'></div>
</div>
</div>
<div class="im_chatbody2" style="display:none;">
</div>

</div>


</div>[/logged] <div class="content" [logged] style="margin-left:55px" [/logged]>
  <div class="cont_border_left">
   <div class="cont_border_right">
<div id="audioPlayer"></div>
    <div class="speedbar [speedbar]no_display[/speedbar]" id="speedbar" >{speedbar}</div>
    <div class="padcont">
	 <div id="page">{info}{content}</div>
	 <div class="clear"></div>
	</div>
   </div>
  </div>
  <div class="cont_border_bottom"></div>
  <div class="footer">
[logged]
<a href="/m">ìîáèëüíàÿ âåðñèÿ</a>
   <a href="/support?act=new" onClick="Page.Go(this.href); return false">ïîìîùü</a>
   <a href="/blog" onClick="Page.Go(this.href); return false">áëîã</a><a href="/editapp/create" onClick="Page.Go(this.href); return false">ðàçðàáîò÷èêàì</a><br /><br />
[/logged]
Ñêàéïà÷ © 2014<br />
[logged]
<small><a href="/id1" onClick="Page.Go(this.href); return false">ÃëàâÀäìèí Àäìèíîâè÷</a></small><br/><br/>
[/logged]

<br/>
<!--LiveInternet counter--><script type="text/javascript"><!--
document.write("<a href='//www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t27.1;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: ïîêàçàíî êîëè÷åñòâî ïðîñìîòðîâ è"+
" ïîñåòèòåëåé' "+
"border='0' width='88' height='120'><\/a>")
//--></script><!--/LiveInternet-->
<br/>
<br/>

<br/>
<a href="{my-page-link}" onClick="Page.Go(this.href); return false;"><img src="{theme}/images/network.png"></a><br/>
<br/>
<br/>
<img src="{theme}/images/support.jpg">
<br/>
<a target="_blank" rel="nofollow" href="http://2ch.hk/"><img src="{theme}/images/support_dvach.jpg"></a>
<a target="_blank" rel="nofollow" href="http://pleer.com/"><img src="{theme}/images/support_pleer.jpg"></a>
<br/>
<br/>
<br/>

  </div>
 </div>
</div>
[logged]

<script type="text/javascript">
function upClose(xnid){
	$('#event'+xnid).remove();
	$('#updates').css('height', $('.update_box').size()*123+'px');
}
function GoPage(event, p){
	var oi = (event.target) ? event.target.id: ((event.srcElement) ? event.srcElement.id : null);
	if(oi == 'no_ev' || oi == 'update_close' || oi == 'update_close2') return false;
	else {
		pattern = new RegExp(/photo[0-9]/i);
		pattern2 = new RegExp(/video[0-9]/i);
		if(pattern.test(p))
			Photo.Show(p);
		else if(pattern2.test(p)){
			vid = p.replace('/video', '');
			vid = vid.split('_');
			videos.show(vid[1], p, location.href);
		} else
			Page.Go(p);
	}
}
$(document).ready(function(){
	setInterval(function(){
		$.post('/index.php?go=updates', function(d){
			row = d.split('|');
			if(d && row[1]){
				if(row[0] == 1) uTitle = 'Íîâûé îòâåò íà ñòåíå';
				else if(row[0] == 2) uTitle = 'Íîâûé êîììåíòàðèé ê ôîòîãðàôèè';
				else if(row[0] == 3) uTitle = 'Íîâûé êîììåíòàðèé ê âèäåîçàïèñè';
				else if(row[0] == 4) uTitle = 'Íîâûé êîììåíòàðèé ê çàìåòêå';
				else if(row[0] == 5) uTitle = 'Íîâûé îòâåò íà Âàø êîììåíòàðèé';
				else if(row[0] == 6) uTitle = 'Íîâûé îòâåò â òåìå';
				else if(row[0] == 7) uTitle = 'Íîâûé ïîäàðîê';
				else if(row[0] == 8) uTitle = 'Íîâîå ñîîáùåíèå';
				else if(row[0] == 9) uTitle = 'Íîâàÿ îöåíêà';
				else if(row[0] == 10) uTitle = 'Âàøà çàïèñü ïîíðàâèëàñü';
				else if(row[0] == 11) uTitle = 'Íîâàÿ çàÿâêà';
				else if(row[0] == 12) uTitle = 'Çàÿâêà ïðèíÿòà';
				else uTitle = 'Ñîáûòèå';
				temp = '<div class="update_box cursor_pointer" id="event'+row[4]+'" onClick="GoPage(event, \''+row[6]+'\'); upClose('+row[4]+')"><div class="update_box_margin"><div style="height:19px"><span>'+uTitle+'</span><div class="update_close fl_r no_display" id="update_close" onMouseDown="upClose('+row[4]+')"><div class="update_close_ic" id="update_close2"></div></div></div><div class="clear"></div><div class="update_inpad"><a href="/id'+row[2]+'" onClick="Page.Go(this.href); return false"><img src="'+row[5]+'" id="no_ev" /></a><div class="update_data"><a id="no_ev" href="/id'+row[2]+'" onClick="Page.Go(this.href); return false">'+row[1]+'</a>&nbsp;&nbsp;'+row[3]+'</div></div><div class="clear"></div></div></div>';
				$('#updates').html($('#updates').html()+temp);
				var beepThree = $("#beep-three")[0];
    				beepThree.play();
				if($('.update_box').size() <= 5) $('#updates').animate({'height': (123*$('.update_box').size())+'px'});
				if($('.update_box').size() > 5){
					evFirst = $('.update_box:first').attr('id');
					$('#'+evFirst).animate({'margin-top': '-123px'}, 400, function(){
						$('#'+evFirst).fadeOut('fast', function(){
							$('#'+evFirst).remove();
						});
					});
				}
			}
		});
	}, 2500);
});
</script>

[/logged]
<div class="no_display"><audio id="beep-three" controls preload="auto"><source src="/templates/Default/sound/beep.ogg"></source></audio></div>
<div id="updates"></div>

<div class="clear"></div><div class="no_display">
</body>
</script>
<div id="updates"></div>
<div class="clear"></div>
<div id="DIV_DA_102018"></div>
</html>
