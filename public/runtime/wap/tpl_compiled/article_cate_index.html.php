<?php echo $this->fetch('inc/header.html'); ?> 
<!-- 中间 开始 -->
<div class="article_cate_index">
	<!-- 新闻分类 开始 -->
	<nav class="site" id="article_cate">
		<?php $_from = $this->_var['cates_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'cates_list_item');$this->_foreach['article_cate'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['article_cate']['total'] > 0):
    foreach ($_from AS $this->_var['key'] => $this->_var['cates_list_item']):
        $this->_foreach['article_cate']['iteration']++;
?>
			<?php if (($this->_foreach['article_cate']['iteration'] - 1) < 5): ?>
				<a href="<?php echo $this->_var['cates_list_item']['url']; ?>" <?php if ($this->_var['cates_list_item']['status'] != null): ?>class="cur"<?php endif; ?>><?php echo $this->_var['cates_list_item']['title']; ?></a>
			<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	</nav>
	<!-- 新闻分类 结束 -->
	<div class="clear"></div>
	<div class="mod_main" style="padding-top:0">
		<!-- 文章列表 开始 -->
		<section class="ls">
			<?php $_from = $this->_var['artilce_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'article_item');if (count($_from)):
    foreach ($_from AS $this->_var['article_item']):
?>
				<div class="it">    
		        	<a href="<?php echo $this->_var['article_item']['url']; ?>" class="h4 h4Spot">
		        		<div class="des">
		        			<h4 class="ttl"><?php echo $this->_var['article_item']['title']; ?></h4>
		        			<time class="muted"><?php 
$k = array (
  'name' => 'to_date',
  'v' => $this->_var['article_item']['update_time'],
);
echo $k['name']($k['v']);
?></time>
		        		</div>
		        	</a>
		        </div>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</section>
		<!-- 文章列表 结束 -->	
		<div class="blank15"></div>
		<div class="pages">
			<?php echo $this->_var['pages']; ?>
		</div>
		<div class="blank15"></div>
	</div>
</div>	
<!-- 中间 结束 $(this).addClass("cur");-->
<?php echo $this->fetch('inc/footer.html'); ?>