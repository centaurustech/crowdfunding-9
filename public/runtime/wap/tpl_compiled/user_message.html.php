<?php echo $this->fetch('inc/header_account.html'); ?>
<section class="investor_explain mod_main">
	<h3>你可以通过以下途径进行发起项目操作:</h3>
	<div class="explain_box">
		<div class="explain_m">1.请在<?php 
$k = array (
  'name' => 'get_domain',
);
echo $k['name']();
?><?php echo $this->_var['APP_ROOT']; ?>登录后发起众筹</div>
		<div class="explain_m">2.请发邮件到：<span class="f_red"><?php 
$k = array (
  'name' => 'app_conf',
  'v' => 'REPLY_ADDRESS',
);
echo $k['name']($k['v']);
?></span></div>
		<div class="explain_m">
			3.</i>请在下面输入框留下您的信息，我们会与您联系！
			<div class="blank5"></div>
			<form class="ajax_form" action="<?php
echo parse_url_tag_wap("u:user_message#save_info|"."".""); 
?>">
				<input type="text" placeholder="请输入您的姓名" value="<?php echo $this->_var['user_info']['user_name']; ?>"  name ="user_name" class="textboxs sizing" />
				<input type="text" placeholder="请输入您的手机" value="<?php echo $this->_var['user_info']['mobile']; ?>" name ="tel" class="textboxs sizing" />
				<textarea placeholder="请输入您的信息" name="content" class="sizing"></textarea>
				<input class="ui-button theme_color" type="button"  value="提交" rel="ui-button">
				<input type="hidden" name="cate_id" value="<?php echo $this->_var['cate_id']; ?>">
				<input type="hidden" name="user_id" value="<?php echo $this->_var['user_info']['id']; ?>">
				<input type="hidden" name="ajax" value="1">
			</form>
		</div>
	</div>
</section>
<?php echo $this->fetch('inc/footer.html'); ?>