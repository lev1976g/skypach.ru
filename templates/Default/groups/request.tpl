<div class="friends_onefriend">
 <a href="/public{group-id}" onClick="Page.Go(this.href); return false"><div class="friends_ava"><img src="{ava}" alt="" /></div>
 </a>
 <a href="/public{group-id}" onClick="Page.Go(this.href); return false"><b>{name}</b></a>
 <div class="friends_clr"></div>
 Приглашение от: <a href="/u{user-id}">{invname}</a><div class="friends_clr"></div><div class="friends_clr"></div>
 <div class="friends_clr" style="margin-top:10px"></div>
 <div id="action_{group-id}">
  <div class="button_div fl_l"><button onMouseDown="groups.invyes({group-id},{user_id}); return false">Подписаться</button></div>
  <div class="button_div_gray fl_l margin_left"><button onMouseDown="groups.invno({group-id},{user_id}); return false">Отклонить</button></div>
 </div>
</div>