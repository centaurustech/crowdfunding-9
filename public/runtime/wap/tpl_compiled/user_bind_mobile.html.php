<?php echo $this->fetch('inc/header.html'); ?>
<style type="text/css">
	.input_lable{width:70px}
</style>
<section class="settings_mobile_pwd">
	<p class="f_red f16">您需要绑定手机号码才能进行对项目的支持！</P>
	<div class="ul_block">
		<ul>
			<li class="webkit-box">
				<label class="input_lable">会员帐号：</label>
				<input type="text" value="<?php echo $this->_var['user_info']['user_name']; ?>" class="textbox webkit-box-flex" disabled="true" />
				<div class="blank"></div>
			</li>
			<li class="webkit-box">
				<label class="input_lable">手机号码：</label>
				<input type="text" value="<?php echo $this->_var['user_info']['mobile']; ?>" id="settings-mobile" name="mobile" class="textbox webkit-box-flex" placeholder="请输入手机号码" />
			</li>
			<li class="webkit-box">
				<input type="text" value="" name="verify_coder" id="verify_coder"  class="textbox webkit-box-flex" placeholder="请输入验证码" />
				<input type="button" value="获取验证码" class="ui-button btn_yzm bg_red ml5" id="J_send_sms_verify" rel="ui-button">
				<div class="blank"></div>
			</li>
		</ul>
	</div>
	<div class="blank15"></div> 
	<div class="submit_btn_row control-group">
		<label class="form_lable"></label>
		<div class="ui-button theme_color" rel="ui-button" onclick="javascript:save_mobile();">
			绑定手机
		</div>
		<input type="hidden" value="<?php echo $this->_var['cid']; ?>" id="cid" />
		<div class="blank15"></div>
	</div>
</section>
<script type="text/javascript">
	var code_timeer = null;
	$(function(){
		$("#J_send_sms_verify").bind("click",function(){
			if($("#settings-mobile").val()==''){
				$.showErr("手机号码不能为空！");
				return false;
			}else{
				send_mobile_verify_sms();
			}
		});
		$("#verify_coder").bind("blur",function(){	
			if($(this).val()==''){
				$.showErr("验证码不能为空！");
				return false;
			}else{
				check_register_verifyCoder();
			}		
		});
	});
	
	function send_mobile_verify_sms(){
		$("#J_send_sms_verify").unbind("click");
	
		if(!$.checkMobilePhone($("#settings-mobile").val()))
		{
			$.showErr("手机号码格式错误!");	
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
			$.showErr("手机号码不能为空!");
			$("#J_send_sms_verify").bind("click",function(){
				send_mobile_verify_sms();
			});
			return false;
		}
	
		var sajaxurl = APP_ROOT+"/index.php?ctl=ajax&act=send_mobile_verify_code&is_only=1";
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

	function code_lefttime_func(){
		
		clearTimeout(code_timeer);
		$("#J_send_sms_verify").val(code_lefttime+"秒后重新发送");
		$("#J_send_sms_verify").css({"color":"#f1f1f1"});
		code_lefttime--;
		if(code_lefttime >0){
			$("#J_send_sms_verify").attr("disabled","true");
			code_timeer = setTimeout(code_lefttime_func,1000);
		}
		else{
			code_lefttime = 60;
			$("#J_send_sms_verify").val("发送验证码");
			$("#J_send_sms_verify").attr("disabled","false");
			$("#J_send_sms_verify").css({"color":"#fff"});
			$("#J_send_sms_verify").bind("click",function(){
				send_mobile_verify_sms();
			});
		}	
	}
	//检查验证码
	function check_register_verifyCoder(){
 		if($.trim($("#verify_coder").val())=="")
		{
			$.showErr("请输入验证码!");		
		}
		else
		{
			var mobile = $.trim($("#settings-mobile").val());
			var code = $.trim($("#verify_coder").val());
			if(mobile!=""||code!=""){
				var ajaxurl = APP_ROOT+"/index.php?ctl=user&act=check_verify_code";
				var query = new Object();
				query.mobile = mobile;
				query.code = code;
				$.ajax({
					url: ajaxurl,
					dataType: "json",
					data:query,
					type: "POST",
					success:function(ajaxobj){
						if(ajaxobj.status==1)
						{
							//$.showSuccess("验证码正确!");
						}
						if(ajaxobj.status==0)
						{
							$.showErr("验证码不正确!");
						}
					}
				});
			}
		}
	}
	function save_mobile(){
		if(!$.checkMobilePhone($("#settings-mobile").val()))
		{
			$.showErr("手机号码格式错误!");	
			return false;
		}
		
		if(!$.maxLength($("#settings-mobile").val(),11,true))
		{
			$.showErr("长度不能超过11位!");	
			return false;
		}
 		if($.trim($("#settings-mobile").val()).length == 0)
		{				
			$.showErr("手机号码不能为空!");
			return false;
		}
		if($.trim($("#verify_coder").val()).length == 0){
			$.showErr("验证码不能为空！");
			return false;
		}
			var mobile = $.trim($("#settings-mobile").val());
			var cid= $.trim($("#cid").val());
			var verify_coder=$.trim($("#verify_coder").val());
			var ajaxurl = APP_ROOT+"/index.php?ctl=user&act=save_mobile";
			var query=new Object();
			query.mobile=mobile;
			query.cid=cid;
			query.verify_coder=verify_coder;
			$.ajax({
				url: ajaxurl,
				dataType: "json",
				data:query,
				type: "POST",
				success:function(ajaxobj){
						if(ajaxobj.status==1)
						{
							window.location.href='<?php
echo parse_url_tag_wap("u:ajax#three_seconds_jump|"."id=".$this->_var['cid']."".""); 
?>';
						}
						if(ajaxobj.status==0)
						{
							$.showErr(ajaxobj.info);
						}
				}
			});
			return false;
	}
</script>
<?php echo $this->fetch('inc/footer.html'); ?> 


