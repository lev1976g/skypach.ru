//Hide Inline
function hide(el){
  var ge = document.getElementById(el).style.display = 'none';
  return ge;
}
function show(el){
  var ge = document.getElementById(el).style.display = 'block';
  return ge;
}
function drag_object( evt, obj, type, w, h)
{
evt = evt || window.event;

// флаг, которые отвечает за то, что мы кликнули по объекту (готовность к перетаскиванию)
obj.clicked = true;

// устанавливаем первоначальные значения координат объекта
obj.mousePosX = evt.clientX;
obj.mousePosY = evt.clientY;

// отключаем обработку событий по умолчанию, связанных с перемещением блока (это убирает глюки с выделением текста в других HTML-блоках, когда мы перемещаем объект)
if( evt.preventDefault ) evt.preventDefault(); 
else evt.returnValue = false;

// когда мы отпускаем кнопку мыши, убираем «проверочный флаг»
document.onmouseup = function(){ obj.clicked = false; if(type == 1 ){} }

// обработка координат указателя мыши и изменение позиции объекта
document.onmousemove = function( evt )
{
evt = evt || window.event;
if( obj.clicked )
{
posLeft = !obj.style.left ? obj.offsetLeft : parseInt( obj.style.left );
posTop = !obj.style.top ? obj.offsetTop : parseInt( obj.style.top );

mousePosX = evt.clientX;
mousePosY = evt.clientY;
if(posLeft + mousePosX - obj.mousePosX >= document.body.clientWidth - w){}else{ 
if(posLeft + mousePosX - obj.mousePosX <= 0){}else{ 
obj.style.left = posLeft + mousePosX - obj.mousePosX + 'px';
}}
if(posTop + mousePosY - obj.mousePosY >= document.documentElement.clientHeight - h){}else{ 
if(posTop + mousePosY - obj.mousePosY <= 0){}else{ 
obj.style.top = posTop + mousePosY - obj.mousePosY + 'px';}}
obj.mousePosX = mousePosX;
obj.mousePosY = mousePosY;
}
}
}
function change_cursor(){
var ge = document.getElementById('chat').style.cursor = 'move';
return ge;
}
function change_cursor_out(){
var ge = document.getElementById('chat').style.cursor = 'pointer';
return ge;
} 
function online_friends_recount(){
 setTimeout("online_friends_recount()",5000);
	$$a({
		type:'post',//тип запроса: get,post либо head
		url:'count.php',//url адрес файла обработчика
                data:{'domain':'vdrugon.org'},
		response:'text',//тип возвращаемого ответа text либо xml
		success:function (data) {//возвращаемый результат от сервера
			 $$('count',data);

 
		}
	});
}
var _$$={
	version:20120603,
	$:function () {
		var obj;
		switch(arguments.length) {
			case 0:
				return document;
			break;
			case 2:
				_$$.$(arguments[0]).innerHTML=arguments[1];
			break;
			case 3:
				_$$.$(arguments[0]).style[arguments[1]]=arguments[2];
			break;
		}
		if(arguments.length>0) {
			if(typeof arguments[0] == 'string') {
				obj=_$$.$().getElementById(arguments[0]);
			}
			else {
				obj=arguments[0];
			}
		}
			if(obj==null) {
				return false;
			}
		obj.$$ = function() {
				switch(arguments.length) {
					case 0:
						this.$$ = function () {
							return _$$.$.apply(null,arguments);
						}
					break;
					case 1:
						obj.innerHTML=arguments[0];
					break;
					case 2:
						obj.style[arguments[0]] = arguments[1];
					break;
				}
				return obj;
		}
			obj.$$after = function(el) {
				var elm=this;
				var th=_$$.$(el);
				do {
					th = th.nextSibling;
				} while(th && th.nodeType != 1);
				if(th!=null) {
					if (th != elm) {
						th.parentNode.insertBefore(elm, th);
					}
				}
				else {
					if (el != elm) {
						el.parentNode.appendChild(elm);
					}
				}
				return _$$.$(elm);
			}
			obj.$$before = function(el) {
				var elm=this;
				var th=_$$.$(el);
				do {
					th = th.previousSibling;
				} while(th && th.nodeType != 1);
				var nth=th;
				if(nth!=null) {
					do {
						nth = nth.nextSibling;
					} while(nth && nth.nodeType != 1);
						if (th != elm) {
							th.parentNode.insertBefore(elm, nth);
						}
				}
				else {
					if (el != elm) {
						el.parentNode.insertBefore(elm, el);
					}
				}
				return _$$.$(elm);
			}
			obj.$$prev = function() {
				var elm=this;
				do {
					elm = elm.previousSibling;
				} while(elm && elm.nodeType != 1);
				if(elm!=null) {
					return _$$.$(elm);
				}
				else {
					return elm;	
				}
			}
			obj.$$next = function() {
				var elm=this;
				do {
					elm = elm.nextSibling;
				} while(elm && elm.nodeType != 1);
				if(elm!=null) {
					return _$$.$(elm);
				}
				else {
					return elm;	
				}
			}
			obj.$$first = function() {
				var elm=this;
				elm = elm.firstChild;
				elm = elm && elm.nodeType != 1 ? elm.nextSibling : elm;
				if(elm!=null) {
					return _$$.$(elm);
				}
				else {
					return elm;	
				}
			}
			obj.$$last = function() {
				var elm=this;
				elm = elm.lastChild;
				elm = elm && elm.nodeType != 1 ? elm.previousSibling : elm;
				if(elm!=null) {
					return _$$.$(elm);
				}
				else {
					return elm;	
				}
			}
			obj.$$parent = function(num) {
				var elm=this;
				num = num || 1;
				for (var i=0; i<num; i++)
				if (elm != null) elm = elm.parentNode;
				if(elm!=null) {
					return _$$.$(elm);
				}
				else {
					return elm;	
				}
			}
			obj.$$html = function() {
				var elm=this;
				return _$$.$(elm).innerHTML;
			}
		return obj;
	},
	$a:function (arg) {
		arg = arg || {};
		
		var default_arg = {
			type:'get',
			url:'',
			data:{},
			response:'text',
			header:{
				'Content-Type':'application/x-www-form-urlencoded; charset=windows-1251',
				'Referer':location.href
			},
			async:true,
			username:'',
			password:'',
			errrep:false,
			error:function(num) {
				var arr=['Your browser does not support Ajax',
						 'Request failed',
						 'Address does not exist',
						 'The waiting time left'];
				
				alert(arr[num]);
			},
			status:function (number) {
				
			},
			endstatus:function (number) {
				
			},
			success:function (data) {
				
			},
			timeout:0
		}
		
		for(var index in default_arg) {
			if(typeof arg[index] == "undefined") arg[index] = default_arg[index];
		}
		
		
		var type = arg['type'];
		var url = arg['url'];
		var data = arg['data'];
		var response = arg['response'];
		var header = arg['header'];
		var async = arg['async'];
		var username = arg['username'];
		var password = arg['password'];
		var errrep = arg['errrep'];
		var error = arg['error'];
		var status = arg['status'];
		var endstatus = arg['endstatus'];
		var success = arg['success'];
		var timeout = arg['timeout'];
		
		
		var obj = function () {
			var req = null;
			if (window.XMLHttpRequest) {
				try {
					req = new XMLHttpRequest();
				}
				catch (e){
				}
			}
			else if (window.ActiveXObject) {
				try {
					req = new ActiveXObject('Msxml2.XMLHTTP');
				}
				catch (e) {
					try {
						req = new ActiveXObject('Microsoft.XMLHTTP');
					}
					catch (e) {
					}
				}
			}
			return req;
		}
		
		
			var encurl=function (d) {
				var query = [];
				if (d instanceof Object) {
					for (var k in d) {
						query.push(encodeURIComponent(k) + '=' + encodeURIComponent(d[k]));
					}
					return query.join('&');
				}
				else {
					return encodeURIComponent(d);
				}
			}
			
		
			var parsehead = function(headertxt) {
    			var headers = {};
    			var ls = /^\s*/;
    			var ts = /\s*$/;
    			var lines = headertxt.split("\n");
    			for(var i = 0; i < lines.length; i++) {
        			var line = lines[i];
        			if (line.length == 0) continue;
        			var pos = line.indexOf(':');     
        			var name = line.substring(0, pos).replace(ls, "").replace(ts, "");
        			var value = line.substring(pos+1).replace(ls, "").replace(ts, "");
        			headers[name] = value;
    			}
    			return headers;
			}
		
		
			var req=obj();
		
			if(req!==null) {
			
				var fullurl=url+'?'+encurl(data);
			
				if(type=='get') {
					(username=='' && password=='') ? req.open("GET", fullurl, async) : req.open("GET", fullurl, async, username, password);
				}
				else if(type=='post') {
					(username=='' && password=='') ? req.open("POST", url, async) : req.open("POST", url, async, username, password);
				}
				else if(type=='head') {
					(username=='' && password=='') ? req.open("HEAD", fullurl, async) : req.open("HEAD", fullurl, async, username, password);
				}
			
					if (header instanceof Object) {
						for(var key in header) {
							req.setRequestHeader(key,header[key]);
						}
					}
					
					
					if(!async) {
						
						if(type=='get' || type=='head') {
							req.send(null);
						}
						else if(type=='post') {
							req.send(encurl(data));
						}
						
							
						endstatus(req.status);
						
						if(req.status == 200) {
						
							if(type=='get' || type=='post') {
								if(response=='text') {
									success(req.responseText);
								}
								else if(response=='xml') {
									success(req.responseXML);
								}
							}
							else if(type=='head') {
								success(parsehead(req.getAllResponseHeaders()));
							}
						
						}
						else if(req.status == 404) {
							if(errrep) {error(2);}
						}
						else {
							if(errrep) {error(1);}
						}
						
						
					}
					else {
			
				req.onreadystatechange = function () {
				
					status(req.readyState);
				
					if(req.readyState == 4) {
						
							if(reqtime) {
								clearTimeout(reqtime);
							}
						
						endstatus(req.status);
						
						if(req.status == 200) {
						
							if(type=='get' || type=='post') {
								if(response=='text') {
									success(req.responseText);
								}
								else if(response=='xml') {
									success(req.responseXML);
								}
							}
							else if(type=='head') {
								success(parsehead(req.getAllResponseHeaders()));
							}
						
						}
						else if(req.status == 404) {
							if(errrep) {error(2);}
						}
						else {
							if(errrep) {error(1);}
						}
					}
				
				}
					
						if(type=='get' || type=='head') {
							req.send(null);
						}
						else if(type=='post') {
							req.send(encurl(data));
						}
						
						
						if(timeout>0) {
							var reqtime = setTimeout(function () { if(req.readyState!=4) { req.abort(); if(errrep) {error(3);} } }, timeout);
						}
					
					}
					
				
			}
			else {
				if(errrep) {error(0);}
			}
		
	},
	$c:{
		set: function(cookie_name, cookie_value, cookie_expires, cookie_path, cookie_domain, cookie_secure) {
			if(cookie_name!==undefined) {
				cookie_expires=cookie_expires || 0;
				var expire_date = new Date;
				expire_date.setTime(expire_date.getTime() + (cookie_expires*1000));
				_$$.$().cookie = cookie_name + "=" + encodeURIComponent(cookie_value)+'; ' + 
				((cookie_expires === undefined) ? '' : 'expires=' + expire_date.toGMTString()+'; ') +
				((cookie_path === undefined) ? 'path=/;' : 'path='+cookie_path+'; ') +
				((cookie_domain === undefined) ? '' : 'domain='+cookie_domain+'; ') +
				((cookie_secure === true) ? 'secure; ' : '');
			}
		},
		get: function(cookie_name) {
			var cookie = _$$.$().cookie, length = cookie.length;
			if(length) {
				var cookie_start = cookie.indexOf(cookie_name + '=');
				if(cookie_start != -1) {
					var cookie_end = cookie.indexOf(';', cookie_start);
					if(cookie_end == -1) {
						cookie_end = length;
					}
					cookie_start += cookie_name.length + 1;
					return decodeURIComponent(cookie.substring(cookie_start, cookie_end));
				}
			}
		},
		erase: function(cookie_name) {
			this.set(cookie_name, '', -1);
		},
		test: function() {
			this.set('test_cookie', 'test', 10);
			var work = (this.get('test_cookie') === 'test') ? true : false;
			this.erase('test_cookie');
			return work;
		}
	},
	$e:{
		add:function(elem, type, handler) {
			if(elem.event_list==undefined) elem.event_list = {};
			if(elem.event_list[type]==undefined) {
				elem.event_list[type] = [];
				var func = function(event) {
					var event = event||window.event;
					var list = elem.event_list[type];
					for(var i in list) {
						list[i](event);
					}
				}
				if(elem.addEventListener) {
					elem.addEventListener(type,func,false);
				}
				else if(elem.attachEvent) {
					elem.attachEvent('on'+type,func);
				}
				else {
					elem['on'+type] = func;
				}
			}
			var list = elem.event_list[type];
			var exist = false;
			for(var i in list) {
				if(list[i]==handler) exist = true;
			}
			if(!exist) {
				elem.event_list[type].push(handler);
			}
		},
		remove:function(elem, type, handler) {
			if(elem.event_list==undefined) return false;
			if(elem.event_list[type]==undefined) return false;
			var list = elem.event_list[type];
			for(var i in list) {
				if(list[i]==handler) {
					list = list.splice(i,1);
					return true;
				}
			}
			return false;
		}
	},
	$f:function (arg) {
		arg = arg || {};
		var default_arg = {
			formid:'',
			url:'',
			onstart:function () {
				
			},
			onsend:function () {
				
			}
		}
		
		for(var index in default_arg) {
			if(typeof arg[index] == "undefined") arg[index] = default_arg[index];
		}
		
		var formid = arg['formid'];
		var url = arg['url'];
		var onsend = arg['onsend'];
		var onstart = arg['onstart'];
		
		var id='f' + _$$.$s.randnum(0,1000000);
		
		var div=_$$.$i({
			create:'div',
			attribute: {},
			insert:_$$.$().body
		});
		
		
		div.innerHTML = '<iframe style="width:250px;height:200px;" src="about:blank" id="'+id+'" name="'+id+'" onload="if(this.onsendcomplete) {if(this.contentDocument) {var d = this.contentDocument;}else if(this.contentWindow) {var d = this.contentWindow.document;}else {var d = window.frames[this.id].document;}if(d.location.href != \'about:blank\') {this.onsendcomplete();}}"></iframe>';
		div.style.display='none';
		
		_$$.$(id).onsendcomplete = function() { setTimeout(function () { _$$.$().body.removeChild(div); }, 60000); onsend(); };
		
		_$$.$(formid).setAttribute('target', id);
		_$$.$(formid).setAttribute('action', url);
		_$$.$(formid).submit();
		onstart();
		
		return div;
	},
	$i:function (arg) {
		arg = arg || {};
		var default_arg = {
			create:'script',
			attribute: {
				'type':'text/javascript'
			},
			insert:_$$.$().body,
			onready:function () {
				
			}
		}
		
		for(var index in default_arg) {
			if(typeof arg[index] == "undefined") arg[index] = default_arg[index];
		}
		
		var create = arg['create'];
		var attribute = arg['attribute'];
		var insert = arg['insert'];
		var onready = arg['onready'];
		
		var s = _$$.$().createElement(create);
		
		for(var key in attribute) {
			s.setAttribute(key,attribute[key]);
		}
		
		if(create=='script' && (typeof attribute.src != "undefined")) {
			if (s.readyState) {
				s.onreadystatechange = function() {
					if(s.readyState == "loaded" || s.readyState == "complete") {
                		s.onreadystatechange = null;
						onready();
					}
				}
			}
			else {
				s.onload = function() {
					onready();
				}
			}
		}
		
		insert.appendChild(s);
		
		if(create=='script' && (typeof attribute.src == "undefined")) {
			s.$$=function () {
				s.text=arguments[0];
			}
		}
		else if(create=='style') {
			s.$$=function () {
				if(s.styleSheet) {
					s.styleSheet.cssText = _$$.$().createTextNode(arguments[0]).nodeValue;
				}
				else {
					s.appendChild(_$$.$().createTextNode(arguments[0]));
				}
			}
		}
		else {
			return _$$.$(s);
		}
		
		return s;
	},
	$r:{
		rl:[],
		or:function (handler) {
			
			if (!_$$.$r.rl.length) {
				_$$.$r.br(function() {
					for(var i=0; i<_$$.$r.rl.length; i++) {
						_$$.$r.rl[i]();
					}
				});
			}

			_$$.$r.rl.push(handler);
		},
		br:function (handler) {
			
			var called = false;
			
			var ready = function () {
				if (called) return;
				called = true;
				handler();
			}
		
				if (document.addEventListener) {
					document.addEventListener("DOMContentLoaded", function(){
					document.removeEventListener( "DOMContentLoaded", arguments.callee, false);
					ready();}, false);
				}
				else if(document.attachEvent) {
					if(document.documentElement.doScroll && window == window.top) {
						var tryScroll = function (){
							if (called) {
								return; 
							}
								try {
									document.documentElement.doScroll("left");
									ready();
								}
								catch(e) {
									setTimeout(tryScroll, 10);
								}
							}
						tryScroll();
					}
				
					document.attachEvent("onreadystatechange", function(){
						if (document.readyState === "complete") {
							document.detachEvent( "onreadystatechange", arguments.callee);
							ready();
						}
					});
				}
			
			
    			if(window.addEventListener) {
        			window.addEventListener('load', ready, false);
				}
    			else if(window.attachEvent) {
        			window.attachEvent('onload', ready);
				}
    			else {
        			window.onload=ready;
				}
		}
		
	},
	$s:{
		screensize:function () {
			return {"w":screen.width,"h":screen.height};
		},
		windowpos:function () {
			if (window.screenLeft || window.screenTop) {
				return {"l":window.screenLeft,"t":window.screenTop};
			}
			else if (window.screenX || window.screenY) {
				return {"l":window.screenX,"t":window.screenY};
			}
			else {
				return {"l":0,"t":0};
			}
		},
		clientsize:function () {
			if (window.innerWidth || window.innerHeight) {
				return {"w":window.innerWidth,"h":window.innerHeight};
			}
			else if (_$$.$().documentElement && (_$$.$().documentElement.clientWidth || _$$.$().documentElement.clientHeight)) {
				return {"w":_$$.$().documentElement.clientWidth,"h":_$$.$().documentElement.clientHeight};
			}
			else if (_$$.$().body.clientWidth || _$$.$().body.clientHeight) {
				return {"w":_$$.$().body.clientWidth,"h":_$$.$().body.clientHeight};
			}
			else {
				return {"w":0,"h":0};
			}
		},
		scrollpos:function () {
			if (window.innerWidth || window.innerHeight) {
				return {"l":window.pageXOffset,"t":window.pageYOffset};
			}
			else if (_$$.$().documentElement && (_$$.$().documentElement.clientWidth || _$$.$().documentElement.clientHeight)) {
				return {"l":_$$.$().documentElement.scrollLeft,"t":_$$.$().documentElement.scrollTop};
			}
			else if (_$$.$().body.clientWidth || _$$.$().body.clientHeight) {
				return {"l":_$$.$().body.scrollLeft,"t":_$$.$().body.scrollTop};
			}
			else {
				return {"l":0,"t":0};
			}
		},
		scrollsize:function () {
			if (_$$.$().documentElement && (_$$.$().documentElement.scrollWidth || _$$.$().documentElement.scrollHeight)) {
				return {"w":_$$.$().documentElement.scrollWidth,"h":_$$.$().documentElement.scrollHeight};
			}
			else if (_$$.$().body.scrollWidth || _$$.$().body.scrollHeight) {
				return {"w":_$$.$().body.scrollWidth,"h":_$$.$().body.scrollHeight};
			}
			else {
				return {"w":0,"h":0};
			}
		},
		mousepos:function (e) {
			var x = 0, y = 0;
			if (!e) e = window.event;
			if (e.pageX || e.pageY){
				x = e.pageX;
				y = e.pageY;
			}
			else if (e.clientX || e.clientY) {
				x = e.clientX+this.scrollpos().l-_$$.$().documentElement.clientLeft;
				y = e.clientY+this.scrollpos().t-_$$.$().documentElement.clientTop;
			}
			return {"x":x, "y":y};
		},
		mouseelpos:function (e) {
			var x = 0, y = 0;
			if (!e) e = window.event;
			if (e.layerX || e.layerY) {
				x = e.layerX;
				y = e.layerY;
			}
			else if (e.offsetX || e.offsetY) {
				x = e.offsetX;
				y = e.offsetY;
			}
			return {"x":x, "y":y};
		},
		elementpos:function (el) {
			var l = 0, t  = 0;
			while (el) {
				l += el.offsetLeft;
				t += el.offsetTop;
				el = el.offsetParent;
			}
			return {"l":l, "t":t};
		},
		getelbyclass:function (n,t,el) {
			t = t || '*';
			el = el || _$$.$();
			var elms=[], relm=[];
			elms=el.getElementsByTagName(t);
			for(var i=0;i<elms.length;i++) {
				if (elms[i].className==n) {
					relm.push(elms[i]);
				}
			}
			return relm;
		},
		getelbytag:function (t,el) {
			t = t || '*';
			el = el || _$$.$();
			var elms=[], relm=[];
			elms=el.getElementsByTagName(t);
			for(var i=0;i<elms.length;i++) {
				relm.push(elms[i]);
			}
			return relm;
		},
		getelbyname:function (n,t,el) {
			t = t || '*';
			el = el || _$$.$();
			var elms=[], relm=[];
			elms=el.getElementsByTagName(t);
			for(var i=0;i<elms.length;i++) {
				if(elms[i].getAttribute('name')==n) {
					relm.push(elms[i]);
				}
			}
			return relm;
		},
		geteventtype:function (e) {
			if (!e) e = window.event;
			return e.type;
		},
		mousebutton:function (e) {
			if(e.which == null) {
				return (e.button < 2) ? "left" : ((e.button == 4) ? "middle" : "right");
			}
			else {
				return (e.which < 2) ? "left" : ((e.which == 2) ? "middle" : "right");
			}
		},
		randnum: function(rmin, rmax) {
			return Math.floor(Math.random() * (rmax - rmin + 1)) + rmin;
		},
		browsername: function () {
			var useragent=navigator.userAgent;
			var navigatorname;
			if(useragent.indexOf('MSIE')!= -1) {
				navigatorname="MSIE";
			}
			else if(useragent.indexOf('Safari')!= -1) {
				if(useragent.indexOf('Chrome')!= -1) {
					navigatorname="Chrome";
				}
				else {
					navigatorname="Safari";
				}
			}
			else if(useragent.indexOf('Gecko')!= -1) {
				if(useragent.indexOf('Chrome')!= -1) {
					navigatorname="Chrome";
				}
				else {
					navigatorname="Mozilla";
				}
			}
			else if(useragent.indexOf('Mozilla')!= -1) {
				navigatorname="Old Netscape or Mozilla";
			}
			else if(useragent.indexOf('Opera')!= -1) {
				navigatorname="Opera";
			}
			return navigatorname;
		}
	}
};

