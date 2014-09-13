$(document).ready(function(){	
        $.ajax({
            url: "index.php?go=leftmenu&act=requrest",
            cache: true,
            success: function(html){
                $("#requrest").html(html);
            }
        });

});	function ads_close(){
		$("#requrest").fadeOut(400);
}

$(document).ready(function(){
        $.ajax({
            url: "index.php?go=leftmenu&act=photo",
            cache: true,
            success: function(html){
                $("#photo").html(html);
            }
        });
});	function ads_close(){
		$("#requrest").fadeOut(400);
}

$(document).ready(function(){
        $.ajax({
            url: "index.php?go=leftmenu&act=msg",
            cache: true,
            success: function(html){
                $("#msg").html(html);
            }
        });
});	function ads_close(){
		$("#msg").fadeOut(400);
}

$(document).ready(function(){
        $.ajax({
            url: "index.php?go=leftmenu&act=groups",
            cache: true,
            success: function(html){
                $("#groups").html(html);
            }
        });
});	function ads_close(){
		$("#groups").fadeOut(400);
}

$(document).ready(function(){
        $.ajax({
            url: "index.php?go=leftmenu&act=balance",
            cache: true,
            success: function(html){
                $("#balance").html(html);
            }
        });
});	function ads_close(){
		$("#balance").fadeOut(400);
}

