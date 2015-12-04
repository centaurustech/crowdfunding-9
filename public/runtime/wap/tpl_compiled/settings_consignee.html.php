<?php echo $this->fetch('inc/header_account.html'); ?>
<style>
body{background:#f4f4f4;}
</style>
<section class="settings_consignee mod_main">
    <div class="editAddress">
        <form>
            <ul>
            	<?php $_from = $this->_var['consignee_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
                <li onclick="selectadd(this);window.location.href='<?php
echo parse_url_tag_wap("u:settings#add_consignee|"."id=".$this->_var['item']['id']."".""); 
?>';">
                    <div class="mainlist webkit-box">
                        <label class="input_lable">收货人：</label>
                        <div class="r_list"><?php echo $this->_var['item']['consignee']; ?></div>
                    </div>
                    <div class="mainlist webkit-box">
                        <label class="input_lable">手机号：</label>
                        <div class="r_list"><?php echo $this->_var['item']['mobile']; ?></div>
                    </div>
                    <div class="mainlist webkit-box">
                        <label class="input_lable">收货地址：</label>
                        <div class="r_list"><?php echo $this->_var['item']['address']; ?></div>
                    </div>
                    <input class="edit_select" type="radio" value="tenpaywap" name="paypath">
                </li>
        	   <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    	    </ul>
            <div class="blank15"></div>
            <div class="submit_row webkit-box">
                <a href="<?php
echo parse_url_tag_wap("u:settings#add_consignee|"."".""); 
?>" class="ui-button theme_color"><i class="fa fa-plus"></i>&nbsp;添加新地址</a>
            </div>
            <div class="blank15"></div>
        </form>
    </div>
</section>
<?php echo $this->fetch('inc/footer.html'); ?>