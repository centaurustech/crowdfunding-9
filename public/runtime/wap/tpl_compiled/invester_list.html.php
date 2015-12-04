<?php echo $this->fetch('inc/header_account.html'); ?>
<style type="text/css">
body{background:#fff;}
.leader{
	overflow:hidden;
}
.leader h3{
	height:30px;
	line-height:30px;
	font-size:1.8rem;
	border-bottom:1px solid #cecece;
}
.leader h3 .f_r{
	font-size:1.3rem;
}
.leader .l{
	width:70px;
	text-align:center;
}
.leader .l img{
	width:70px;
	height:70px;
	margin:0;
	-moz-border-radius:50%; -khtml-border-radius:50%; -webkit-border-radius:50%; border-radius:50%;
}
.leader .r .btn_send{
	font-size:1.3rem;
	color:#666;
}
.leader .r .btn_send i{font-size:1.4rem;}
.leader .title{
	color:#333;
}
.leader .text{
	font-size:1.3rem;
	color:#666;
	border-bottom:1px solid #e5e5e5;
	padding:10px 15px;
	background:#fff;
}
.leader .text:last-child{
	border-bottom:1px solid #cecece;
}
.ui-button1{
	width:120px;
	height:30px;
	line-height:32px;
	font-size:1.5rem;
}
.select_box{
	height:30px;
	line-height:30px;
	text-align:center;
	border:1px solid #ddd;
	margin:-1px;
}
.tab_nav li{
	background:#fff;
}
.choose_box{
	background:#f1f1f1;
	display:none;
}
.choose_2{
	padding:10px;
	background:#fff;
}
.choose_2 .con2_l{
	height:28px;
	line-height:28px;
}
.choose_2 a{
	display:block;
	height:28px;
	line-height:28px;
	float:left;
	padding:0 5px;
	border-radius:3px;
	margin:0 5px;
	color:#666;
}
.choose_2 a:hover ,
.choose_2 a.cur {
	background:#4dbdf5;
	color:#fff;
}
.choose_2,.choose_show,select{font-size:1.3rem}
.user_icon{margin:2px 5px 0 0;}
</style>
<section class="choose_box" id="choose_box">
	<ul class="choose_1 tab_nav webkit-box" style="width:100%">
		<li class="webkit-box-flex tc">
			<select name="province" id="cityid-1">
		  		<option value="" rel="0">请选择省份</option>
				<?php $_from = $this->_var['region_lv2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'region');if (count($_from)):
    foreach ($_from AS $this->_var['region']):
?>
				<option <?php if ($this->_var['p_loc'] == $this->_var['region']['name']): ?>selected="selected"<?php endif; ?> rel="<?php echo $this->_var['region']['id']; ?>" value="<?php echo $this->_var['region']['url']; ?>"><?php echo $this->_var['region']['name']; ?></option>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>				 
			</select>
			<i class="fa fa-angle-down"></i>
		</li>
		<li class="webkit-box-flex tc ">
			<select name="city" id="cityid-2">
		  		<option value="" rel="0">请选择城市</option>
				<?php $_from = $this->_var['region_lv3']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'region');if (count($_from)):
    foreach ($_from AS $this->_var['region']):
?>
				<option class="ld-option" value="<?php echo $this->_var['region']['url']; ?>" <?php if ($this->_var['p_city'] == $this->_var['region']['name']): ?>selected="selected"<?php endif; ?>><?php echo $this->_var['region']['name']; ?></option>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>				    
			</select>
			<i class="fa fa-angle-down"></i>
		</li>
	</ul>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#cityid-1,#cityid-2").change(function(){
				window.location.href = $(this).val();
			});
		});
	</script>
	<div class="blank10"></div>
	<div class="choose_2 webkit-box">
		<div class="con2_l">投资人类型：</div>
	    <div class="con2_r webkit-box-flex" id="invest_type">
	    	<a href="<?php
