<?php echo $this->fetch('inc/header.html'); ?> 
<?php
$this->_var['pagejs_1'][] = $this->_var['TMPL_REAL']."/js/deal_attention.js";
$this->_var['cpagejs_1'][]='';
?>
<script type="text/javascript" src="<?php 
$k = array (
  'name' => 'parse_script',
  'v' => $this->_var['pagejs_1'],
  'c' => $this->_var['cpagejs_1'],
);
echo $k['name']($k['v'],$k['c']);
?>"></script>
<!-- 点击查看大图 开始 -->
<div class="outerdiv" id="outerdiv" onclick="close_magicZoom(this);">
    <div id="innerdiv" class="innerdiv">
    	<img id="bigimg" src="" />
    </div>
    <div class="blank"></div>
	<div class="closebigimg">点击任意位置关闭</div>
</div>
<!-- 点击查看大图 结束 -->

<!-- 中间 开始 -->
<div class="mod">
	<section class="deal_box">
		<!--1-->
    	<div class="imgboxdt">
		    <a class="" href="#" title="<?php echo $this->_var['deal_info']['name']; ?>">
		    	<?php if ($this->_var['deal_info']['source_vedio'] == ''): ?>
				<img src="<?php if ($this->_var['deal_info']['image'] == ''): ?><?php echo $this->_var['TMPL']; ?>/images/empty_thumb.gif<?php else: ?><?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['deal_info']['image'],
  'w' => '640',
  'h' => '445',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?><?php endif; ?>" alt="<?php echo $this->_var['deal_info']['name']; ?>" />
				<?php else: ?>
  				<iframe width=100% src="<?php echo $this->_var['deal_info']['source_vedio']; ?>" frameborder=0 allowfullscreen></iframe>
				<?php endif; ?>
 	    	</a>
    	</div>
    	<a href="javascript:void(0);" title="<?php echo $this->_var['deal_info']['name']; ?>" class="deal_title sizing"><?php echo $this->_var['deal_info']['name']; ?></a>
    	<!--2-->
    	<div class="paiduan">
        	<span class="caption-title">
	        	已筹资：<span class="symbol">¥</span><span class="f_money"><?php echo $this->_var['deal_info']['total_virtual_price_format']; ?></span>&nbsp;&nbsp;
	        	目标：<span class="symbol" style="color:#333">¥</span><span class="f_money" style="color:#333"><?php echo $this->_var['deal_info']['limit_price_format']; ?></span>
        	</span>
            <span class="f_r ">
        		<?php if ($this->_var['deal_info']['status'] == 0): ?>
                    <span class="common common-fail">即将开始</span>
                <?php else: ?>
	            	<?php if ($this->_var['deal_info']['percent'] >= 100): ?>
						<span class="common common-success">已成功</span>
					<?php else: ?>
                    	<?php if ($this->_var['deal_info']['status'] == 1): ?>
                            <span class="common common-success">已成功</span>
                        <?php endif; ?>
                        <?php if ($this->_var['deal_info']['status'] == 2): ?>
                            <span class="common common-fail">筹资失败</span>
                        <?php endif; ?>
                        <?php if ($this->_var['deal_info']['status'] == 3): ?>
                            <span class="common common-sprite">筹资中</span>
                        <?php endif; ?>
                        <?php if ($this->_var['deal_info']['status'] == 4): ?>
                            <span class="common common-sprite">长期项目</span>
                        <?php endif; ?>
				 	<?php endif; ?>
	  			<?php endif; ?>
            </span>
	 	</div>
    	<div class="blank5"></div>
     	<!--3-->
    	<div class="deal_content_box pd">             
     		<div class="ui">
      			<span class="<?php if ($this->_var['deal_info']['percent'] >= 100): ?>common-success<?php endif; ?> progress" style="width:<?php echo $this->_var['deal_info']['percent']; ?>%;"></span>
         	</div>             
        	<div class="blank"></div>
        	<div class="div_dt">
        		<span class="num"><?php echo $this->_var['deal_info']['percent']; ?>%</span><br />
        		<span class="til">已达</span>
        	</div>
        	<div class="div_dt">
        		<?php if ($this->_var['deal_info']['status'] == 0): ?>
				<span class="num">
					<?php echo $this->_var['deal_info']['left_days']; ?>天
				</span>
				<span class="til">距离开始</span>
				<?php else: ?>
	        	<span class="num">
	        		<?php if ($this->_var['deal']['percent'] >= 100): ?>
				 	已成功
					<?php else: ?>
						<?php if ($this->_var['deal_info']['status'] == 1): ?>
                   	 		已成功
	                    <?php endif; ?>
	                    <?php if ($this->_var['deal_info']['status'] == 2): ?>
                   			筹资失败
	                    <?php endif; ?>
	                    <?php if ($this->_var['deal_info']['status'] == 3): ?>
	                        <?php echo $this->_var['deal_info']['remain_days']; ?>天
	                    <?php endif; ?>
	                    <?php if ($this->_var['deal_info']['status'] == 4): ?>
	                       	 长期项目
	                    <?php endif; ?>
					<?php endif; ?>	
 				</span><br />
				<span class="til">剩余时间</span>
				<?php endif; ?>
			</div>
	        <div class="div_dt" style="border:none;">
	            <span class="num"><?php echo $this->_var['deal_info']['person']; ?></span><br />
	            <span class="til">支持者</span>               
	        </div>
        	<div class="blank"></div>
    	</div>
	</section>
	<section class="shit">
	    <span>发起人：<?php if ($this->_var['deal_info']['user_name']): ?><?php echo $this->_var['deal_info']['user_name']; ?><?php else: ?><?php echo $this->_var['site_name']; ?><?php endif; ?></span>
	    <a class="orange" href=""><?php echo $this->_var['deal_user_info']['user_name']; ?></a>
	    <a class="f_r 	<?php if ($this->_var['is_focus']): ?>qxgz<?php else: ?>gz<?php endif; ?> attention_focus_deal" id="<?php echo $this->_var['deal_info']['id']; ?>" href="javascript:void(0);"><font size="2.5"><i class="fa <?php if ($this->_var['is_focus']): ?>fa-star<?php else: ?>fa-star-o<?php endif; ?> "></i></font> <?php if ($this->_var['is_focus']): ?>取消关注<?php else: ?>关注<?php endif; ?></a>
	    <span></span>
	</section>
	<section class="detailmain">
	    <p class="detailpd"><?php 
