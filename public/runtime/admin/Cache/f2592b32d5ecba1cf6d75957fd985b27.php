<?php if (!defined('THINK_PATH')) exit();?>

<script type="text/javascript">
	
	function check_incharge_form()
	{ 
		if($("input[name='money']").val()==''&&$("input[name='score']").val()==''&&$("input[name='point']").val()=='')
		{
			alert("资金，积分至少要填一项");
			return false;
		}
		if($("input[name='money']").val()!=''&&isNaN($("input[name='money']").val()))
		{
			alert(LANG['MONEY_FORMAT_ERROR']);
			return false;
		}
		if($("input[name='score']").val()!=''&&isNaN($("input[name='score']").val()))
		{
			alert(LANG['SCORE_FORMAT_ERROR']);
			return false;
		}
		if($("input[name='point']").val()!=''&&isNaN($("input[name='point']").val()))
		{
			alert(LANG['POINT_FORMAT_ERROR']);
			return false;
		}
		
		return true;
	}
</script>
<div class="main">
<div class="main_title"><?php echo ($user_info["user_name"]); ?> <?php echo L("USER_MONEY");?>:<?php echo (format_price($user_info["money"])); ?>&nbsp;<?php echo L("USER_SCORE");?>:<?php echo ($user_info["score"]); ?>&nbsp;<?php echo L("USER_SCORE");?>:<?php echo ($user_info["point"]); ?></div>
<div class="blank5"></div>
<form name="edit" action="__APP__" method="post" enctype="multipart/form-data" onsubmit="return check_incharge_form();">
<table class="form" cellpadding=0 cellspacing=0>
	<tr>
		<td colspan=2 class="topTd"></td>
	</tr>
	<tr>
		<td class="item_title"><?php echo L("INCHARGE_USER_MONEY");?>:</td>
		<td class="item_input"><input type="text" class="textbox require" name="money" />
		<span class='tip_span'>[<?php echo L("INCHARGE_USER_MONEY_TIP");?>]</span>
		</td>
	</tr>
	<tr>
		<td class="item_title"><?php echo L("INCHARGE_USER_SCORE");?>:</td>
		<td class="item_input"><input type="text" class="textbox require" name="score" />
		<span class='tip_span'>[<?php echo L("INCHARGE_USER_MONEY_TIP");?>]</span>
		</td>
	</tr>
	<tr>
		<td class="item_title"><?php echo L("INCHARGE_USER_POINT");?>:</td>
		<td class="item_input"><input type="text" class="textbox require" name="point" />
		<span class='tip_span'>[<?php echo L("INCHARGE_USER_MONEY_TIP");?>]</span>
		</td>
	</tr>
	<tr>
		<td class="item_title"><?php echo L("INCHARGE_MSG");?>:</td>
		<td class="item_input"><input type="text" class="textbox" name="msg" style="width:400px;" />
		</td>
	</tr>
	<tr>
		<td class="item_title">&nbsp;</td>
		<td class="item_input">
			<!--隐藏元素-->
			<input type="hidden" name="id" value="<?php echo ($user_info["id"]); ?>" />
			<input type="hidden" name="<?php echo conf("VAR_MODULE");?>" value="User" />
			<input type="hidden" name="<?php echo conf("VAR_ACTION");?>" value="modify_account" />
			<!--隐藏元素-->
			<input type="submit" class="button" value="<?php echo L("OK");?>" />
			<input type="reset" class="button" value="<?php echo L("RESET");?>" />
		</td>
	</tr>
	<tr>
		<td colspan=2 class="bottomTd"></td>
	</tr>
</table>	 
</form>
</div>