echo parse_url_tag_wap("u:investor#invester_list|"."loc=".$this->_var['p_loc']."".""); 
?>"  <?php if ($this->_var['p_r'] == ''): ?> class="cur"<?php endif; ?>>全部</a>
			<a href="<?php
echo parse_url_tag_wap("u:investor#invester_list|"."r=institutions_invester&loc=".$this->_var['p_loc']."".""); 
?>" value="1" <?php if ($this->_var['p_r'] == 'institutions_invester'): ?> class="cur"<?php endif; ?>>机构投资人</a>
	        <a href="<?php
echo parse_url_tag_wap("u:investor#invester_list|"."r=invester&loc=".$this->_var['p_loc']."".""); 
?>" value="2" <?php if ($this->_var['p_r'] == 'invester'): ?> class="cur"<?php endif; ?>>投资人</a>
			<?php if (app_conf ( 'AVERAGE_USER_STATUS' ) == 1 || INVEST_TYPE == 1): ?>
	       		<a href="<?php
echo parse_url_tag_wap("u:investor#invester_list|"."r=ordinary_user&loc=".$this->_var['p_loc']."".""); 
?>" value="0" <?php if ($this->_var['p_r'] == 'ordinary_user'): ?> class="cur"<?php endif; ?>>普通用户</a>
			<?php endif; ?>
	        <div class="blank0"></div>
	    </div>
	    <div class="clear"></div>
	</div>
	<div class="choose_2 webkit-box">
	 	<div class="con2_l">按所属城市：</div>
	    <div class="con2_r webkit-box-flex" id="invest_type">
			<a href="<?php
