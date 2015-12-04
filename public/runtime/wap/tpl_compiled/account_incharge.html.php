<?php echo $this->fetch('inc/header_account.html'); ?> 
<?php
$this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/refund.js";
$this->_var['dcpagejs'][] = $this->_var['TMPL_REAL']."/js/refund.js";
$this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/go_pay.js";
$this->_var['dcpagejs'][] = $this->_var['TMPL_REAL']."/js/go_pay.js";
?>
<script type="text/javascript" src="<?php 
$k = array (
  'name' => 'parse_script',
  'v' => $this->_var['dpagejs'],
  'c' => $this->_var['dcpagejs'],
);
echo $k['name']($k['v'],$k['c']);
?>"></script>
<section class="account_money_carry_bank">
	<nav class="tab_hd webkit-box">
		<?php if ($this->_var['is_tg'] && $this->_var['user_info']['ips_acct_no']): ?>
	  	<a href="javascript:void(0);" class="nav_l sizing cur" rel="carry_type1" onclick="SelectPayType(this,0);">在线支付</a>
	  	<a href="javascript:void(0);" class="nav_r sizing" rel="carry_type2" onclick="SelectPayType(this,1);">第三方托管支付</a>
	  	<?php else: ?>
	  	<a href="javascript:void(0);" class="nav_all sizing cur" rel="carry_type1">在线支付</a>
	  	<?php endif; ?>
	</nav>
	<div class="mod_main">
		<form class="pay_form" action="<?php
echo parse_url_tag_wap("u:account#go_pay|"."".""); 
?>" target="_blank" method="post">
			<div class="ul_block">
				<ul>
					<li class="webkit-box">
						<label class="input_lable">充值金额：</label>
						<input type="text" placeholder="请输入充值金额" value="<?php echo $this->_var['money']; ?>" name="money" class="textbox webkit-box-flex mr10" onKeyUp="amount(this)" />元
					</li>
				</ul>
			</div>
			<div class="ul_block" id="J_online_pay">
				<div class="blank15"></div>
			 	<div class="pl15 mb5 f16">选择支付方式</div>
		 		<ul>
					<?php $_from = $this->_var['payment_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'payment');$this->_foreach['payment'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['payment']['total'] > 0):
    foreach ($_from AS $this->_var['k'] => $this->_var['payment']):
        $this->_foreach['payment']['iteration']++;
?> 
			   		<li class="">
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
			<div class="blank15"></div>
			<div class="submit_btn_row">		 
				<input class="ui-button bg_red" type="button" value="确定，去付款" />				
				<input type="hidden" id="back_url" value="<?php
echo parse_url_tag_wap("u:account|"."".""); 
?>" />	
				<input type="hidden" value="1" name="ajax" />
				<input type="hidden" value="0" name="is_tg" />
			</div>
			<div class="blank15"></div>
		</form>
	</div>
</section>
<div class="blank15"></div>
<script type="text/javascript">
	var payType = 0;
	var ips_submit_lock = true;
	function SelectPayType(obj,i){
		$(obj).addClass("cur").siblings().removeClass("cur");
  		switch(i){
			case 0:
				payType = 0;
				$("input[name='payment']").attr("checked",false);
				$("#J_online_pay").show();
 				$("#J_ips_pay").hide();
				$("#J_ips_pay_1").hide();
				$(".pay_form").attr("action","<?php
echo parse_url_tag_wap("u:account#go_pay|"."".""); 
?>");
				$("input[name='is_tg']").val(0);
 				break;
 			case 1:
				payType=1;
 				$("input[name='payment']").attr("checked","");
				payType = 1;
				$("#J_online_pay").hide();
 				//$("#J_ips_pay").show();
				//$("#J_ips_pay_1").show();
				url = APP_ROOT+"/index.php?ctl=collocation&act=DoDpTrade&user_type=0&user_id=<?php echo $this->_var['user_info']['id']; ?>"+"&pTrdAmt="+$("input[name='money']").val();
				$(".pay_form").attr("action",url);
				$("input[name='is_tg']").val(1);
 				break;
		}
	}
	$("input[name='money']").bind("blur",function(){
		if(payType==1){
			url = APP_ROOT+"/index.php?ctl=collocation&act=DoDpTrade&user_type=0&user_id=<?php echo $this->_var['user_info']['id']; ?>"+"&pTrdAmt="+$("input[name='money']").val();
 			$(".pay_form").attr("action",url);
			get_pay_url="<?php
echo parse_url_tag_wap("u:ajax#get_carry_fee|"."".""); 
?>";
			var query = new Object();
			query.money=$("input[name='money']").val();
			$.ajax({
				url: get_pay_url,
				dataType: "json",
				data:query,
				type: "POST",
				success:function(ajaxobj){
 					if(ajaxobj.status==1){
 						 $("#incharge_fee").html(ajaxobj.fee+" 人民币(元)");
						 end_money=parseFloat(query.money)- parseFloat(ajaxobj.fee);
						 $("#incharge_fee_end").html(end_money+" 人民币(元)");
					}
				}
			});
		}else{
			$(".pay_form").attr("action","<?php
echo parse_url_tag_wap("u:account#go_pay|"."".""); 
?>");
		}
	});
 </script>
<?php echo $this->fetch('inc/footer.html'); ?> 