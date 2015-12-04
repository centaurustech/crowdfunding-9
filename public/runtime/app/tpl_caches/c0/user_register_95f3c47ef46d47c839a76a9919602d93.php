<?php exit;?>a:3:{s:8:"template";a:3:{i:0;s:51:"/home/crowdfunding/app/Tpl/fanwe/user_register.html";i:1;s:48:"/home/crowdfunding/app/Tpl/fanwe/inc/header.html";i:2;s:48:"/home/crowdfunding/app/Tpl/fanwe/inc/footer.html";}s:7:"expires";i:1449102558;s:8:"maketime";i:1449098958;}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员注册 - FunnyDream众筹 - 预购一个梦想</title>
<meta name="keywords" content="FunnyDream众筹 - 预购一个梦想" />
<meta name="description" content="FunnyDream众筹" />
<link rel="stylesheet" type="text/css" href="http://z.forfunnet.com/public/runtime/statics/63f410613c8325ab6e3e612145230740.css" />
<script type="text/javascript">
var APP_ROOT = '';
var LOADER_IMG = 'http://z.forfunnet.com/app/Tpl/fanwe/images/lazy_loading.gif';
var ERROR_IMG = 'http://z.forfunnet.com/app/Tpl/fanwe/images/image_err.gif';
var send_span = 2000;
</script>
<script type="text/javascript" src="http://z.forfunnet.com/public/runtime/statics/a61e3559d90f1002a900ed73aa04f76e.js"></script>
</head>
<body>	
<div class="header">
	<div class="wrap">
		<div class="logo f_l">
			<a class="link" href="/">
								<span style='display:inline-block; width:150px; height:72px; background:url(http://z.forfunnet.com/public/attachment/201512/02/17/565ebffe330b2.png) no-repeat; _filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src=http://z.forfunnet.com/public/attachment/201512/02/17/565ebffe330b2.png, sizingMethod=scale);_background-image:none;'></span>			</a>
		</div>
		
		
		<ul class="main_nav f_l">
									<li >
						<span>
						<a href="/index.php"  target="" title="首页">首页</a>	
						</span>		
					</li>
									<li >
						<span>
						<a href="/deals/type-1.html"  target="" title="股权众筹">股权众筹</a>	
						</span>		
					</li>
									<li >
						<span>
						<a href="/deals.html"  target="" title="回报众筹">回报众筹</a>	
						</span>		
					</li>
									<li >
						<span>
						<a href="/index.php?ctl=news"  target="" title="最新动态">最新动态</a>	
						</span>		
					</li>
									<li >
						<span>
						<a href="/index.php?ctl=investor&act=invester_list"  target="" title="投资人">投资人</a>	
						</span>		
					</li>
									<li >
						<span>
						<a href="/index.php?ctl=article_cate"  target="" title="路演快讯">路演快讯</a>	
						</span>		
					</li>
									<li >
						<span>
						<a href="/index.php?ctl=faq"  target="" title="新手帮助">新手帮助</a>	
						</span>		
					</li>
						</ul>
		
		
		<div class="f_r">
			<div class="login_tip">	
	
				554fcae493e564ee0dc75bdf2ebf94calogin_tip|YToxOntzOjQ6Im5hbWUiO3M6OToibG9naW5fdGlwIjt9554fcae493e564ee0dc75bdf2ebf94ca			</div>			
			<form action="/index.php?ctl=deals" method="post" id="header_search_form">
			<div class="header_seach">	
			<a href="/index.php?ctl=project&act=add" class="add_project f_r"></a>			
			<input type="button" value="" class="seach_submit" id="header_submit" />
			<input type="text" id="header_keyword" name="k" value="搜索你想要的..." class="seach_text">	
			<input type="hidden" name="redirect" value="1" />				
			</div>
			</form>	
			
	
			
		</div>
		
		
		
	</div>		