$k = array (
  'name' => 'msubstr',
  'v' => $this->_var['deal_info']['brief'],
  'p' => '0',
  'e' => '60',
);
echo $k['name']($k['v'],$k['p'],$k['e']);
?></p>
	    <?php if ($this->_var['access'] == 1): ?>
	    <div class="blank10"></div>
	    <a class="detailmain_a" href="javascript:void(0);" id="detailmain_a">
	    	<span id="view_details">展开详情</span><i class="fa fa-angle-right"></i>
	    </a>
	    <div class="blank10"></div>
	    <div class="deal_info_box pb15" id="deal_info_box" style="display:none">
	    	<?php echo $this->fetch('deal_info.html'); ?> 
	    	<div class="blank15"></div>
	    	<a class="detailmain_aa tc" href="javascript:void(0);" id="detailmain_aa" style="width:130px;display:block;margin:0 auto">
				<span class="theme_fcolor" id="view_detailss">收起详情</span><i class="fa fa-angle-up theme_fcolor"></i>
		    </a>
	    </div>
	    <?php else: ?>
			<?php if ($this->_var['access'] == 0): ?>
	        <div class="authority_box">
           		温馨提示：您需要<a href="<?php
echo parse_url_tag_wap("u:user#login|"."".""); 
?>" class="f_red link_underline">登录</a>才可以查看项目详细信息！ 
	        </div>
    		<?php endif; ?>
	        <?php if ($this->_var['access'] == 2): ?>
	     	<div class="authority_box f_red">
	            温馨提示：您的会员等级不够，无法查看项目详细信息！
	        </div>
	        <?php endif; ?>
	        <?php if ($this->_var['access'] == 4): ?>
	        <div class="authority_box">
	            温馨提示：您未实名认证，马上去<a href='<?php
echo parse_url_tag_wap("u:settings#security|"."method=setting-id-box".""); 
?>' class="f_red link_underline">实名认证</a>！
	        </div>
	        <?php endif; ?>
	        <?php if ($this->_var['access'] == 5): ?>
	        <div class="authority_box f_red">
	            温馨提示：您的实名认证正在审核中，无法查看项目详细信息！
	        </div>
	        <?php endif; ?>
	        <?php if ($this->_var['access'] == 6): ?>
	        <div class="authority_box">
	            温馨提示：您的实名认证未通过，重新去<a href='<?php
