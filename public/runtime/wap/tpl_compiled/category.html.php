<?php echo $this->fetch('inc/header_account.html'); ?>
<style type="text/css">
</style>
<div class="category-con selectbj" id="categoryList">
  	<div class="tav_nav webkit-box" id="top_search_hd">
        <?php if (app_conf ( "INVEST_STATUS" ) == 0): ?> 
        <a href="javascript:void(0);" livalue="0" class="search_cate search_cate_l webkit-box-flex cur" checked="checked">产品众筹</a>
        <a href="javascript:void(0);" livalue="1" class="search_cate search_cate_r webkit-box-flex">股权众筹</a>
        <?php endif; ?>
        <?php if (app_conf ( "INVEST_STATUS" ) == 1): ?>
        <a href="javascript:void(0);" livalue="0" class="search_cate search_cate_all webkit-box-flex cur" checked="checked">产品众筹</a>
        <?php endif; ?>
        <?php if (app_conf ( "INVEST_STATUS" ) == 2): ?>
        <a href="javascript:void(0);" livalue="1" class="search_cate search_cate_all webkit-box-flex cur" checked="checked">股权众筹</a>
        <?php endif; ?>
    </div>
    <ul class="category_list mod_main">
    	<?php if (app_conf ( 'INVEST_STATUS' ) == 0): ?>
    	<li id="pros" class="category_li">
			<h2 class="category">
				<a href="">全部项目</a>
			</h2>
			<ul class="category-table clearfix">
				<?php $_from = $this->_var['cates']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates_item');if (count($_from)):
    foreach ($_from AS $this->_var['cates_item']):
?>
				<li>
					<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_item']['id']."".""); 
?>" title="<?php echo $this->_var['cates_item']['name']; ?>"><?php echo $this->_var['cates_item']['name']; ?></a>
				</li>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			<?php $_from = $this->_var['cates']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'cates_item');if (count($_from)):
    foreach ($_from AS $this->_var['k'] => $this->_var['cates_item']):
?>
			<h2 class="category <?php if ($this->_var['k'] % 4 == 0): ?>category_bg1<?php endif; ?><?php if ($this->_var['k'] % 4 == 1): ?>category_bg2<?php endif; ?><?php if ($this->_var['k'] % 4 == 2): ?>category_bg3<?php endif; ?><?php if ($this->_var['k'] % 4 == 3): ?>category_bg4<?php endif; ?>">
				<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_item']['id']."".""); 
?>" title="<?php echo $this->_var['cates_item']['name']; ?>"><?php echo $this->_var['cates_item']['name']; ?></a>
			</h2>
			<ul class="category-table sub-category-table clearfix">
				<?php $_from = $this->_var['cates_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates_list_item');if (count($_from)):
    foreach ($_from AS $this->_var['cates_list_item']):
?>
				<?php if ($this->_var['cates_item']['id'] == $this->_var['cates_list_item']['pid']): ?>
					<li>
						<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_list_item']['id']."".""); 
?>" title="<?php echo $this->_var['cates_list_item']['name']; ?>"><?php echo $this->_var['cates_list_item']['name']; ?></a>
					</li>
				<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</li>
		<li id="invests" class="category_li" style="display:none">
			<h2 class="category">
				<a href="">全部项目</a>
			</h2>
			<ul class="category-table clearfix">
				<?php $_from = $this->_var['cates']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates_item');if (count($_from)):
    foreach ($_from AS $this->_var['cates_item']):
?>
				<li>
					<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_item']['id']."&type=1".""); 
?>" title="<?php echo $this->_var['cates_item']['name']; ?>"><?php echo $this->_var['cates_item']['name']; ?></a>
				</li>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			<?php $_from = $this->_var['cates']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'cates_item');if (count($_from)):
    foreach ($_from AS $this->_var['k'] => $this->_var['cates_item']):
?>
			<h2 class="category <?php if ($this->_var['k'] % 4 == 0): ?>category_bg1<?php endif; ?><?php if ($this->_var['k'] % 4 == 1): ?>category_bg2<?php endif; ?><?php if ($this->_var['k'] % 4 == 2): ?>category_bg3<?php endif; ?><?php if ($this->_var['k'] % 4 == 3): ?>category_bg4<?php endif; ?>">
				<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_item']['id']."&type=1".""); 
?>" title="<?php echo $this->_var['cates_item']['name']; ?>"><?php echo $this->_var['cates_item']['name']; ?></a>
			</h2>
			<ul class="category-table sub-category-table clearfix">
				<?php $_from = $this->_var['cates_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates_list_item');if (count($_from)):
    foreach ($_from AS $this->_var['cates_list_item']):
?>
				<?php if ($this->_var['cates_item']['id'] == $this->_var['cates_list_item']['pid']): ?>
					<li>
						<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_list_item']['id']."&type=1".""); 
