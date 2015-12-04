<?php if (!defined('THINK_PATH')) exit();?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="__TMPL__Common/style/style.css" />
<script type="text/javascript" src="__TMPL__Common/js/check_dog.js"></script>
<script type="text/javascript" src="__TMPL__Common/js/IA300ClientJavascript.js"></script>
<script type="text/javascript">
 	var VAR_MODULE = "<?php echo conf("VAR_MODULE");?>";
	var VAR_ACTION = "<?php echo conf("VAR_ACTION");?>";
	var MODULE_NAME	=	'<?php echo MODULE_NAME; ?>';
	var ACTION_NAME	=	'<?php echo ACTION_NAME; ?>';
	var ROOT = '__APP__';
	var ROOT_PATH = '<?php echo APP_ROOT; ?>';
	var CURRENT_URL = '<?php echo trim($_SERVER['REQUEST_URI']);?>';
	var INPUT_KEY_PLEASE = "<?php echo L("INPUT_KEY_PLEASE");?>";
	var TMPL = '__TMPL__';
	var APP_ROOT = '<?php echo APP_ROOT; ?>';
	var LOGINOUT_URL = '<?php echo u("Public/do_loginout");?>';
	var WEB_SESSION_ID = '<?php echo es_session::id(); ?>';
	var EMOT_URL = '<?php echo APP_ROOT; ?>/public/emoticons/';
	var MAX_FILE_SIZE = "<?php echo (app_conf("MAX_IMAGE_SIZE")/1000000)."MB"; ?>";
	var FILE_UPLOAD_URL ='<?php echo u("File/do_upload");?>' ;
	CHECK_DOG_HASH = '<?php $adm_session = es_session::get(md5(conf("AUTH_KEY"))); echo $adm_session["adm_dog_key"]; ?>';
	function check_dog_sender_fun()
	{
		window.clearInterval(check_dog_sender);
		check_dog2();
	}
	var check_dog_sender = window.setInterval("check_dog_sender_fun()",5000);
	
</script>
<script type="text/javascript" src="__TMPL__Common/js/jquery.js"></script>
<script type="text/javascript" src="__TMPL__Common/js/jquery.timer.js"></script>
<script type="text/javascript" src="__TMPL__Common/js/script.js"></script>
<script type="text/javascript" src="__ROOT__/public/runtime/admin/lang.js"></script>
<script type='text/javascript'  src='__ROOT__/admin/public/kindeditor/kindeditor.js'></script>
<script type='text/javascript'  src='__ROOT__/admin/public/kindeditor/lang/zh_CN.js'></script>
</head>
<body onLoad="javascript:DogPageLoad();">
<div id="info"></div>

<script type="text/javascript" src="__TMPL__Common/js/referrals.js"></script>
<?php function get_register_time($user_id)
	{
		$create_time=M("User")->where("id=".intval($user_id))->getField("create_time");
		return to_date($create_time);
	}
	function get_order_time($order_id,$type)
	{
		if($type ==1)
		{
			$order_create_time=M("DealOrder")->where("id=".intval($order_id))->getField("create_time");
			return to_date($order_create_time);
		}
		else
		{
			return "注册奖励";
		}
		
	}
	function get_order_view($order_id,$type)
	{
		if($type ==1)
			return $order_id;
		else
			return "注册奖励";
	} ?>
<div class="main">
<div class="main_title">
	邀请返利列表
</div>
<div class="blank5"></div>
<div class="button_row">
	<input type="button" class="button" value="<?php echo L("DEL");?>" onclick="del();" />
</div>
<div class="blank5"></div>
<div class="search_row">
	<form name="search" action="__APP__" method="get">	
		推荐人：<input type="text" class="textbox" name="user_name" value="<?php echo ($user_name); ?>" style="width:100px;" />
		被推荐人：<input type="text" class="textbox" name="rel_user_name" value="<?php echo ($rel_user_name); ?>" style="width:100px;" />

		<input type="hidden" value="Referrals" name="m" />
		<input type="hidden" value="index" name="a" />
		<input type="hidden" value="<?php echo ($user_id); ?>" name="user_id" />
		<input type="submit" class="button" value="<?php echo L("SEARCH");?>" />
		<input type="button" class="button" value="导出" onclick="export_csv();">
	</form>
</div>
<div class="blank5"></div>
<!-- Think 系统列表组件开始 -->
<table id="dataTable" class="dataTable" cellpadding=0 cellspacing=0 ><tr><td colspan="10" class="topTd" ></td></tr><tr class="row" ><th width="8"><input type="checkbox" id="check" onclick="CheckAll('dataTable')"></th><th width="50px   "><a href="javascript:sortBy('id','<?php echo ($sort); ?>','Referrals','index')" title="按照<?php echo L("ID");?><?php echo ($sortType); ?> "><?php echo L("ID");?><?php if(($order)  ==  "id"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('user_name','<?php echo ($sort); ?>','Referrals','index')" title="按照推荐人   <?php echo ($sortType); ?> ">推荐人   <?php if(($order)  ==  "user_name"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('rel_user_name','<?php echo ($sort); ?>','Referrals','index')" title="按照被推荐人   <?php echo ($sortType); ?> ">被推荐人   <?php if(($order)  ==  "rel_user_name"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('rel_user_id','<?php echo ($sort); ?>','Referrals','index')" title="按照注册时间   <?php echo ($sortType); ?> ">注册时间   <?php if(($order)  ==  "rel_user_id"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('order_id','<?php echo ($sort); ?>','Referrals','index')" title="按照订单号   <?php echo ($sortType); ?> ">订单号   <?php if(($order)  ==  "order_id"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('order_id','<?php echo ($sort); ?>','Referrals','index')" title="按照下单时间   <?php echo ($sortType); ?> ">下单时间   <?php if(($order)  ==  "order_id"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('pay_time','<?php echo ($sort); ?>','Referrals','index')" title="按照奖励发放时间   <?php echo ($sortType); ?> ">奖励发放时间   <?php if(($order)  ==  "pay_time"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('score','<?php echo ($sort); ?>','Referrals','index')" title="按照邀请奖励（积分）<?php echo ($sortType); ?> ">邀请奖励（积分）<?php if(($order)  ==  "score"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th width="60px">操作</th></tr><?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$referrals): ++$i;$mod = ($i % 2 )?><tr class="row" ><td><input type="checkbox" name="key" class="key" value="<?php echo ($referrals["id"]); ?>"></td><td><?php echo ($referrals["id"]); ?></td><td><?php echo ($referrals["user_name"]); ?></td><td><?php echo ($referrals["rel_user_name"]); ?></td><td><?php echo (get_register_time($referrals["rel_user_id"])); ?></td><td><?php echo (get_order_view($referrals["order_id"],$referrals['type'])); ?></td><td><?php echo (get_order_time($referrals["order_id"],$referrals['type'])); ?></td><td><?php echo (to_date($referrals["pay_time"])); ?></td><td><?php echo ($referrals["score"]); ?></td><td class="op_action"><a href="javascript:del('<?php echo ($referrals["id"]); ?>')">删除</a>&nbsp;</td></tr><?php endforeach; endif; else: echo "" ;endif; ?><tr><td colspan="10" class="bottomTd"> &nbsp;</td></tr></table>
<!-- Think 系统列表组件结束 -->


<div class="blank5"></div>
<div class="page"><?php echo ($page); ?></div>
</div>
</body>
</html>