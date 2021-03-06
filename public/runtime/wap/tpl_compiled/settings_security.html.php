<?php echo $this->fetch('inc/header_account.html'); ?>
<?php
$this->_var['dpagecss'][] = $this->_var['TMPL_REAL']."/css/account.css";
$this->_var['dcpagecss'][] = $this->_var['TMPL_REAL']."/css/account.css";
?>
<link rel="stylesheet" type="text/css" href="<?php 
$k = array (
  'name' => 'parse_css',
  'v' => $this->_var['dpagecss'],
  'c' => $this->_var['dcpagecss'],
);
echo $k['name']($k['v'],$k['c']);
?>" />
<div class="blank15"></div>
<section class="settings_security">
	<div class="ul_block">
		<ul>
			<li class="webkit-box">
				<div class="label_box">
					<i class="fa fa-user mr10"></i>
					<label>昵称</label>
				</div>
				<?php if ($this->_var['user_info']['user_name']): ?>
				<span>已设置</span>
				<span class="update webkit-box-flex"><?php echo $this->_var['user_info']['user_name']; ?></span>
				<?php else: ?>
				<span class="f_red">未设置</span>
				<span class="update webkit-box-flex">
					<a href="javascript:void(0);" class="J_setting" rel="setting_username" onclick="J_setting_security(this);"><?php if ($this->_var['user_info']['user_name']): ?>修改<?php else: ?>设置<?php endif; ?></a>
				</span>
				<?php endif; ?>
			</li>
			<li class="webkit-box">
				<div class="label_box">
					<i class="fa fa-unlock-alt"></i>
					<label>登录密码</label>
				</div>
				<?php if ($this->_var['user_info']['user_pwd']): ?>
				<span>已设置</span>
				<?php else: ?>
				<span class="f_red">未设置</span>
				<?php endif; ?>
				<div class="update webkit-box-flex">
					<a href="javascript:void(0);" class="J_setting" rel="setting_pwd" onclick="J_setting_security(this);"><?php if ($this->_var['user_info']['user_pwd']): ?>修改<?php else: ?>设置<?php endif; ?></a>
				</div>
			</li>
			<li class="webkit-box">
				<div class="label_box">
					<i class="fa fa-envelope-o"></i>
					<label>绑定邮箱</label>
				</div>
				<?php if ($this->_var['user_info']['email']): ?>
				<span>已绑定</span>
				<?php else: ?>
				<span class="f_red">未绑定</span>
				<?php endif; ?>
				<div class="update webkit-box-flex">
					<a href="javascript:void(0);" class="J_setting" rel="setting_email" onclick="J_setting_security(this);"><?php if ($this->_var['user_info']['email']): ?>修改<?php else: ?>绑定<?php endif; ?></a>
				</div>
			</li>
			<li class="webkit-box">
				<div class="label_box">
					<i class="fa fa-mobile-phone"></i>
					<label>绑定手机</label>
				</div>
				<?php if ($this->_var['user_info']['mobile']): ?>
				<span>已绑定</span>
				<div class="update webkit-box-flex">
					<a href="javascript:void(0)" class="J_setting" rel="setting_mobile" onclick="J_setting_security(this);">修改</a>
				</div>
				<?php else: ?>
				<span class="f_red">未绑定</span>
				<div class="update webkit-box-flex">
					<a href="javascript:void(0)" class="J_setting f_red" rel="setting_mobile" onclick="J_setting_security(this);">绑定</a>
				</div>
				<?php endif; ?>
			</li>
			<li class="webkit-box">
				<div class="label_box">
					<i class="fa fa-unlock-alt"></i>
					<label>支付密码</label>
				</div>
				<?php if ($this->_var['user_info']['mobile']): ?>
					<?php if ($this->_var['user_info']['paypassword']): ?>
					<span>已设置</span>
					<?php else: ?>
					<span class="f_red">未设置</span>
					<?php endif; ?>
					<div class="update webkit-box-flex">
						<a href="javascript:void(0)" class="J_setting" rel="setting_paypwd" onclick="J_setting_security(this);">设置</a>
					</div>
				<?php else: ?>
					<span class="f_red webkit-box-flex">请先设置手机号</span>
				<?php endif; ?>
			</li>
			<li class="webkit-box">
				<div class="label_box">
					<i class="fa fa-user"></i>
					<label>实名认证</label>
				</div>
				<?php if ($this->_var['user_info']['mobile']): ?>
					<?php if ($this->_var['user_info']['is_investor'] > 0 || $this->_var['user_info']['identify_name'] != ''): ?>
						<?php if ($this->_var['user_info']['investor_status'] == 0): ?>
						<span>已提交,认证中</span>
						<div class="update webkit-box-flex">
							<span class="theme_fcolor">认证中</span>
						</div>
						<?php elseif ($this->_var['user_info']['investor_status'] == 1): ?>
							<span>已设置</span>
							<?php if ($this->_var['user_info']['identify_name'] == ''): ?>
							<div class="update webkit-box-flex">
								<a href="javascript:void(0)" class="J_setting" id="J_setting_paypwd">修改</a>
							</div>
							<?php else: ?>
							<div class="update webkit-box-flex">
								<a href="<?php
