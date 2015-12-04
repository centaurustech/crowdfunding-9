<div class="deal_info">
	<div class="timeline-box" id="post_27">
		<div class="log_auth_row">
			<div class="log_user_info">
				<div class="deal_user_name" style="line-height:25px;">
					<a href="<?php echo $this->_var['deal_index_url']; ?>"><?php echo $this->_var['deal_info']['name']; ?></a>
				</div>
				<div class="clear"></div>
				<span class="f_l" style="font-size:12px;">发起人：</span>	
				<a class="f_l" style="font-size:12px;"><?php echo $this->_var['deal_info']['user_name']; ?>&nbsp;&nbsp;&nbsp;</a>
				<span class="f_l" style="font-size:12px;" >地区：<?php echo $this->_var['deal_info']['province']; ?>&nbsp;<?php echo $this->_var['deal_info']['city']; ?>&nbsp;&nbsp;&nbsp;</span>
				<span class="f_l" style="font-size:12px;" >分类：<?php echo $this->_var['deal_info']['deal_type']; ?>&nbsp;&nbsp;&nbsp;</span>
				<span class="send_message f_l" style="margin-left:5px; height:20px; background-position:0px 5px;"></span>				
			</div>
			<span class="f_r" style="padding-top:15px;"></span>
			<div class="clear"></div>
		</div>
		<div class="blank10"></div>
		<div style="padding-top:8px;"></div>
		<?php if ($this->_var['deal_info']['image'] != ''): ?>
		<img src="<?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['deal_info']['image'],
  'w' => '400',
  'h' => '262',
);
echo $k['name']($k['v'],$k['w'],$k['h']);
?>" alt="<?php echo $this->_var['deal_info']['name']; ?>" />
		<?php endif; ?>
		<div class="clear"></div>
		<span>项目介绍：</span>
		<p><?php echo $this->_var['deal_info']['description']; ?></p>
		<div class="blank10"></div>
		<!--尾部start-->
		<div id="post_27_comment">
			<div class="timeline-comment">如果您对项目有疑问，可以在此向项目发起人咨询<a class="theme_fcolor f_r"  onclick="javascript:send_message('<?php echo $this->_var['usermessage_url']; ?>');">对发起人提问</a>
			</div>
		</div>
		<!--尾部end-->	
	</div>
</div>