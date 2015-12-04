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

<script type="text/javascript" src="__TMPL__Common/js/deal_item_edit.js"></script>
<script type="text/javascript" src="__ROOT__/public/region.js"></script>	
<script type="text/javascript" src="__TMPL__Common/js/deal_edit.js"></script>
<script type="text/javascript">
	var support_count='<?php echo ($vo["support_count"]); ?>';
</script>
<style>
	<?php if($vo['type'] == 1): ?>.type_class{ display:none; }<?php endif; ?>
</style>
<div class="main">
<div class="main_title"><?php echo L("EDIT");?> <a href="<?php echo u("Deal/deal_item",array("id"=>$vo['deal_id']));?>" class="back_list"><?php echo L("BACK_LIST");?></a></div>
<div class="blank5"></div>
<form name="edit" action="__APP__" method="post" enctype="multipart/form-data" rel="deal_item_edit">
<table class="form conf_tab" cellpadding=0 cellspacing=0 >
	<tr>
		<td colspan=2 class="topTd"></td>
	</tr>
	<tr>
		<td class="item_title">图片:</td>
		<td class="item_input">
			<span>
        <div style='float:left; height:35px; padding-top:1px;'>
            <input type='hidden' value='<?php echo ($img_list["0"]); ?>' name='img0' id='keimg_h_img0' />
            <div class='buttonActive' style='margin-right:5px;'>
                <div class='buttonContent'>
                    <button type='button' class='keimg ke-icon-upload_image' rel='img0'>选择图片</button>
                </div>
            </div>
        </div>
         <a href='<?php if($img_list["0"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($img_list["0"]); ?><?php endif; ?>' target='_blank' id='keimg_a_img0' ><img src='<?php if($img_list["0"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($img_list["0"]); ?><?php endif; ?>' id='keimg_m_img0' width=35 height=35 style='float:left; border:#ccc solid 1px; margin-left:5px;' /></a>
         <div style='float:left; height:35px; padding-top:1px;'>
             <div class='buttonActive'>
                <div class='buttonContent'>
                    <img src='/admin/Tpl/default/Common/images/del.gif' style='<?php if($img_list["0"] == ''): ?>display:none<?php endif; ?>; margin-left:10px; float:left; border:#ccc solid 1px; width:35px; height:35px; cursor:pointer;' class='keimg_d' rel='img0' title='删除'>
                </div>
            </div>
        </div>
        </span>
			<span>
        <div style='float:left; height:35px; padding-top:1px;'>
            <input type='hidden' value='<?php echo ($img_list["1"]); ?>' name='img1' id='keimg_h_img1' />
            <div class='buttonActive' style='margin-right:5px;'>
                <div class='buttonContent'>
                    <button type='button' class='keimg ke-icon-upload_image' rel='img1'>选择图片</button>
                </div>
            </div>
        </div>
         <a href='<?php if($img_list["1"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($img_list["1"]); ?><?php endif; ?>' target='_blank' id='keimg_a_img1' ><img src='<?php if($img_list["1"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($img_list["1"]); ?><?php endif; ?>' id='keimg_m_img1' width=35 height=35 style='float:left; border:#ccc solid 1px; margin-left:5px;' /></a>
         <div style='float:left; height:35px; padding-top:1px;'>
             <div class='buttonActive'>
                <div class='buttonContent'>
                    <img src='/admin/Tpl/default/Common/images/del.gif' style='<?php if($img_list["1"] == ''): ?>display:none<?php endif; ?>; margin-left:10px; float:left; border:#ccc solid 1px; width:35px; height:35px; cursor:pointer;' class='keimg_d' rel='img1' title='删除'>
                </div>
            </div>
        </div>
        </span>
			<span>
        <div style='float:left; height:35px; padding-top:1px;'>
            <input type='hidden' value='<?php echo ($img_list["2"]); ?>' name='img2' id='keimg_h_img2' />
            <div class='buttonActive' style='margin-right:5px;'>
                <div class='buttonContent'>
                    <button type='button' class='keimg ke-icon-upload_image' rel='img2'>选择图片</button>
                </div>
            </div>
        </div>
         <a href='<?php if($img_list["2"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($img_list["2"]); ?><?php endif; ?>' target='_blank' id='keimg_a_img2' ><img src='<?php if($img_list["2"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($img_list["2"]); ?><?php endif; ?>' id='keimg_m_img2' width=35 height=35 style='float:left; border:#ccc solid 1px; margin-left:5px;' /></a>
         <div style='float:left; height:35px; padding-top:1px;'>
             <div class='buttonActive'>
                <div class='buttonContent'>
                    <img src='/admin/Tpl/default/Common/images/del.gif' style='<?php if($img_list["2"] == ''): ?>display:none<?php endif; ?>; margin-left:10px; float:left; border:#ccc solid 1px; width:35px; height:35px; cursor:pointer;' class='keimg_d' rel='img2' title='删除'>
                </div>
            </div>
        </div>
        </span>
			<span>
        <div style='float:left; height:35px; padding-top:1px;'>
            <input type='hidden' value='<?php echo ($img_list["3"]); ?>' name='img3' id='keimg_h_img3' />
            <div class='buttonActive' style='margin-right:5px;'>
                <div class='buttonContent'>
                    <button type='button' class='keimg ke-icon-upload_image' rel='img3'>选择图片</button>
                </div>
            </div>
        </div>
         <a href='<?php if($img_list["3"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($img_list["3"]); ?><?php endif; ?>' target='_blank' id='keimg_a_img3' ><img src='<?php if($img_list["3"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($img_list["3"]); ?><?php endif; ?>' id='keimg_m_img3' width=35 height=35 style='float:left; border:#ccc solid 1px; margin-left:5px;' /></a>
         <div style='float:left; height:35px; padding-top:1px;'>
             <div class='buttonActive'>
                <div class='buttonContent'>
                    <img src='/admin/Tpl/default/Common/images/del.gif' style='<?php if($img_list["3"] == ''): ?>display:none<?php endif; ?>; margin-left:10px; float:left; border:#ccc solid 1px; width:35px; height:35px; cursor:pointer;' class='keimg_d' rel='img3' title='删除'>
                </div>
            </div>
        </div>
        </span>
		</td>
	</tr>
	<tr>
		<td class="item_title">项目类型</td>
		<td class="item_input">
 			<label>产品回报<input type="radio" name="type" value="0" <?php if($vo['type'] == 0): ?>checked="checked"<?php endif; ?>></label>
			<label>无私奉献<input type="radio" name="type" value="1" <?php if($vo['type'] == 1): ?>checked="checked"<?php endif; ?> ></label>
 		</td>
	</tr>
	<tr  class="type_class">
		<td class="item_title">价格:</td>
		<td class="item_input"><input type="text" class="textbox require" name="price" value="<?php echo ($vo["price"]); ?>" /></td>
	</tr>
	<tr  class="type_class">
		<td class="item_title">虚拟购买人数:</td>
		<td class="item_input"><input type="text" class="textbox" name="virtual_person" value="<?php echo ($vo["virtual_person"]); ?>"/>
		<span class="tip_span">当为0或不填写时不启用虚拟购买人数</span>
		</td>
	</tr>
	<tr>
		<td class="item_title">简介:</td>
		<td class="item_input"><textarea name="description" class="textarea"><?php echo ($vo["description"]); ?></textarea></td>
	</tr>
	<tr  class="type_class">
		<td class="item_title">是否需要配送</td>
		<td class="item_input">
			<select name="is_delivery">
				<option value="0" <?php if($vo['is_delivery'] == 0): ?>selected="selected"<?php endif; ?> >否</option>
				<option value="1" <?php if($vo['is_delivery'] == 1): ?>selected="selected"<?php endif; ?> >是</option>
			</select>
		</td>
	</tr>
	<tr id="delivery_fee"  class="type_class">
		<td class="item_title">运费:</td>
		<td class="item_input"><input type="text" class="textbox" name="delivery_fee" value="<?php echo ($vo["delivery_fee"]); ?>" /></td>
	</tr>
	
	<tr  class="type_class">
		<td class="item_title">是否限购</td>
		<td class="item_input">
			<select name="is_limit_user">
				<option value="0" <?php if($vo['is_limit_user'] == 0): ?>selected="selected"<?php endif; ?> >否</option>
				<option value="1" <?php if($vo['is_limit_user'] == 1): ?>selected="selected"<?php endif; ?> >是</option>
			</select>
		</td>
	</tr>
	<tr id="limit_user"  class="type_class">
		<td class="item_title">限购人数:</td>
		<td class="item_input"><input type="text" class="textbox" name="limit_user" value="<?php echo ($vo["limit_user"]); ?>" /></td>
	</tr>
	
	<tr  class="type_class">
		<td class="item_title">是否分红</td>
		<td class="item_input">
			<select name="is_share">
				<option value="0" <?php if($vo['is_share'] == 1): ?>selected="selected"<?php endif; ?>>否</option>
				<option value="1" <?php if($vo['is_share'] == 1): ?>selected="selected"<?php endif; ?> >是</option>
			</select>
		</td>
	</tr>
	<tr id="share_fee"  class="type_class">
		<td class="item_title">分红金额:</td>
		<td class="item_input"><input type="text" class="textbox" name="share_fee" value="<?php echo ($vo["share_fee"]); ?>" /></td>
	</tr>
	
	<tr  class="type_class">
		<td class="item_title">回报确认天数:</td>
		<td class="item_input"><input type="text" class="textbox" name="repaid_day" value="<?php echo ($vo["repaid_day"]); ?>" /></td>
	</tr>
	
	<tr>
		<td colspan=2 class="bottomTd"></td>
	</tr>