echo parse_url_tag_wap("u:investor#invester_list|"."r=".$this->_var['p_r']."".""); 
?>"  <?php if ($this->_var['p_loc'] == ''): ?>class="cur"<?php endif; ?> target="_self"  value="">全部</a>		
			<?php $_from = $this->_var['city_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'city_item');if (count($_from)):
    foreach ($_from AS $this->_var['city_item']):
?>
			<?php if ($this->_var['city_item']['province'] != ''): ?>
		        <a href="<?php echo $this->_var['city_item']['url']; ?>" target="_self" value="" <?php if ($this->_var['p_loc'] == $this->_var['city_item']['province']): ?>class="cur"<?php endif; ?> ><?php echo $this->_var['city_item']['province']; ?></a>
			<?php endif; ?>
		    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>	
	    </div>
	</div>
	<div class="blank10"></div>
</section>
<section class="leader">
	<h3 class="theme_fcolor pl10 pr10">
		<a href="javascript:void(0);" class="f_r choose_show" id="choose_show">筛选<i class="fa fa-angle-up ml5"></i></a>
	</h3>
	<?php $_from = $this->_var['invester_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'invester_item');if (count($_from)):
    foreach ($_from AS $this->_var['invester_item']):
?>
	<div class="text">
		<div class="webkit-box">
			<div class="l mr10">
				<div><img src="<?php echo $this->_var['invester_item']['image']; ?>" /></div>
				<div class="blank5"></div>
			</div>
			<div class="r webkit-box-flex">
				<div style="height:70px">
					<div class="blank5"></div>
					<span class="user_name f_l mr5"><?php echo $this->_var['invester_item']['user_name']; ?></span>
					<!-- 会员等级，投资人类型图标 -->
					<?php if ($this->_var['invester_item']['user_icon']): ?>
					<div class="user_icon f_l">
	                	<img src="<?php echo $this->_var['invester_item']['user_icon']; ?>" alt="会员等级" class="inline_level_icon level_icon" />
	                </div>
					<?php endif; ?>
					<div class="<?php if ($this->_var['invester_item']['is_investor'] > 0): ?>user_icon f_l<?php endif; ?>">
						<?php if ($this->_var['invester_item']['is_investor'] == 1): ?>
						<i class="fa fa-user" rel="个人投资者"></i>
						<?php endif; ?>
						<?php if ($this->_var['invester_item']['is_investor'] == 2): ?>
						<i class="fa fa-building-o" rel="机构投资者"></i>
						<?php endif; ?>
					</div>
					<div class="blank5"></div>
					
										
					<div class="conment">
						<div>
							<?php if ($this->_var['invester_item']['province']): ?><i class="fa fa-map-marker"></i>&nbsp;<?php echo $this->_var['invester_item']['province']; ?><?php echo $this->_var['invester_item']['city']; ?>&nbsp;&nbsp;|&nbsp;&nbsp;<?php endif; ?><a href="javascript:void(0)" onclick="invester_look(<?php echo $this->_var['invester_item']['id']; ?>,this)" class="theme_fcolor" id="detailed_information">查看详细<i class="fa fa-angle-double-right"></i></a>
						</div>
						<a href="javascript:void(0);" onclick="send_message(<?php echo $this->_var['invester_item']['id']; ?>)" class="btn_send f14 b_radius3"><i class="fa fa-envelope mr5"></i>发私信</a>
					</div>
				</div>
				<div class="blank5"></div>
				<a href="javascript:void(0)" rel="<?php echo $this->_var['invester_item']['id']; ?>" name="recommend_project" class="ui-button ui-button1 f_r <?php if ($this->_var['invester_item']['id'] == $this->_var['user_info']['id']): ?>bg_gray<?php else: ?>theme_color<?php endif; ?>">自荐我的项目</a>
				
			</div>
		</div>
	</div>
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</section>
<div class="blank15"></div>
<div class="pages"><?php echo $this->_var['pages']; ?></div>
<div class="blank30"></div>
<script type="text/javascript">
	$(function(){
		$("#choose_show").bind('click',function(){
			if($("#choose_box").is(":hidden")){
				$("#choose_box").slideDown(200);
				$(this).html('筛选<i class="fa fa-angle-down ml5"></i>');
			}
			else{
				$("#choose_box").slideUp(200);
				$(this).html('筛选<i class="fa fa-angle-up ml5"></i>');

			}
		})

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

		ajax_get_recommend_project();
	});

	// 查看详细资料
	function invester_look(id,obj){			
		var ajaxurl = APP_ROOT+"/index.php?ctl=ajax&act=investor_detailed_information&id="+id;
		$.ajax({
			url: ajaxurl,
			dataType: "json",
			type: "POST",
			success:function(data){
				if(data.status == 1){
					$.weeboxs.open(data.html, {boxid:'append_money',contentType:'text',showButton:false, showCancel:false, showOk:false,title:data.user_name+'详细资料',width:300,type:'wee'});
				}
			}
		});
	}	

	// 获取会员所有项目列表
	function ajax_get_recommend_project(){
		$("a[name='recommend_project']").bind("click",function(){
			if($(this).attr("rel")=='<?php echo $this->_var['user_info']['id']; ?>'){
				$.showErr("不能给自己推荐！");
				return false;
			}
			var ajaxurl ='<?php
echo parse_url_tag_wap("u:ajax#ajax_get_recommend_project|"."".""); 
?>';
			var query=new Object();
			//推荐人id
			query.id='<?php echo $this->_var['user_info']['id']; ?>';
			//被推荐人id
			query.user_id=$(this).attr("rel");
			$.ajax({
				url: ajaxurl,
				dataType: "json",
				data:query,
				type: "POST",
				success:function(ajaxobj){
					if(ajaxobj.status==0){
						show_pop_login();
						return false;
					}
					if(ajaxobj.status==1){
						$.showErr(ajaxobj.info);
						return false;
					}
					if(ajaxobj.status==2){
						$.weeboxs.open(ajaxobj.html, {boxid:'project_recommend_page',contentType:'text',showButton:false, showCancel:false, showOk:false,title:'我的项目',width:300,type:'wee'});
						return false;
					}
				}
			});
		});
	}
</script>
<?php echo $this->fetch('inc/footer.html'); ?>