echo parse_url_tag_wap("u:settings#setting_id|"."".""); 
?>" class="J_setting theme_fcolor" id="J_setting_paypwd">认证成功</a>
							</div>
							<?php endif; ?>
						<?php elseif ($this->_var['user_info']['investor_status'] == 2): ?>
							<span class="f_red">未通过</span>
							<div class="update webkit-box-flex">
								<a href="<?php
echo parse_url_tag_wap("u:settings#setting_id|"."".""); 
?>" class="J_setting" id="J_setting_paypwd">修改</a>
							</div>
						<?php endif; ?>
					<?php else: ?>
					<span class="f_red">未认证</span>
					<div class="update webkit-box-flex">
						<a href="<?php
echo parse_url_tag_wap("u:settings#setting_id|"."".""); 
?>" class="J_setting" id="J_setting_paypwd">设置</a>
					</div>
					<?php endif; ?>
				<?php else: ?>
					<span class="f_red webkit-box-flex">请先设置手机号</span>
				<?php endif; ?>
			</li>
		</ul>
	</div>
</section>
<div class="blank15"></div>
<!--中间结束-->
<script type="text/javascript">
	function J_setting_security(obj){
		var ajaxurl="";
		var setting_title="";
		if($(obj).attr("rel")=="setting_username"){
			ajaxurl='<?php
echo parse_url_tag_wap("u:ajax#setting_username|"."".""); 
?>';
			setting_title="设置昵称";
		}
		else if($(obj).attr("rel")=="setting_pwd"){
			ajaxurl='<?php
echo parse_url_tag_wap("u:ajax#setting_pwd|"."".""); 
?>';
			setting_title="登录密码";
		}
		else if($(obj).attr("rel")=="setting_email"){
			ajaxurl='<?php
echo parse_url_tag_wap("u:ajax#setting_email|"."".""); 
?>';
			setting_title="绑定邮箱";
		}
		else if($(obj).attr("rel")=="setting_mobile"){
			ajaxurl='<?php
echo parse_url_tag_wap("u:ajax#setting_mobile|"."".""); 
?>';
			setting_title="绑定手机";
		}
		else{
			ajaxurl='<?php
echo parse_url_tag_wap("u:ajax#setting_paypwd|"."".""); 
?>';
			setting_title="支付密码";
		}
		$.ajax({
			url: ajaxurl,
			dataType: "json",
			type: "POST",
			success:function(ajaxobj){
				if(ajaxobj.status==1){
					$.weeboxs.open(ajaxobj.html, {boxid:'setting_mobile_box',contentType:'text',showButton:false, showCancel:false, showOk:false,title:setting_title,width:300,type:'wee'});
				}
			    if(ajaxobj.status==2){
					$.showErr(ajaxobj.info);
				}
			}
		});
	}
</script>
<?php echo $this->fetch('inc/footer.html'); ?> 