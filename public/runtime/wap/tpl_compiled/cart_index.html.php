<?php echo $this->fetch('inc/header_account.html'); ?>
<?php if ($this->_var['deal_info']['ips_bill_no'] == "" || ! $this->_var['is_tg']): ?>
<?php
$this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/cart_pay.js";
$this->_var['dcpagejs'][] = $this->_var['TMPL_REAL']."/js/cart_pay.js";
?>
<?php else: ?>
<?php
$this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/cart_pay_tg.js";
$this->_var['dcpagejs'][] = $this->_var['TMPL_REAL']."/js/cart_pay_tg.js";
?>
<?php endif; ?>
<script type="text/javascript" src="<?php 
$k = array (
  'name' => 'parse_script',
  'v' => $this->_var['dpagejs'],
  'c' => $this->_var['dcpagejs'],
);
echo $k['name']($k['v'],$k['c']);
?>"></script>
<div class="blank15"></div>
<section class="cart_index">
    <form class="pay_form" action="<?php
echo parse_url_tag_wap("u:cart#go_pay|"."".""); 
?>"  method="post">
        <h3 class="pl15 mb5 f16">支持详情</h3>
        <div class="blocktop">
            <div class="imglist">
                <img src="<?php echo $this->_var['deal_info']['image']; ?>">
            </div>
            <div class="rtimglist">
                <h1><?php echo $this->_var['deal_info']['name']; ?></h1>
                <label>发起人：</label>
                <a><?php echo $this->_var['deal_info']['user_info']['user_name']; ?></a>
            </div>
            <div class="blank"></div>
        </div>
 	 	<div class="ul_block ul_block_list">
	  		<ul id="real_total_box">
            	<li class="webkit-box">
        		  	<label class="input_lable mr10">支持金额</label>
                    <div class="text webkit-box-flex">
	                    <span class="f_money">¥<?php echo $this->_var['deal_item']['price_format']; ?></span>
	                </div>
            	</li>
            	<li class="webkit-box">
        		  	<label class="input_lable mr10">配送费用</label>
                    <div class="text webkit-box-flex">
	                    <span><?php if ($this->_var['deal_item']['delivery_fee'] == 0): ?>免运费<?php else: ?><?php echo $this->_var['deal_item']['delivery_fee']; ?><?php endif; ?></span>
	                </div>
            	</li>
            	<li class="textarea webkit-box">
        		  	<label class="input_lable mr10">回报内容</label>
                    <div class="text webkit-box-flex">
	                    <span><?php echo $this->_var['deal_item']['description']; ?></span>
	                </div>
            	</li>
            	<li class="textarea webkit-box">
        		  	<label class="input_lable mr10">项目备注</label>
                    <div class="text webkit-box-flex">
	                    <textarea placeholder="给发起人留言" rows=1 cols=40 style='height:50px;overflow:scroll;overflow-y:auto;overflow-x:hidden;padding:0;' 
