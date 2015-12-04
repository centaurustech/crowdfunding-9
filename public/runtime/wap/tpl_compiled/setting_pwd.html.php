<div class="setting_security_box" id="setting_pwd_box">
	<form id="ajax_form_password" action="<?php
echo parse_url_tag_wap("u:settings#save_pass|"."".""); 
?>" id="save_pass">
		<div class="ul_block">
			<ul>
				<?php if ($this->_var['user_info']['user_pwd']): ?>
				<li class="webkit-box">
					<label class="input_lable">旧密码：</label>
					<input type="password" placeholder="请输入旧密码" value="" name="user_old_pwd" class="textbox webkit-box-flex"  />
				</li>
				<input type="hidden" name="change_pwd" value="1">
				<?php else: ?>
				<input type="hidden" name="change_pwd" value="0">
				<?php endif; ?>
				<li class="webkit-box">
					<label class="input_lable">新密码：</label>
					<input type="password" placeholder="请输入新密码" value="" name="user_pwd" class="textbox webkit-box-flex" />
				</li>
				<li class="webkit-box">
					<label class="input_lable">确认密码：</label>
					<input type="password" placeholder="请输入确认密码" value="" name="confirm_user_pwd" class="textbox webkit-box-flex" />
				</li>
			</ul>
			<div class="blank10"></div>
			<div class="submit_btn_row control-group">
				<label class="form_lable"></label>
				<input type="button" value="保存密码" name="pass" class="ui-button theme_color" id="pass"  />
				<input type="hidden" value="1" name="ajax" />
				<input type="hidden" name="setting_pwd" value="1">
			</div>
			<div class="blank10"></div>
		</div>
	</form>
</div>
<script type="text/javascript">
	$("#ajax_form_password").find(".ui-button").bind("click",function(){
		if($("input[name='user_old_pwd']").val()==""){
			$.show_tip("请输入旧密码");
			return false;
		}
		if($("input[name='user_pwd']").val()==""){
			$.show_tip("请输入新密码");
			return false;
		}
		if(($("input[name='user_pwd']").val()).length<4){
			$.show_tip("密码不能低于四位");
			return false;
		}
		if($("input[name='confirm_user_pwd']").val()==""){
			$.show_tip("请输入确认密码");
			return false;
		}
		ajax_form("#ajax_form_password");
	});
</script>