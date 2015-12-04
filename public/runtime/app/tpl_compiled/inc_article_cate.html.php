<style>
	.c77{height: 47px;border-bottom: solid 1px #ebebeb;margin-top: 9px;overflow: hidden;}
	.c77 h2 {margin-top: 18px;}
	.l1 {width: 690px;float: left;}
	.l1 .c1 {overflow: hidden;border-bottom: solid 1px #ccc;padding: 10px 0;}
	.l1 .c1 dd.c3 {width: 100%;font-size: 12px;color: #999;height: 30px;line-height: 30px;}
	.l1 .c1 dt, .l1 .c1 dd {width: 550px;float: left;overflow: hidden;}
	.l1 .c1 dd.c3 .c32 {float: left;}
	.c31 {margin-left: 55px;display: none;float: left;}
	.l1 .c1 dd.c3 {font-size: 12px;color: #999;line-height: 30px;}
	.l1 .c1:hover dd.c3 .c31, .l1 .c1:hover dd.c3 .c33 {display: block;}
	.l1 .c1 dd.c3 .c33 {float: right;display: none;}
	.l1 .c1 dt {line-height: 27px;}
	.l1 .c1 dt a {color: #000;font-size: 24px;}
	.l1 .c1 dt, .l1 .c1 dd {width: 550px;float: left;overflow: hidden;}
	a {text-decoration: none;outline: none;}
	a:hover{text-decoration: none;outline: none; color:#9c0;}
	.l1 .c1 dd.c4 {font-size: 13px;color: #333;line-height: 23px;}
	.l1 .c1 dd.c5 {font-size: 12px;color: #999;line-height: 18px;clear: both;}
	.content .l2 {margin-bottom: 20px;}
	.l2 {width: 240px;float: right;}
	.c78 {position: relative;}
	.c77 {height: 47px;border-bottom: solid 1px #ebebeb;margin-top: 9px;overflow: hidden;}
	.c78 h2 {-7px -118px;}
	.c78 .button {position: absolute;top: 10px;right: 0px;}
	.button-green {background-position: left -490px;}
	.button-green button, .button-green a {background-position: right -140px;}
	.button button, .button a {color: white !important;font-size: 14px;padding: 0 18px 0 15px;margin-left: 5px;line-height: 30px;}
	.l2 ul li {overflow: hidden;border-bottom: solid 1px #ebebeb;line-height: 19px;padding: 10px 0;}
</style>


		<div class="l1">
			<div class="c77"><h2>最新智能头条</h2></div>
		<?php $_from = $this->_var['artilce_cate']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'article');if (count($_from)):
    foreach ($_from AS $this->_var['article']):
?>	
			<dl class="c1">
				<dd class="c3">
					<p class="c32"><?php echo $this->_var['article']['titles']; ?>/</p>
					<span class="c31">
						<a ><?php echo $this->_var['article']['seo_keyword']; ?></a> 
					</span>
					<p class="c33"><span></span></p></dd>
					<dt>
						<a href="<?php echo $this->_var['article']['url']; ?>" ><?php echo $this->_var['article']['title']; ?></a>
					</dt>
					<dd class="c4">
						<a href="<?php echo $this->_var['article']['url']; ?>" ><?php echo $this->_var['article']['content']; ?></a>
					</dd>
				</dd>
			</dl>      
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
		</div>
		<div class="l2">
			<div class="c77 c78">
				<h2><?php echo $this->_var['title_z']; ?></h2>
			</div>
			<ul>
				<?php $_from = $this->_var['hot_1']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k1', 'article_1');$this->_foreach['hot_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['hot_list']['total'] > 0):
    foreach ($_from AS $this->_var['k1'] => $this->_var['article_1']):
        $this->_foreach['hot_list']['iteration']++;
?> 
						<li><a href="<?php echo $this->_var['article_1']['url']; ?>" ><?php echo $this->_var['article_1']['title']; ?></a></li>
		        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			<div class="c77 c79"><h2><?php echo $this->_var['title_r']; ?></h2></div>
			<ul>
				<?php $_from = $this->_var['hot_2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k1', 'article_2');$this->_foreach['hot_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['hot_list']['total'] > 0):
    foreach ($_from AS $this->_var['k1'] => $this->_var['article_2']):
        $this->_foreach['hot_list']['iteration']++;
?>  
						<li><a href="<?php echo $this->_var['article_2']['url']; ?>" ><?php echo $this->_var['article_2']['title']; ?></a></li>
		        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			
		</div>

     

