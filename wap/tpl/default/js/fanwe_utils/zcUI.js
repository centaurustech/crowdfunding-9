$.show_tip = function(str)
{
	var html = '';
	html =  '<div id="body-tip-mask"></div>' +
			'<div id="body-tip-wrapper" class="go">' +
			'	<div class="body_tip">' +
			'		<span class="body_tip_text">'+str+'</span>' +
			'	</div>' +
			'</div>';
	$(html).appendTo('body');
	$("#body-tip-mask").fadeIn(200);
	$("#body-tip-wrapper").fadeIn(200);
	setTimeout('
		$("#body-tip-mask").fadeOut(300,function(){
			$(this).remove();
		});
		$("#body-tip-wrapper").fadeOut(300,function(){
			$(this).remove();
		});
		', 2000);
	$("#body-tip-mask").bind('click',function(){
		$("#body-tip-mask").fadeOut(300,function(){
			$(this).remove();
		});
		$("#body-tip-wrapper").fadeOut(300,function(){
			$(this).remove();
		});
	});
};