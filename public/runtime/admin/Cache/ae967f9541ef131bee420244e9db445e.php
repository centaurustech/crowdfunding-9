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
<div class="main_title"><?php echo L("CHANGE_PASSWORD");?></div>
<div class="blank5"></div>
	<div class="change_password">
		<form name="edit" action="__APP__" method="post" enctype="multipart/form-data">
		<table class="form" cellpadding=0 cellspacing=0>
			<tr>
				<td colspan=2 class="topTd"></td>
			</tr>
			<tr>
				<td class="item_title"><?php echo L("ADM_NAME");?>:</td>
				<td class="item_input"><?php echo ($adm_data["adm_name"]); ?></td>
			</tr>
			<tr>
			<td class="item_title"><?php echo L("ADM_PASSWORD");?>:</td>
			<td class="item_input"><input type="password" class="textbox require" name="adm_password" /></td>
			</tr>
			<tr>
			<td class="item_title"><?php echo L("ADM_NEW_PASSWORD");?>:</td>
			<td class="item_input"><input type="password" class="textbox require" name="adm_new_password" /></td>
			</tr>
			<tr>
			<td class="item_title"><?php echo L("ADM_CONFIRM_PASSWORD");?>:</td>
			<td class="item_input"><input type="password" class="textbox require" name="adm_confirm_password" /></td>
			</tr>
			<tr>
				<td class="item_title"></td>
				<td class="item_input">
					<!--隐藏元素-->
					<input type="hidden" name="adm_id" value="<?php echo ($adm_data["adm_id"]); ?>" />
					<input type="hidden" name="<?php echo conf("VAR_MODULE");?>" value="Index" />
					<input type="hidden" name="<?php echo conf("VAR_ACTION");?>" value="do_change_password" />
					<!--隐藏元素-->
					<input type="submit" class="button" value="<?php echo L("CHANGE");?>" />
					<input type="reset" class="button" value="<?php echo L("RESET");?>" />
				</td>
			</tr>
			<tr>
				<td colspan=2 class="bottomTd"></td>
			</tr>
		</table>	 
		</form>
	</div>
</div>
</body>
</html>