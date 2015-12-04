<?php echo $this->fetch('inc/header_account.html'); ?>
<?php
$this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/switch_city.js";
$this->_var['dcpagejs'][] = $this->_var['TMPL_REAL']."/js/switch_city.js";
?>
<script type="text/javascript" src="<?php 
$k = array (
  'name' => 'parse_script',
  'v' => $this->_var['dpagejs'],
  'c' => $this->_var['dcpagejs'],
);
echo $k['name']($k['v'],$k['c']);
?>"></script>
<script type="text/javascript">
    var ROOT = '<?php echo $this->_var['APP_ROOT']; ?>/m.php';
    var VAR_MODULE = "m";
    var VAR_ACTION = "a";
    var WEB_SESSION_ID = '<?php echo es_session::id(); ?>';
    var EMOT_URL = '<?php echo $this->_var['APP_ROOT']; ?>/public/emoticons/';
    var MAX_FILE_SIZE = "<?php echo (app_conf("MAX_IMAGE_SIZE")/1000000)."MB"; ?>";
    var UPLOAD_URL ='<?php echo $this->_var['APP_ROOT']; ?>/wap/index.php?ctl=avatar&act=upload&uid=<?php echo $this->_var['user_info']['id']; ?>';
	var UPLOAD_SWF='<?php echo $this->_var['TMPL']; ?>/js/plupload/Moxie.swf';
	var UPLOAD_XAP='<?php echo $this->_var['TMPL']; ?>/js/plupload/Moxie.xap';
	var ALLOW_IMAGE_EXT= "gif,jpg,jpeg,png,bmp";
	var MAX_IMAGE_SIZE= "<?php echo (app_conf("MAX_IMAGE_SIZE")/1000000)."MB"; ?>";
	
	function get_file_fun(name){
    		$("#"+name).ui_upload({multi:false,
		FileUploaded:function(ajaxobj){
 				if(ajaxobj.error==1)
				{
					$.show_tip(ajaxobj.info);
				}else{
					$("#avatar").attr("src",ajaxobj.middle_url+"?r="+Math.random());
					$("#"+name+"_u").val(ajaxobj.public_url);
 				}
			},Error:function(error){
			$.show_tip(error.message);
 		}});
	}
</script>
<section class="settings_modify">
	<form id="user_register_form" class="ajax_form" action="<?php
echo parse_url_tag_wap("u:settings#save_modify|"."".""); 
?>"  method="post">
		<div class="ul_block">
			<ul>
				<li class="u_img webkit-box">
					<label class="input_lable mr10">头像</label>
					<div class="list_con webkit-box-flex" style="padding:10px 0;">
						<a>
							<div class="user_pic">
			                    <img id="avatar" src="<?php 
$k = array (
  'name' => 'get_user_avatar',
  'uid' => $this->_var['user_info']['id'],
  'type' => 'middle',
);
echo $k['name']($k['uid'],$k['type']);
?>" width="100%">
				                <input type="hidden" name="avatar_file_u" id="avatar_file_u" value="<?php echo $this->_var['user_info']['identify_business_tax']; ?>" rel="num" />
				            	<input type="button" class="filebox" name="avatar_file" id="avatar_file" />
				            	<div class="fileuploading"></div>
			                </div>
							<div class="go_see" style="top: 34px;"><i class="fa fa-chevron-right"></i></div>
						</a>
					</div>
				</li>
				<li class="webkit-box">
					<label class="input_lable mr10">账号</label>
					<input type="text" class="textbox webkit-box-flex" value="<?php echo $this->_var['user_info']['user_name']; ?>" readonly="readonly"/>
				</li>
				<li class="webkit-box">
					<label class="input_lable mr10">邮箱</label>
					<?php if ($this->_var['user_info']['email']): ?>
					<input type="text" value="<?php echo $this->_var['user_info']['email']; ?>" class="textbox webkit-box-flex" readonly="readonly" />
					<a href="<?php
echo parse_url_tag_wap("u:settings#security|"."method=setting-email-box".""); 
?>">修改</a>
					<?php else: ?>
					<div class="textbox webkit-box-flex">
						邮箱未绑定，点击&nbsp;<a href="<?php
echo parse_url_tag_wap("u:settings#security|"."method=setting-email-box".""); 
?>" class="f_red" style="text-decoration:underline">去绑定</a>
					</div>
					<?php endif; ?>
				</li>
				<li class="webkit-box">
					<label class="input_lable mr10">性别</label>
					<div class="cate_name_list webkit-box-flex">
						<label>
							<input type="radio" name="sex" value="1" <?php if ($this->_var['user_info']['sex'] == 1): ?>checked="checked"<?php endif; ?> class="mt mr5" />男
						</label>
						<label>
							<input type="radio" name="sex" value="0" <?php if ($this->_var['user_info']['sex'] == 0): ?>checked="checked"<?php endif; ?> class="mt mr5" />女
						</label>
						<label>
							<input type="radio" name="sex" value="-1" <?php if ($this->_var['user_info']['sex'] == - 1): ?>checked="checked"<?php endif; ?> class="mt mr5" />未知
						</label>
					</div>
					<div class="blank"></div>
				</li>
				<li class="webkit-box">
					<label class="input_lable mr10">省市</label>
					<div class="list_con webkit-box-flex">
					  	<div class="select_mod"> 
						  	<select name="province" id="province" class="f_select">               
			                    <option value="" rel="0">请选择省份</option>          
			                    <?php $_from = $this->_var['region_lv2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'region');if (count($_from)):
    foreach ($_from AS $this->_var['region']):
?>
			                    <option value="<?php echo $this->_var['region']['name']; ?>" rel="<?php echo $this->_var['region']['id']; ?>" <?php if ($this->_var['region']['selected']): ?>selected="selected"<?php endif; ?>><?php echo $this->_var['region']['name']; ?></option>
			                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		                  	</select>
					  	</div>
					  	<div class="select_mod"> 
						  	<select name="city" id="city" class="f_select">             
			                   	<option value="" rel="0">请选择城市</option>
			                    <?php $_from = $this->_var['region_lv3']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'region');if (count($_from)):
    foreach ($_from AS $this->_var['region']):