</table>

<div class="blank5"></div>
	<table class="form" cellpadding=0 cellspacing=0>
		<tr>
			<td colspan=2 class="topTd"></td>
		</tr>
		<tr>
			<td class="item_title"></td>
			<td class="item_input">
			<!--隐藏元素-->
			<input type="hidden" name="<?php echo conf("VAR_MODULE");?>" value="Deal" />
			<input type="hidden" name="<?php echo conf("VAR_ACTION");?>" value="update_deal_item" />
			<input type="hidden" name="deal_id" value="<?php echo ($vo["deal_id"]); ?>" />
			<input type="hidden" name="id" value="<?php echo ($vo["id"]); ?>" />
			<!--隐藏元素-->
			<input type="submit" class="button" value="<?php echo L("EDIT");?>" />
			<input type="reset" class="button" value="<?php echo L("RESET");?>" />
			</td>
		</tr>
		<tr>
			<td colspan=2 class="bottomTd"></td>
		</tr>
	</table> 		 
</form>
</div>
<script>
	$(function(){
		$("input[name='type']").bind('click',function(){
			val=$(this).val();
			if(val==1){
				$(".type_class").hide();
				$("input[name='price']").removeClass("require");
			}else{
				$(".type_class").show();
				if(!$("input[name='price']").hasClass("require")){
					$("input[name='price']").addClass("require");
				}
			}
 		});
	});
</script>
</body>
</html>