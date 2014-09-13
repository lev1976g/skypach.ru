
<div class="blogthr"></div>
<div class="blog_left fl_l">
<div class="notes_ava"><img src="{theme}/images/support2.png" alt="" /></div>
<div class="one_note" style="width:520px">
 <span><a href="/blog?id={id}" onClick="Page.Go(this.href); return false">{title}</a></span><br />
 <div>{date}</div>
</div>
<div class="note_text clear">{story}</div><div class="more_div"></div><div><center>Список последних новостей</center></div><div class="more_div"></div><br>
</div>
 <div id="page">
 <div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="height:22px">
  <div class="buttonsprofileSec">
 {last-news}
 [group=1]
<a href="?act=add" onClick="Page.Go(this.href); return false"><div><b>Добавить</b></div></a></div>
  <a href="" onClick="blog.del('{id}'); return false"><div><b>Удалить</b></div></a>
  <a href="?act=edit&id={id}" onClick="Page.Go(this.href); return false"><div><b>Редактировать</b></div></a>
<div>
[/group]
 </div>
</div></div>