<?php echo $this->fetch('inc/header.html'); ?>
<script>
	<?php if (app_conf ( "USER_VERIFY" ) == 2): ?>
		var is_mobile=1;
	<?php else: ?>
		var is_mobile=0;
	<?php endif; ?>
</script>
<?php
$this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/ajax_user_wx_register.js";
$this->_var['dcpagejs'][] = "";
?>
<script type="text/javascript" src="<?php 
$k = array (
  'name' => 'parse_script',
  'v' => $this->_var['dpagejs'],
  'c' => $this->_var['dcpagejs'],
);
echo $k['name']($k['v'],$k['c']);
?>"></script>
<style type="text/css">
.input100 {
  width: 100%;
  height: 40px;
  line-height: 100%;
  font-size: 15px;
  margin: 0px 0;
  padding: 0 10px;
}
</style>
<!-- 找回密码 开始 -->  
 <section class="user_register p10 tc">
	<span class="title pt10">绑定账户</span>
	<form id="user_register_form" name="user_register_form" action="<?php
echo parse_url_tag_wap("u:user#wx_do_register|"."".""); 
?>">
		<div class="ul_block">
			<ul>
				<?php if (app_conf ( "USER_VERIFY" ) != 2): ?>
				<li class="webkit-box">
	 				<label class="input_lable mr10">电子邮箱:</label>
					<input class="input100 sizing webkit-box-flex" type="text" name="email" value="" placeholder="输入电子邮箱" >
	 			</li>
					<?php if (app_conf ( "USER_VERIFY" ) == 1 || app_conf ( "USER_VERIFY" ) == 4): ?>
					<li class="webkit-box">
						<label class="input_lable mr10" style="width:59px;font-size:0">邮件验证:</label>
						<input class="input100 webkit-box-flex" type="text" name="verify_coder_email" value="" placeholder="输入验证码" style="margin-right:10px">
						<input class="ui-button btn_yzm bg_red" type="button" value="获取验证码"  id="J_send_email_verify" rel="ui-button">
					</li>
					<?php endif; ?>
				<?php endif; ?>
				<?php if (app_conf ( "USER_VERIFY" ) == 2 || app_conf ( "USER_VERIFY" ) == 4): ?>
				<li class="webkit-box">
					<label class="input_lable mr10">手机号码:</label>
					<input class="input100 sizing webkit-box-flex" type="text" name="mobile" id="settings-mobile" value="" placeholder="输入手机">
				</li>
				<li class="webkit-box">
                <!--
					<label class="input_lable mr10" style="width:59px;font-size:0">验证码</label>
				-->
                    <label class="input_lable mr10">短信验证:</label>
					<input class="input100 webkit-box-flex" type="text" name="verify_coder" value="" placeholder="输入验证码" style="margin-right:0px">
					<input class="ui-button btn_yzm bg_red" type="button" value="获取验证码"  id="J_send_sms_verify" rel="ui-button">
				</li>
				<?php endif; ?>
			</ul>
		</div>
		<div class="blank15"></div>
		<input class="ui-button theme_color" type="button"  name="submit_form" id="btn_user_register" value="立即绑定" rel="ui-button">
		<input type="hidden" value="1" name="ajax" />
		<input type="hidden" name="wx_openid" value="<?php echo $this->_var['wx_info']['openid']; ?>" id="wx_openid" >
 		<input type="hidden" name="province" value="<?php echo $this->_var['wx_info']['province']; ?>" id="province">
		<input type="hidden" name="city" value="<?php echo $this->_var['wx_info']['city']; ?>" id="city">
		
		<input type="hidden" name="user_name" value="<?php echo $this->_var['wx_info']['nickname']; ?>" id="user_name">
		<input type="hidden" name="sex" value="<?php echo $this->_var['wx_info']['sex']; ?>" id="sex">
		<div class="blank15"></div>
	</form>
</section>
 
<?php echo $this->fetch('inc/footer.html'); ?>
