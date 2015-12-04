<?php echo $this->fetch('inc/header_account.html'); ?> 
<style type="text/css">
	body{background:#fff;}
</style>
<!-- 中间 开始 -->
<div class="article_index mod_main">
	<article class="fin sizing">
		<div class="article_title">
   	 		<h3 class="finTit"><?php echo $this->_var['article']['title']; ?></h3>
	    	<div class="finInf">
		    	<div class="inf"><?php 
$k = array (
  'name' => 'to_date',
  'v' => $this->_var['article']['update_time'],
  'f' => 'Y-m-d',
);
echo $k['name']($k['v'],$k['f']);
?>&nbsp;&nbsp;<?php 
$k = array (
  'name' => 'app_conf',
  'v' => 'SITE_NAME',
);
echo $k['name']($k['v']);
?></div>
		    </div>
		</div>
	    <div class="article_text">
	    	<div class="para"><?php echo $this->_var['article']['content']; ?></div>
	    </div>
	</article>
</div>
<!-- 中间 结束 -->
<?php echo $this->fetch('inc/footer.html'); ?>