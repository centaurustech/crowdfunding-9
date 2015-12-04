<?php echo $this->fetch('inc/header_account.html'); ?>
<?php
$this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/ajax_user_login.js";
$this->_var['dcpagejs'][] = $this->_var['TMPL_REAL']."/js/ajax_user_login.js";
?>
<script type="text/javascript" src="<?php 
$k = array (
  'name' => 'parse_script',
  'v' => $this->_var['dpagejs'],
  'c' => $this->_var['dcpagejs'],
);
echo $k['name']($k['v'],$k['c']);
?>"></script>
<!-- 登录 开始 -->  
<section class="login p10 tc">
	<form id="user_login_form" name="user_login_form" action="<?php
echo parse_url_tag_wap("u:user#do_login|"."".""); 
?>">
		<input class="input100 sizing" type="text"  name="email" id="email" placeholder="手机号/会员名/邮箱" required="required">
		<input class="input100 sizing" type="password" name="user_pwd"  id="user_pwd" placeholder="输入登录密码" required="required">
		<div class="blank10"></div>
		<input class="ui-button theme_color" type="button" name="submit_form" value="登录" rel="ui-button">
		<input type="hidden" name="ajax" value="1">
	</form>
	<a class="f_l rgst f_red pt10" href="<?php
echo parse_url_tag_wap("u:user#register|"."".""); 
?>">注册账号</a>
	<?php if (app_conf ( "USER_VERIFY" ) == 2): ?>
		<a class="f_r rgst f_red pt10" href="<?php
echo parse_url_tag_wap("u:user#getpassword|"."".""); 
?>">忘记密码？</a>
	<?php endif; ?>
	<div class="blank"></div>
</section>
<!-- 登录 结束 -->  
<!--
<?php echo $this->fetch('inc/footer.html'); ?>
-->
