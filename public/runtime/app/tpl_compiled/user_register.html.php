<?php echo $this->fetch('inc/header.html'); ?> 
<?php
$this->_var['pagecss'][] = $this->_var['TMPL_REAL']."/css/user_register.css";
$this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/user_register.js";
$this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/user_phone_register.js";
$this->_var['cpagejs'][] = array();
?>
<link rel="stylesheet" type="text/css" href="<?php 
$k = array (
  'name' => 'parse_css',
  'v' => $this->_var['pagecss'],
);
echo $k['name']($k['v']);
?>" />
<script type="text/javascript" src="<?php 
$k = array (
  'name' => 'parse_script',
  'v' => $this->_var['pagejs'],
  'c' => $this->_var['cpagejs'],
);
echo $k['name']($k['v'],$k['c']);
?>"></script>
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
				form_error($("#settings-mobile"),"<?php 
$k = array (
  'name' => 'sprintf',
  'format' => '手机号码格式错误',
  'value' => '手机号码',
);
echo $k['name']($k['format'],$k['value']);
?>");	
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
				form_error($("#settings-mobile"),"<?php 
$k = array (
  'name' => 'sprintf',
  'format' => '手机号码不能为空',
  'value' => '手机号码',
);
echo $k['name']($k['format'],$k['value']);
?>");
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
			form_error($("#settings-mobile"),"<?php 
$k = array (
  'name' => 'sprintf',
  'format' => '手机号码不能为空',
  'value' => '手机号码',
);
echo $k['name']($k['format'],$k['value']);
?>");
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
					<form id="user_register_form" name="user_register_form" action="<?php
echo parse_url_tag("u:user#do_register|"."".""); 
?>">
						
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
					<?php if (app_conf ( "USER_INVESTMENT" ) == 1): ?>
					<div class="form_row" >
						<label class="title"><font>&nbsp;&nbsp;&nbsp;</font>会员类型:</label>
						<select name="user_type" style="float: left;margin-top: 10px;">
							<option value="0">请选择类型</option>
							<option value="1">创业者</option>
							<option value="2">投资者</option>
						</select>
						<div class="tip_box"></div>
						<div class="blank15"></div>
					</div>
					<?php endif; ?>
					<div class="button_row term">
						<span><a href="<?php
echo parse_url_tag("u:help#term|"."".""); 
?>"><?php 
$k = array (
  'name' => 'app_conf',
  'v' => 'SITE_NAME',
);
echo $k['name']($k['v']);
?>服务条款</a></span>
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
					<?php if (app_conf ( "USER_INVESTMENT" ) == 1): ?>
					<div class="form_row">
						<label class="title"><font>&nbsp;&nbsp;&nbsp;</font>会员类型:</label>
							<select name="user_type" style="float: left;margin-top: 10px;">
								<option value="0">请选择类型</option>
								<option value="1">创业者</option>
								<option value="2">投资者</option>
							</select>
						<div class="tip_box"></div>
						<div class="blank15"></div>
					</div>
					<?php endif; ?>
					<?php if (app_conf ( "MOBILE_OPEN" ) == 1): ?>
					<div class="form_row">
							<label for="signup-mobile-code" class="title"><font>*&nbsp;&nbsp;</font>手机验证:</label>
							<input type="text" id="settings-mobile-code" name="verify_coder" class="textbox" style="width:50px" />
							<input type="button" value="获取验证码" class="f-button" id="J_send_sms_verify" style="height:36px;padding-left:10px;padding-right:10px; background-color: #690;color: #fff;" />
							<span class="f-input-tip"></span> 
							<div class="tip_box"></div> 
							<div class="blank15"></div>
					</div>	
					<?php endif; ?>
					<div class="button_row term">
						<span><a href="<?php
echo parse_url_tag("u:help#term|"."".""); 
?>"><?php 
$k = array (
  'name' => 'app_conf',
  'v' => 'SITE_NAME',
);
echo $k['name']($k['v']);
?>服务条款</a></span>
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
				<?php 
$k = array (
  'name' => 'api_login',
);
echo $this->_hash . $k['name'] . '|' . base64_encode(serialize($k)) . $this->_hash;
?>
				<span class="no_account_tip">已有账号？</span>
				<a href="<?php
echo parse_url_tag("u:user#login|"."".""); 
?>" class="btn_go_login" title="立即登录"></a>
				
			</div>
			<div class="blank"></div>
			
		</div>
	</div>
</div>

<div class="blank"></div>
<?php echo $this->fetch('inc/footer.html'); ?> 