</div>
	
 
<link rel="stylesheet" type="text/css" href="http://z.forfunnet.com/public/runtime/statics/26477c9fda90d965f2919d7ab02b0e6c.css" />
<script type="text/javascript" src="http://z.forfunnet.com/public/runtime/statics/4705411a7c2166d17b13876fb27599df.js"></script>
<div class="blank"></div>
<style>
	.nav li{float:left;}
	.hidden{display:none;}
	.c{color:#690}
	.c{color:#9c0;}
</style>
<script type="text/javascript">	
	var code_timeer = null;
	var code_lefttime = 0 ;
	$(document).ready(function(){
		
		$(".c_1").show();
		$(".n_1").addClass("c");
		$(".nav li").click(function(){
			$(".nav_item").removeClass("c");
			$(".item").hide();
			var con_id=$(this).attr("data");
			$(".c_"+con_id).show();
			$(".n_"+con_id).addClass("c");
		})
		
		$("#J_send_sms_verify").bind("click",function(){
			send_mobile_verify_sms();
		});
		
		$("#settings-mobile").bind("blur",function(){
			if(!$.checkMobilePhone($("#settings-mobile").val()))
			{
				form_error($("#settings-mobile"),"手机号码格式错误");	
				return false;
			}
			
			if(!$.maxLength($("#settings-mobile").val(),11,true))
			{
				$("#settings-mobile").focus();
				$("#settings-mobile").next().show().text("长度不能超过11位");			
				$("#settings-mobile").next().css({"color":"red"});
				return false;
			}
			
			
			if($.trim($("#settings-mobile").val()).length == 0)
			{				
				form_error($("#settings-mobile"),"手机号码不能为空");
				return false;
			}
			
			
			
			var ajaxurl = APP_ROOT+"/index.php?ctl=ajax&act=check_field";
			var query = new Object();
			query.field_name = "mobile";
			query.field_data = $.trim($(this).val());
			$.ajax({ 
				url: ajaxurl,
				data:query,
				type: "POST",
				dataType: "json",
				success: function(data){
					if(data.status==1)
					{
						form_success($("#settings-mobile"),"");
					}
					else
					{					
						form_error($("#settings-mobile"),ajaxobj.info);
						return false;
					}
				}
			});	
		}); //手机验证
		
			
	});	
		
	function send_mobile_verify_sms(){
		$("#J_send_sms_verify").unbind("click");
		if(!$.checkMobilePhone($("#settings-mobile").val()))
		{
			form_error($("#settings-mobile"),"手机号码格式错误");	
			$("#J_send_sms_verify").bind("click",function(){
				send_mobile_verify_sms();
			});
			return false;
		}
		
		if(!$.maxLength($("#settings-mobile").val(),11,true))
		{
			$("#settings-mobile").focus();
			$("#settings-mobile").next().show().text("长度不能超过11位");			
			$("#settings-mobile").next().css({"color":"red"});
			$("#J_send_sms_verify").bind("click",function(){
				send_mobile_verify_sms();
			});
			return false;
		}
		
		
		if($.trim($("#settings-mobile").val()).length == 0)
		{				
			form_error($("#settings-mobile"),"手机号码不能为空");
			$("#J_send_sms_verify").bind("click",function(){
				send_mobile_verify_sms();
			});
			return false;
		}
		
		   var ajaxurl = APP_ROOT+"/index.php?ctl=ajax&act=check_field";
			var query = new Object();
			query.field_name = "mobile";
			query.field_data = $.trim($("#settings-mobile").val());
			
			$.ajax({ 
				url: ajaxurl,
				data:query,
				type: "POST",
				dataType: "json",
				success: function(data){
					if(data.status==1)
					{	
						var sajaxurl = APP_ROOT+"/index.php?ctl=ajax&act=send_mobile_verify_code";
						var squery = new Object();
						squery.mobile = $.trim($("#settings-mobile").val());
						
						$.ajax({ 
							url: sajaxurl,
							data:squery,
							type: "POST",
							dataType: "json",
							success: function(sdata){
								if(sdata.status==1)
								{
									code_lefttime = 60;
									code_lefttime_func();
									$.showSuccess(sdata.info);
									return false;
								}
								else
								{
									$("#J_send_sms_verify").bind("click",function(){
										send_mobile_verify_sms();
									});
									$.showErr(sdata.info);
									return false;
								}
							}
						});	
					}
					else
					{	
						$("#J_send_sms_verify").bind("click",function(){
							send_mobile_verify_sms();
						});			
						form_error($("#settings-mobile"),data.info);
						return false;
					}
				}
			});	
		
		
	}
	function code_lefttime_func(){
		clearTimeout(code_timeer);
		$("#J_send_sms_verify").val(code_lefttime+"秒后重新发送");
		$("#J_send_sms_verify").css({"color":"#f1f1f1"});
		code_lefttime--;
		if(code_lefttime >0){
			code_timeer = setTimeout(code_lefttime_func,1000);
		}
		else{
			code_lefttime = 60;
			$("#J_send_sms_verify").val("发送验证码");
			$("#J_send_sms_verify").css({"color":"#fff"});
			$("#J_send_sms_verify").bind("click",function(){
				send_mobile_verify_sms();
			});
		}
		
	}	
</script>
<div class="shadow_bg">
	<div class="wrap white_box">
		<div class="signlogin_box">
			<div class="left">
				
				<div class="link_dash f25">
					<ul class="nav">
						<li class="nav_item n_1" data="1">
							邮箱注册/
						</li>
						<li class="nav_item n_2" data="2">
							手机注册
						</li>
					</ul>
					
				</div>
				<div class="item c_1 hidden">
					<form id="user_register_form" name="user_register_form" action="/index.php?ctl=user&act=do_register">
						
					<div class="form_row">
						<div class="blank15"></div>
						<label class="title"><font>*&nbsp;&nbsp;</font>电子邮箱:</label>
						<input type="text" value="电子邮箱" class="textbox" name="email"/>
						<div class="tip_box"></div>
						<div class="blank15"></div>
					</div>
					<div class="form_row">
						<label class="title"><font>*&nbsp;&nbsp;</font>创建密码:</label>
						<input type="password" name="user_pwd"  class="textbox" />
						<div class="tip_box"></div>
						<div class="blank15"></div>
					</div>
					<div class="form_row">
						<label class="title"><font>*&nbsp;&nbsp;</font>确认密码:</label>
						<input type="password" name="confirm_user_pwd"  class="textbox" />
						<div class="tip_box"></div>
						<div class="blank15"></div>
					</div>
					<div class="form_row">
						<label class="title"><font>*&nbsp;&nbsp;</font>会员帐号:</label>
						<input type="text" value="" class="textbox" name="user_name"/>
						<div class="tip_box"></div>
						<div class="blank15"></div>
					</div>
										<div class="button_row term">
						<span><a href="/index.php?ctl=help&act=term">FunnyDream众筹服务条款</a></span>
						<div class="blank15"></div>
					</div>
					
					<div class="button_row do_register">
						<input type="button" value="" name="submit_form" class="btn_do_register" id="btn_do_register" />
						<input type="hidden" value="1" name="ajax" />
						<div class="blank15"></div>
					</div>
					
					</form>
				</div>
				<div class="item c_2 hidden" style=" padding-top:15px;">
					<form id="user_register_form_by_mobile" name="user_register_form_by_mobile" action="">
						
					<div class="form_row">
						<label class="title"><font>*&nbsp;&nbsp;</font>会员帐号:</label>
						<input type="text" value="" class="textbox" name="user_name" id="user_name"/>
						<div class="tip_box"></div>
						<div class="blank15"></div>
					</div>
						
					<div class=" form_row">
							<label for="signup-mobile" class="title"><font>*&nbsp;&nbsp;</font>手机号码:</label>
							<input type="text" value="" class="textbox" id="settings-mobile" name="mobile" size="30" placeholder="请输入手机号码">
							<span class="f-input-tip"></span> 
							<div class="tip_box"></div> 
							<div class="blank15"></div>
					</div>	
				
					<div class="form_row">
						<label class="title"><font>*&nbsp;&nbsp;</font>创建密码:</label>
						<input type="password" name="user_pwd"  class="textbox" id="user_pwd"/>
						<div class="tip_box"></div>
						<div class="blank15"></div>
					</div>
					<div class="form_row">
						<label class="title"><font>*&nbsp;&nbsp;</font>确认密码:</label>
						<input type="password" name="confirm_user_pwd"  class="textbox" id="confirm_user_pwd"/>
						<div class="tip_box"></div>
						<div class="blank15"></div>
					</div>
															<div class="button_row term">
						<span><a href="/index.php?ctl=help&act=term">FunnyDream众筹服务条款</a></span>
						<div class="blank15"></div>
					</div>
					
					<div class="button_row do_register">
						<input type="submit" value="" name="submit_form" class="btn_user_register" id="btn_user_register" />
						<input type="hidden" value="1" name="ajax" />
						<div class="blank15"></div>
					</div>
					
					</form>
				</div>
			</div>
			
			<div class="right">
				<div class="link_dash f16">
					快速通过微博帐号登录					
				</div>		
				<div class="blank"></div>		
				554fcae493e564ee0dc75bdf2ebf94caapi_login|YToxOntzOjQ6Im5hbWUiO3M6OToiYXBpX2xvZ2luIjt9554fcae493e564ee0dc75bdf2ebf94ca				<span class="no_account_tip">已有账号？</span>
				<a href="/index.php?ctl=user&act=login" class="btn_go_login" title="立即登录"></a>
				
			</div>
			<div class="blank"></div>
			
		</div>
	</div>
</div>
<div class="blank"></div>
<div id="gotop"></div>
<div class="blank"></div>
<div class="footer">
	<div class="wrap">
           <h2>友情链接</h2>
		<div class="help_row">
                    
                       <div class="link_">
                                                         <div class="zhanshi">
                                 
                                 <ul class="g_link">
                                                                                    <li class="g_link_li">
                                                <a href=""  target="_blank"><img src="" /></a>
                                            </li>
                                                                                    <li class="g_link_li">
                                                <a href=""  target="_blank"><img src="" /></a>
                                            </li>
                                                                                    <li class="g_link_li">
                                                <a href=""  target="_blank"><img src="" /></a>
                                            </li>
                                                                                    <li class="g_link_li">
                                                <a href=""  target="_blank"><img src="" /></a>
                                            </li>
                                            
                                  </ul>
                                   <div class="blank" style="height:0px;"></div>
                           </div>
                                                     </div>
			<a href="/index.php?ctl=faq" title="常见问题">常见问题</a>
						 &nbsp;&nbsp;|&nbsp;&nbsp;<a href="/index.php?ctl=help&act=term" title="服务条款">服务条款</a>
						 &nbsp;&nbsp;|&nbsp;&nbsp;<a href="/index.php?ctl=help&act=intro" title="服务介绍">服务介绍</a>
						 &nbsp;&nbsp;|&nbsp;&nbsp;<a href="/index.php?ctl=help&act=privacy" title="隐私策略">隐私策略</a>
						 &nbsp;&nbsp;|&nbsp;&nbsp;<a href="/index.php?ctl=help&act=about" title="关于我们">关于我们</a>
						 &nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://weibo.com/vitakung" title="官方微博">官方微博</a>
						 &nbsp;&nbsp;|&nbsp;&nbsp;<a href="/index.php?ctl=help&act=8" title="撰写指南">撰写指南</a>
					</div>
		<div class="license">
			FunnyDream众筹z.forfunnet.com 版权所有		</div>
	</div>
</div>
 