onfocus="window.activeobj=this;this.clock=setInterval(function(){activeobj.style.height=activeobj.scrollHeight+'px';},200);" onblur="clearInterval(this.clock);" name="memo" class="textareabox"></textarea>
	                </div>
            	</li>
            </ul>
        </div>
        <?php if ($this->_var['deal_item']['is_delivery']): ?>
        <div class="blank10"></div>
     	<h3 class="pl15 mb5 f16">收货地址</h3>
        <div class="sbmbj">
            <?php if ($this->_var['consignee_list']): ?>
            <?php $_from = $this->_var['consignee_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'consignee');if (count($_from)):
    foreach ($_from AS $this->_var['k'] => $this->_var['consignee']):
?>
            <div class="consignee_radio_row p15 pt10 pb10">
                <label class="Address webkit-box">
                    <address class="webkit-box-flex mr10">
                        <?php echo $this->_var['consignee']['province']; ?>&nbsp;<?php echo $this->_var['consignee']['city']; ?>&nbsp;<?php echo $this->_var['consignee']['address']; ?>&nbsp;<?php echo $this->_var['consignee']['zip']; ?>&nbsp;<?php echo $this->_var['consignee']['consignee']; ?>&nbsp;<?php echo $this->_var['consignee']['mobile']; ?>   
                    </address>
                    <input type="radio" name="consignee_id" <?php if ($this->_var['consignee']['is_default']): ?>checked="checked"<?php else: ?><?php if ($this->_var['k'] == 0): ?>checked="checked"<?php endif; ?><?php endif; ?> value="<?php echo $this->_var['consignee']['id']; ?>" class="mt" />
                </label>
            </div>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            <?php endif; ?>
         	<div class="mainlist addadd">
            	<a href="<?php echo $this->_var['deal_item']['consigee_url']; ?>" class="webkit-box">
	                <label class="webkit-box-flex">添加新地址</label>
	                <em class="jh"><i class="fa fa-angle-right "></i></em>
                </a>
            </div>
        </div>
		<input type="hidden" name="is_address" value="1">
		<?php else: ?>
		<input type="hidden" name="is_address" value="0">
        <?php endif; ?>
        <div class="blank10"></div>
        <div class="ul_block ul_block_list">
    	  	<ul id="real_total_box">
	            <li class="webkit-box">
                    <label class="input_lable">应付金额</label>
                    <div class="text webkit-box-flex tr">
	                    <span class="f_money">¥<?php echo $this->_var['deal_item']['total_price_format']; ?></span>
	                </div>
	            </li>
	            <li class="webkit-box" id="real_money_box">
                  	<label class="input_lable">余额支付</label>
                  	<div class="text webkit-box-flex tr">
                  		<span class="f_money" id="real_money_val"></span>
                  	</div>
	            </li>
              	<li class="webkit-box" id="real_score_box">
                  	<label class="input_lable">积分支付</label>
                  	<div class="text webkit-box-flex tr">
                  		<span class="f_money" id="real_score_money"></span>
                  	</div>
	            </li>
            	<li class="webkit-box" id="real_online_box">
                  	<label class="input_lable">在线应付</label>
                  	<div class="text webkit-box-flex tr">
                  		<span class="f_money pay_val" id="real_online_money"></span>
                  	</div>
	            </li>
	        </ul>
        </div>
		<?php if ($this->_var['deal_info']['ips_bill_no'] != "" && $this->_var['is_tg']): ?>
		<div class="blank10"></div>
		<div class="ul_block">
			<ul>
				<li class="webkit-box">
					<label class="input_lable mr10">支付方式</label>
					<div class="text webkit-box-flex tr"><?php echo $this->_var['coll']['name']; ?></div>
					<input type="hidden" name="is_tg" value="1" />
				</li>
			</ul>
		</div>
		<?php else: ?>
		<div class="blank10"></div>
		<div class="ul_block">
		 	<div class="pl15 mb5 f16">选择支付方式</div>
			<ul>
				<?php if ($this->_var['user_info']['money'] > 0): ?>
				<li class="webkit-box dotted">
					<label class="input_lable mr10">余额支付</label>
					<input type="text" class="textbox webkit-box-flex mr10" value="0" name="credit" /> 
					<input type="checkbox" name="ye_check" class="mt" />
				</li>
				<li class="small_li">
					<div class="tr">
						可用余额&nbsp;<span class="f_money"><?php 
$k = array (
  'name' => 'format_price',
  'v' => $this->_var['user_info']['money'],
);
echo $k['name']($k['v']);
?></span>
						<input type="hidden" name="max_credit" value="<?php echo $this->_var['user_info']['money']; ?>" />
                    	<input type="hidden" name="max_pay" value="<?php echo $this->_var['order_info']['total_price']; ?>" />
					</div>
				</li>
				<?php endif; ?>
				<?php if ($this->_var['user_info']['score'] > 0 && app_conf ( "SCORE_TRADE_NUMBER" ) > 0): ?>
				<li class="webkit-box dotted">
					<label class="input_lable mr10">积分支付</label>
					<input type="text" class="textbox webkit-box-flex mr10" value="0" name="pay_score" disabled='disabled' />抵用<span id="score_trade_money" class="f_money mr5">¥0</span>
					<input type="checkbox" name="score_check" value="0" class="mt" />
				</li>
				<li class="small_li">
					<div class="tr">
						可用积分&nbsp;<span class="f_money"><?php echo $this->_var['user_info']['score']; ?></span>
					</div>
				</li>
				<?php endif; ?>
			</ul>
		 	<input type="hidden" name="max_credit" value="<?php echo $this->_var['user_info']['money']; ?>" />
            <input type="hidden" name="max_pay" value="<?php echo $this->_var['deal_item']['total_price']; ?>" />
            <?php echo $this->_var['payment_html']; ?>
        </div>
		
		<div class="ul_block mb10">
			<ul>
				<?php $_from = $this->_var['payment_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'payment');$this->_foreach['payment'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['payment']['total'] > 0):
    foreach ($_from AS $this->_var['k'] => $this->_var['payment']):
        $this->_foreach['payment']['iteration']++;
?>
		   		<li>
		   			<label class="webkit-box">
		   				<?php echo $this->_var['payment']['name']; ?>
			   			<div class="text webkit-box-flex tr">
							<input type="radio" value="<?php echo $this->_var['payment']['id']; ?>" name="payment" class="mt" />
						</div>
					</label>
		    	</li>
		    	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	    	</ul>
	    </div>
		<?php endif; ?>
        <!--
	    <div class="ul_block">
			<ul>
				<li class="webkit-box">
					<label class="input_lable mr10">支付密码</label>
					<input type="password" placeholder="请输入支付密码" class="textbox webkit-box-flex" value="" name="paypassword" >
					<span class="f12 f_999">&nbsp;&nbsp;忘记了？<a href="<?php
echo parse_url_tag_wap("u:settings#security|"."method=setting-pass-box".""); 
?>" target="_blank" class="theme_fcolor">点这里</a></span>
				</li>
			</ul>
		</div>
        -->
        <div class="submit_btn_row mod_main">		 
		  	<input class="ui-button theme_color" type="button" value="提交表单" />
            <input type="hidden" id="back_url" value="<?php
echo parse_url_tag_wap("u:account|"."".""); 
?>" />
            <input type="hidden" value="<?php echo $this->_var['memo']; ?>" name="memo" />
			<input type="hidden" value="wap" name="from" />
            <input type="hidden" value="<?php echo $this->_var['deal_item']['id']; ?>" name="id" />
            <input type="hidden" value="1" name="ajax" />
			<?php if ($this->_var['deal_item']['type'] == 1): ?>
			<input type="hidden" value="<?php echo $this->_var['pay_money']; ?>" name="pay_money">
			<?php endif; ?>	
		</div>
    </form> 
</section>
<div class="blank15"></div>
<script type="text/javascript">
<?php if ($this->_var['deal_info']['ips_bill_no'] == "" || ! $this->_var['is_tg']): ?>	
   var left_money=parseFloat(<?php echo $this->_var['user_info']['money']; ?>);
	var need_money=parseFloat(<?php echo $this->_var['deal_item']['total_price']; ?>);
	var score=<?php echo $this->_var['user_info']['score']; ?>;
	var trade_score='<?php 
$k = array (
  'name' => 'app_conf',
  'value' => 'SCORE_TRADE_NUMBER',
);
echo $k['name']($k['value']);
?>';
	trade_score=parseInt(trade_score)>0?parseInt(trade_score):0;
	var score_db_money=parseFloat(parseInt(score/trade_score*100)/100);//保留两位小数
		score_db_pay=parseInt(score_db_money*trade_score);
	
	$(function(){
		$("input[name='ye_check']").attr("checked","checked");
		if(left_money>=need_money){
			$("input[name='credit']").val(need_money);
			$("input[name='payment']").attr("disabled",true);
			count_total_money(need_money,0,0,need_money);
		}else{
			$("input[name='credit']").val(left_money);
			count_total_money(left_money,0,0,need_money);
		}
		$("input[name='ye_check']").bind("click",function(){
			var pay_score=isNaN($("input[name='pay_score']").attr("value"))?0:parseInt($("input[name='pay_score']").attr("value"));
			var pay_score_money=parseFloat(parseInt(pay_score/trade_score*100)/100);//保留两位小数
			var need_money_m=need_money-pay_score_money;
				need_money_m=round2(need_money_m,2);
			var pay_money_val=0;
			if($(this).is(':checked')){
				$("input[name='credit']").removeAttr("disabled");
				if(pay_score_money>=need_money)
				{
					$("input[name='credit']").val(0);
					$("input[name='payment']").attr("disabled",true);
				}
				else if(left_money>=need_money_m){
					pay_money_val=need_money_m;
					$("input[name='credit']").val(need_money_m);
					$("input[name='payment']").attr("disabled",true);
				}else{
					pay_money_val=left_money;
					$("input[name='credit']").val(left_money);
				}
			}else{
				$("input[name='credit']").val(0);
				$("input[name='payment']").attr("disabled",false);
				$("input[name='credit']").attr("disabled","disabled");
			}
			count_total_money(pay_money_val,pay_score,pay_score_money,need_money);
			$("#real_total_box li").css("borderBottom","1px solid #e5e5e5");
			$("#real_total_box").find("li:visible").last().css("borderBottom","0px");
		});
		$("input[name='credit']").bind("blur",function(){
			var money=isNaN($(this).val())?0:round2($(this).val(),2);
			var pay_score=isNaN($("input[name='pay_score']").val())?0:parseInt($("input[name='pay_score']").val());
			var pay_score_money=parseFloat(parseInt(pay_score/trade_score*100)/100);//保留两位小数
			
			var need_money_m=need_money-pay_score_money;
				need_money_m=round2(need_money_m,2);

			var pay_money_val=0;
			if(money >0){
				if(pay_score_money>=need_money)
				{
					$("input[name='credit']").val(0);
					$("input[name='payment']").attr("disabled",true);
				}
				else if(money>=need_money_m){
					pay_money_val=need_money_m;
					$("input[name='credit']").val(need_money_m);
					$("input[name='payment']").attr("disabled",true);
				}else{
					pay_money_val=money;
					$("input[name='credit']").val(money);
					$("input[name='payment']").attr("disabled",false);
				}
			}else{
				$("input[name='credit']").val(0);
			}
			count_total_money(pay_money_val,pay_score,pay_score_money,need_money);
			$("#real_total_box li").css("borderBottom","1px solid #e5e5e5");
			$("#real_total_box").find("li:visible").last().css("borderBottom","0px");
		});
		
		
		$("input[name='score_check']").bind('click',function(){
			
			var credit_money=isNaN($("input[name='credit']").val())?0:parseFloat($("input[name='credit']").val());
			var need_money_s=need_money-credit_money;
				need_money_s=round2(need_money_s,2);
			
			var pay_score_val=0;
			var pay_score_money_val=0;
			if($(this).is(':checked')){
				$("input[name='pay_score']").removeAttr("disabled");
				if(credit_money>=need_money)
				{
					$("input[name='pay_score']").val(0);
					$("#score_trade_money").html("¥0");
					$("input[name='payment']").attr("disabled",true);
				}
				else if(score_db_money>=need_money_s){
					pay_score_val=parseInt(need_money_s*trade_score);
					pay_score_money_val=need_money_s;
					$("input[name='pay_score']").val(pay_score_val);
					$("#score_trade_money").html("¥"+need_money_s);
					$("input[name='payment']").attr("disabled",true);
					
				}else{
					pay_score_val=score_db_pay;
					pay_score_money_val=score_db_money;
					$("input[name='pay_score']").val(score_db_pay);
					$("#score_trade_money").html("¥"+score_db_money);
				}
				
			}else{
				$("input[name='pay_score']").val(0);
				$("#score_trade_money").html("¥0");
				$("input[name='pay_score']").attr("disabled",true);
				$("input[name='payment']").attr("disabled",false);
			}
			
			count_total_money(credit_money,pay_score_val,pay_score_money_val,need_money);
			$("#real_total_box li").css("borderBottom","1px solid #e5e5e5");
			$("#real_total_box").find("li:visible").last().css("borderBottom","0px");
		});
		
		$("input[name='pay_score']").bind("blur",function(){
			var pay_score=isNaN($(this).val())?0:parseInt($(this).val());
			var pay_score_money=parseFloat(parseInt(pay_score/trade_score*100)/100);//保留两位小数
				pay_score=parseInt(pay_score_money*trade_score);
				
			var credit_money=parseFloat($("input[name='credit']").val());
			var need_money_s=need_money-credit_money;
				need_money_s=round2(need_money_s,2);
			
			var pay_score_val=0;
			var pay_score_money_val=0;
			if(pay_score >0)
			{
				if(credit_money>=need_money)
				{
					$("input[name='pay_score']").val(0);
					$("input[name='payment']").attr("disabled",true);
					$("#score_trade_money").html("¥0");
				}
				else if(pay_score_money>=need_money_s){
					pay_score_val=parseInt(need_money_s*trade_score);
					pay_score_money_val=need_money_s;
					$("input[name='pay_score']").val(pay_score_val);
					$("input[name='payment']").attr("disabled",true);
					$("#score_trade_money").html("¥"+pay_score_money_val);
				}else{
					pay_score_val=pay_score;
					pay_score_money_val=pay_score_money;
					$("input[name='payment']").attr("disabled",false);
					$("input[name='pay_score']").val(pay_score);
					$("#score_trade_money").html("¥"+pay_score_money);
					
				}
			}
			else
			{	
				$("input[name='pay_score']").val(0);
				$("#score_trade_money").html("¥0");
			}
			
			count_total_money(credit_money,pay_score_val,pay_score_money_val,need_money);
			$("#real_total_box li").css("borderBottom","1px solid #e5e5e5");
			$("#real_total_box").find("li:visible").last().css("borderBottom","0px");
		});
		
	});
 
	
	function count_total_money(pay_money,pay_score,pay_score_money,total)
	{
		pay_money=parseFloat(pay_money);
		pay_score_money=parseFloat(pay_score_money);
		total=parseFloat(total);
		var online_pay_money=total-(pay_money+pay_score_money);
			online_pay_money=round2(online_pay_money,2);
		
		if(pay_money >0)
		{
			var html="-¥"+pay_money;
			$("#real_money_box").show();
			$("#real_money_val").html(html);
		}else{
			$("#real_money_val").html("");
			$("#real_money_box").hide();
		}
		
		if(pay_score_money>0)
		{
			$("#real_score_box").show();
			$("#real_score_money").html("-¥"+pay_score_money+"&nbsp;("+pay_score+"积分)");
		}else
		{
			$("#real_money").html("");
			$("#real_score_box").hide();	
		}
		
		
		if(pay_money>0 || pay_score_money>0)
		{
			$("#real_online_box").show();
			$("#real_online_money").html("¥"+online_pay_money);
		}else{
			$("#real_online_money").html("");
			$("#real_online_box").hide();
		}
	}   
<?php endif; ?>            
</script>
<?php echo $this->fetch('inc/footer.html'); ?>
