<?php echo $this->fetch('inc/header_account.html'); ?>
<script type="text/javascript">
    var ROOT = '<?php echo $this->_var['APP_ROOT']; ?>/m.php';
    var VAR_MODULE = "m";
    var VAR_ACTION = "a";
    var WEB_SESSION_ID = '<?php echo es_session::id(); ?>';
    var EMOT_URL = '<?php echo $this->_var['APP_ROOT']; ?>/public/emoticons/';
    var MAX_FILE_SIZE = "<?php echo (app_conf("MAX_IMAGE_SIZE")/1000000)."MB"; ?>";
    var UPLOAD_URL ='<?php echo $this->_var['APP_ROOT']; ?>/m.php?m=File&a=do_upload&upload_type=0&dir=image' ;
	var UPLOAD_SWF='<?php echo $this->_var['TMPL']; ?>/js/plupload/Moxie.swf';
	var UPLOAD_XAP='<?php echo $this->_var['TMPL']; ?>/js/plupload//Moxie.xap';
	var ALLOW_IMAGE_EXT= "gif,jpg,jpeg,png,bmp";
	var MAX_IMAGE_SIZE= "<?php echo (app_conf("MAX_IMAGE_SIZE")/1000000)."MB"; ?>";
	
	function get_file_fun(name){
		$("#"+name).ui_upload({multi:false,
			FileUploaded:function(ajaxobj){
				if(ajaxobj.error==1) {
					$.show_tip(ajaxobj.message);
				}
				else {

					$("#"+name+"_image").val(ajaxobj.public_url);
					$("#"+name+"_u").attr('src',ajaxobj.url).attr({width:"80",height:"80"});
					$("#"+name+"_text").remove();
				}
			},Error:function(error){
				$.show_tip(error.message);
	 		}
	 	});
	}
</script>
<div class="blank15"></div>
<section class="setting_security_box setting_id_box">
	<form class="ajax_form_identify" action="<?php
