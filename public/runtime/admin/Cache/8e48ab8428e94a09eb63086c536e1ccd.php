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

<script type="text/javascript" src="__TMPL__Common/js/calendar/calendar.php?lang=zh-cn" ></script>
<script type="text/javascript">
	
	function total_info(){
		location.href = ROOT + '?m=Statistics&a=site_costs_info';
	}
</script>
<script type="text/javascript">	
	function export_csv_site_costs()
	{
		var query = $("#search_form").serialize();
		query = query.replace("&m=Statistics","");
		query = query.replace("&a=site_costs","");
		var url= ROOT+"?"+VAR_MODULE+"="+MODULE_NAME+"&"+VAR_ACTION+"=export_csv_site_costs"+"&"+query;
		location.href = url;
	}
	
</script>
<link rel="stylesheet" type="text/css" href="__TMPL__Common/js/calendar/calendar.css" />
<script type="text/javascript" src="__TMPL__Common/js/calendar/calendar.js"></script>
<div class="main">
<div class="main_title">平台统计-网站费用统计</div>
<div class="blank5"></div>
	
	
	<form name="search" id = "search_form"  action="__APP__" method="get">		
		<input type="button" class="button" value="网站收益明细" onclick="total_info()" />	
	</form>
	
	
<div class="blank5"></div>

<div class="blank5"></div>
	
	
	
<!-- Think 系统列表组件开始 -->
<table id="dataTable" class="dataTable" cellpadding=0 cellspacing=0 ><tr><td colspan="5" class="topTd" ></td></tr><tr class="row" ><th><a href="javascript:sortBy('关联用户数量','<?php echo ($sort); ?>','Statistics','site_costs_total')" title="按照关联用户数量   <?php echo ($sortType); ?> ">关联用户数量   <?php if(($order)  ==  "关联用户数量"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('回报众筹成功筹款','<?php echo ($sort); ?>','Statistics','site_costs_total')" title="按照回报众筹成功筹款   <?php echo ($sortType); ?> ">回报众筹成功筹款   <?php if(($order)  ==  "回报众筹成功筹款"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('股权众筹成功筹款','<?php echo ($sort); ?>','Statistics','site_costs_total')" title="按照股权众筹成功筹款   <?php echo ($sortType); ?> ">股权众筹成功筹款   <?php if(($order)  ==  "股权众筹成功筹款"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('可获得佣金','<?php echo ($sort); ?>','Statistics','site_costs_total')" title="按照可获得佣金   <?php echo ($sortType); ?> ">可获得佣金   <?php if(($order)  ==  "可获得佣金"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('用户缴纳诚意金','<?php echo ($sort); ?>','Statistics','site_costs_total')" title="按照用户缴纳诚意金   <?php echo ($sortType); ?> ">用户缴纳诚意金   <?php if(($order)  ==  "用户缴纳诚意金"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th></tr><?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$deal): ++$i;$mod = ($i % 2 )?><tr class="row" ><td><?php echo ($deal["关联用户数量"]); ?></td><td><?php echo (format_price($deal["回报众筹成功筹款"])); ?></td><td><?php echo (format_price($deal["股权众筹成功筹款"])); ?></td><td><?php echo (format_price($deal["可获得佣金"])); ?></td><td><?php echo (format_price($deal["用户缴纳诚意金"])); ?></td></tr><?php endforeach; endif; else: echo "" ;endif; ?><tr><td colspan="5" class="bottomTd"> &nbsp;</td></tr></table>
<!-- Think 系统列表组件结束 -->
 
					
	
<div class="blank5"></div>
<div class="page"><?php echo ($page); ?></div>

</div>

</body>
</html>