<?php echo $this->fetch('inc/header.html'); ?> 
<?php
$this->_var['dpagecss'][] = $this->_var['TMPL_REAL']."/css/index.css";
$this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/index.js";
$this->_var['dcpagejs'][] = $this->_var['TMPL_REAL']."/js/index.js";
$this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/discover.js";
$this->_var['dcpagejs'][] = $this->_var['TMPL_REAL']."/js/discover.js";
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
<div class="wrap">
	
	<div id="index_images" class="index_images">		
			<div class="roll_box">
			<?php $_from = $this->_var['image_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'image_item');if (count($_from)):
    foreach ($_from AS $this->_var['image_item']):
?>
			<a href="<?php echo $this->_var['image_item']['url']; ?>" title="<?php echo $this->_var['image_item']['title']; ?>">
				<img src="<?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['image_item']['image'],
  'w' => '960',
  'h' => '280',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?>"  alt="<?php echo $this->_var['image_item']['title']; ?>" />
			</a>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</div>			
	</div>
	<div class="ui-deals-filter clearfix">
		<div class="ui-deals-filter-item clearfix">
			<div class="ui-deals-filter-l f_l">
				属性：
			</div>
			<div class="ui-deals-filter-r f_r">
				<ul>
					<li <?php if ($this->_var['p_r'] == ''): ?> class="current"<?php endif; ?>><a href="<?php
echo parse_url_tag("u:deals|"."".""); 
?>">所有项目</a></li>
					<li <?php if ($this->_var['p_r'] == 'rec'): ?> class="current"<?php endif; ?>><a href="<?php
echo parse_url_tag("u:deals|"."r=rec".""); 
?>">推荐项目</a></li>
                                        <li <?php if ($this->_var['p_r'] == 'yure'): ?> class="current"<?php endif; ?>><a href="<?php
echo parse_url_tag("u:deals|"."r=yure".""); 
?>">正在预热</a></li>
					<li <?php if ($this->_var['p_r'] == 'new'): ?> class="current"<?php endif; ?>><a href="<?php
echo parse_url_tag("u:deals|"."r=new".""); 
?>">最新上线</a></li>
					<li <?php if ($this->_var['p_r'] == 'nend'): ?> class="current"<?php endif; ?>><a href="<?php
echo parse_url_tag("u:deals|"."r=nend".""); 
?>">即将结束</a></li>
					<li <?php if ($this->_var['p_r'] == 'classic'): ?> class="current"<?php endif; ?>><a href="<?php
echo parse_url_tag("u:deals|"."r=classic".""); 
?>">经典项目</a></li>
				</ul>
			</div>
		</div>
		<div class="ui-deals-filter-item clearfix">
			<div class="ui-deals-filter-l f_l">
				分类：
			</div>
			<div class="ui-deals-filter-r f_r">
				<ul>
					<?php $_from = $this->_var['cate_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cate_item');if (count($_from)):
    foreach ($_from AS $this->_var['cate_item']):
?>
					<li <?php if ($this->_var['pid'] == $this->_var['cate_item']['id']): ?>class="current"<?php endif; ?>>
						<?php if ($this->_var['cate_item']['pid'] == 0): ?>
						<a href="<?php echo $this->_var['cate_item']['url']; ?>" title="<?php echo $this->_var['cate_item']['name']; ?>"><?php echo $this->_var['cate_item']['name']; ?></a>
						<?php endif; ?>
					</li>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
				</ul>
			</div>
			<div class="ui-deals-filter-r f_r">
				<ul>
					<?php $_from = $this->_var['child_cate_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child_cate_item');if (count($_from)):
    foreach ($_from AS $this->_var['child_cate_item']):
?>
					<li <?php if ($this->_var['p_id'] == $this->_var['child_cate_item']['id']): ?>class="current"<?php endif; ?>>
						<a href="<?php echo $this->_var['child_cate_item']['url']; ?>" title="<?php echo $this->_var['child_cate_item']['name']; ?>"><?php echo $this->_var['child_cate_item']['name']; ?></a>
					</li>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
				</ul>
			</div>
		</div>
         <div class="ui-deals-filter-item clearfix">
			<div class="ui-deals-filter-l f_l">
				地区：
			</div>
			<div class="ui-deals-filter-r f_r">
				<ul>
					<?php $_from = $this->_var['city_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'city_item');if (count($_from)):
    foreach ($_from AS $this->_var['city_item']):
?>
						<li <?php if ($this->_var['p_loc'] == $this->_var['city_item']['province']): ?>class="current"<?php endif; ?>><a href="<?php echo $this->_var['city_item']['url']; ?>" title="<?php echo $this->_var['city_item']['province']; ?>"><?php echo $this->_var['city_item']['province']; ?></a></li>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
				</ul>
			</div>
		</div>
		<div class="ui-deals-filter-item clearfix">
			<div class="ui-deals-filter-l f_l">
				状态：
			</div>
			<div class="ui-deals-filter-r f_r">
				<ul>
					<?php $_from = $this->_var['state_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'state_item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['state_item']):
?>
						<li <?php if ($this->_var['p_state'] == $this->_var['key']): ?>class="current"<?php endif; ?>><a href="<?php echo $this->_var['state_item']['url']; ?>" title="<?php echo $this->_var['state_item']['name']; ?>"><?php echo $this->_var['state_item']['name']; ?></a></li>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>	
				
				</ul>
			</div>
		</div>
	</div>
	<div class="blank"></div>
	<div class="blank"></div>
	<div class="blank"></div>
	<div id="pin_box">
	<?php echo $this->fetch('inc/deal_list.html'); ?>
	</div>	
	<div class="blank"></div>
	<div id="pin_loading" rel="<?php
echo parse_url_tag("u:ajax#deals|"."r=".$this->_var['p_r']."&id=".$this->_var['p_id']."&loc=".$this->_var['p_loc']."&tag=".$this->_var['p_tag']."&k=".$this->_var['p_k']."&p=".$this->_var['current_page']."".""); 
?>">正在努力加载</div>	
	<div class="pages"><?php echo $this->_var['pages']; ?></div>
</div>
<?php echo $this->fetch('inc/footer.html'); ?> 