echo parse_url_tag_wap("u:settings#security|"."method=setting-id-box".""); 
?>' class="f_red link_underline">实名认证</a>！
	        </div>
	        <?php endif; ?>
	        <div class="blank15"></div>
		<?php endif; ?>
	</section>
	<?php if ($this->_var['access'] == 1): ?>
	<section class="detailborder">
		<h3>选择回报</h3>
		<?php $_from = $this->_var['deal_info']['deal_item_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['k'] => $this->_var['item']):
?>
		<?php if ($this->_var['k'] >= 3): ?>
	  	<div class="displayReturn">
	 	<?php endif; ?>
			<?php if ($this->_var['item']['type'] == 1): ?>
			<div class="detailReturn">
	    		<div class="Returntop webkit-box mb10">
	    			<?php if ($this->_var['deal_info']['remain_days'] > 0): ?>
					<?php if (( $this->_var['item']['support_count'] + $this->_var['item']['virtual_person'] ) < $this->_var['item']['limit_user'] || $this->_var['item']['limit_user'] == 0): ?>
				    <div class="Returntitle webkit-box-flex">
				        <span class="span1 f_money mr5">无私奉献</span>
				        <span class="span2 f_999"><?php echo $this->_var['item']['support_count']; ?>人已支持</span>
				    </div>
				    <a href="javascript:dedicate_pop(<?php echo $this->_var['item']['id']; ?>);" class="ui-button ui-small-button theme_color" style="width:80px;">立即支持</a>
					<?php else: ?>
				    <div class="Returntitle webkit-box-flex">
				        <span class="span1"><i class="font-yen support-yen">¥</i><?php echo $this->_var['item']['price_format']; ?></span>
				        <span class="span2">已满额</span>
				    </div>
				    <a href="javascript:dedicate_pop();" disabled="true" class="ui-button ui-small-button bg_gray" style="width:80px;">立即支持</a>
					<?php endif; ?>
					<?php else: ?>
				    <div class="Returntitle webkit-box-flex">
				        <span class="span1 f_money mr5">无私奉献</span>
				        <span class="span2 f_999"><?php echo $this->_var['item']['person']; ?>人已支持</span>
				    </div>
				    <a href="javascript:void(0);"  disabled="true" class="ui-button ui-small-button bg_gray" style="width:80px;">立即支持</a>
					<?php endif; ?>	
	    		</div>
			    <p><?php echo $this->_var['item']['description']; ?></p>
			    <p>
			    	<?php $_from = $this->_var['item']['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'image');if (count($_from)):
    foreach ($_from AS $this->_var['image']):
?>
				    <img class="pimg" onclick="magicZoom(this);" src="<?php echo $this->_var['image']['image']; ?>">
				    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			    </p>
		    </div>
			<?php else: ?>
	    	<div class="detailReturn">
	    		<div class="Returntop webkit-box mb10">
	    			<?php if ($this->_var['deal_info']['remain_days'] > 0): ?>
					<?php if (( $this->_var['item']['support_count'] + $this->_var['item']['virtual_person'] ) < $this->_var['item']['limit_user'] || $this->_var['item']['limit_user'] == 0): ?>
				    <div class="Returntitle webkit-box-flex">
				        <span class="span1 f_money mr5"><i class="font-yen support-yen">¥</i><?php echo $this->_var['item']['price_format']; ?></span>
				        <span class="span2 f_999"><?php echo $this->_var['item']['person']; ?>人已支持<?php if ($this->_var['item']['is_limit_user'] == 1): ?><?php if ($this->_var['item']['limit_user'] > 0): ?>/限<?php echo $this->_var['item']['limit_user']; ?>名<?php endif; ?><?php endif; ?></span>
				    </div>
				    <a href="<?php echo $this->_var['item']['cart_url']; ?>" class="ui-button ui-small-button theme_color" style="width:80px;">立即支持</a>
					<?php else: ?>
				    <div class="Returntitle webkit-box-flex">
				        <span class="span1"><i class="font-yen support-yen">¥</i><?php echo $this->_var['item']['price_format']; ?></span>
				        <span class="span2">已满额</span>
				    </div>
				    <a href="javascript:void(0);" disabled="true" class="ui-button ui-small-button bg_gray" style="width:80px;">立即支持</a>
					<?php endif; ?>
					<?php else: ?>
				    <div class="Returntitle webkit-box-flex">
				        <span class="span1"><i class="font-yen support-yen">¥</i><?php echo $this->_var['item']['price_format']; ?></span>
				        <span class="span2"><?php echo $this->_var['item']['person']; ?>人已支持</span>
				    </div>
				    <a href="javascript:void(0);"  disabled="true" class="ui-button ui-small-button bg_gray" style="width:80px;">立即支持</a>
					<?php endif; ?>	
	    		</div>
			    <p><?php echo $this->_var['item']['description']; ?></p>
		     	<p class="f_666 f12" style="padding-bottom:5px">
			    	<?php if ($this->_var['item']['is_delivery'] == 1): ?>
						<?php if ($this->_var['item']['delivery_fee'] == 0): ?>
						运费：包邮
						<?php else: ?>
						运费：¥<?php 
$k = array (
  'name' => 'round',
  'v' => $this->_var['item']['delivery_fee'],
  'e' => '2',
);
echo $k['name']($k['v'],$k['e']);
?>
						<?php endif; ?>
						&nbsp;&nbsp;
					<?php endif; ?>
					<?php if ($this->_var['item']['is_share'] == 1 && $this->_var['item']['share_fee'] > 0): ?>
						分红：¥<?php 
$k = array (
  'name' => 'round',
  'v' => $this->_var['item']['share_fee'],
  'e' => '2',
);
echo $k['name']($k['v'],$k['e']);
?>
					<?php endif; ?>
			    </p>
		     	<?php if ($this->_var['item']['repaid_day'] > 0): ?>
				<p class="f_666 f12" style="padding-bottom:5px">
					预计发放时间：项目成功结束后<?php echo $this->_var['item']['repaid_day']; ?>天内
				</p>
				<?php endif; ?>
			    <p>
			    	<?php $_from = $this->_var['item']['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'image');if (count($_from)):
    foreach ($_from AS $this->_var['image']):
?>
				    <img class="pimg" onclick="magicZoom(this);" src="<?php echo $this->_var['image']['image']; ?>">
				    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			    </p>
		    </div>
			<?php endif; ?>
		<?php if ($this->_var['k'] >= 3): ?>
	  	</div>
	 	<?php endif; ?> 	
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		<?php if ($this->_var['deal_info']['deal_item_count'] > 3): ?>
    	<div class="moreProject" id="display_item">
        	<div class="openmore">
        		查看其他全部回报<i class="fa fa-chevron-down"></i>
        	</div>
       	 	<div class="closemore">收起其他全部回报<i class="fa fa-chevron-up"></i></div>
    	</div>
		<?php endif; ?>   
    	<div class="blank"></div>
	</section>
	<?php if ($this->_var['log_num']): ?>
	<section class="detailborder" onclick="window.location.href='<?php echo $this->_var['deal_info']['update_url']; ?>';">
	    <div class="detailmain Dynamic">        
	        <span class="span1">圈子动态（<?php echo $this->_var['log_num']; ?>）</span>
	        <span class="span3"><i class="fa fa-angle-right "></i></span>
	    </div>
	    <div class="critical_ul">
	        <ul>
	        	<?php $_from = $this->_var['log_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'log');if (count($_from)):
    foreach ($_from AS $this->_var['log']):
?>
	            <li>
	                <div class="uer_pic"><img src="<?php echo $this->_var['log']['user_info']['avatar']; ?>" width="44" height="44"></div>
	                <div class="comment">
	                    <h4><?php echo $this->_var['log']['user_info']['user_name']; ?></h4>
	                    <div class="details">
	                        <div class="lov1"></div>
	                        <p>
	                             <?php echo $this->_var['log']['log_info']; ?>
	                        </p>
	                    </div>
	                </div>
	            </li>
	            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	        </ul>
	    </div>
    	<div class="blank"></div>
	</section>
	<?php endif; ?>
	<?php if ($this->_var['comment_count']): ?>
	<section class="detailborder" onclick="window.location.href='<?php echo $this->_var['deal_info']['comment_url']; ?>';">
	    <div class="detailmain Dynamic">        
	        <span class="span1">评论（<?php echo $this->_var['comment_count']; ?>）</span>
	        <span class="span3"><i class="fa fa-angle-right "></i></span>
	    </div>
	    <div class="critical_ul">
	        <ul>
	        	<?php $_from = $this->_var['comment_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'comment');if (count($_from)):
    foreach ($_from AS $this->_var['comment']):
?>
	            <li>
	                <div class="uer_pic"><img src="<?php echo $this->_var['comment']['user_info']['avatar']; ?>" width="44" height="44"></div>
	                <div class="comment">
	                    <h4><?php echo $this->_var['comment']['user_info']['user_name']; ?></h4>
	                    <div class="details">
	                        <div class="lov1"></div>
	                        <p>
	                           	<?php echo $this->_var['comment']['content']; ?>
	                        </p>
	                    </div>
	                </div>
	            </li> 
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	        </ul>
	    </div>
    	<div class="blank"></div>
	</section>
	<?php endif; ?>
	<?php endif; ?>
</div>
<div class="hide" id="dedicate_demo">
	<div class="dedicate_box">
		<form class="ajax_form_dedicate" action="<?php
echo parse_url_tag_wap("u:cart#index|"."".""); 
?>">
			<div class="webkit-box">
				<label>奉献金额:</label>
				<input type="text" placeholder="请输入奉献金额" value="" name="pay_money" class="textboxs sizing webkit-box-flex">
			</div>
			<div class="dedicate_tip f_red hide mt5" style="padding-left:70px;">*请输入正确的金额</div>
			<div class="blank15"></div>
			<input type="hidden" name="id" value="item_id">
			<input type="hidden" name="ctl" value="cart">
			<input type="button" name="" value="提交" class="ui-button theme_color" />
		</form>
	</div>
</div>
<div class="blank15"></div>
<!-- 中间 结束 --> 
<script>
	// 无私奉献
	var dedicate_demo=$("#dedicate_demo").html();
	function dedicate_pop(item_id){
		var dedicate_demo_1=dedicate_demo;
		dedicate_demo_1=dedicate_demo_1.replace('item_id',item_id);
		dedicate_demo_1=dedicate_demo_1.replace('ajax_form_dedicate',"ajax_form_dedicate_1");
		$.weeboxs.open(dedicate_demo_1, {boxid:'leader_detailed_info',contentType:'text',showButton:false, showCancel:false, showOk:false,title:'无私奉献',width:300,type:'wee',onopen:function(){
		bind_ajax_form_dedicate(".ajax_form_dedicate_1");
	}});
	}

	function bind_ajax_form_dedicate(str)
	{
		$(str).find(".ui-button").bind("click",function(){
			var $obj=$(this);
			var $dedicate_form=$obj.parent(str);
			var $dedicate_dedicate_money=$dedicate_form.find("input[name='pay_money']");
			$dedicate_form.find(".dedicate_tip").hide();
			if((isNaN($dedicate_dedicate_money.val()) || parseFloat($dedicate_dedicate_money.val())<=0) || $dedicate_dedicate_money.val()==''){
				$dedicate_form.find(".dedicate_tip").show();
				$dedicate_dedicate_money.focus();
				return false;
			}
			$(str).submit();
		});
//		$(str).bind("submit",function(){
//			var ajaxurl = $(this).attr("action");
//			var query = $(this).serialize() ;
//			$.ajax({ 
//				url: ajaxurl,
//				dataType: "json",
//				data:query,
//				type: "POST",
//				success: function(ajaxobj){
//					if(ajaxobj.status==1)
//					{
//						location.href = ajaxobj.jump;
//					}
//					else
//					{ 
//						$("."+ajaxobj.info+"_tip").show();		
//					}
//				},
//				error:function(ajaxobj)
//				{
//					// if(ajaxobj.responseText!='')
//					// alert(ajaxobj.responseText);
//				}
//			});
//			return false;
//		});
	}

	// 显隐详情
	$(function view_details_click(){
		$("#detailmain_a").bind('click',function(){
			if($("#deal_info_box").is(":hidden")){
				$("#deal_info_box").show();
				$(this).find("#view_details").text("收起详情");
				$(this).find(".fa").removeClass("fa-angle-right").addClass("fa-angle-down");
			}
			else{
				$("#deal_info_box").hide();
				$(this).find("#view_details").text("展开详情");
				$(this).find(".fa").removeClass("fa-angle-down").addClass("fa-angle-right");
			}
		});
		$("#detailmain_aa").bind('click',function(){
			$("#deal_info_box").hide();
			$("#view_details").text("展开详情");
		});
	});

	function bind_attention_focus(){
		$(".attention_focus_deal").bind("click",function(){
			attention_focus_deal($(this).attr("id"));
		});
	}
	function attention_focus_deal(id)
	{
		var ajaxurl = APP_ROOT+"/index.php?ctl=deal&act=focus&id="+id;
		$.ajax({ 
			url: ajaxurl,
			dataType: "json",
			type: "POST",
			success: function(ajaxobj){
				if(ajaxobj.status==1)
				{
					$(".attention_focus_deal").removeClass("gz");
					$(".attention_focus_deal").addClass("qxgz");
					$(".attention_focus_deal").html('<font size="2.5"><i class="fa fa-star "></i></font> 取消关注');
				}
				else if(ajaxobj.status==2)
				{
					$(".attention_focus_deal").removeClass("qxgz");
					$(".attention_focus_deal").addClass("gz");	
					$(".attention_focus_deal").html('<font size="2.5"><i class="fa fa-star-o "></i></font> 关注');
				}
				else if(ajaxobj.status==3)
				{
					$.showErr(ajaxobj.info);							
				}
				else
				{
					
				 $.showErr("请先登录",function(){
				 	location.href=APP_ROOT+"/index.php?ctl=user&act=login";
				 });
				}
			},
			error:function(ajaxobj)
			{
	//			if(ajaxobj.responseText!='')
	//			alert(ajaxobj.responseText);
			}
		});
	}
	
	function send_message(usermessage_url)
	{
		var ajaxurl = usermessage_url;
		$.ajax({ 
			url: ajaxurl,
			dataType: "json",
			type: "POST",
			success: function(ajaxobj){
				if(ajaxobj.status==1)
				{
					$.weeboxs.open(ajaxobj.html, {boxid:'send_message',contentType:'text',showButton:false, showCancel:false, showOk:false,title:'发送私信',width:300,height:200,type:'wee'});				
					$("#user_message_form").find("textarea[name='message']").focus();
					bind_usermessage_form();
				}
				else if(ajaxobj.status==2)
				{
					$.showErr("请先登录",function(){
						window.location.href="<?php
echo parse_url_tag_wap("u:user#login|"."".""); 
?>";
					});
				}
				else
				{
					$.showErr(ajaxobj.info);							
				}
			},
			error:function(ajaxobj)
			{
	//			if(ajaxobj.responseText!='')
	//			alert(ajaxobj.responseText);
			}
		});
	}
	//关闭对话框
	function close_pop()
	{
		$(".dialog-close").click();
	}
	//发送消息（消息）
	function bind_usermessage_form()
	{
			$("#user_message_form").find(".ui-button").bind("click",function(){
				$("#user_message_form").submit();
			});
			$("#user_message_form").bind("submit",function(){
				if($.trim($("#user_message_form").find("textarea[name='message']").val())=="")
				{
					$("#user_message_form").find("textarea[name='message']").focus();
					return false;
				}
				var ajaxurl = $(this).attr("action");
				var query = $(this).serialize() ;
				$.ajax({ 
					url: ajaxurl,
					dataType: "json",
					data:query,
					type: "POST",
					success: function(ajaxobj){
						close_pop();
						if(ajaxobj.status==1)
						{
							if(ajaxobj.info!="")
							{
								$.showSuccess(ajaxobj.info,function(){
									if(ajaxobj.jump!="")
									{
										location.href = ajaxobj.jump;
									}
								});	
							}
							else
							{
								if(ajaxobj.jump!="")
								{
									location.href = ajaxobj.jump;
								}
							}
						}
						else
						{
							if(ajaxobj.info!="")
							{
								$.showErr(ajaxobj.info,function(){
									if(ajaxobj.jump!="")
									{
										location.href = ajaxobj.jump;
									}
								});	
							}
							else
							{
								if(ajaxobj.jump!="")
								{
									location.href = ajaxobj.jump;
								}
							}							
						}
					},
					error:function(ajaxobj)
					{
						if(ajaxobj.responseText!='')
						alert(ajaxobj.responseText);
					}
				});
				return false;
			});
	}
</script>
<?php echo $this->fetch('inc/footer.html'); ?>