echo parse_url_tag_wap("u:settings#binding_investor|"."".""); 
?>">
		<?php if (( $this->_var['user_info']['investor_status'] != 1 ) && ( $this->_var['user_info']['is_investor'] == 0 || ( $this->_var['user_info']['is_investor'] > 0 && $this->_var['user_info']['investor_status'] == 2 ) || $this->_var['user_info']['identify_name'] == '' )): ?>
		<div class="ul_block">
			<ul class="mb10">
				<?php if ($this->_var['user_info']['is_investor'] > 0 && $this->_var['user_info']['investor_status'] == 2 && $this->_var['user_info']['investor_send_info']): ?>
				<li class="webkit-box">
					<label class="input_lable">错误理由：</label>
					<span class="list_con webkit-box-flex"><?php echo $this->_var['user_info']['investor_send_info']; ?></span>
				</li>
				<?php endif; ?>
				<li class="webkit-box">
					<label class="input_lable mr10">类型：</label>
					<div class="list_con webkit-box-flex">
						<input type="radio" name="is_investor" value="1" <?php if ($this->_var['user_info']['is_investor'] == 0 || $this->_var['user_info']['is_investor'] == 1): ?>checked="checked"<?php endif; ?> class="mt" style="display:inline-block;margin-top:-3px"/>
						<span class="mr10">个人会员</span>
						<input type="radio" name="is_investor" value="2" <?php if ($this->_var['user_info']['is_investor'] == 2): ?>checked="checked"<?php endif; ?> class="mt" style="display:inline-block;margin-top:-3px"/>
						<span>企业会员</span>
					</div>
				</li>
				<li class="webkit-box">
					<label class="input_lable" id="identify_name_str"><?php if ($this->_var['user_info']['is_investor'] == 0 || $this->_var['user_info']['is_investor'] == 1): ?>个人<?php else: ?>法人<?php endif; ?>身份证姓名：</label>
					<input type="text" placeholder="请输入身份证姓名" id="" value="<?php echo $this->_var['user_info']['identify_name']; ?>" class="textbox webkit-box-flex" name="identify_name" />
				</li>
				<li class="webkit-box">
					<label class="input_lable">身份证号码：</label>
					<input type="text" placeholder="请输入身份证号码" id="" value="<?php echo $this->_var['user_info']['identify_number']; ?>" class="textbox webkit-box-flex" name="identify_number" />
				</li>
				<?php if (app_conf ( 'IDENTIFY_POSITIVE' )): ?>
				<li class="uploadbox">
					<label class="input_lable">身份证正面：</label>
					<div class="blank0"></div>
					<div class="fileupload_box">
						<label class="fileupload">
							<div class="pic_show">
								<?php if ($this->_var['user_info']['identify_positive_image'] == ''): ?>
								<div class="text" id="identify_positive_text">
									<i class="icon icon_plus"></i>
									<span class="f12">上传图片</span>
								</div>
								<?php endif; ?>
								<img id="identify_positive_u" src="<?php echo $this->_var['user_info']['identify_positive_image']; ?>" <?php if ($this->_var['user_info']['identify_positive_image']): ?>width="80" height="80"<?php endif; ?> />
								<input type="hidden" name="identify_positive_image" id="identify_positive_image"  value="<?php echo $this->_var['user_info']['identify_positive_image']; ?>" rel="num" />
								<input type="button" class="filebox" name="identify_positive" id="identify_positive" />
								<div class="fileuploading"></div>
							</div>
						</label>
					</div>
				</li>
				<?php endif; ?>
				<?php if (app_conf ( 'IDENTIFY_NAGATIVE' )): ?>
				<li class="uploadbox">
					<label class="input_lable">身份证反面：</label>
					<div class="blank0"></div>
					<label class="fileupload">
						<div class="pic_show">
							<?php if ($this->_var['user_info']['identify_nagative_image'] == ''): ?>
							<div class="text" id="identify_nagative_text">
								<i class="icon icon_plus"></i>
								<span class="f12">上传图片</span>
							</div>
							<?php endif; ?>
							<img id="identify_nagative_u" src="<?php echo $this->_var['user_info']['identify_nagative_image']; ?>" <?php if ($this->_var['user_info']['identify_nagative_image']): ?>width="80" height="80"<?php endif; ?> />
							<input type="hidden" name="identify_nagative_image" id="identify_nagative_image" value="<?php echo $this->_var['user_info']['identify_nagative_image']; ?>" rel="num" />
							<input type="button" class="filebox" name="identify_nagative" id="identify_nagative" />
						</div>
			        </label>
			        <div class="fileuploading"></div>
				</li>
				<?php endif; ?>
			</ul>
			<ul class="<?php if ($this->_var['user_info']['is_investor'] != 2): ?>hide<?php endif; ?> mb10" id="qy_div">
				<li class="webkit-box">
					<label class="input_lable">企业名称：</label>
					<input type="text" placeholder="请输入企业名称" id="" value="<?php echo $this->_var['user_info']['identify_business_name']; ?>" class="textbox webkit-box-flex" name="identify_business_name" />
				</li>
				<?php if (app_conf ( 'BUSINESS_LICENCE' )): ?>
				<li class="uploadbox">
					<label class="input_lable">营业执照：</label>
					<div class="blank0"></div>
					<label class="fileupload">
						<div class="pic_show">
							<?php if ($this->_var['user_info']['identify_business_licence'] == ''): ?>
							<div class="text" id="identify_business_licence_text">
								<i class="icon icon_plus"></i>
								<span class="f12">上传图片</span>
							</div>
							<?php endif; ?>
							<img id="identify_business_licence_u" src="<?php echo $this->_var['user_info']['identify_business_licence']; ?>" <?php if ($this->_var['user_info']['identify_business_licence']): ?>width="80" height="80"<?php endif; ?> />
							<input type="hidden" name="identify_business_licence" id="identify_business_licence_image" value="<?php echo $this->_var['user_info']['identify_business_licence']; ?>" rel="num" />
							<input type="button" class="filebox" name="identify_business_licence" id="identify_business_licence" />
						</div>
					</label>
					<div class="fileuploading"></div>
				</li>
				<?php endif; ?>
				<?php if (app_conf ( 'BUSINESS_CODE' )): ?>
				<li class="uploadbox">
					<label class="input_lable">组织机构代码证：</label>
					<div class="blank0"></div>
					<label class="fileupload">
			            <div class="pic_show">
			            	<?php if ($this->_var['user_info']['identify_business_code'] == ''): ?>
							<div class="text" id="identify_business_code_text">
								<i class="icon icon_plus"></i>
								<span class="f12">上传图片</span>
							</div>
							<?php endif; ?>
			                <img id="identify_business_code_u" src="<?php echo $this->_var['user_info']['identify_business_code']; ?>" <?php if ($this->_var['user_info']['identify_business_code']): ?>width="80" height="80"<?php endif; ?> />
			                <input type="hidden" name="identify_business_code" id="identify_business_code_image" value="<?php echo $this->_var['user_info']['identify_business_code']; ?>" rel="num" />
			            	<input type="button" class="filebox" name="identify_business_code" id="identify_business_code" />
			            </div>
			        </label>
			        <div class="fileuploading"></div>
				</li>
				<?php endif; ?>
				<?php if (app_conf ( 'BUSINESS_TAX' )): ?>
				<li class="uploadbox">
					<label class="input_lable">税务登记证：</label>
					<div class="blank0"></div>
					<label class="fileupload">
			            <div class="pic_show">
			            	<?php if ($this->_var['user_info']['identify_business_tax'] == ''): ?>
							<div class="text" id="identify_business_tax_text">
								<i class="icon icon_plus"></i>
								<span class="f12">上传图片</span>
							</div>
							<?php endif; ?>
			                <img id="identify_business_tax_u" src="<?php echo $this->_var['user_info']['identify_business_tax']; ?>" <?php if ($this->_var['user_info']['identify_business_tax']): ?>width="80" height="80"<?php endif; ?> />
			                <input type="hidden" name="identify_business_tax" id="identify_business_tax_image" value="<?php echo $this->_var['user_info']['identify_business_tax']; ?>" rel="num" />
			            	<input type="button" class="filebox" name="identify_business_tax" id="identify_business_tax" />
			            </div>
			        </label>
				</li>
				<?php endif; ?>
			</ul>
			<ul>
				<li class="webkit-box">
					<label class="input_lable">手机号：</label>
					<div class="text webkit-box-flex"><?php 
