<?php echo $this->fetch('inc/header.html'); ?> 
<?php
$this->_var['dpagecss'][] = $this->_var['TMPL_REAL']."/css/faq.css";
$this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/faq.js";
$this->_var['dcpagejs'][] = $this->_var['TMPL_REAL']."/js/faq.js";
?>
<link rel="stylesheet" type="text/css" href="<?php 
$k = array (
  'name' => 'parse_css',
  'v' => $this->_var['dpagecss'],
);
echo $k['name']($k['v']);
?>" />
<script type="text/javascript" src="<?php 
$k = array (
  'name' => 'parse_script',
  'v' => $this->_var['dpagejs'],
  'c' => $this->_var['dcpagejs'],
);
echo $k['name']($k['v'],$k['c']);
?>"></script>

<div class="blank"></div>
<div class="shadow_bg">
	<div class="wrap white_box"">
		<div class="page_title">
			常见问题
		</div>
		<div class="switch_nav" style="height:1px;"></div>
		
		<div class="faq_box">
			<?php $_from = $this->_var['faq_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'faq_res');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['faq_res']):
?>
				<div class="faq_title"><?php echo $this->_var['key']; ?></div>
				<div class="blank"></div>
				<?php $_from = $this->_var['faq_res']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'faq');if (count($_from)):
    foreach ($_from AS $this->_var['faq']):
?>
				<div class="faq_question" rel="<?php echo $this->_var['faq']['id']; ?>"> - <?php echo $this->_var['faq']['question']; ?></div>
				<div class="faq_answer" rel="<?php echo $this->_var['faq']['id']; ?>"><?php 
$k = array (
  'name' => 'nl2br',
  'v' => $this->_var['faq']['answer'],
);
echo $k['name']($k['v']);
?></div>
				<div class="blank"></div>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</div>
		
		<div class="blank"></div>
		
	</div>
</div>
<div class="blank"></div>
<?php echo $this->fetch('inc/footer.html'); ?> 