<?php if (!defined('THINK_PATH')) exit();?><tr class="history_table">
		<td clospan=7>
			 <table class="form" cellpadding=0 cellspacing=0>
			 	<tr>
			 		<td colspan=2 align="center">
			 			第<?php echo ($history_num); ?>阶段
						<input type="button" class="button history_del" value="删除第<?php echo ($history_num); ?>阶段" style="float:right;" >
					</td>
			 	</tr>
				<tr>
					<td class="item_title">阶段名称：</td>
					<td class="item_input"><input type="text" name="history[<?php echo ($history_num); ?>][info][name]" value=""></td>
				</tr>
				<tr>
					<td class="item_title">起始时间-结束时间</td>
					<td class="item_input">
  		                    <input readonly="" type="text" class="small_textbox w100 jcDate jcDateIco" rel="input-text" value="" name="history[<?php echo ($history_num); ?>][info][begin_time]"  placeholder="请选择日期">
		                    <span class="add-on"><i class="icon-calendar"></i></span>
 						-
 		                    <input readonly="" type="text" class="small_textbox w100 jcDate jcDateIco" rel="input-text" value="" name="history[<?php echo ($history_num); ?>][info][end_time]"  placeholder="请选择日期">
		                    <span class="add-on"><i class="icon-calendar"></i></span>
 					</td>
				</tr>
				<tr>
					<td class="item_title">阶段达成目标描述：</td>
					<td class="item_input">
  						<textarea id='history<?php echo ($history_num); ?>_describe' name='history[<?php echo ($history_num); ?>][info][describe]' class='ketext' style='width:750px; height:350px;' ></textarea> 
 					</td>
				</tr>
				<tr>
					<td class="item_title">完成的手段，方法</td>
					<td class="item_input">
  						<textarea id='history_<?php echo ($history_num); ?>_do_describe' name='history[<?php echo ($history_num); ?>][info][do_describe]' class='ketext' style='width:750px; height:350px;' ></textarea> 
					</td>
				</tr>
				<tr>
					<td class="item_title">阶段收入：</td>
					<td class="item_input">
						<select name="history[<?php echo ($history_num); ?>][info][is_income]" id="history<?php echo ($history_num); ?>_is_income">
							<option value="0">无</option>
							<option value="1">有</option>
						</select>
					</td>
				</tr>
				<tr id="history<?php echo ($history_num); ?>_income_list" style="display:none;">
					<td>&nbsp;</td>
					<td>
						<table cellpadding=0 cellspacing=0 class="form income_table" rel="history<?php echo ($history_num); ?>_income" >
							<thead>
								<tr>
									<td>收入类别</td>
									<td>收入金额￥</td>
									<td>备注</td>
								</tr>
							</thead>
							<tbody>
								<tr id="history<?php echo ($history_num); ?>_income_demo" class="history[<?php echo ($history_num); ?>]_income_row">
									<td>
										<input type="text" name="history[<?php echo ($history_num); ?>][income][1][type]" value="">
									</td>
									<td>
										<input type="text" class="amount" name="history[<?php echo ($history_num); ?>][income][1][money]" value="" onkeyup="amount(this)" />
									</td>
									<td>
										<input type="text" name="history[<?php echo ($history_num); ?>][income][1][memo]" value="">
									</td>
								</tr>
							</tbody>
 							
						</table>
					</td>
				</tr>
				<tr id="history<?php echo ($history_num); ?>_income_bnt" style="display:none;">
					<td class="item_title">
						&nbsp;
					</td>
					<td class="item_input">
						合计：<span class="item_income">0</span>
						<input type="hidden"  class="item_income_input" name="history[<?php echo ($history_num); ?>][info][item_income]" />
						<input type="hidden" name="history_<?php echo ($history_num); ?>_income_num" value="1" />
						<input type="button" value="添加收入类别" class="button" id="history<?php echo ($history_num); ?>_income_button">
					</td>
				</tr>
				<tr>
					<td>阶段开支:</td>
					<td>
						<select name="history[<?php echo ($history_num); ?>][info][is_out]" id="history<?php echo ($history_num); ?>_is_out">
							<option value="0">无</option>
							<option value="1">有</option>
						</select>
					</td>
				</tr>
				<tr id="history<?php echo ($history_num); ?>_out_list" style="display:none;">
					<td>&nbsp;</td>
					<td>
						<table cellpadding=0 cellspacing=0 class="form out_table_1" rel="history<?php echo ($history_num); ?>_out" >
							<thead>
								<tr>
									<td>开支类别</td>
									<td>开支金额￥</td>
									<td>备注</td>
								</tr>
							</thead>
							<tbody>
								<tr id="history<?php echo ($history_num); ?>_out_demo" class="history<?php echo ($history_num); ?>_out_row">
									<td>
										<input type="text" name="history[<?php echo ($history_num); ?>][out][1][type]" value="">
									</td>
									<td>
										<input type="text" class="amount" name="history[<?php echo ($history_num); ?>][out][1][money]" value="" onkeyup="amount(this)" />
									</td>
									<td>
										<input type="text" name="history[<?php echo ($history_num); ?>][out][1][memo]" value="" />
									</td>
								</tr>
							</tbody>
 							
						</table>
					</td>
 				</tr>
				<tr id="history<?php echo ($history_num); ?>_out_bnt" style="display:none;">
					<td class="item_title">
						&nbsp;
					</td>
					<td class="item_input">
						合计：<span class="item_out">0</span>
						<input type="hidden"  class="item_out_input" name="history[<?php echo ($history_num); ?>][info][item_out]" />
 						<input type="hidden" name="history_<?php echo ($history_num); ?>_out_num" value="1" />
						<input type="button" class="button" value="添加开支类别" id="history<?php echo ($history_num); ?>_pay_button">
					</td>
 				</tr>
				
			 </table>
		</td>
		<script>
 			$(function(){
 				$("#history<?php echo ($history_num); ?>_is_out").live('change',function(){
  					if($(this).val()==1){
 						$("#history<?php echo ($history_num); ?>_out_list").show();
						$("#history<?php echo ($history_num); ?>_out_bnt").show();
					}else{
						$("#history<?php echo ($history_num); ?>_out_list").hide();
						$("#history<?php echo ($history_num); ?>_out_bnt").hide();
					}
				});
				$("#history<?php echo ($history_num); ?>_is_income").live('change',function(){
					if($(this).val()==1){
						$("#history<?php echo ($history_num); ?>_income_list").show();
						$("#history<?php echo ($history_num); ?>_income_bnt").show();
					}else{
						$("#history<?php echo ($history_num); ?>_income_list").hide();
						$("#history<?php echo ($history_num); ?>_income_bnt").hide();
					}
				});
				$("#history<?php echo ($history_num); ?>_income_button").live('click',function(){
					var demo_income_1="<tr>"+$("#history_income_demo_1").html()+"</tr>";
					var num=parseInt($("input[name='history_<?php echo ($history_num); ?>_income_num']").val())+1;
					$("input[name='history_<?php echo ($history_num); ?>_income_num']").val(num);
					var new_income=demo_income_1.replace(/history_income/g,"history[<?php echo ($history_num); ?>][out]["+num+"]");
	  				$("table[rel='history<?php echo ($history_num); ?>_income'] tbody").append(new_income);
				});
				$("#history<?php echo ($history_num); ?>_pay_button").live('click',function(){
					var demo_pay_1="<tr>"+$("#history_out_demo_1").html()+"</tr>";
					var num=parseInt($("input[name='history_<?php echo ($history_num); ?>_out_num']").val())+1;
					$("input[name='history_<?php echo ($history_num); ?>_out_num']").val(num);
   					var new_pay=demo_pay_1.replace(/history_out/g,"history[<?php echo ($history_num); ?>][out]["+num+"]");
 	 				$("table[rel='history<?php echo ($history_num); ?>_out'] tbody").append(new_pay);
 				});
 			});
		</script>
	</tr>