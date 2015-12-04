<?php echo $this->fetch('inc/header.html'); ?>
<style>
	.db{
		z-index: 1;
		position: relative;
		margin: 0px auto 0px;
		width: 960px;
		overflow: hidden;
		padding: 20px;
		padding-top:10px;
		background-color: #f8f8f8;
	}
</style>
<div class="db" >
	<div>
		<?php echo $this->fetch('inc/inc_article_cate.html'); ?>
	    <div class="page">
	    	<?php echo $this->_var['pages']; ?>
    	</div>
	</div>
</div>
<div class="blank"></div>
<?php echo $this->fetch('inc/footer.html'); ?>