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

<div class="main">
<div class="main_title"><?php echo ($main_title); ?></div>
<div class="blank5"></div>
<div class="button_row">
	<?php if($default_map): ?><input type="button" class="button" value="<?php echo L("ADD");?>" onclick="location.href='<?php echo u("Adv/add",array("rel_table"=>$default_map['rel_table'],"rel_id"=>$default_map['rel_id']));?>';" />
	<?php else: ?>
	<input type="button" class="button" value="<?php echo L("ADD");?>" onclick="add();" /><?php endif; ?>
	<input type="button" class="button" value="<?php echo L("FOREVERDEL");?>" onclick="foreverdel();" />
</div>
<div class="blank5"></div>
<!-- Think 系统列表组件开始 -->
<table id="dataTable" class="dataTable" cellpadding=0 cellspacing=0 ><tr><td colspan="7" class="topTd" ></td></tr><tr class="row" ><th width="8"><input type="checkbox" id="check" onclick="CheckAll('dataTable')"></th><th width="50px  "><a href="javascript:sortBy('id','<?php echo ($sort); ?>','Adv','index')" title="按照<?php echo L("ID");?><?php echo ($sortType); ?> "><?php echo L("ID");?><?php if(($order)  ==  "id"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('name','<?php echo ($sort); ?>','Adv','index')" title="按照广告名称<?php echo ($sortType); ?> ">广告名称<?php if(($order)  ==  "name"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('is_effect','<?php echo ($sort); ?>','Adv','index')" title="按照<?php echo L("IS_EFFECT");?>  <?php echo ($sortType); ?> "><?php echo L("IS_EFFECT");?>  <?php if(($order)  ==  "is_effect"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('tmpl','<?php echo ($sort); ?>','Adv','index')" title="按照模板  <?php echo ($sortType); ?> ">模板  <?php if(($order)  ==  "tmpl"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('adv_id','<?php echo ($sort); ?>','Adv','index')" title="按照广告ID<?php echo ($sortType); ?> ">广告ID<?php if(($order)  ==  "adv_id"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th width="60px">操作</th></tr><?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$adv): ++$i;$mod = ($i % 2 )?><tr class="row" ><td><input type="checkbox" name="key" class="key" value="<?php echo ($adv["id"]); ?>"></td><td><?php echo ($adv["id"]); ?></td><td><a href="javascript:edit  ('<?php echo (addslashes($adv["id"])); ?>')"><?php echo ($adv["name"]); ?></a></td><td><?php echo (get_is_effect($adv["is_effect"],$adv['id'])); ?></td><td><?php echo ($adv["tmpl"]); ?></td><td><?php echo ($adv["adv_id"]); ?></td><td class="op_action"><div class="viewOpBox_demo"><a href="javascript:edit('<?php echo ($adv["id"]); ?>')"><?php echo L("EDIT");?></a>&nbsp;<a href="javascript: foreverdel('<?php echo ($adv["id"]); ?>')"><?php echo L("FOREVERDEL");?></a>&nbsp;</div><a href="javascript:void(0);" class="opration"><span>操作</span><i></i></a></td></tr><?php endforeach; endif; else: echo "" ;endif; ?><tr><td colspan="7" class="bottomTd"> &nbsp;</td></tr></table>
<!-- Think 系统列表组件结束 -->
 

<div class="blank5"></div>
<div class="page"><?php echo ($page); ?></div>
</div>
</body>
</html>