var $ver=_$$.version;
var $$=_$$.$;
var $$a=_$$.$a;
var $$c=_$$.$c;
var $$e=_$$.$e;
var $$f=_$$.$f;
var $$i=_$$.$i;
var $$r=_$$.$r.or;
var $$s=_$$.$s;



var im_chat = {
	chatOpen:function(){
		if($('#im_chat_block').is('.im_chat_block')){
			$('#im_chat_block').show();
		}else{
			$.post('/index.php?go=im_chat',function(s){
				$('body').append(s);
			});
		}
		$('#ims').attr('onClick', 'im_chat.close();');
	},
	close:function(){
		$('#im_chat_block').hide();
		$('#ims').attr('onClick', 'im_chat.chatOpen();');
	},
	opens:function(uid,s,on){
		if($('#im_chats'+uid).is('.im_chats')){
			$('#im_chats'+uid).show();
		}else{
			$.post('/index.php?go=im_chat&act=history', {for_user_id: uid}, function(d){
				$('body').append('<div id="sc'+uid+'"><script type="text/javascript">$(document).ready(function(){chat_interval_im = setInterval(\'im_chat.update(\'{for_user_id}\')\', 10000);});</script></div><div id="im_chats'+uid+'" class="im_chats"><div class="im_chatclose fl_r" style="margin-top: 7px;" onclick="im_chat.closes(\''+uid+'\');"><div></div></div><div id="im_chatName'+uid+'" class="im_chatname fl_l" onclick="im_chat.hideShow(\''+uid+'\');">'+s+'</div> <div class="'+on+' fl_l" style="margin-top:12px"></div><div class="clear"></div><div id="imViewMsg'+uid+'">'+d+'</div></div>');
				$('.im_scroll'+uid).scrollTop(99999);
				var aco = $('.im_usactive').text().split(' ');
				$('#msg_text'+uid).focus();
			});
		}
	},
	search:function(){
		var name = $('#im_chatSearch').val();
		if(name.length == 0){
			$('.im_chatserch').hide();
			$('.im_chatbody2').hide();
			$('.im_chatbody').show();
		}else{
			$.post('/index.php?go=im_chat&act=search',{name:name},function(d){
				$('.im_chatserch').show().html(d);
				$('.im_chatbody').hide();
				$('.im_chatbody2').hide();
			});
		}
	},
	mail:function(){
		$.post('/index.php?go=im_chat&act=all',function(d){
			row = d.split('||');
			$('.im_chatbody2').html(row[0]).show();
			$('.im_chathead2').html(row[1]).show();
			$('.im_chatbody').hide();
			$('.im_chathead').hide();
			$('.fc_clist_online_wrap').attr('onClick', 'im_chat.fr();');
			$('#im_chatSearch').attr('onKeyDown', 'im_chat.serch();');
			$('.fc_clist_online_wrap').attr('onMouseOver', 'myhtml.title(\'\', \'Показать только друзей\', \'fc_clist_online_active\')');
		});
	},
	fr:function(){
		$('.im_chatbody').show();
		$('.im_chathead').show();
		$('.im_chatbody2').hide();
		$('.im_chathead2').hide();
		$('.fc_clist_online_wrap').attr('onClick', 'im_chat.ml();');
		$('#im_chatSearch').attr('onKeyDown', 'im_chat.search();');
		$('.fc_clist_online_wrap').attr('onMouseOver', 'myhtml.title(\'\', \'Показать только диалоги\', \'fc_clist_online_active\')');
	},
	ml:function(){
		$('.im_chatbody2').show();
		$('.im_chathead2').show();
		$('.im_chatbody').hide();
		$('.im_chathead').hide();
		$('#im_chatSearch').attr('onKeyDown', 'im_chat.serch();');
		$('.fc_clist_online_wrap').attr('onClick', 'im_chat.fr();');
	$('.fc_clist_online_wrap').attr('onMouseOver', 'myhtml.title(\'\', \'Показать только друзей\', \'fc_clist_online_active\')');
	},
	closes:function(id){
		$('#im_chats'+id).hide();
	},
	updateDialogs: function(){
		$.post('/index.php?go=im_chat&act=upDialogs', function(d){
			$('#updateDialogs').html(d);
		});
	},
	update: function(id){
		var for_user_id = $('#for_user_id'+id).val();
		var last_id = $('.im_msg:last').attr('id').replace('imMsg', '');
		$.post('/index.php?go=im_chat&act=update', {for_user_id: for_user_id, last_id: last_id}, function(d){
			if(d != 'no_new'){
				$('#im_scroll'+for_user_id).html(d);
				$('.im_scroll'+for_user_id).scrollTop(99999);
			}
		});
	},
	read: function(msg_id, auth_id, my_id){
		if(auth_id != my_id){
			var msg_num = parseInt($('#new_msg').text().replace(')', '').replace('(', ''))-1;
			$.post('/index.php?go=im_chat&act=read', {msg_id: msg_id}, function(){
				if(msg_num > 0)
					$('#new_msg').html("+"+msg_num);
				else
					$('#new_msg').html('');
				
				updateNum('#msg_num'+auth_id);
				if($('#msg_num'+auth_id).text() <= 0)
					$('#msg_num'+auth_id).hide();
				$('#imMsg'+msg_id).css('background', '#fff').attr('onMouseOver', '');
			});
		}
	},
	send: function(for_user_id, my_name, my_ava){
		var msg_text = $('#msg_text'+for_user_id).val();
		if(msg_text != 0 ){
			$.post('/index.php?go=im_chat&act=send', {for_user_id: for_user_id, my_name: my_name, my_ava: my_ava, msg: msg_text}, function(data){
				if(data == 'err_privacy')
					Box.Info('msg_info', lang_pr_no_title, lang_pr_no_msg, 400, 4000);
				else {
					$('#im_scroll'+for_user_id).append(data);
					$('.im_scroll'+for_user_id).scrollTop(99999);
					$('#msg_text'+for_user_id).val('');
					$('#msg_text'+for_user_id).focus();	
				}
			});
		} else{
		setErrorInputMsg('msg_text');
		}
	},
	hideShow:function(id){
		if($('#imViewMsg'+id).is('.no_display')){
			$('#imViewMsg'+id).removeClass('no_display');
			$('#im_chats'+id).css({'padding':'0 8px 8px','height':'344px'});
		}else{
			$('#imViewMsg'+id).addClass('no_display');
			$('#im_chats'+id).css({'padding':'0 8px','height':'30px'});
		}
	},
	page: function(for_user_id){
		var first_id = $('.im_msg:first').attr('id').replace('imMsg', '');
		$('#wall_all_records'+for_user_id).attr('onClick', '');
		if($('#load_wall_all_records'+for_user_id).text() == 'Показать предыдущие сообщения'){
			textLoad('load_wall_all_records');
			$.post('/index.php?go=im_chat&act=history', {first_id: first_id, for_user_id: for_user_id}, function(data){
				i++;
				var imHeiah = $('.im_scroll').height();
				$('#prevMsg'+for_user_id).html(data);
				$('.im_scroll').scrollTop($('#appMsgFScroll'+i).show().height()+imHeiah);
				if(!data){
					$('#wall_all_records'+for_user_id).hide();
				} else {
					$('#wall_all_records'+for_user_id).attr('onClick', 'im_chat.page('+for_user_id+')');
					$('#load_wall_all_records'+for_user_id).html('Показать предыдущие сообщения');
				}
			});
		}
	},
}