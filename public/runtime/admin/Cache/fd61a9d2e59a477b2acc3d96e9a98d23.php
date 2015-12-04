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
<style>
	.sql_info{ display:none;}
</style>
<?php function get_url($url)
	{
		if($url){
			return '<a href='.$url.' target="_blank">'.$url.'</a>';
		}
	}
 	function get_file_type($file){
		if($file=='index.php'||$file==''){
			return '前台';
		}else if($file=='wap.php'){
			return '手机前台';
		}
	}
	function get_sql_info($sql){
		if($sql){
		$i=unserialize($sql);
 		$str= implode(";<br /> ",$i);
		return "<p class='sql_p'><a href='javascript:void(0);' class='sql_chek'>查看详情</a><p class='sql_info'>".$str."</p></p>";
		}
	} ?>
<script>
	$(function(){
		$(".sql_chek").bind('click',function(){
 			 $(this).parent().parent().children(".sql_info").toggle() ;
		});
	});
</script>
<div class="main">
<div class="main_title"><?php echo ($main_title); ?></div>
<div class="blank5"></div>
<div class="search_row">
	<form name="search" action="__APP__" method="get">	
		module：<input type="text" class="textbox" name="module" value="<?php echo trim($_REQUEST['module']);?>" />		
  		action：<input type="text" class="textbox" name="action" value="<?php echo trim($_REQUEST['action']);?>" />		
		类型:
		<select name="file_name">
			<option value="" <?php if($file_name == ''): ?>selected="selected"<?php endif; ?> >请选择</option>	
			<option value="index.php" <?php if($file_name == 'index.php'): ?>selected="selected"<?php endif; ?> >前台</option>
			<option value="wap.php" <?php if($file_name == 'wap.php'): ?>selected="selected"<?php endif; ?> >手机前台</option>
		</select>
		<input type="hidden" value="SqlCheck" name="m" />
		<input type="hidden" value="index" name="a" />
		<input type="submit" class="button" value="<?php echo L("SEARCH");?>" />
		<input type="button" class="button" value="<?php echo L("DEL");?>" onclick="foreverdel();" />
	</form>
</div>
<div class="blank5"></div>
<!-- Think 系统列表组件开始 -->
<table id="dataTable" class="dataTable" cellpadding=0 cellspacing=0 ><tr><td colspan="15" class="topTd" ></td></tr><tr class="row" ><th width="8"><input type="checkbox" id="check" onclick="CheckAll('dataTable')"></th><th width="50px"><a href="javascript:sortBy('id','<?php echo ($sort); ?>','SqlCheck','index')" title="按照<?php echo L("ID");?><?php echo ($sortType); ?> "><?php echo L("ID");?><?php if(($order)  ==  "id"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('create_time','<?php echo ($sort); ?>','SqlCheck','index')" title="按照登记时间<?php echo ($sortType); ?> ">登记时间<?php if(($order)  ==  "create_time"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('module','<?php echo ($sort); ?>','SqlCheck','index')" title="按照<?php echo L("MODULE");?><?php echo ($sortType); ?> "><?php echo L("MODULE");?><?php if(($order)  ==  "module"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('action','<?php echo ($sort); ?>','SqlCheck','index')" title="按照<?php echo L("ACTION");?><?php echo ($sortType); ?> "><?php echo L("ACTION");?><?php if(($order)  ==  "action"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('para','<?php echo ($sort); ?>','SqlCheck','index')" title="按照参数<?php echo ($sortType); ?> ">参数<?php if(($order)  ==  "para"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('sql_num','<?php echo ($sort); ?>','SqlCheck','index')" title="按照sql数量<?php echo ($sortType); ?> ">sql数量<?php if(($order)  ==  "sql_num"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('query_time','<?php echo ($sort); ?>','SqlCheck','index')" title="按照sql运行时间<?php echo ($sortType); ?> ">sql运行时间<?php if(($order)  ==  "query_time"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('run_time','<?php echo ($sort); ?>','SqlCheck','index')" title="按照模块运行时间<?php echo ($sortType); ?> ">模块运行时间<?php if(($order)  ==  "run_time"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('memory_usage','<?php echo ($sort); ?>','SqlCheck','index')" title="按照内存<?php echo ($sortType); ?> ">内存<?php if(($order)  ==  "memory_usage"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('gzip_on','<?php echo ($sort); ?>','SqlCheck','index')" title="按照gzip<?php echo ($sortType); ?> ">gzip<?php if(($order)  ==  "gzip_on"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('url','<?php echo ($sort); ?>','SqlCheck','index')" title="按照访问链接<?php echo ($sortType); ?> ">访问链接<?php if(($order)  ==  "url"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('file_name','<?php echo ($sort); ?>','SqlCheck','index')" title="按照类型<?php echo ($sortType); ?> ">类型<?php if(($order)  ==  "file_name"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th><a href="javascript:sortBy('sql_str','<?php echo ($sort); ?>','SqlCheck','index')" title="按照查看sql  <?php echo ($sortType); ?> ">查看sql  <?php if(($order)  ==  "sql_str"): ?><img src="__TMPL__Common/images/<?php echo ($sortImg); ?>.gif" width="12" height="17" border="0" align="absmiddle"><?php endif; ?></a></th><th width="60px">操作</th></tr><?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$log): ++$i;$mod = ($i % 2 )?><tr class="row" ><td><input type="checkbox" name="key" class="key" value="<?php echo ($log["id"]); ?>"></td><td><?php echo ($log["id"]); ?></td><td><?php echo (to_date($log["create_time"])); ?></td><td><?php echo ($log["module"]); ?></td><td><?php echo ($log["action"]); ?></td><td><?php echo ($log["para"]); ?></td><td><?php echo ($log["sql_num"]); ?></td><td><?php echo ($log["query_time"]); ?></td><td><?php echo ($log["run_time"]); ?></td><td><?php echo ($log["memory_usage"]); ?></td><td><?php echo ($log["gzip_on"]); ?></td><td><?php echo (get_url($log["url"])); ?></td><td><?php echo (get_file_type($log["file_name"])); ?></td><td><?php echo (get_sql_info($log["sql_str"])); ?></td><td class="op_action"><a href="javascript:foreverdel('<?php echo ($log["id"]); ?>')"><?php echo L("FOREVERDEL");?></a>&nbsp;</td></tr><?php endforeach; endif; else: echo "" ;endif; ?><tr><td colspan="15" class="bottomTd"> &nbsp;</td></tr></table>
<!-- Think 系统列表组件结束 -->
 

<div class="blank5"></div>
<div class="page"><?php echo ($page); ?></div>
</div>
</body>
</html>