?>" title="<?php echo $this->_var['cates_list_item']['name']; ?>"><?php echo $this->_var['cates_list_item']['name']; ?></a>
					</li>
				<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</li>
		<?php endif; ?>
		<?php if (app_conf ( 'INVEST_STATUS' ) == 1): ?>
    	<li id="pros" class="category_li">
			<h2 class="category">
				<a href="">全部项目</a>
			</h2>
			<ul class="category-table clearfix">
				<?php $_from = $this->_var['cates']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates_item');if (count($_from)):
    foreach ($_from AS $this->_var['cates_item']):
?>
				<li>
					<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_item']['id']."".""); 
?>" title="<?php echo $this->_var['cates_item']['name']; ?>"><?php echo $this->_var['cates_item']['name']; ?></a>
				</li>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			<?php $_from = $this->_var['cates']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'cates_item');if (count($_from)):
    foreach ($_from AS $this->_var['k'] => $this->_var['cates_item']):
?>
			<h2 class="category <?php if ($this->_var['k'] % 4 == 0): ?>category_bg1<?php endif; ?><?php if ($this->_var['k'] % 4 == 1): ?>category_bg2<?php endif; ?><?php if ($this->_var['k'] % 4 == 2): ?>category_bg3<?php endif; ?><?php if ($this->_var['k'] % 4 == 3): ?>category_bg4<?php endif; ?>">
				<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_item']['id']."".""); 
?>" title="<?php echo $this->_var['cates_item']['name']; ?>"><?php echo $this->_var['cates_item']['name']; ?></a>
			</h2>
			<ul class="category-table sub-category-table clearfix">
				<?php $_from = $this->_var['cates_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates_list_item');if (count($_from)):
    foreach ($_from AS $this->_var['cates_list_item']):
?>
				<?php if ($this->_var['cates_item']['id'] == $this->_var['cates_list_item']['pid']): ?>
					<li>
						<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_list_item']['id']."".""); 
?>" title="<?php echo $this->_var['cates_list_item']['name']; ?>"><?php echo $this->_var['cates_list_item']['name']; ?></a>
					</li>
				<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</li>
		<?php endif; ?>
		<?php if (app_conf ( 'INVEST_STATUS' ) == 2): ?>
		<li id="invests" class="category_li">
			<h2 class="category">
				<a href="">全部项目</a>
			</h2>
			<ul class="category-table clearfix">
				<?php $_from = $this->_var['cates']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates_item');if (count($_from)):
    foreach ($_from AS $this->_var['cates_item']):
?>
				<li>
					<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_item']['id']."&type=1".""); 
?>" title="<?php echo $this->_var['cates_item']['name']; ?>"><?php echo $this->_var['cates_item']['name']; ?></a>
				</li>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			<?php $_from = $this->_var['cates']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'cates_item');if (count($_from)):
    foreach ($_from AS $this->_var['k'] => $this->_var['cates_item']):
?>
			<h2 class="category <?php if ($this->_var['k'] % 4 == 0): ?>category_bg1<?php endif; ?><?php if ($this->_var['k'] % 4 == 1): ?>category_bg2<?php endif; ?><?php if ($this->_var['k'] % 4 == 2): ?>category_bg3<?php endif; ?><?php if ($this->_var['k'] % 4 == 3): ?>category_bg4<?php endif; ?>">
				<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_item']['id']."&type=1".""); 
?>" title="<?php echo $this->_var['cates_item']['name']; ?>"><?php echo $this->_var['cates_item']['name']; ?></a>
			</h2>
			<ul class="category-table sub-category-table clearfix">
				<?php $_from = $this->_var['cates_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates_list_item');if (count($_from)):
    foreach ($_from AS $this->_var['cates_list_item']):
?>
				<?php if ($this->_var['cates_item']['id'] == $this->_var['cates_list_item']['pid']): ?>
					<li>
						<a href="<?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cates_list_item']['id']."&type=1".""); 
?>" title="<?php echo $this->_var['cates_list_item']['name']; ?>"><?php echo $this->_var['cates_list_item']['name']; ?></a>
					</li>
				<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</li>
		<?php endif; ?>
	</ul>
</div>
<script type="text/javascript">
	$(".category-table").each(function(){
		var li_num = $(this).find("li").length;
		if(li_num<4){
			var left_num = 4-li_num;
			for (i = 0; i < left_num; i++){
				$(this).append("<li></li>");
			}
		}
		else{
			var left_num = li_num % 4;
			for (i = 0; i < left_num; i++){
				$(this).append("<li></li>");
			}
		}
	});
	$(".sub-category-table").each(function(){
		if(!($(this).find("li").html())){
			$(this).hide();
			$(this).prev().hide();
		}
	});
</script>
<script type="text/javascript">
    $("#top_search_hd .search_cate").bind('click',function(){
        var $obj=$(this);
        var i=$obj.index();
        $obj.attr("checked",true).addClass("cur").siblings().attr("checked",false).removeClass("cur");
        $("#categoryList .category_li").eq(i).fadeIn(300).siblings().hide();
    });
</script>
<?php echo $this->fetch('inc/footer.html'); ?>
