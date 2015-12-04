<div id="gotop"></div>
<div class="blank"></div>
<div class="footer">
	<div class="wrap">
           <h2>友情链接</h2>
		<div class="help_row">
                    
                       <div class="link_">
                            <?php if ($this->_var['g_links'] != ''): ?>
                             <div class="zhanshi">
                                 
                                 <ul class="g_link">
                                        <?php $_from = $this->_var['g_links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'g_links_0_27888900_1449041051');if (count($_from)):
    foreach ($_from AS $this->_var['k'] => $this->_var['g_links_0_27888900_1449041051']):
?>
                                            <li class="g_link_li">
                                                <a href="<?php echo $this->_var['g_links_0_27888900_1449041051']['url']; ?>"  target="_blank"><img src="<?php echo $this->_var['g_links_0_27888900_1449041051']['img']; ?>" /></a>
                                            </li>
                                        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>    
                                  </ul>
                                   <div class="blank" style="height:0px;"></div>
                           </div>
                             <?php else: ?>
                            
                             <?php endif; ?>
                        </div>
			<a href="<?php
echo parse_url_tag("u:faq|"."".""); 
?>" title="常见问题">常见问题</a>
			<?php $_from = $this->_var['helps']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'help');if (count($_from)):
    foreach ($_from AS $this->_var['help']):
?>
			 &nbsp;&nbsp;|&nbsp;&nbsp;<a href="<?php echo $this->_var['help']['url']; ?>" title="<?php echo $this->_var['help']['title']; ?>"><?php echo $this->_var['help']['title']; ?></a>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</div>
		<div class="license">
			<?php 
$k = array (
  'name' => 'app_conf',
  'v' => 'SITE_LICENSE',
);
echo $k['name']($k['v']);
?><?php 
$k = array (
  'name' => 'app_conf',
  'v' => 'STATE_CDOE',
);
echo $k['name']($k['v']);
?>
		</div>
	</div>
</div>
