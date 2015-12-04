<?php echo $this->fetch('inc/header_account.html'); ?>
<section class="account_cridit">
	<ul>
		<li class="webkit-box sizing mb10" style="border-top:0;border-bottom:1px solid #e5e5e5;">
			<h1>总积分：<span class="f_red"><?php echo $this->_var['total_score']; ?></span></h1>
		</li>
		<?php $_from = $this->_var['log_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'log_item');if (count($_from)):
    foreach ($_from AS $this->_var['log_item']):
?>
		<li class="webkit-box sizing">
			<div class="accountlist_fl webkit-box-flex mr5 tl">
				<h1><?php echo $this->_var['log_item']['log_info']; ?></h1>
				<span class="f_999">
					<?php 
$k = array (
  'name' => 'to_date',
  'v' => $this->_var['log_item']['log_time'],
);
echo $k['name']($k['v']);
?>
 				</span>
			</div>
			<div class="accountlist_fr tr">
				<h2 class="f_money"><?php echo $this->_var['log_item']['score']; ?></h2>
				<span><em class="f_999">类型:</em><?php if ($this->_var['log_item']['score'] > 0): ?>增加<?php else: ?>减少<?php endif; ?></span>
			</div>
		</li>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	</ul>
	<div class="blank15"></div>
	<div class="pages"><?php echo $this->_var['pages']; ?></div>
	<div class="blank15"></div>
</section>
<?php echo $this->fetch('inc/footer.html'); ?>