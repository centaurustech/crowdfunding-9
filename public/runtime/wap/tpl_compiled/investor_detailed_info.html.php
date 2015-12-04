<div class="detailed_info sizing">
	<div class="text webkit-box">
		<div class="l mr10">
			<?php 
$k = array (
  'name' => 'show_avatar',
  'p' => $this->_var['investor_info']['id'],
  't' => 'middle',
);
echo $k['name']($k['p'],$k['t']);
?>
		</div>
		<div class="r webkit-box-flex">
			<div class="title">
	    		<span class="f16"><?php echo $this->_var['investor_info']['user_name']; ?></span>
			</div>
			<div class="blank5"></div>
	        <div class="conment">
	        	<?php if ($this->_var['invester_item']['province']): ?>
				<div>
					<span class="v_aut"><i class="fa fa-map-marker mr5"></i><?php echo $this->_var['investor_info']['province']; ?><?php echo $this->_var['investor_info']['city']; ?></span>
				</div>
				<?php endif; ?>
				<div class="clear"></div>
				<div>
					<a href="javascript:void(0);" onclick="send_message(<?php echo $this->_var['investor_info']['id']; ?>)" class="btn_send theme_fcolor f14 b_radius3"><i class="fa fa-envelope mr5"></i>发私信</a>
				</div>
			</div>
		</div>
	</div>
	<div class="leader_info_bd">
		<div class="title theme_fcolor"><span class="fa_box theme_color mr5"><i class="fa fa-pencil"></i></span>详细资料</div>
		<div class="blank0"></div>
		<div class="conment f12 f_666"><?php echo $this->_var['investor_info']['intro']; ?></div>
	</div>
</div>