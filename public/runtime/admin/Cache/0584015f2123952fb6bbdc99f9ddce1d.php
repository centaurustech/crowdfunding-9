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
<link rel="stylesheet" type="text/css" href="__TMPL__Common/js/calendar/calendar.css" />
<script type="text/javascript" src="__TMPL__Common/js/calendar/calendar.js"></script>
<script type="text/javascript" src="__TMPL__Common/js/sms_index.js"></script>
<div class="main">
<div class="main_title"><?php echo L("ADD");?> <a href="<?php echo u("PromoteMsg/sms_index");?>" class="back_list"><?php echo L("BACK_LIST");?></a></div>
<div class="blank5"></div>
<form name="edit" action="__APP__" method="post" enctype="multipart/form-data">
<table class="form" cellpadding=0 cellspacing=0>
	<tr>
		<td colspan=2 class="topTd"></td>
	</tr>
	<tr>
		<td class="item_title"><?php echo L("SEND_TIME");?>:</td>
		<td class="item_input">
			<input type="text" class="textbox require" name="send_time" id="send_time" value="<?php echo to_date(get_gmtime());?>" onfocus="this.blur(); return showCalendar('send_time', '%Y-%m-%d %H:%M:%S', false, false, 'btn_send_time');" />
			<input type="button" class="button" id="btn_send_time" value="<?php echo L("SELECT_TIME");?>" onclick="return showCalendar('send_time', '%Y-%m-%d %H:%M:%S', false, false, 'btn_send_time');" />	
			<input type="button" class="button" value="<?php echo L("CLEAR_TIME");?>" onclick="$('#send_time').val('');" />	
		</td>
	</tr>
	<tr>
		<td class="item_title"><?php echo L("SMS_CONTENT");?>:</td>
		<td class="item_input">
			<textarea name="content" class="textarea require"></textarea>
		</td>
	</tr>
	<tr>
		<td class="item_title"><?php echo L("SEND_TYPE");?>:</td>
		<td class="item_input">
			 <select name="send_type">
			 	<option value="0"><?php echo L("SEND_TYPE_0");?></option>
				<option value="2"><?php echo L("SEND_TYPE_2");?></option>
			 </select>
		</td>
	</tr>
	
	<tr id="send_define_data">
		<td class="item_title"><?php echo L("SEND_DEFINE_DATA");?>:</td>
		<td class="item_input">
			<textarea class="textarea" name="send_define_data" ></textarea>
			<span class="tip_span"><?php echo L("SEND_DEFINE_DATA_TIP");?></span>
		</td>
	</tr>
	<tr>
		<td class="item_title"></td>
		<td class="item_input">
			<!--隐藏元素-->
			<input type="hidden" name="type" value="0" />
			<input type="hidden" name="<?php echo conf("VAR_MODULE");?>" value="PromoteMsg" />
			<input type="hidden" name="<?php echo conf("VAR_ACTION");?>" value="insert_sms" />
			<!--隐藏元素-->
			<input type="submit" class="button" value="<?php echo L("ADD");?>" />
			<input type="reset" class="button" value="<?php echo L("RESET");?>" />
		</td>
	</tr>
	<tr>
		<td colspan=2 class="bottomTd"></td>
	</tr>
</table>	 
</form>
</div>
</body>
</html>