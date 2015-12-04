<?php echo $this->fetch('inc/header.html'); ?> 
<style type="text/css">
	body{background:#f0f0f0;}
</style>
<div class="deals_index">
	<div class="hide_list">
	  	<div class="abbr">
	  	   	<div class="first_list webkit-box-flex" id="first_list">
	  	   	    <ul>
					<?php $_from = $this->_var['cate_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cate_item');if (count($_from)):
    foreach ($_from AS $this->_var['cate_item']):
?>
					<li class="directory"><?php echo $this->_var['cate_item']['name']; ?></li>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	  	   	    </ul>
	  	   	</div>
		   	<div class="second_list webkit-box-flex" id="second_list">
		   		<?php $_from = $this->_var['cate_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cate_item');if (count($_from)):
    foreach ($_from AS $this->_var['cate_item']):
?>
		   	    <ul>
		   	    	<li class="two_directory"><a href="<?php echo $this->_var['cate_item']['url']; ?>">全部</a></li>
		   	    	<?php if ($this->_var['cate_item']['child']): ?>
					<?php $_from = $this->_var['cate_item']['child']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'clist');if (count($_from)):
    foreach ($_from AS $this->_var['clist']):
?>
					<?php if ($this->_var['clist']): ?>
					<li class="two_directory"><a href="<?php echo $this->_var['clist']['url']; ?>"><?php echo $this->_var['clist']['name']; ?></a></li>
			   		<?php endif; ?>
				    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
					<?php endif; ?>	
	  	   	    </ul>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		   	</div>
	  	</div>
	  	<div class="abbr">
	  	   	<div class="first_list webkit-box-flex" id="first_list">
	  	   	    <ul>
					<?php $_from = $this->_var['city_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'quan');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['quan']):
?>
					<li class="directory"><?php echo $this->_var['quan']['province']; ?></li>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	  	   	    </ul>
	  	   	</div>
		   	<div class="second_list webkit-box-flex" id="second_list">
		   		<?php $_from = $this->_var['city_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'quan');if (count($_from)):
    foreach ($_from AS $this->_var['quan']):
?>
		   	    <ul>
 	  	   	    	<li class="two_directory"><a href="<?php echo $this->_var['quan']['url']; ?>">全部</a></li>
 					<?php $_from = $this->_var['quan']['child']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'qlist');if (count($_from)):
    foreach ($_from AS $this->_var['qlist']):
?>
					<li class="two_directory"><a href="<?php echo $this->_var['qlist']['url']; ?>"><?php echo $this->_var['qlist']['name']; ?></a></li>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	  	   	    </ul>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		   </div>
	  	</div>
	  	<div class="abbr">
	  	   	<div class="all_list" id="first_list">
	  	   	    <ul>
	  	   	    	<li class="directory"><a href="<?php
echo parse_url_tag_wap("u:deals|"."type=".$this->_var['p_type']."".""); 
?>" <?php if ($this->_var['p_state'] == ''): ?> class="current"<?php endif; ?>>所有项目<?php if ($this->_var['p_state'] == ''): ?>(<?php echo $this->_var['deal_count']; ?>)<?php endif; ?></a></li>
					<?php $_from = $this->_var['state_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'state_item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['state_item']):
?>
					<li class="directory"><a href="<?php echo $this->_var['state_item']['url']; ?>" title="<?php echo $this->_var['state_item']['name']; ?>" <?php if ($this->_var['p_state'] == $this->_var['key']): ?>class="current"<?php endif; ?>><?php echo $this->_var['state_item']['name']; ?><?php if ($this->_var['p_state'] == $this->_var['key']): ?>(<?php echo $this->_var['deal_count']; ?>)<?php endif; ?></a></li>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>	
	  	   	    </ul>
	  	   	</div>  
	  	</div>
	</div>
 	<div class="main_list">
 	   <ul class="mall-cate webkit-box">
 	   	   	<li class="webkit-box-flex"><?php if ($this->_var['cate_name']): ?><?php echo $this->_var['cate_name']; ?><?php else: ?>全部分类 <?php endif; ?><i class="fa fa-sort-desc ml5"></i></li>
		   	<li class="webkit-box-flex"><?php if ($this->_var['p_loc']): ?><?php echo $this->_var['p_loc']; ?><?php else: ?>全城 <?php endif; ?><i class="fa fa-sort-desc ml5"></i></li>
		   	<li class="webkit-box-flex"><?php if ($this->_var['state_name']): ?><?php echo $this->_var['state_name']; ?><?php else: ?>状态<?php endif; ?><i class="fa fa-sort-desc ml5"></i></li>
 	   </ul>
 	</div>
	<?php $_from = $this->_var['deal_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'deal');if (count($_from)):
    foreach ($_from AS $this->_var['k'] => $this->_var['deal']):
?>
	<section class="deal_item_list">
 	<a href="<?php
echo parse_url_tag_wap("u:deal|"."id=".$this->_var['deal']['id']."".""); 
?>">
	    <div class="deal_item_box">
	        <!--1-->
	        <div class="imgbox">
	           <img src="<?php if ($this->_var['deal']['image'] == ''): ?><?php echo $this->_var['TMPL']; ?>/images/empty_thumb.gif<?php else: ?><?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['deal']['image'],
  'w' => '640',
  'h' => '445',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?><?php endif; ?>" alt="<?php echo $this->_var['deal']['name']; ?>" />
	        </div>
	        <div class="clear"></div>
	        <h3 class="deal_title sizing"><?php echo $this->_var['deal']['name']; ?></h3>
	        <div class="clear"></div>
	        <!--2-->
	        <div class="paiduan">
	            <span class="caption-title">
	            	已筹资：<span class="symbol">¥</span><span class="f_money"><?php 
$k = array (
  'name' => 'round',
  'v' => $this->_var['deal']['support_amount'],
  'e' => '2',
);
echo $k['name']($k['v'],$k['e']);
?></span>&nbsp;&nbsp;
	            	目标：<span class="symbol" style="color:#333">¥</span><span class="f_money" style="color:#333"><?php 
$k = array (
  'name' => 'round',
  'v' => $this->_var['deal']['limit_price'],
  'e' => '2',
);
echo $k['name']($k['v'],$k['e']);
?></span>
	        	</span>
	            <span class="f_r ">
        	 	<?php if ($this->_var['deal']['status'] == '0'): ?>
                    <span class="common common-fail">即将开始</span>
               	<?php else: ?>
					<?php if ($this->_var['deal']['percent'] >= 100): ?>
				 		<span class="common common-success">已成功</span>
					<?php else: ?>
						<?php if ($this->_var['deal']['status'] == 1): ?>
	                    	<span class="common common-success">已成功</span>
		                <?php endif; ?>
		                <?php if ($this->_var['deal']['status'] == 2): ?>
		                    <span class="common common-fail">筹资失败</span>
		                <?php endif; ?>
		                <?php if ($this->_var['deal']['status'] == 3): ?>
		                    <span class="common common-sprite">筹资中</span>
		                <?php endif; ?>
		                <?php if ($this->_var['deal']['status'] == 4): ?>
		                    <span class="common common-sprite">长期项目</span>
		                <?php endif; ?>
					<?php endif; ?>	
			 	<?php endif; ?>   
	            </span>
	        </div>
	        <div class="clear"></div>
	        <!--3-->
	        <div class="deal_content_box pd">
         		<div class="ui">
	      			<?php if ($this->_var['deal']['percent'] >= 100): ?>
                    <span class="common-success" style="width:100%;"></span>
                    <?php else: ?>
                    <span class="progress" style="width:<?php echo $this->_var['deal']['percent']; ?>%;"></span>
                    <?php endif; ?>
	         	</div>
	            <div class="blank">
	            </div>
	            <?php if ($this->_var['deal']['left_begin_time'] > 0): ?>
	            <div class="div_dt" style="width:100%;border-right:0">
	                <div class="f_999">离项目开始还有</div>
					<div class="left_time" data="<?php echo $this->_var['deal']['left_begin_time']; ?>">
						<em class="s day">--</em>
						<em class="l">天</em>
						<em class="s hour">--</em>
						<em class="l">时</em>
						<em class="s min">--</em>
						<em class="l">分</em>
						<em class="s sec">--</em>
						<em class="l">秒</em>
					</div>
	            </div>
	            <div class="div_dt_hide hide">
	             	<div class="div_dt">
		                <span class="num"><?php echo $this->_var['deal']['percent']; ?>%</span><br />
		                <span class="til">已达</span>
		            </div>
		            <div class="div_dt">
		                <?php if ($this->_var['deal']['remain_days'] > 0): ?>
		                <span class="num"><?php echo $this->_var['deal']['remain_days']; ?>天</span><br />
		                <span class="til">剩余时间</span>
		                <?php else: ?>
		                <span class="num"><?php 
$k = array (
  'name' => 'to_date',
  'v' => $this->_var['deal']['end_time'],
  'f' => 'Y-m-d',
);
echo $k['name']($k['v'],$k['f']);
?></span><br />
		                <span class="til">结束时间</span>
		                <?php endif; ?>
		                
		            </div>
		            <div class="div_dt" style="border:none;">
		                <span class="num"><?php echo $this->_var['deal']['support_count']; ?></span><br />
		                <span class="til">支持者</span>
		            </div>
		        </div>
	            <?php else: ?>
	            <div class="div_dt">
	                <span class="num"><?php echo $this->_var['deal']['percent']; ?>%</span><br />
	                <span class="til">已达</span>
	            </div>
	            <div class="div_dt">
	                <?php if ($this->_var['deal']['remain_days'] > 0): ?>
	                <span class="num"><?php echo $this->_var['deal']['remain_days']; ?>天</span><br />
	                <span class="til">剩余时间</span>
	                <?php else: ?>
	                <span class="num"><?php 
$k = array (
  'name' => 'to_date',
  'v' => $this->_var['deal']['end_time'],
  'f' => 'Y-m-d',
);
echo $k['name']($k['v'],$k['f']);
?></span><br />
	                <span class="til">结束时间</span>
	                <?php endif; ?>
	                
	            </div>
	            <div class="div_dt" style="border:none;">
	                <span class="num"><?php echo $this->_var['deal']['support_count']; ?></span><br />
	                <span class="til">支持者</span>
	            </div>
	            <?php endif; ?>
	           
	            <div class="blank">
	            </div>
	        </div>
	    </div>
	</a>
	</section>
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>  	
	<div class="pages"><?php echo $this->_var['pages']; ?></div>
	<div class="blank15"></div>
</div>
<div class="blank15"></div>
<script type="text/javascript">
	if($(".left_time").length){
		leftTimeAct(".left_time");
	}
	// 未开始项目倒计时
    function leftTimeAct(left_time){
    	var leftTimeActInv = null;
		clearTimeout(leftTimeActInv);
		$(left_time).each(function(){
			var leftTime = parseInt($(this).attr("data"));
			if(leftTime > 0)
			{
				var day  =  parseInt(leftTime / 24 /3600);
				var hour = parseInt((leftTime % (24 *3600)) / 3600);
				var min = parseInt((leftTime % 3600) / 60);
				var sec = parseInt((leftTime % 3600) % 60);
				$(this).find(".day").html((day<10?"0"+day:day));
				$(this).find(".hour").html((hour<10?"0"+hour:hour));
				$(this).find(".min").html((min<10?"0"+min:min));
				$(this).find(".sec").html((sec<10?"0"+sec:sec));
				leftTime = leftTime-1;
				$(this).attr("data",leftTime);
			}
			else{
				$(this).parent(".div_dt").hide();
				$(this).parent().next().show();
				return false;
			}
		});
		leftTimeActInv = setTimeout(function(){
			leftTimeAct(left_time);
		},1000);
	}
</script>
<script type="text/javascript">
    //筛选分类 
	$(function(){
		var hideList_height = $(document).height();
		$(".hide_list").css("height",hideList_height+"px");
		
		$(".mall-cate>li").each(function(index){
			var $this = $(this);
			$this.bind({
				click:function(e){
					e.stopPropagation();
					// 初始化
					$(".abbr").removeClass("webkit-box");
					$(".hide_list").hide()
					$("#second_list>ul").hide();
					if(!($this.hasClass("cur"))){
						$this.addClass("cur").siblings().removeClass("cur");
						$(".hide_list").show().find(".abbr").eq(index).addClass("webkit-box").find("#second_list>ul").eq(index).show();
						$("#first_list li").each(function(index){
							var $this = $(this);
							$this.click(function(e){
								e.stopPropagation();
								$(".second_list>ul").hide();
								$this.addClass("select").siblings().removeClass("select");
								$(".second_list>ul").eq(index).show();
							})
						})
					}
					else{
						$this.removeClass("cur");
						$(".abbr").eq(index).removeClass("webkit-box");
					}
				} ,
				change:function(){
					
				}
			});
		});
		$(".abbr").bind("click",function(e){
			e.stopPropagation();
		});
		$(document).click(function(){
			$(".mall-cate>li").removeClass("cur");
			$(".abbr").removeClass("webkit-box");
			$(".hide_list").hide();
			$("#second_list>ul").hide();
		})
	})
</script>
<?php echo $this->fetch('inc/footer.html'); ?>