$k = array (
  'name' => 'hideMobile',
  'v' => $this->_var['user_info']['mobile'],
);
echo $k['name']($k['v']);
?></div>
				</li>
				<li class="last webkit-box">
					<label class="input_lable">验证码：</label>
					<input type="text" placeholder="请输入验证码" value="" name="verify" class="textbox webkit-box-flex mr5" />
					<input type="button" value="获取验证码" class="code_btn bg_red" id="J_send_sms_verify_iden" />
				</li>
			</ul>
			<div class="blank0"></div>
			<div class="submit_btn_row mod_main">
				<div class="ui-button theme_color" rel="green">提交</div>
				<input type="hidden" value="1" name="ajax" />
				<input type="hidden" value="0" name="step" />
			</div>
			<div class="blank15"></div>
		</div>
		<?php endif; ?>
	</form>
	<?php if ($this->_var['user_info']['investor_status'] == 1): ?>
	<div class="ul_block">
		<ul class="mb10">
			<li class="webkit-box">
				<label class="input_lable">类型：</label>
				<span class="webkit-box-flex"><?php if ($this->_var['user_info']['is_investor'] == 0 || $this->_var['user_info']['is_investor'] == 1): ?>个人会员<?php endif; ?><?php if ($this->_var['user_info']['is_investor'] == 2): ?>企业会员<?php endif; ?></span>
			</li>
			<li class="webkit-box">
				<label class="input_lable"><?php if ($this->_var['user_info']['is_investor'] == 0 || $this->_var['user_info']['is_investor'] == 1): ?>个人<?php else: ?>法人<?php endif; ?>身份证姓名：</label>
				<input type="text" id="" value="<?php echo $this->_var['user_info']['identify_name']; ?>" class="textbox webkit-box-flex" name="identify_name" readonly="readonly" />
			</li>
			<li class="webkit-box">
				<label class="input_lable">身份证号码：</label>
				<input type="text" id="" value="<?php echo $this->_var['user_info']['identify_number']; ?>" class="textbox webkit-box-flex" name="identify_number" readonly="readonly" />
			</li>
			<?php if (app_conf ( 'IDENTIFY_POSITIVE' )): ?>
			<li class="img_box webkit-box">
				<label class="input_lable">身份证正面：</label>
				<div class="webkit-box-flex">
					<a href="<?php echo $this->_var['user_info']['identify_positive_image']; ?>">
						<img src="<?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['user_info']['identify_positive_image'],
  'w' => '90',
  'h' => '90',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?>" />
					</a>
				</div>	
			</li>
			<?php endif; ?>
			<?php if (app_conf ( 'IDENTIFY_NAGATIVE' )): ?>
			<li class="img_box webkit-box">
				<label class="input_lable">身份证反面：</label>
				<div class="webkit-box-flex">
					<a href="<?php echo $this->_var['user_info']['identify_nagative_image']; ?>">
						<img src="<?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['user_info']['identify_nagative_image'],
  'w' => '90',
  'h' => '90',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?>" />
					</a>
				</div>
			</li>
			<?php endif; ?>
		</ul>
		<?php if ($this->_var['user_info']['is_investor'] == 2): ?>
		<ul class="mb10">
			<li class="webkit-box">
				<label class="input_lable">企业名称：</label>
				<input type="text" placeholder="请输入企业名称" id="" value="<?php echo $this->_var['user_info']['identify_business_name']; ?>" class="textbox webkit-box-flex" name="identify_business_name" readonly="readonly" />
			</li>
			<?php if (app_conf ( 'BUSINESS_LICENCE' )): ?>
			<li class="img_box webkit-box">
				<label class="input_lable">营业执照：</label>
				<div class="webkit-box-flex">
					<a href="<?php echo $this->_var['user_info']['identify_business_licence']; ?>">
						<img src="<?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['user_info']['identify_business_licence'],
  'w' => '90',
  'h' => '90',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?>" />
					</a>
				</div>
			</li>
			<?php endif; ?>
			<?php if (app_conf ( 'BUSINESS_CODE' )): ?>
			<li class="img_box webkit-box">
				<label class="input_lable">组织机构代码证：</label>
				<div class="webkit-box-flex">
					<a href="<?php echo $this->_var['user_info']['identify_business_code']; ?>">
						<img src="<?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['user_info']['identify_business_code'],
  'w' => '90',
  'h' => '90',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?>" />
					</a>
				</div>
			</li>
			<?php endif; ?>
			<?php if (app_conf ( 'BUSINESS_TAX' )): ?>
			<li class="img_box webkit-box">
				<label class="input_lable">税务登记证：</label>
				<div class="webkit-box-flex">
					<a href="<?php echo $this->_var['user_info']['identify_business_tax']; ?>">
						<img src="<?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['user_info']['identify_business_tax'],
  'w' => '90',
  'h' => '90',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?>" />
					</a>
				</div>
			</li>
			<?php endif; ?>
		</ul>
		<?php endif; ?>
	</div>
	<?php endif; ?>
</section>
<div class="blank15"></div>
<script type="text/javascript">	
	$(function(){
		get_file_fun("identify_positive");
		get_file_fun("identify_nagative");
		get_file_fun("identify_business_licence");
		get_file_fun("identify_business_code");
		get_file_fun("identify_business_tax");
		bind_ajax_form_custom(".ajax_form_identify");
		$("#J_send_sms_verify_iden").bind("click",function(){
			send_mobile_verify_sms_custom(2,'',"#J_send_sms_verify_iden");
		});
		$(".ajax_form_identify").find("input[name='is_investor']").bind('click',function(){
			$("#qy_div").toggle();
			get_file_fun("identify_business_licence");
			get_file_fun("identify_business_code");
			get_file_fun("identify_business_tax");
			if($(this).val()==2){
				$("#identify_name_str").html("法人身份证姓名：");
			}else{
				$("#identify_name_str").html("个人身份证姓名：");
			}
		});
	});
</script>
<?php echo $this->fetch('inc/footer.html'); ?> 