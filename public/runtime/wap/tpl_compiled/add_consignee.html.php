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
<style>
body{background:#f4f4f4;}
</style>
<!--中间部分-->
<div class="blank15"></div>
<section class="add_consignee">
    <form id="add_consignee_form" action="<?php
echo parse_url_tag_wap("u:settings#save_consignee|"."".""); 
?>">
    <div class="ul_block">
        <ul>
            <li class="webkit-box">
                <label class="input_lable">收货人</label>
                <input type="text" placeholder="请输入收货人姓名" name="consignee" value="<?php echo $this->_var['consignee_info']['consignee']; ?>" class="textbox webkit-box-flex" />
            </li>
            <li class="webkit-box">
                <label class="input_lable mr10">地区</label>
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
            </li>
            <li class="textarea webkit-box">
                <label class="input_lable">详细地址</label>
                <textarea placeholder="请输入详细地址" rows=1 cols=40 style='min-height:50px;height:50px;overflow:scroll;overflow-y:auto;;overflow-x:hidden' onfocus="window.activeobj=this;this.clock=setInterval(function(){activeobj.style.height=activeobj.scrollHeight+'px';},200);" onblur="clearInterval(this.clock);" name="address" class="ml10 webkit-box-flex"><?php echo $this->_var['consignee_info']['address']; ?></textarea>
            </li>
            <li class="webkit-box">
                <label class="input_lable">邮编</label>
                <input type="text" placeholder="请输入邮编" name="zip" value="<?php echo $this->_var['consignee_info']['zip']; ?>" class="textbox">
            </li>
            <li class="webkit-box">
                <label class="input_lable">手机号</label>
                <input type="text" placeholder="请输入手机号" name="mobile" value="<?php echo $this->_var['consignee_info']['mobile']; ?>" class="textbox">
            </li>
        </ul>
    </div>
    <div class="submit_row <?php if ($this->_var['consignee_info']['id']): ?>two_btn<?php endif; ?> webkit-box mod_main">
    	<input type="hidden" value="1" name="ajax">
		<input type="hidden" value="<?php echo $this->_var['deal_item_id']; ?>" name="deal_item_id">
		<input type="hidden" value="<?php echo $this->_var['consignee_info']['id']; ?>" name="id">
        <input type="button" rel="finish" class="ui-button theme_color <?php if ($this->_var['consignee_info']['id']): ?>ui_button_l<?php endif; ?>" value="<?php if ($this->_var['consignee_info']['id']): ?>修改<?php else: ?>完成<?php endif; ?>">
        <?php if ($this->_var['consignee_info']['id']): ?>
        <input type="button" rel="remove" id="remove_but" class="ui_button bg_red finish" value="删除" />
        <?php endif; ?>
    </div>
    </form>
</section>
<div class="blank15"></div>
<?php if ($this->_var['consignee_info']['id']): ?>
<script type="text/javascript">
    var del_url="<?php
echo parse_url_tag_wap("u:settings#del_consignee|"."".""); 
?>";
	<?php if ($this->_var['consignee_info']['id']): ?>
	var consignee_id=<?php echo $this->_var['consignee_info']['id']; ?>;
	<?php else: ?>
	var consignee_id=0;
	<?php endif; ?>
    
    bind_del_consignee(consignee_id,del_url);
</script>
<?php endif; ?>
<script type="text/javascript">
    $("#add_consignee_form").find(".ui-button").bind("click",function(){
        if($("input[name='consignee']").val()==""){
            $.show_tip("请填写收货人姓名");
            return false;
        }
        if($("select[name='province'] option:selected").val()==""){
            $.show_tip("请选择省份");
            return false;
        }
        if($("select[name='city'] option:selected").val()==""){
            $.show_tip("请选择城市");
            return false;
        }
        if($("textarea[name='address']").val()==""){
            $.show_tip("请填写详细地址");
            return false;
        }
        if($("input[name='zip']").val()==""){
            $.show_tip("请填写邮编");
            return false;
        }
        if($("input[name='mobile']").val()==""){
            $.show_tip("请填写收货人手机号码");
            return false;
        }
        ajax_form("#add_consignee_form");
    });
</script>
<?php echo $this->fetch('inc/footer.html'); ?>
