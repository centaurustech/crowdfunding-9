<?php echo $this->fetch('inc/header.html'); ?> 

<div class="blank"></div>
<div class="shadow_bg">
	<div class="wrap white_box"">
		<div class="page_title">
			<?php echo $this->_var['help_item']['title']; ?>
		</div>
		<div class="switch_nav" style="height:1px;"></div>
		
		<div class="help_item_box">
			<?php echo $this->_var['help_item']['content']; ?>
		</div>
		
		<div class="blank"></div>
		
	</div>
</div>
<div class="blank"></div>
<?php echo $this->fetch('inc/footer.html'); ?> 