?>
			                    <option value="<?php echo $this->_var['region']['name']; ?>" rel="<?php echo $this->_var['region']['id']; ?>" <?php if ($this->_var['region']['selected']): ?>selected="selected"<?php endif; ?>><?php echo $this->_var['region']['name']; ?></option>
			                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		                  	</select>
					  	</div>
					</div>
					<div class="blank"></div>
				</li>
				<li class="webkit-box">
					<label class="input_lable mr10">所在公司</label>
					<input type="textbox webkit-box-flex" value="<?php echo $this->_var['user_info']['company']; ?>" class="textbox" name="company" />
				</li>
				<li class="webkit-box">
					<label class="input_lable mr10">所在职位</label>
					<input type="textbox webkit-box-flex" value="<?php echo $this->_var['user_info']['job']; ?>" class="textbox" id="job" name="job" />
				</li>
				<li class="textarea webkit-box">
					<label class="input_lable mr10" style="line-height:1;text-align:left">
						<div class="pt5">
							投资领域<br /><span class="f_999 f12" style="font-weight:normal">(最多选择3个)</span>
						</div>
					</label>
					<div class="cate_name_list webkit-box-flex" id="cate_name_list">
						<?php $_from = $this->_var['deal_cate']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates_item');$this->_foreach['key'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['key']['total'] > 0):
    foreach ($_from AS $this->_var['cates_item']):
        $this->_foreach['key']['iteration']++;
?>
	                    <label class="cate_name_label">
	                        <input class="mt mr5" type="checkbox" name="cates[<?php echo $this->_var['cates_item']['id']; ?>]" id="pc" value="<?php echo $this->_var['cates_item']['name']; ?>" <?php if ($this->_var['user_info']['cate_name'] [ $this->_var['cates_item']['id'] ]): ?>checked="checked"<?php endif; ?> rel="cate_name" /><?php echo $this->_var['cates_item']['name']; ?>
	                    </label>
	                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	                </div>
				</li>
				<li class="textarea webkit-box">
					<label class="input_lable">简介</label>
					<textarea placeholder="这里可以输入大约300字的自我介绍，让大家多了解你" id="intro" name="intro" class="textbox webkit-box-flex ml10"><?php echo $this->_var['user_info']['intro']; ?></textarea>
				</li>
				<li class="webkit-box">
					<label class="input_lable">微博</label>
					<input id="weibo_url" type="text"  name="weibo_url[]" value="<?php echo $this->_var['weibo_list']['0']['weibo_url']; ?>" class="textbox webkit-box-flex" placeholder="输入微博地址"/>
				</li>
				<li class="webkit-box">
				<label class="input_lable">手机号</label>
				<?php if ($this->_var['user_info']['mobile']): ?>
				<input type="text" value="<?php echo $this->_var['user_info']['mobile']; ?>" class="textbox" <?php if ($this->_var['user_info']['mobile']): ?>readonly="readonly"<?php endif; ?> />
				<?php else: ?>
				<div class="ml10 text webkit-box-flex">
					未绑定手机，点击&nbsp;<a href="<?php
echo parse_url_tag_wap("u:settings#security|"."method=setting-mobile-box".""); 
?>" class="f_red" style="text-decoration:underline">去绑定</a>
				</div>
				<?php endif; ?>
				</li>
				
			</ul>
		</div>
		<div class="submit_row mod_main">
			<input class="ui-button theme_color" type="submit" value="确认修改"/>
			<input type="hidden" value="wap" name="from" />	
			<input type="hidden" value="1" name="ajax" />	
		</div>
	</form>
</section>
<div class="blank15"></div>
<script type="text/javascript">
	get_file_fun("avatar_file");
</script>
<script type="text/javascript">
	(function(){
		var cate_name_list=$("#cate_name_list");
		var cate_name=cate_name_list.find("input[rel='cate_name']");
		var notChecked = cate_name_list.find("input[rel='cate_name']").not("input:checked");
		var isChecked = cate_name_list.find("input[rel='cate_name']:checked");
		cate_name.bind('click',function(){
			check();
		});
	  	if(isChecked.length>=3){
	  		for(var i=0; i<notChecked.length; i++){
				notChecked[i].disabled=true;
			}
	  	}
		function disableCheckBox(){ 
			for(var i=0; i<cate_name.length; i++){
				if(!cate_name[i].checked) 
				cate_name[i].disabled=true;
			}
		}
		function ableCheckBox(){
		    for(var i=0; i<cate_name.length; i++)
		    cate_name[i].disabled = false;
		}

		function check(){
		    var sun=0;
		    for(var i=0; i<cate_name.length; i++){
		        if(cate_name[i].type=="checkbox" && cate_name[i].checked)
		        	sun++;
		        if(sun<3) {
		            ableCheckBox();
		            //break; 
		        } else if (sun==3) {
		            disableCheckBox();
		           	event.srcElement.checked = true;
		            break;
		        } else if (sun>3) {
		            event.srcElement.checked = false;
		            break;
		        }
		    }
		}
	})();
</script>
<?php echo $this->fetch('inc/footer.html'); ?>