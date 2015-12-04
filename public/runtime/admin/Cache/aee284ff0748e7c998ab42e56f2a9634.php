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

<script type="text/javascript" src="__TMPL__Common/js/conf.js"></script>
<script type="text/javascript" src="__ROOT__/public/region.js"></script>	
<script type="text/javascript" src="__TMPL__Common/js/deal_edit.js"></script>
<script type="text/javascript" src="__TMPL__Common/js/deal_investor_edit.js"></script>
<script type="text/javascript" src="__TMPL__Common/js/calendar/calendar.php?lang=zh-cn" ></script>
<link rel="stylesheet" type="text/css" href="__TMPL__Common/js/calendar/calendar.css" />
<script type="text/javascript" src="__TMPL__Common/js/calendar/calendar.js"></script>

<script type="text/javascript" src="__TMPL__Common/js/jcDate/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="__TMPL__Common/js/jcDate/jcDate.css" />
<script type="text/javascript" src="__TMPL__Common/js/jcDate/jQuery-jcDate.js"></script>
<link rel="stylesheet" type="text/css" href="__TMPL__Common/style/fancybox.css" />
<script type="text/javascript" src="__TMPL__Common/js/jquery.fancybox.js"></script>
<style type="text/css">
	.image_item img{cursor:url(__TMPL__Common/images/zoom.cur),auto;}
</style>
<script type="text/javascript">
	$(function(){
		bind_zoom();
	});
	// 图片放大镜
	function bind_zoom(){
		$(".image_item").bind("click",function(){
			var img = $(this).find("img").attr("rel");
			$.fancybox.open(img);
		});
	}
</script>
<script>
	function reason_show($select_inut,$show_arear){
				$($select_inut).bind("click",function(){
				var val=$($select_inut+":checked").val();
 				if(val==2){
					$($show_arear).show();
				}else{
					$($show_arear).hide();
				}
			});
			}
			
	
</script>
 <div class="main">
<div class="main_title"><?php echo L("EDIT");?> <a href="<?php if($vo['is_effect'] == 1): ?><?php echo u("Deal/online_index");?><?php else: ?><?php echo u("Deal/submit_index");?><?php endif; ?>" class="back_list"><?php echo L("BACK_LIST");?></a></div>
<div class="blank5"></div>
<div class="button_row">
	<input type="button" class="button conf_btn" value="基本信息" rel="1" />&nbsp;
	<input type="button" class="button conf_btn" value="企业信息" rel="8" />&nbsp;
	<input type="button" class="button conf_btn" value="商业模式" rel="6" />&nbsp;
	<input type="button" class="button conf_btn" value="股东信息" rel="2" />&nbsp;
	<input type="button" class="button conf_btn" value="非股东信息" rel="7" />&nbsp;
	<input type="button" class="button conf_btn" value="项目历史" rel="3" />&nbsp;
	<input type="button" class="button conf_btn" value="三年计划" rel="4" />&nbsp;
	<input type="button" class="button conf_btn" value="项目附件" rel="5" />&nbsp;
</div>
<!---->
<table style="display:none;">
	<tr id="demo_input" style="display:none;">
		<td width="12%">序号<?php echo ($stock_num); ?>:</td>
		<td width="12%"><input type="text" value="" name="stock[<?php echo ($stock_num); ?>][name]"  class="stock_name" placeholder="股东姓名"></td>
		<td width="12%"><input type="text" value="" name="stock[<?php echo ($stock_num); ?>][job]" placeholder="股东职务"></td>
		<td width="12%"><input type="text" value="" name="stock[<?php echo ($stock_num); ?>][is_full_time]" placeholder="是否全职"></td>
		<td width="12%"><input type="text" value="" name="stock[<?php echo ($stock_num); ?>][share]" placeholder="所占股份" class="gufen">%</td>
		<td width="12%"><input type="text" value="" name="stock[<?php echo ($stock_num); ?>][invest_money]" placeholder="实际出资">万</td>
		<td width="12%"><input type="text" value="" name="stock[<?php echo ($stock_num); ?>][relation]" placeholder="关系描述"></td>
		<td><a href="javascript:void(0);" class="del_new_row">删除</a></td>
	</tr>
	<tr id="demo_descript"  style="display:none;">
		<td class="item_title stock_descript">股东<?php echo ($stock_num); ?>简介：</td>
		<td class="item_input">
				<textarea id='stock[describe]' name='stock[<?php echo ($stock_num); ?>][describe]' class='ketext' style='width:750px; height:350px;' ></textarea> 
		</td>
	</tr>
	<tr id="demo_unstock_input" style="display:none;">
		<td width="12%">序号<?php echo ($unstock_num); ?>:</td>
		<td width="12%"><input type="text" value="" name="unstock[<?php echo ($unstock_num); ?>][name]" class="unstock_name" placeholder="姓名"></td>
		<td width="12%"><input type="text" value="" name="unstock[<?php echo ($unstock_num); ?>][job]" placeholder="职务"></td>
		<td width="12%"><input type="text" value="" name="unstock[<?php echo ($unstock_num); ?>][is_full_time]" placeholder="是否全职"></td>
 		<td width="12%"><input type="text" value="" name="unstock[<?php echo ($unstock_num); ?>][relation]" placeholder="关系描述"></td>
		<td><a href="javascript:void(0);" class="del_new_unstock_row">删除</a></td>
	</tr>
	<tr id="demo_unstock_descript"  style="display:none;">
		<td class="item_title unstock_descript">员工<?php echo ($unstock_num); ?>简介：</td>
		<td class="item_input">
				<textarea id='unstock[describe]' name='unstock[<?php echo ($unstock_num); ?>][describe]' class='ketext' style='width:750px; height:350px;' ></textarea> 
		</td>
	</tr>
	<tr id="demo_attach" style="display:none;">
		<td><input type="text" name="attach[1][title]" value=""></td>
		<td>
				<input type="text" class="kefile_url" value="" name="attach[1][file]" readonly="readonly" />
			<input type="button"   class="kefile" name="imgFile" rel="num" value="上传" />
		</td>
		<td><a href="javascript:void(0);" class="del_attch">删除</a></td>
	</tr>
 	
	<tr id="history_income_demo_1">
		<td>
			<input type="text" name="history_income[type]" value="">
		</td>
		<td>
			<input type="text"  class="amount" name="history_income[money]" value="" onkeyup="amount(this)" />
		</td>
		<td>
			<input type="text" name="history_income[memo]" value="">
		</td>
	</tr>
	<tr id="history_out_demo_1" >
		<td>
			<input type="text" name="history_out[type]" value="">
		</td>
		<td>
			<input type="text"  class="amount" name="history_out[money]" value="" onkeyup="amount(this)" />
		</td>
		<td>
			<input type="text" name="history_out[memo]" value="" />
		</td>
	</tr>
	
	<tr id="plan_income_demo">
		<td>
			<input type="text" name="plan_income[type]" value="">
		</td>
		<td>
			<input type="text" class="amount" name="plan_income[money]" value="" onkeyup="amount(this)" />
		</td>
		<td>
			<input type="text" name="plan_income[memo]" value="">
		</td>
	</tr>
	<tr id="plan_out_demo">
		<td>
			<input type="text" name="plan_out[type]" value="">
		</td>
		<td>
			<input type="text" class="amount" name="plan_out[money]" value="" onkeyup="amount(this)" />
		</td>
		<td>
			<input type="text" name="plan_out[memo]" value="" />
		</td>
	</tr>
</table>

<!---->
<form name="edit" action="__APP__" method="post" enctype="multipart/form-data" onsubmit="return investor_check()">
<table class="form conf_tab" cellpadding=0 cellspacing=0 >
	<tr>
		<td colspan=2 class="topTd"></td>
	</tr>
	<tr>
		<td class="item_title">项目名称:</td>
		<td class="item_input"><input type="text" class="textbox require" value="<?php echo ($vo["name"]); ?>" name="name" /></td>
	</tr>
	<tr>
		<td class="item_title">项目等级:</td>
		<td class="item_input">
			<select name="user_level">
				<option value="0">请选择等级</option>
				<?php if(is_array($user_level)): foreach($user_level as $key=>$level): ?><option value="<?php echo ($level["id"]); ?>" <?php if($vo['user_level'] == $level['id']): ?>selected="selected"<?php endif; ?>><?php echo ($level["name"]); ?></option><?php endforeach; endif; ?>
			</select>
		</td>
	</tr>
	<tr>
		<td class="item_title">发起人ID:</td>
		<td class="item_input"><input type="text" class="textbox require" name="user_id" value="<?php echo ($vo["user_id"]); ?>" style="width:30px;" /> <span class='tip_span'>发起人ID必须要填写</span></td>
	</tr>
	<tr>
		<td class="item_title">项目图片:</td>
		<td class="item_input">
			<span>
        <div style='float:left; height:35px; padding-top:1px;'>
            <input type='hidden' value='<?php echo ($vo["image"]); ?>' name='image' id='keimg_h_image' />
            <div class='buttonActive' style='margin-right:5px;'>
                <div class='buttonContent'>
                    <button type='button' class='keimg ke-icon-upload_image' rel='image'>选择图片</button>
                </div>
            </div>
        </div>
         <a href='<?php if($vo["image"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($vo["image"]); ?><?php endif; ?>' target='_blank' id='keimg_a_image' ><img src='<?php if($vo["image"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($vo["image"]); ?><?php endif; ?>' id='keimg_m_image' width=35 height=35 style='float:left; border:#ccc solid 1px; margin-left:5px;' /></a>
         <div style='float:left; height:35px; padding-top:1px;'>
             <div class='buttonActive'>
                <div class='buttonContent'>
                    <img src='/admin/Tpl/default/Common/images/del.gif' style='<?php if($vo["image"] == ''): ?>display:none<?php endif; ?>; margin-left:10px; float:left; border:#ccc solid 1px; width:35px; height:35px; cursor:pointer;' class='keimg_d' rel='image' title='删除'>
                </div>
            </div>
        </div>
        </span>
			<span class='tip_span'>推荐760*530图片</span>
		</td>
	</tr>
	<tr style="display:none;">
		<td class="item_title">最新上线项目图片:</td>
		<td class="item_input">
			<span>
        <div style='float:left; height:35px; padding-top:1px;'>
            <input type='hidden' value='<?php echo ($vo["adv_image"]); ?>' name='adv_image' id='keimg_h_adv_image' />
            <div class='buttonActive' style='margin-right:5px;'>
                <div class='buttonContent'>
                    <button type='button' class='keimg ke-icon-upload_image' rel='adv_image'>选择图片</button>
                </div>
            </div>
        </div>
         <a href='<?php if($vo["adv_image"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($vo["adv_image"]); ?><?php endif; ?>' target='_blank' id='keimg_a_adv_image' ><img src='<?php if($vo["adv_image"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($vo["adv_image"]); ?><?php endif; ?>' id='keimg_m_adv_image' width=35 height=35 style='float:left; border:#ccc solid 1px; margin-left:5px;' /></a>
         <div style='float:left; height:35px; padding-top:1px;'>
             <div class='buttonActive'>
                <div class='buttonContent'>
                    <img src='/admin/Tpl/default/Common/images/del.gif' style='<?php if($vo["adv_image"] == ''): ?>display:none<?php endif; ?>; margin-left:10px; float:left; border:#ccc solid 1px; width:35px; height:35px; cursor:pointer;' class='keimg_d' rel='adv_image' title='删除'>
                </div>
            </div>
        </div>
        </span>
			<span class='tip_span'>推荐765*317图片</span>
		</td>
	</tr>
	<tr>
		<td class="item_title">详情页海报图:</td>
		<td class="item_input">
			<span>
        <div style='float:left; height:35px; padding-top:1px;'>
            <input type='hidden' value='<?php echo ($vo["deal_background_image"]); ?>' name='deal_background_image' id='keimg_h_deal_background_image' />
            <div class='buttonActive' style='margin-right:5px;'>
                <div class='buttonContent'>
                    <button type='button' class='keimg ke-icon-upload_image' rel='deal_background_image'>选择图片</button>
                </div>
            </div>
        </div>
         <a href='<?php if($vo["deal_background_image"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($vo["deal_background_image"]); ?><?php endif; ?>' target='_blank' id='keimg_a_deal_background_image' ><img src='<?php if($vo["deal_background_image"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($vo["deal_background_image"]); ?><?php endif; ?>' id='keimg_m_deal_background_image' width=35 height=35 style='float:left; border:#ccc solid 1px; margin-left:5px;' /></a>
         <div style='float:left; height:35px; padding-top:1px;'>
             <div class='buttonActive'>
                <div class='buttonContent'>
                    <img src='/admin/Tpl/default/Common/images/del.gif' style='<?php if($vo["deal_background_image"] == ''): ?>display:none<?php endif; ?>; margin-left:10px; float:left; border:#ccc solid 1px; width:35px; height:35px; cursor:pointer;' class='keimg_d' rel='deal_background_image' title='删除'>
                </div>
            </div>
        </div>
        </span>
			<span class='tip_span'>推荐宽1920像素图片</span>
		</td>
	</tr>
	<tr>
		<td class="item_title">详情页背景图:</td>
		<td class="item_input">
			<span>
        <div style='float:left; height:35px; padding-top:1px;'>
            <input type='hidden' value='<?php echo ($vo["deal_backgroundColor_image"]); ?>' name='deal_backgroundColor_image' id='keimg_h_deal_backgroundColor_image' />
            <div class='buttonActive' style='margin-right:5px;'>
                <div class='buttonContent'>
                    <button type='button' class='keimg ke-icon-upload_image' rel='deal_backgroundColor_image'>选择图片</button>
                </div>
            </div>
        </div>
         <a href='<?php if($vo["deal_backgroundColor_image"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($vo["deal_backgroundColor_image"]); ?><?php endif; ?>' target='_blank' id='keimg_a_deal_backgroundColor_image' ><img src='<?php if($vo["deal_backgroundColor_image"] == ''): ?>./admin/Tpl/default/Common/images/no_pic.gif<?php else: ?><?php echo ($vo["deal_backgroundColor_image"]); ?><?php endif; ?>' id='keimg_m_deal_backgroundColor_image' width=35 height=35 style='float:left; border:#ccc solid 1px; margin-left:5px;' /></a>
         <div style='float:left; height:35px; padding-top:1px;'>
             <div class='buttonActive'>
                <div class='buttonContent'>
                    <img src='/admin/Tpl/default/Common/images/del.gif' style='<?php if($vo["deal_backgroundColor_image"] == ''): ?>display:none<?php endif; ?>; margin-left:10px; float:left; border:#ccc solid 1px; width:35px; height:35px; cursor:pointer;' class='keimg_d' rel='deal_backgroundColor_image' title='删除'>
                </div>
            </div>
        </div>
        </span>
			<span class='tip_span'>推荐单原色图片</span>
		</td>
	</tr>
	<tr>
		<td class="item_title">视频地址:</td>
		<td class="item_input"><input type="text" class="textbox" name="vedio" value="<?php echo ($vo["vedio"]); ?>" /></td>
	</tr>
	<tr style="display:none;">
		<td class="item_title">参考上线天数:</td>
		<td class="item_input"><input type="text" class="textbox" name="deal_days" value="<?php echo ($vo["deal_days"]); ?>" /></td>
	</tr>
	<tr>
		<td class="item_title">项目开始时间:</td>
		<td class="item_input">
			<input type="text" class="textbox require" name="begin_time" id="begin_time" value="<?php echo ($vo["begin_time"]); ?>" onfocus="this.blur(); return showCalendar('begin_time', '%Y-%m-%d %H:%M:%S', false, false, 'btn_begin_time');" />
			<input type="button" class="button" id="btn_begin_time" value="<?php echo L("SELECT_TIME");?>" onclick="return showCalendar('begin_time', '%Y-%m-%d %H:%M:%S', false, false, 'btn_begin_time');" />	
			<input type="button" class="button" value="<?php echo L("CLEAR_TIME");?>" onclick="$('#begin_time').val('');" />	

		</td>
	</tr>
	<tr>
		<td class="item_title">项目结束时间:</td>
		<td class="item_input">
			<input type="text" class="textbox require" name="end_time" id="end_time" value="<?php echo ($vo["end_time"]); ?>" onfocus="this.blur(); return showCalendar('end_time', '%Y-%m-%d %H:%M:%S', false, false, 'btn_end_time');" />
			<input type="button" class="button" id="btn_end_time" value="<?php echo L("SELECT_TIME");?>" onclick="return showCalendar('end_time', '%Y-%m-%d %H:%M:%S', false, false, 'btn_end_time');" />	
			<input type="button" class="button" value="<?php echo L("CLEAR_TIME");?>" onclick="$('#end_time').val('');" />

		</td>
	</tr>
	<tr>
		<td class="item_title">支付结束时间:</td>
		<td class="item_input">
			<input type="text" class="textbox require" name="pay_end_time" id="pay_end_time" value="<?php echo ($vo["pay_end_time"]); ?>" onfocus="this.blur(); return showCalendar('pay_end_time', '%Y-%m-%d %H:%M:%S', false, false, 'btn_pay_end_time');" />
			<input type="button" class="button" id="btn_pay_end_time" value="<?php echo L("SELECT_TIME");?>" onclick="return showCalendar('pay_end_time', '%Y-%m-%d %H:%M:%S', false, false, 'btn_pay_end_time');" />	
			<input type="button" class="button" value="<?php echo L("CLEAR_TIME");?>" onclick="$('#pay_end_time').val('');" />

		</td>
	</tr>
	<tr>
		<td class="item_title">上架:</td>
		<td class="item_input">
			<lable><?php echo L("IS_EFFECT_1");?><input type="radio" name="is_effect" value="1" <?php if($vo['is_effect'] == 1): ?>checked="checked"<?php endif; ?> /></lable>
			<lable><?php echo L("IS_EFFECT_0");?><input type="radio" name="is_effect" value="0" <?php if($vo['is_effect'] == 0): ?>checked="checked"<?php endif; ?> /></lable>
			<lable><?php echo L("IS_EFFECT_2");?><input type="radio" name="is_effect" value="2" <?php if($vo['is_effect'] == 2): ?>checked="checked"<?php endif; ?> /></lable>
		</td>
	</tr>
	<tr id="is_effect_reason" <?php if($vo['is_effect'] != 2): ?>style="display:none;"<?php endif; ?> >
		<td class="item_title">未通过理由:</td>
		<td class="item_input">
			 <textarea name="refuse_reason" class="textarea"><?php echo ($vo["refuse_reason"]); ?></textarea>
 		</td>
	</tr>
	<script>
		$(function(){
		
			$("input[name='is_effect']").bind("click",function(){
				var val=$("input[name='is_effect']:checked").val();
				if(val==2){
					$("#is_effect_reason").show();
				}else{
					$("#is_effect_reason").hide();
				}
			});
			
		});
	</script>
	<tr style="display:none;">
		<td class="item_title">是否显示支持者:</td>
		<td class="item_input">
			<lable><?php echo L("IS_SUPPORT_PRINT_1");?><input type="radio" name="is_support_print" value="1" <?php if($vo['is_support_print'] == 1): ?>checked="checked"<?php endif; ?> /></lable>
			<lable><?php echo L("IS_SUPPORT_PRINT_0");?><input type="radio" name="is_support_print" value="0" <?php if($vo['is_support_print'] == 0): ?>checked="checked"<?php endif; ?> /></lable>
			<span class='tip_span'>前台页面是否显示支持者的人数</span>
		</td>
	</tr>
	<tr>
		<td class="item_title">支付类型:</td>
		<td class="item_input">
			<select name="ips_bill_no">
 				<option value="0" <?php if($vo["ips_bill_no"] == ''): ?>selected="selected"<?php endif; ?> >网站支付</option>
				<option value="1" <?php if($vo["ips_bill_no"] != ''): ?>selected="selected"<?php endif; ?> >第三方托管</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<td class="item_title">目标金额:</td>
		<td class="item_input"><input type="text" class="textbox" name="limit_price"  value="<?php echo ($vo["limit_price"]); ?>"/></td>
	</tr>
	<tr>
		<td class="item_title">出让的股份:</td>
		<td class="item_input"><input type="text" class="textbox" name="transfer_share"  value="<?php echo ($vo["transfer_share"]); ?>"/>%</td>
	</tr>
	
	<tr>
		<td class="item_title">最低出资金额:</td>
		<td class="item_input"><input type="text" class="textbox" name="invote_mini_money"  value="<?php echo ($vo["invote_mini_money"]); ?>"/></td>
	</tr>
	<tr>
		<td class="item_title">佣金比例:</td>
		<td class="item_input">
			<input type="text" class="textbox" name="pay_radio"  value="<?php echo ($vo["pay_radio"]); ?>"/>
			<span class='tip_span'>佣金比例为0的话，按系统的佣金比例0.1来算，不是0的话按这里的佣金比例来算</span>
		
		</td>
		
	</tr>
    <tr  style="display:none;">
		<td class="item_title">付款与退款说明:</td>
		<td class="item_input">
			 <div  style='margin-bottom:5px; '><textarea id='description_1' name='description_1' class='ketext' style='width:750px; height:350px;' ><?php echo ($vo["description_1"]); ?></textarea> </div>
		</td>
	</tr>
     
	<tr>
		<td class="item_title">项目标签:</td>
		<td class="item_input"><input type="text" class="textbox" name="tags" style="width:500px;" value="<?php echo ($vo["tags"]); ?>" /> <span class='tip_span'>用空格分隔</span></td>
	</tr>
	
	<tr>
		<td class="item_title">项目所属类别:</td>
		<td class="item_input">
			<select name="cate_id" class="require">
				<option value="0">请选择</option>
				<?php if(is_array($cate_list)): foreach($cate_list as $key=>$cate_item): ?><option value="<?php echo ($cate_item["id"]); ?>" <?php if($vo['cate_id'] == $cate_item['id']): ?>selected="selected"<?php endif; ?> ><?php echo ($cate_item["title_show"]); ?></option><?php endforeach; endif; ?>
			</select>
		</td>
	</tr>
	
	<tr>
		<td class="item_title">项目所属地区:</td>
		<td class="item_input">
			<select name="province">				
			<option value="" rel="0">请选择省份</option>
			<?php if(is_array($region_lv2)): foreach($region_lv2 as $key=>$region): ?><option value="<?php echo ($region["name"]); ?>" rel="<?php echo ($region["id"]); ?>" <?php if($region['selected']): ?>selected="selected"<?php endif; ?>><?php echo ($region["name"]); ?></option><?php endforeach; endif; ?>
			</select>
 			<select name="city">				
			<option value="" rel="0">请选择城市</option>
			<?php if(is_array($region_lv3)): foreach($region_lv3 as $key=>$region): ?><option value="<?php echo ($region["name"]); ?>" rel="<?php echo ($region["id"]); ?>" <?php if($region['selected']): ?>selected="selected"<?php endif; ?>><?php echo ($region["name"]); ?></option><?php endforeach; endif; ?>
			</select>
		</td>
	</tr>
	
	<tr>
		<td class="item_title">项目排序:</td>
		<td class="item_input"><input type="text" class="textbox" name="sort" value="<?php echo ($vo["sort"]); ?>" /></td>
	</tr>
	
	<tr>
		<td class="item_title">常见问题: [<a href="javascript:void(0);" onclick="add_faq();">增加</a>]</td>
		<td class="item_input" id="faq">
			<?php if(is_array($faq_list)): foreach($faq_list as $key=>$faq_item): ?><div style="padding:3px;">
				问题 <input type="text" class="textbox" name="question[]" value="<?php echo ($faq_item["question"]); ?>" />
				答案 <input type="text" class="textbox" name="answer[]" value="<?php echo ($faq_item["answer"]); ?>" />
				<a href="javascript:void(0);" onclick="del_faq(this);">删除</a>
				</div><?php endforeach; endif; ?>
		</td>
	</tr>
	
	<tr>
		<td class="item_title">SEO标题:</td>
		<td class="item_input">
			<textarea name="seo_title" class="textarea"><?php echo ($vo["seo_title"]); ?></textarea>
		</td>
	</tr>
	
	<tr>
		<td class="item_title">SEO关键词:</td>
		<td class="item_input">
			<textarea name="seo_keyword" class="textarea"><?php echo ($vo["seo_keyword"]); ?></textarea>
		</td>
	</tr>
	
	<tr>
		<td class="item_title">SEO描述:</td>
		<td class="item_input">
			<textarea name="seo_description" class="textarea"><?php echo ($vo["seo_description"]); ?></textarea>
		</td>
	</tr>
	
	<tr>
		<td colspan=2 class="bottomTd"></td>
	</tr>
</table>
<!--企业信息start-->
<table class="form conf_tab" cellpadding=0 cellspacing=0 rel="8" >
	<tr>
		<td colspan=2 class="topTd"></td>
	</tr>
	<tr>
		<td class="item_title">企业全称:</td>
		<td class="item_input">
			<input type="text" name="business_name" value="<?php echo ($vo["business_name"]); ?>" >
 		</td>
	</tr>
	<tr class="company">
		<td class="item_title">企业成立时间:</td>
		<td class="item_input">
			<input type="text" class="textbox" name="business_create_time" id="business_create_time" value="<?php echo ($vo["business_create_time"]); ?>" onfocus="this.blur(); return showCalendar('business_create_time', '%Y-%m-%d', false, false, 'btn_business_create_time');" />
			<input type="button" class="button" id="btn_business_create_time" value="<?php echo L("SELECT_TIME");?>" onclick="return showCalendar('business_create_time', '%Y-%m-%d', false, false, 'btn_business_create_time');" />	
			<input type="button" class="button" value="<?php echo L("CLEAR_TIME");?>" onclick="$('#business_create_time').val('');" />
  		</td>
	</tr>
	
	
	<tr>
		<td class="item_title">办公地址：</td>
		<td class="item_input">
			<input type="text" name="business_address" value="<?php echo ($vo["business_address"]); ?>" >
 		</td>
	</tr>
	<tr>
		<td class="item_title">是否有其他项目：</td>
		<td class="item_input">
			<select name="has_another_project">
				<option value="0" <?php if($vo["has_another_project"] == 0): ?>selected="selected"<?php endif; ?> >否</option>
				<option value="1" <?php if($vo["has_another_project"] == 1): ?>selected="selected"<?php endif; ?>>是</option>
			</select>
 		</td>
	</tr>
	<tr>
		<td class="item_title">项目所属阶段：</td>
		<td class="item_input">
			<select name="project_step">
					<option value="0" <?php if($vo["project_step"] == 0): ?>selected="selected"<?php endif; ?>>尚未启动</option>
		              	<option value="1" <?php if($vo["project_step"] == 1): ?>selected="selected"<?php endif; ?>>产品开发中</option>
		              	<option  value="2" <?php if($vo["project_step"] == 2): ?>selected="selected"<?php endif; ?>>产品已上市或上线</option>
		              	<option value="3" <?php if($vo["project_step"] == 3): ?>selected="selected"<?php endif; ?>>已经有收入</option>
		              	<option value="4" <?php if($vo["project_step"] == 4): ?>selected="selected"<?php endif; ?>>已经盈利</option>
			</select>
 		</td>
	</tr>
	<tr>
		<td class="item_title">众筹股东成立的有限合伙企业入股方式：</td>
		<td class="item_input">
		 	<input type="radio" name="business_stock_type" <?php if($vo["business_stock_type"] == 0): ?>checked="checked"<?php endif; ?> value="0">
					直接入股项目总公司
			<input type="radio" name="business_stock_type" <?php if($vo["business_stock_type"] == 1): ?>checked="checked"<?php endif; ?> value="1">
					只入股新开店所属公司
 		</td>
	</tr>
	<tr>
		<td class="item_title">企业简介:</td>
		<td class="item_input">
			<textarea name="business_descripe" class="textarea"><?php echo ($vo["business_descripe"]); ?></textarea>
		</td>
	</tr>
	<tr>
		<td class="item_title">公司是否已经成立：</td>
		<td class="item_input">
			<select name="business_is_exist">
				<option value="0" <?php if($vo["business_is_exist"] == 0): ?>selected="selected"<?php endif; ?> >否</option>
				<option value="1" <?php if($vo["business_is_exist"] == 1): ?>selected="selected"<?php endif; ?>>是</option>
			</select>
			<span class='tip_span'>设置为否，前台不显示企业资质材料审核状态;设置为是，前台显示企业资质材料审核状态</span>
 		</td> 
		<script>
			$(function(){
				company_show("select[name='business_is_exist']",".company");
			});	
			function company_show($select_inut,$show_arear){
				get_company_values($select_inut,$show_arear);
				$($select_inut).bind("click",function(){
					get_company_values($select_inut,$show_arear);
				});
			}
			function get_company_values($select_inut,$show_arear){
				var val=$($select_inut+" option:selected").val();
	 				if(val==1){
						$("#business_create_time").addClass("require");
						$($show_arear).show();
					}else{
						$("#business_create_time").removeClass("require");
						$($show_arear).hide();
					}
			}
 		</script>
	</tr>
	<tr class="company">
		<td class="item_title">法人代表身份证:</td>
		<td class="item_input">
			<?php if(is_array($audit_data[legal_id][image])): foreach($audit_data[legal_id][image] as $key=>$legal_id_image): ?><?php if($legal_id_image != ''): ?><div class="image_item">
					<img src="<?php echo ($legal_id_image); ?>" width="35" height="35" style="float:left; border:#ccc solid 1px; margin-left:5px;" rel="<?php echo ($legal_id_image); ?>">
				</div>
				<input type="hidden" name="audit_data[legal_id][image][]" value="<?php echo ($legal_id_image); ?>" ><?php endif; ?><?php endforeach; endif; ?></br>
			审核状态：
			<lable>未审核<input type="radio" name="audit_data[legal_id][status]" value="0" <?php if($audit_data['legal_id']['status'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核通过<input type="radio" name="audit_data[legal_id][status]" value="1" <?php if($audit_data['legal_id']['status'] == 1): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核不通过<input type="radio" name="audit_data[legal_id][status]" value="2" <?php if($audit_data['legal_id']['status'] == 2): ?>checked="checked"<?php endif; ?>></lable>
			
 			<textarea name="audit_data[legal_id][reason]" <?php if($audit_data['legal_id']['status'] != 2): ?>style="display:none;"<?php endif; ?> ><?php echo ($audit_data["legal_id"]["reason"]); ?></textarea>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<lable>取消隐藏<input type="radio" name="audit_data[legal_id][display_type]" value="0" <?php if($audit_data['legal_id']['display_type'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>设置隐藏<input type="radio" name="audit_data[legal_id][display_type]" value="1" <?php if($audit_data['legal_id']['display_type'] == 1): ?>checked="checked"<?php endif; ?>></lable>
		</td>
		<script>
			reason_show("input[name='audit_data[legal_id][status]']","textarea[name='audit_data[legal_id][reason]']");
 		</script>
	</tr>
	
	<tr class="company">
		<td class="item_title">法人代表个人信用报告:</td>
		<td class="item_input">
			<?php if(is_array($audit_data[legal_credit][image])): foreach($audit_data[legal_credit][image] as $key=>$legal_credit_image): ?><?php if($legal_credit_image != ''): ?><div class="image_item">
					<img src="<?php echo ($legal_credit_image); ?>" width="35" height="35" style="float:left; border:#ccc solid 1px; margin-left:5px;" rel="<?php echo ($legal_credit_image); ?>">
				</div>
				<input type="hidden" name="audit_data[legal_credit][image][]" value="<?php echo ($legal_credit_image); ?>" ><?php endif; ?><?php endforeach; endif; ?></br>
			审核状态：
			<lable>未审核<input type="radio" name="audit_data[legal_credit][status]" value="0" <?php if($audit_data['legal_credit']['status'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核通过<input type="radio" name="audit_data[legal_credit][status]" value="1" <?php if($audit_data['legal_credit']['status'] == 1): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核不通过<input type="radio" name="audit_data[legal_credit][status]" value="2" <?php if($audit_data['legal_credit']['status'] == 2): ?>checked="checked"<?php endif; ?>></lable>
 			<textarea name="audit_data[legal_credit][reason]" <?php if($audit_data['legal_credit']['status'] != 2): ?>style="display:none;"<?php endif; ?> ><?php echo ($audit_data["legal_credit"]["reason"]); ?></textarea>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<lable>取消隐藏<input type="radio" name="audit_data[legal_credit][display_type]" value="0" <?php if($audit_data['legal_credit']['display_type'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>设置隐藏<input type="radio" name="audit_data[legal_credit][display_type]" value="1" <?php if($audit_data['legal_credit']['display_type'] == 1): ?>checked="checked"<?php endif; ?>></lable>
		</td>
		<script>
			reason_show("input[name='audit_data[legal_credit][status]']","textarea[name='audit_data[legal_credit][reason]']");
 		</script>
	</tr>
	
	<tr class="company">
		<td class="item_title">营业执照:</td>
		<td class="item_input">
			<?php if(is_array($audit_data[business_license][image])): foreach($audit_data[business_license][image] as $key=>$business_license_image): ?><?php if($business_license_image != ''): ?><div class="image_item">
					<img src="<?php echo ($business_license_image); ?>" width="35" height="35" style="float:left; border:#ccc solid 1px; margin-left:5px;" rel="<?php echo ($business_license_image); ?>">
				</div>
				<input type="hidden" name="audit_data[business_license][image][]" value="<?php echo ($business_license_image); ?>" ><?php endif; ?><?php endforeach; endif; ?></br>
			审核状态：
			<lable>未审核<input type="radio" name="audit_data[business_license][status]" value="0" <?php if($audit_data['business_license']['status'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核通过<input type="radio" name="audit_data[business_license][status]" value="1" <?php if($audit_data['business_license']['status'] == 1): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核不通过<input type="radio" name="audit_data[business_license][status]" value="2" <?php if($audit_data['business_license']['status'] == 2): ?>checked="checked"<?php endif; ?>></lable>
 			<textarea name="audit_data[business_license][reason]" <?php if($audit_data['business_license']['status'] != 2): ?>style="display:none;"<?php endif; ?> ><?php echo ($audit_data["business_license"]["reason"]); ?></textarea>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<lable>取消隐藏<input type="radio" name="audit_data[business_license][display_type]" value="0" <?php if($audit_data['business_license']['display_type'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>设置隐藏<input type="radio" name="audit_data[business_license][display_type]" value="1" <?php if($audit_data['business_license']['display_type'] == 1): ?>checked="checked"<?php endif; ?>></lable>
		</td>
		<script>
			reason_show("input[name='audit_data[business_license][status]']","textarea[name='audit_data[business_license][reason]']");
 		</script>
	</tr>
	<tr class="company">
		<td class="item_title">税务登记证:</td>
		<td class="item_input">
			<?php if(is_array($audit_data[tax_registration_certificate][image])): foreach($audit_data[tax_registration_certificate][image] as $key=>$tax_registration_certificate_image): ?><?php if($tax_registration_certificate_image != ''): ?><div class="image_item">
					<img src="<?php echo ($tax_registration_certificate_image); ?>" width="35" height="35" style="float:left; border:#ccc solid 1px; margin-left:5px;" rel="<?php echo ($tax_registration_certificate_image); ?>">
				</div>
				<input type="hidden" name="audit_data[tax_registration_certificate][image][]" value="<?php echo ($tax_registration_certificate_image); ?>" ><?php endif; ?><?php endforeach; endif; ?></br>
			审核状态：
			<lable>未审核<input type="radio" name="audit_data[tax_registration_certificate][status]" value="0" <?php if($audit_data['tax_registration_certificate']['status'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核通过<input type="radio" name="audit_data[tax_registration_certificate][status]" value="1" <?php if($audit_data['tax_registration_certificate']['status'] == 1): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核不通过<input type="radio" name="audit_data[tax_registration_certificate][status]" value="2" <?php if($audit_data['tax_registration_certificate']['status'] == 2): ?>checked="checked"<?php endif; ?>></lable>
 			<textarea name="audit_data[tax_registration_certificate][reason]" <?php if($audit_data['tax_registration_certificate']['status'] != 2): ?>style="display:none;"<?php endif; ?> ><?php echo ($audit_data["tax_registration_certificate"]["reason"]); ?></textarea>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<lable>取消隐藏<input type="radio" name="audit_data[tax_registration_certificate][display_type]" value="0" <?php if($audit_data['tax_registration_certificate']['display_type'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>设置隐藏<input type="radio" name="audit_data[tax_registration_certificate][display_type]" value="1" <?php if($audit_data['tax_registration_certificate']['display_type'] == 1): ?>checked="checked"<?php endif; ?>></lable>
		</td>
		<script>
			reason_show("input[name='audit_data[tax_registration_certificate][status]']","textarea[name='audit_data[tax_registration_certificate][reason]']");
 		</script>
	</tr>
	<tr class="company">
		<td class="item_title">组织机构代码:</td>
		<td class="item_input">
			<?php if(is_array($audit_data[organization_code][image])): foreach($audit_data[organization_code][image] as $key=>$organization_code_image): ?><?php if($organization_code_image != ''): ?><div class="image_item">
					<img src="<?php echo ($organization_code_image); ?>" width="35" height="35" style="float:left; border:#ccc solid 1px; margin-left:5px;" rel="<?php echo ($organization_code_image); ?>">
				</div>
				<input type="hidden" name="audit_data[organization_code][image][]" value="<?php echo ($organization_code_image); ?>" ><?php endif; ?><?php endforeach; endif; ?></br>
			审核状态：
			<lable>未审核<input type="radio" name="audit_data[organization_code][status]" value="0" <?php if($audit_data['organization_code']['status'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核通过<input type="radio" name="audit_data[organization_code][status]" value="1" <?php if($audit_data['organization_code']['status'] == 1): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核不通过<input type="radio" name="audit_data[organization_code][status]" value="2" <?php if($audit_data['organization_code']['status'] == 2): ?>checked="checked"<?php endif; ?>></lable>
 			<textarea name="audit_data[organization_code][reason]" <?php if($audit_data['organization_code']['status'] != 2): ?>style="display:none;"<?php endif; ?> ><?php echo ($audit_data["organization_code"]["reason"]); ?></textarea>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<lable>取消隐藏<input type="radio" name="audit_data[organization_code][display_type]" value="0" <?php if($audit_data['organization_code']['display_type'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>设置隐藏<input type="radio" name="audit_data[organization_code][display_type]" value="1" <?php if($audit_data['organization_code']['display_type'] == 1): ?>checked="checked"<?php endif; ?>></lable>
		</td>
		<script>
			reason_show("input[name='audit_data[organization_code][status]']","textarea[name='audit_data[organization_code][reason]']");
 		</script>
	</tr>
	<tr class="company">
		<td class="item_title">公司照片:</td>
		<td class="item_input">
			<?php if(is_array($audit_data[company_photo][image])): foreach($audit_data[company_photo][image] as $key=>$company_photo_image): ?><?php if($company_photo_image != ''): ?><div class="image_item">
					<img src="<?php echo ($company_photo_image); ?>" width="35" height="35" style="float:left; border:#ccc solid 1px; margin-left:5px;" rel="<?php echo ($company_photo_image); ?>">
				</div>
				<input type="hidden" name="audit_data[company_photo][image][]" value="<?php echo ($company_photo_image); ?>" ><?php endif; ?><?php endforeach; endif; ?></br>
			审核状态：
			<lable>未审核<input type="radio" name="audit_data[company_photo][status]" value="0" <?php if($audit_data['company_photo']['status'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核通过<input type="radio" name="audit_data[company_photo][status]" value="1" <?php if($audit_data['company_photo']['status'] == 1): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核不通过<input type="radio" name="audit_data[company_photo][status]" value="2" <?php if($audit_data['company_photo']['status'] == 2): ?>checked="checked"<?php endif; ?>></lable>
 			<textarea name="audit_data[company_photo][reason]" <?php if($audit_data['organization_code']['status'] != 2): ?>style="display:none;"<?php endif; ?> ><?php echo ($audit_data["company_photo"]["reason"]); ?></textarea>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<lable>取消隐藏<input type="radio" name="audit_data[company_photo][display_type]" value="0" <?php if($audit_data['company_photo']['display_type'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>设置隐藏<input type="radio" name="audit_data[company_photo][display_type]" value="1" <?php if($audit_data['company_photo']['display_type'] == 1): ?>checked="checked"<?php endif; ?>></lable>
		</td>
		<script>
			reason_show("input[name='audit_data[company_photo][status]']","textarea[name='audit_data[company_photo][reason]']");
 		</script>
	</tr>
	<tr class="company">
		<td class="item_title">场地合同:</td>
		<td class="item_input">
			<?php if(is_array($audit_data[site_contract][image])): foreach($audit_data[site_contract][image] as $key=>$site_contract_image): ?><?php if($site_contract_image != ''): ?><div class="image_item">
					<img src="<?php echo ($site_contract_image); ?>" width="35" height="35" style="float:left; border:#ccc solid 1px; margin-left:5px;" rel="<?php echo ($site_contract_image); ?>">
				</div>
				<input type="hidden" name="audit_data[site_contract][image][]" value="<?php echo ($site_contract_image); ?>" ><?php endif; ?><?php endforeach; endif; ?><br>
			审核状态：
			<lable>未审核<input type="radio" name="audit_data[site_contract][status]" value="0" <?php if($audit_data['site_contract']['status'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核通过<input type="radio" name="audit_data[site_contract][status]" value="1" <?php if($audit_data['site_contract']['status'] == 1): ?>checked="checked"<?php endif; ?>></lable>
			<lable>审核不通过<input type="radio" name="audit_data[site_contract][status]" value="2" <?php if($audit_data['site_contract']['status'] == 2): ?>checked="checked"<?php endif; ?>></lable>
 			<textarea name="audit_data[site_contract][reason]" <?php if($audit_data['site_contract']['status'] != 2): ?>style="display:none;"<?php endif; ?> ><?php echo ($audit_data["site_contract"]["reason"]); ?></textarea>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<lable>取消隐藏<input type="radio" name="audit_data[site_contract][display_type]" value="0" <?php if($audit_data['site_contract']['display_type'] == 0): ?>checked="checked"<?php endif; ?>></lable>
			<lable>设置隐藏<input type="radio" name="audit_data[site_contract][display_type]" value="1" <?php if($audit_data['site_contract']['display_type'] == 1): ?>checked="checked"<?php endif; ?>></lable>
		</td>
		<script>
			reason_show("input[name='audit_data[site_contract][status]']","textarea[name='audit_data[site_contract][reason]']");
 		</script>
	</tr>
</table>
<!--企业信息end-->
<table class="form conf_tab" cellpadding=0 cellspacing=0 rel="6" >
	<tr>
		<td colspan=2 class="topTd"></td>
	</tr>
	<tr>
		<td class="item_title">目标用户或客户群体定位:</td>
		<td class="item_input">
			<div  style='margin-bottom:5px; '><textarea id='description_2' name='description_2' class='ketext' style='width:750px; height:350px;' ><?php echo ($vo["description_2"]); ?></textarea> </div>
		</td>
	</tr>
	<tr>
		<td class="item_title">目标用户或客户群体目前困扰或需求定位:</td>
		<td class="item_input">
			<div  style='margin-bottom:5px; '><textarea id='description_3' name='description_3' class='ketext' style='width:750px; height:350px;' ><?php echo ($vo["description_3"]); ?></textarea> </div>
		</td>
	</tr>
	<tr>
		<td class="item_title">满足目标用户或客户需求的产品或服务模式说明:</td>
		<td class="item_input">
			<div  style='margin-bottom:5px; '><textarea id='description_4' name='description_4' class='ketext' style='width:750px; height:350px;' ><?php echo ($vo["description_4"]); ?></textarea> </div>
		</td>
	</tr>
	<tr>
		<td class="item_title">项目赢利模式说明:</td>
		<td class="item_input">
			<div  style='margin-bottom:5px; '><textarea id='description_5' name='description_5' class='ketext' style='width:750px; height:350px;' ><?php echo ($vo["description_5"]); ?></textarea> </div>
		</td>
	</tr>
	<tr>
		<td class="item_title">市场主要同行或竞争对手概述:</td>
		<td class="item_input">
			<div  style='margin-bottom:5px; '><textarea id='description_6' name='description_6' class='ketext' style='width:750px; height:350px;' ><?php echo ($vo["description_6"]); ?></textarea> </div>
		</td>
	</tr>
	<tr>
		<td class="item_title">项目主要核心竞争力说明:</td>
		<td class="item_input">
			<div  style='margin-bottom:5px; '><textarea id='description_7' name='description_7' class='ketext' style='width:750px; height:350px;' ><?php echo ($vo["description_7"]); ?></textarea> </div>
		</td>
	</tr>
</table>
<table class="form conf_tab" cellpadding=0 cellspacing=0 rel=2>
	<tr><td colspan=2></td></tr>
	<tr>
		<td colspan=7>
		<table class="form " cellpadding=0 cellspacing=0 >
  			<tr>
				<td colspan=7>
					<table class="form " cellpadding=0 cellspacing=0 rel="2_input">
							<thead>
								<tr>
									<td>序号</td>
									<td>股东姓名</td>
									<td>股东职务</td>
									<td>是否全职</td>
									<td>所占股份(%)</td>
									<td>实际出资金额(万)</td>
									<td>与其他股东关系描述</td>
									<td>操作</td>
								</tr>
							</thead>
							<tbody>
								<?php if($vo['stock'] > 0): ?><?php if(is_array($vo['stock'])): $k = 0; $__LIST__ = $vo['stock'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$stock): ++$k;$mod = ($k % 2 )?><tr>
											<td width="12%">序号<?php echo ($k); ?>:</td>
		 									<td width="12%"><input type="text" value="<?php echo ($stock["name"]); ?>" class="stock_name" name="stock[<?php echo ($k); ?>][name]"  placeholder="股东姓名"></td>
											<td width="12%"><input type="text" value="<?php echo ($stock["job"]); ?>" name="stock[<?php echo ($k); ?>][job]"   placeholder="股东职务"></td>
											<td width="12%"><input type="text" value="<?php echo ($stock["is_full_time"]); ?>" name="stock[<?php echo ($k); ?>][is_full_time]"   placeholder="是否全职"></td>
											<td width="12%"><input type="text" value="<?php echo ($stock["share"]); ?>" name="stock[<?php echo ($k); ?>][share]"  placeholder="所占股份" class="gufen">%</td>
											<td width="12%"><input type="text" value="<?php echo ($stock["invest_money"]); ?>" name="stock[<?php echo ($k); ?>][invest_money]"  placeholder="实际出资">万</td>
											<td width="12%"><input type="text" value="<?php echo ($stock["relation"]); ?>" name="stock[<?php echo ($k); ?>][relation]"  placeholder="关系描述"></td>
											<td><a href="javascript:void(0);" class="del_new_row">删除</a></td>
										</tr><?php endforeach; endif; else: echo "" ;endif; ?><?php endif; ?>
								
							</tbody>
 					</table>	
				</td>
				
 			</tr>
 			<tr>
				<td colspan=7 align="center">
					<input type="hidden" name="stock_num" value="<?php echo ($stock_num); ?>">
					<input type="button" class="button add_new_row" value="增加一行" />
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td colspan=7>
			<table class="form " cellpadding=0 cellspacing=0 rel="2_descript">
				<?php if($vo['stock'] > 0): ?><?php if(is_array($vo['stock'])): $k = 0; $__LIST__ = $vo['stock'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$stock): ++$k;$mod = ($k % 2 )?><tr>
							<td class="item_title stock_descript">股东<?php echo ($stock["name"]); ?>简介：</td>
							<td class="item_input">
		   						<textarea id='stock_<?php echo ($k); ?>_describe' name='stock[<?php echo ($k); ?>][describe]' class='ketext' style='width:750px; height:350px;' ><?php echo ($stock["describe"]); ?></textarea> 
							</td>
						</tr><?php endforeach; endif; else: echo "" ;endif; ?><?php endif; ?>
				
			</table>
		</td>
	</tr>
</table> 
<table class="form conf_tab" cellpadding=0 cellspacing=0 rel=7>
	<tr><td colspan=2></td></tr>
	<tr>
		<td colspan=7>
		<table class="form " cellpadding=0 cellspacing=0 >
  			<tr>
				<td colspan=7>
					<table class="form " cellpadding=0 cellspacing=0 rel="7_input">
							<thead>
								<tr>
									<td>序号</td>
									<td>姓名</td>
									<td>职务</td>
									<td>是否全职</td>
 									<td>与其他股东关系描述</td>
									<td>操作</td>
								</tr>
							</thead>
							<tbody>
								<?php if($vo['unstock'] > 0): ?><?php if(is_array($vo['unstock'])): $k = 0; $__LIST__ = $vo['unstock'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$unstock): ++$k;$mod = ($k % 2 )?><tr>
											<td width="12%">序号<?php echo ($k); ?>:</td>
		 									<td width="12%"><input type="text" value="<?php echo ($unstock["name"]); ?>" name="unstock[<?php echo ($k); ?>][name]" class="unstock_name"  placeholder="姓名"></td>
											<td width="12%"><input type="text" value="<?php echo ($unstock["job"]); ?>" name="unstock[<?php echo ($k); ?>][job]"   placeholder="职务"></td>
											<td width="12%"><input type="text" value="<?php echo ($unstock["is_full_time"]); ?>" name="unstock[<?php echo ($k); ?>][is_full_time]"   placeholder="是否全职"></td>
 											<td width="12%"><input type="text" value="<?php echo ($unstock["relation"]); ?>" name="unstock[<?php echo ($k); ?>][relation]"  placeholder="关系描述"></td>
											<td><a href="javascript:void(0);" class="del_new_unstock_row">删除</a></td>
										</tr><?php endforeach; endif; else: echo "" ;endif; ?><?php endif; ?>
								
							</tbody>
 					</table>	
				</td>
				
 			</tr>
 			<tr>
				<td colspan=7 align="center">
					<input type="hidden" name="unstock_num" value="<?php echo ($unstock_num); ?>">
					<input type="button" class="button add_new_unstock_row" value="增加一行" />
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td colspan=7>
			<table class="form " cellpadding=0 cellspacing=0 rel="7_descript">
				<?php if($vo['unstock'] > 0): ?><?php if(is_array($vo['unstock'])): $k = 0; $__LIST__ = $vo['unstock'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$unstock): ++$k;$mod = ($k % 2 )?><tr>
							<td class="item_title unstock_descript">员工<?php echo ($unstock["name"]); ?>简介：</td>
							<td class="item_input">
		   						<textarea id='unstock[describe]' name='unstock[<?php echo ($k); ?>][describe]' class='ketext' style='width:750px; height:350px;' ><?php echo ($unstock["describe"]); ?></textarea> 
							</td>
						</tr><?php endforeach; endif; else: echo "" ;endif; ?><?php endif; ?>
				
			</table>
		</td>
	</tr>
</table> 
<table class="form conf_tab" cellpadding=0 cellspacing=0 rel=3>
	<tr ><td colspan=2></td></tr>
	<!----------history start--------->
		<?php if(is_array($vo['history'])): $history_key_num = 0; $__LIST__ = $vo['history'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$history): ++$history_key_num;$mod = ($history_key_num % 2 )?><tr class="history_table">
		<td clospan=7>
			 <table class="form" cellpadding=0 cellspacing=0>
			 	<tr>
			 		<td colspan=2 align="center">
			 			第<?php echo ($history_key_num); ?>阶段
						<input type="button" class="button history_del" value="删除第<?php echo ($history_key_num); ?>阶段" style="float:right;" >
					</td>
			 	</tr>
				<tr>
					<td class="item_title">阶段名称：</td>
					<td class="item_input"><input type="text" name="history[<?php echo ($history_key_num); ?>][info][name]" value="<?php echo ($history["info"]["name"]); ?>"></td>
				</tr>
				<tr>
					<td class="item_title">起始时间-结束时间</td>
					<td class="item_input">
  		                    <input readonly="" type="text" class="small_textbox w100 jcDate jcDateIco" rel="input-text" value="<?php echo ($history["info"]["begin_time"]); ?>" name="history[<?php echo ($history_key_num); ?>][info][begin_time]"   placeholder="请选择日期">
		                    <span class="add-on"><i class="icon-calendar"></i></span>
 						-
 		                    <input readonly="" type="text" class="small_textbox w100 jcDate jcDateIco" rel="input-text" value="<?php echo ($history["info"]["end_time"]); ?>" name="history[<?php echo ($history_key_num); ?>][info][end_time]"   placeholder="请选择日期">
		                    <span class="add-on"><i class="icon-calendar"></i></span>
 					</td>
				</tr>
				<tr>
					<td class="item_title">阶段达成目标描述：</td>
					<td class="item_input">
  						<textarea id='history[<?php echo ($history_key_num); ?>][info][describe]' name='history[<?php echo ($history_key_num); ?>][info][describe]' class='ketext' style='width:750px; height:350px;' ><?php echo ($history["info"]["describe"]); ?></textarea> 
 					</td>
				</tr>
				<tr>
					<td class="item_title">完成的手段，方法</td>
					<td class="item_input">
  						<textarea id='history[<?php echo ($history_key_num); ?>][info][do_describe]' name='history[<?php echo ($history_key_num); ?>][info][do_describe]' class='ketext' style='width:750px; height:350px;' ><?php echo ($history["info"]["do_describe"]); ?></textarea> 
					</td>
				</tr>
				<tr>
					<td class="item_title">阶段收入：</td>
					<td class="item_input">
						<select name="history[<?php echo ($history_key_num); ?>][info][is_income]" id="history<?php echo ($history_key_num); ?>_is_income">
							<option value="0" <?php if($history[info][is_income] == 0): ?>selected="selected"<?php endif; ?> >无</option>
							<option value="1" <?php if($history[info][is_income] == 1): ?>selected="selected"<?php endif; ?> >有</option>
						</select>
					</td>
				</tr>
				<tr id="history<?php echo ($history_key_num); ?>_income_list"  <?php if($history[info][is_income] == 0): ?>style="display:none;"<?php endif; ?> >
					<td>&nbsp;</td>
					<td>
						<table cellpadding=0 cellspacing=0 class="form income_table" rel="history<?php echo ($history_key_num); ?>_income" >
							<thead>
								<tr>
									<td>收入类别</td>
									<td>收入金额￥</td>
									<td>备注</td>
								</tr>
							</thead>
							<tbody>
								<?php if(is_array($history['income'])): $income_key = 0; $__LIST__ = $history['income'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$income): ++$income_key;$mod = ($income_key % 2 )?><tr >
									<td>
										<input type="text" name="history[<?php echo ($history_key_num); ?>][income][<?php echo ($income_key); ?>][type]" value="<?php echo ($income["type"]); ?>">
									</td>
									<td>
										<input type="text" class="amount" name="history[<?php echo ($history_key_num); ?>][income][<?php echo ($income_key); ?>][money]" value="<?php echo ($income["money"]); ?>" />
									</td>
									<td>
										<input type="text" name="history[<?php echo ($history_key_num); ?>][income][<?php echo ($income_key); ?>][memo]" value="<?php echo ($income["memo"]); ?>">
									</td>
								</tr><?php endforeach; endif; else: echo "" ;endif; ?>
								
							</tbody>
 							
						</table>
					</td>
				</tr>
				
				<tr id="history<?php echo ($history_key_num); ?>_income_bnt" <?php if($history[info][is_income] == 0): ?>style="display:none;"<?php endif; ?> >
					<td class="item_title">
						&nbsp;
					</td>
					<td class="item_input">
						合计：<span class="item_income"><?php echo ($history["info"]["item_income"]); ?></span>
						<input type="hidden"  class="item_income_input" name="history[<?php echo ($history_key_num); ?>][info][item_income]" />
						<input type="hidden" name="history_<?php echo ($history_key_num); ?>_income_num" value="<?php echo ($history["info"]["income_num"]); ?>" />
						<input type="button" value="添加收入类别" class="button" id="history<?php echo ($history_key_num); ?>_income_button">
					</td>
				</tr>
				<tr>
					<td>阶段开支:</td>
					<td>
						<select name="history[<?php echo ($history_key_num); ?>][info][is_out]" id="history<?php echo ($history_key_num); ?>_is_out">
							<option value="0"  <?php if($history[info][is_out] == 0): ?>selected="selected"<?php endif; ?> >无</option>
							<option value="1" <?php if($history[info][is_out] == 1): ?>selected="selected"<?php endif; ?> >有</option>
						</select>
					</td>
				</tr>
				<tr id="history<?php echo ($history_key_num); ?>_out_list" class="out_table" <?php if($history[info][is_out] == 0): ?>style="display:none;"<?php endif; ?> >
					<td>&nbsp;</td>
					<td>
						<table cellpadding=0 cellspacing=0 class="form out_table_1" rel="history<?php echo ($history_key_num); ?>_out" >
							<thead>
								<tr>
									<td>开支类别</td>
									<td>开支金额￥</td>
									<td>备注</td>
								</tr>
							</thead>
							<tbody>
								<?php if(is_array($history['out'])): $out_num = 0; $__LIST__ = $history['out'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$out): ++$out_num;$mod = ($out_num % 2 )?><tr>
										<td>
											<input type="text" name="history[<?php echo ($history_key_num); ?>][out][<?php echo ($out_num); ?>][type]" value="<?php echo ($out["type"]); ?>">
										</td>
										<td>
											<input type="text" class="amount" name="history[<?php echo ($history_key_num); ?>][out][<?php echo ($out_num); ?>][money]" value="<?php echo ($out["money"]); ?>" />
										</td>
										<td>
											<input type="text" name="history[<?php echo ($history_key_num); ?>][out][<?php echo ($out_num); ?>][memo]" value="<?php echo ($out["memo"]); ?>" />
										</td>
									</tr><?php endforeach; endif; else: echo "" ;endif; ?>
							</tbody>
						</table>
					</td>
 				</tr>
				<tr id="history<?php echo ($history_key_num); ?>_out_bnt" <?php if($history[info][is_out] == 0): ?>style="display:none;"<?php endif; ?>>
					<td class="item_title">
						&nbsp;
					</td>
					<td class="item_input">
						合计：<span class="item_out"><?php echo ($history["info"]["item_out"]); ?></span>
						<input type="hidden"  class="item_out_input" name="history[<?php echo ($history_key_num); ?>][info][item_out]" />
						<input type="hidden" name="history_<?php echo ($history_key_num); ?>_out_num" value="<?php echo ($history["info"]["out_num"]); ?>" />
						<input type="button" class="button" value="添加开支类别" id="history<?php echo ($history_key_num); ?>_pay_button">
					</td>
 				</tr>
			 </table>
		</td>
		<script>
 			$(function(){
 				$("#history<?php echo ($history_key_num); ?>_is_out").live('change',function(){
  					if($(this).val()==1){
 						$("#history<?php echo ($history_key_num); ?>_out_list").show();
						$("#history<?php echo ($history_key_num); ?>_out_bnt").show();
					}else{
						$("#history<?php echo ($history_key_num); ?>_out_list").hide();
						$("#history<?php echo ($history_key_num); ?>_out_bnt").hide();
					}
				});
				$("#history<?php echo ($history_key_num); ?>_is_income").live('change',function(){
					if($(this).val()==1){
						$("#history<?php echo ($history_key_num); ?>_income_list").show();
						$("#history<?php echo ($history_key_num); ?>_income_bnt").show();
					}else{
						$("#history<?php echo ($history_key_num); ?>_income_list").hide();
						$("#history<?php echo ($history_key_num); ?>_income_bnt").hide();
					}
				});
				$("#history<?php echo ($history_key_num); ?>_income_button").live('click',function(){
					var demo_income_1="<tr>"+$("#history_income_demo_1").html()+"</tr>";
					var num=parseFloat($("input[name='history_<?php echo ($history_key_num); ?>_income_num']").val())+1;
					$("input[name='history_<?php echo ($history_key_num); ?>_income_num']").val(num);
					var new_income=demo_income_1.replace(/history_income/g,"history[<?php echo ($history_key_num); ?>][income]["+num+"]");
 	  				$("table[rel='history<?php echo ($history_key_num); ?>_income'] tbody").append(new_income);
				});
				$("#history<?php echo ($history_key_num); ?>_pay_button").live('click',function(){
					var demo_pay_1="<tr>"+$("#history_out_demo_1").html()+"</tr>";
					var num=parseFloat($("input[name='history_<?php echo ($history_key_num); ?>_out_num']").val())+1;
					$("input[name='history_<?php echo ($history_key_num); ?>_out_num']").val(num);
   					var new_pay=demo_pay_1.replace(/history_out/g,"history[<?php echo ($history_key_num); ?>][out]["+num+"]");
  	 				$("table[rel='history<?php echo ($history_key_num); ?>_out'] tbody").append(new_pay);
 				});
 			});
		</script>
	</tr><?php endforeach; endif; else: echo "" ;endif; ?>
	<!----------history end--------->
	
  	<tr id="add_new_history_tr">
		<td colspan=2 align="center">
			<input type="hidden" name="history_step" value="<?php echo ($history_num); ?>">
			<input type="button" class="button" value="添加下一阶段" id="add_new_history" >
		</td>
	</tr>
	<tr>
		<td colspan=2 class="item_title" align="left" style="padding-left:150px;">
			<div style="float:left;">
				收入：<span id="totalsr">0</span>&nbsp;
				支出：<span id="totalkz">0</span>&nbsp;
				收支：<span id="totalyk">0</span>&nbsp;
			</div>
 		</td>
 	</tr>
	 <script>
	 	$(function(){
			$("#add_new_history").bind('click',function(){
				num=parseFloat($("input[name='history_step']").val())+1;
				$("input[name='history_step']").val(num);
				$.ajax({
				'url':ROOT+"?"+VAR_MODULE+"="+MODULE_NAME+"&"+VAR_ACTION+"=add_investor_item&html=add_new_history&num="+num,
				'type':'POST',
				'dataType':'json',
				success:function(data){
 					if(data.status==1){
						$("#add_new_history_tr").before(data.html);
						bindKdedior();
						$("input.jcDate").jcDate({
					        IcoClass : "jcDateIco",
					        Event : "click",
					        Speed : 100,
					        Left :-125,
					        Top : 28,
					        format : "-",
					        Timeout : 100
					    });
					}
				}
				});
			});
			
		})
	 </script>
</table>
<table class="form conf_tab" cellpadding=0 cellspacing=0 rel=4>
	<tr><td colspan=2></td></tr>
	<?php if(is_array($vo['plan'])): $plan_key_num = 0; $__LIST__ = $vo['plan'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$plan): ++$plan_key_num;$mod = ($plan_key_num % 2 )?><tr  class="plan_table">
		<td clospan=7>
			 <table class="form" cellpadding=0 cellspacing=0>
			 	<tr>
			 		<td colspan=2 align="center">
			 			第<?php echo ($plan_key_num); ?>阶段
						<input type="button" class="button plan_del" value="删除第<?php echo ($plan_key_num); ?>阶段" style="float:right;" >
					</td>
			 	</tr>
				<tr>
					<td class="item_title">阶段名称：</td>
					<td class="item_input"><input type="text" name="plan[<?php echo ($plan_key_num); ?>][info][name]" value="<?php echo ($plan["info"]["name"]); ?>"></td>
				</tr>
				<tr>
					<td class="item_title">起始时间-结束时间</td>
					<td class="item_input">
  						<input readonly="" type="text" class="small_textbox w100 jcDate jcDateIco" rel="input-text" value="<?php echo ($plan["info"]["begin_time"]); ?>" name="plan[<?php echo ($plan_key_num); ?>][info][begin_time]"   placeholder="请选择日期">
	                    <span class="add-on"><i class="icon-calendar"></i></span>
						-
		                    <input readonly="" type="text" class="small_textbox w100 jcDate jcDateIco" rel="input-text" value="<?php echo ($plan["info"]["end_time"]); ?>" name="plan[<?php echo ($plan_key_num); ?>][info][end_time]"   placeholder="请选择日期">
	                    <span class="add-on"><i class="icon-calendar"></i></span>
					</td>
				</tr>
				<tr>
					<td class="item_title">阶段达成目标描述：</td>
					<td class="item_input">
  						<textarea id='plan_<?php echo ($plan_key_num); ?>_describe' name='plan[<?php echo ($plan_key_num); ?>][info][describe]' class='ketext' style='width:750px; height:350px;' ><?php echo ($plan["info"]["describe"]); ?></textarea> 
 					</td>
				</tr>
				<tr>
					<td class="item_title">完成的手段，方法：</td>
					<td class="item_input">
  						<textarea id='plan_<?php echo ($plan_key_num); ?>_do_describe' name='plan[<?php echo ($plan_key_num); ?>][info][do_describe]' class='ketext' style='width:750px; height:350px;' ><?php echo ($plan["info"]["do_describe"]); ?></textarea> 
					</td>
				</tr>
				<tr>
					<td class="item_title">阶段收入：</td>
					<td class="item_input">
						<select name="plan[<?php echo ($plan_key_num); ?>][info][is_income]" id="plan<?php echo ($plan_key_num); ?>_is_income">
							<option value="0" <?php if($plan[info][is_income] == 0): ?>selected="selected"<?php endif; ?> >无</option>
							<option value="1" <?php if($plan[info][is_income] == 1): ?>selected="selected"<?php endif; ?> >有</option>
						</select>
					</td>
				</tr>
				<tr id="plan<?php echo ($plan_key_num); ?>_income_list"  <?php if($plan[info][is_income] == 0): ?>style="display:none;"<?php endif; ?> >
					<td>&nbsp;</td>
					<td>
						<table cellpadding=0 cellspacing=0 class="form income_table" rel="plan<?php echo ($plan_key_num); ?>_income">
							<thead>
								<tr>
									<td>收入类别</td>
									<td>收入金额￥</td>
									<td>备注</td>
								</tr>
							</thead>
							<tbody>
								<?php if(is_array($plan['income'])): $income_key = 0; $__LIST__ = $plan['income'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$income): ++$income_key;$mod = ($income_key % 2 )?><tr >
									<td>
										<input type="text" name="plan[<?php echo ($plan_key_num); ?>][income][<?php echo ($income_key); ?>][type]" value="<?php echo ($income["type"]); ?>">
									</td>
									<td>
										<input type="text" class="amount" name="plan[<?php echo ($plan_key_num); ?>][income][<?php echo ($income_key); ?>][money]" value="<?php echo ($income["money"]); ?>" />
									</td>
									<td>
										<input type="text" name="plan[<?php echo ($plan_key_num); ?>][income][<?php echo ($income_key); ?>][memo]" value="<?php echo ($income["memo"]); ?>">
									</td>
								</tr><?php endforeach; endif; else: echo "" ;endif; ?>
								<tr id="plan<?php echo ($plan_key_num); ?>_income_demo" class="plan[<?php echo ($plan_key_num); ?>]_income_row" style="display:none;">
									<td>
										<input type="text" name="plan[<?php echo ($plan_key_num); ?>][income][<?php echo ($plan["info"]["income_num"]); ?>][type]" value="">
									</td>
									<td>
										<input type="text" class="amount" name="plan[<?php echo ($plan_key_num); ?>][income][<?php echo ($plan["info"]["income_num"]); ?>][money]" value="" />
									</td>
									<td>
										<input type="text" name="plan[<?php echo ($plan_key_num); ?>][income][<?php echo ($plan["info"]["income_num"]); ?>][memo]" value="">
									</td>
								</tr>
							</tbody>
 							
						</table>
					</td>
				</tr>
				
				<tr id="plan<?php echo ($plan_key_num); ?>_income_bnt" <?php if($plan[info][is_income] == 0): ?>style="display:none;"<?php endif; ?> >
					<td class="item_title">
						&nbsp;
					</td>
					<td class="item_input">
						合计：<span class="item_income">0</span>
						<input type="hidden"  class="item_income_input" name="plan[<?php echo ($plan_key_num); ?>][info][item_income]" />
 						<input type="hidden" name="plan_<?php echo ($plan_key_num); ?>_income_num" value="<?php echo ($plan["info"]["income_num"]); ?>" />
						<input type="button" value="添加收入类别" class="button" id="plan<?php echo ($plan_key_num); ?>_income_button">
					</td>
				</tr>
				<tr>
					<td>阶段开支:</td>
					<td>
						<select name="plan[<?php echo ($plan_key_num); ?>][info][is_out]" id="plan<?php echo ($plan_key_num); ?>_is_out">
							<option value="0"  <?php if($plan[info][is_out] == 0): ?>selected="selected"<?php endif; ?> >无</option>
							<option value="1" <?php if($plan[info][is_out] == 1): ?>selected="selected"<?php endif; ?> >有</option>
						</select>
					</td>
				</tr>
				<tr id="plan<?php echo ($plan_key_num); ?>_out_list" <?php if($plan[info][is_out] == 0): ?>style="display:none;"<?php endif; ?> >
					<td>&nbsp;</td>
					<td>
						<table cellpadding=0 cellspacing=0 class="form out_table_1" rel="plan<?php echo ($plan_key_num); ?>_out">
							<thead>
								<tr>
									<td>开支类别</td>
									<td>开支金额￥</td>
									<td>备注</td>
								</tr>
							</thead>
							<tbody>
								<?php if(is_array($plan['out'])): $out_num = 0; $__LIST__ = $plan['out'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$out): ++$out_num;$mod = ($out_num % 2 )?><tr>
										<td>
											<input type="text" name="plan[<?php echo ($plan_key_num); ?>][out][<?php echo ($out_num); ?>][type]" value="<?php echo ($out["type"]); ?>">
										</td>
										<td>
											<input type="text" class="amount"  name="plan[<?php echo ($plan_key_num); ?>][out][<?php echo ($out_num); ?>][money]" value="<?php echo ($out["money"]); ?>" />
										</td>
										<td>
											<input type="text" name="plan[<?php echo ($plan_key_num); ?>][out][<?php echo ($out_num); ?>][memo]" value="<?php echo ($out["memo"]); ?>" />
										</td>
									</tr><?php endforeach; endif; else: echo "" ;endif; ?>
								<tr id="plan<?php echo ($plan_key_num); ?>_out_demo" class="plan<?php echo ($plan_key_num); ?>_out_row" style="display:none;">
									<td>
										<input type="text" name="plan[<?php echo ($plan_key_num); ?>][out][<?php echo ($plan["info"]["out_num"]); ?>][type]" value="">
									</td>
									<td>
										<input type="text" class="amount" name="plan[<?php echo ($plan_key_num); ?>][out][<?php echo ($plan["info"]["out_num"]); ?>][money]" value="" />
									</td>
									<td>
										<input type="text" name="plan[<?php echo ($plan_key_num); ?>][out][<?php echo ($plan["info"]["out_num"]); ?>][memo]" value="" />
									</td>
								</tr>
							</tbody>
 							
						</table>
					</td>
 				</tr>
				<tr id="plan<?php echo ($plan_key_num); ?>_out_bnt" <?php if($plan[info][is_out] == 0): ?>style="display:none;"<?php endif; ?>>
					<td class="item_title">&nbsp;</td>
					<td class="item_input">
						合计：<span class="item_out">0</span>
						<input type="hidden"  class="item_out_input" name="plan[<?php echo ($plan_key_num); ?>][info][item_out]" />
 						<input type="hidden" name="plan_<?php echo ($plan_key_num); ?>_out_num" value="<?php echo ($plan["info"]["out_num"]); ?>" />
						<input type="button" class="button" value="添加开支类别" id="plan<?php echo ($plan_key_num); ?>_pay_button">
					</td>
 				</tr>
			 </table>
		</td>
		<script>
			
 			$(function(){
 				$("#plan<?php echo ($plan_key_num); ?>_is_out").live('change',function(){
  					if($(this).val()==1){
 						$("#plan<?php echo ($plan_key_num); ?>_out_list").show();
						$("#plan<?php echo ($plan_key_num); ?>_out_bnt").show();
					}else{
						$("#plan<?php echo ($plan_key_num); ?>_out_list").hide();
						$("#plan<?php echo ($plan_key_num); ?>_out_bnt").hide();
					}
				});
				$("#plan<?php echo ($plan_key_num); ?>_is_income").live('change',function(){
					if($(this).val()==1){
						$("#plan<?php echo ($plan_key_num); ?>_income_list").show();
						$("#plan<?php echo ($plan_key_num); ?>_income_bnt").show();
					}else{
						$("#plan<?php echo ($plan_key_num); ?>_income_list").hide();
						$("#plan<?php echo ($plan_key_num); ?>_income_bnt").hide();
					}
				});
				$("#plan<?php echo ($plan_key_num); ?>_income_button").live('click',function(){
					var demo_income="<tr>"+$("#plan_income_demo").html()+"</tr>";
 					var num=parseFloat($("input[name='plan_<?php echo ($plan_key_num); ?>_income_num']").val())+1;
					$("input[name='plan_<?php echo ($plan_key_num); ?>_income_num']").val(num);
 					var new_income=demo_income.replace(/plan_income/g,"plan[<?php echo ($plan_key_num); ?>][income]["+num+"]");
	  				$("table[rel='plan<?php echo ($plan_key_num); ?>_income'] tbody").append(new_income);
				});
				$("#plan<?php echo ($plan_key_num); ?>_pay_button").live('click',function(){
					var demo_pay="<tr>"+$("#plan_out_demo").html()+"</tr>";
					var num=parseFloat($("input[name='plan_<?php echo ($plan_key_num); ?>_out_num']").val())+1;
					$("input[name='plan_<?php echo ($plan_key_num); ?>_out_num']").val(num);
 					var new_pay=demo_pay.replace(/plan_out/g,"plan[<?php echo ($plan_key_num); ?>][out]["+num+"]");
 	 				$("table[rel='plan<?php echo ($plan_key_num); ?>_out'] tbody").append(new_pay);
 				});
 			});
		</script>
	</tr><?php endforeach; endif; else: echo "" ;endif; ?>
 	<tr id="add_new_plan_tr">
		<td colspan=2 align="center">
			<input type="hidden" name="plan_step" value="<?php echo ($plan_step_num); ?>">
			<input type="button" class="button" value="添加新一阶段" id="add_new_plan" >
		</td>
	</tr>
	<tr>
		<td colspan=2 class="item_title" align="left" style="padding-left:150px;">
			<div style="float:left;">
				收入：<span id="totalsr_plan">0</span>&nbsp;
				支出：<span id="totalkz_plan">0</span>&nbsp;
				收支：<span id="totalyk_plan">0</span>&nbsp;
			</div>
 		</td>
 	</tr>
	 <script>
	 	$(function(){
			$("#add_new_plan").live('click',function(){
				var num=parseFloat($("input[name='plan_step']").val())+1;
				$("input[name='plan_step']").val(num);
				$.ajax({
				'url':ROOT+"?"+VAR_MODULE+"="+MODULE_NAME+"&"+VAR_ACTION+"=add_investor_item&html=add_new_plan&num="+num,
				'type':'POST',
				'dataType':'json',
				success:function(data){
 					if(data.status==1){
 						$("#add_new_plan_tr").before(data.html);
						bindKdedior();
						$("input.jcDate").jcDate({
					        IcoClass : "jcDateIco",
					        Event : "click",
					        Speed : 100,
					        Left :-125,
					        Top : 28,
					        format : "-",
					        Timeout : 100
					    });
   					}
				}
				});
			});
			
		})
		function download($url){
			url=ROOT+"?"+VAR_MODULE+"="+MODULE_NAME+"&"+VAR_ACTION+"=download&file="+$url,
			window.open();
		}
	 </script>
	 
</table>
<table class="form conf_tab" cellpadding=0 cellspacing=0 rel=5>
	<tr><td colspan=2></td></tr>
	<tr>
		<td colspan=2>
			<table cellpadding=0 cellspacing=0 class="form" rel="attach_form" >
				<thead>
					<tr >
						<td>标题</td>
						<td>附件</td>
						<td>操作</td>
					</tr>
				</thead>
				<tbody>
					<?php if(is_array($vo['attach'])): $attach_key_num = 0; $__LIST__ = $vo['attach'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$attach): ++$attach_key_num;$mod = ($attach_key_num % 2 )?><tr>
							<td><input type="text" name="attach[<?php echo ($attach_key_num); ?>][title]" value="<?php echo ($attach["title"]); ?>"></td>
							<td>
	 							<input type="text" class="kefile_url"  name="attach[<?php echo ($attach_key_num); ?>][file]" value="<?php echo ($attach["file"]); ?>" readonly="readonly" />
								<input type="button"   class="kefile" name="imgFile" rel="num" value="上传" />
							</td>
							<td>
 								<?php if($attach["file"] != ''): ?><a href="<?php echo ($attach["file"]); ?>">下载</a>&nbsp;<?php endif; ?>
 								<a href="javascript:void(0);" class="del_attch">删除</a>
							</td>
						</tr><?php endforeach; endif; else: echo "" ;endif; ?>
					
				</tbody>
			</table>
		</td>
		
	</tr>
	<tr id="add_new_attach_tr">
		<td colspan=2 align="center">
			<input type="hidden" name="attach_num" value="<?php echo ($attach_num); ?>">
 			<input type="button" class="button" value="添加附件" id="add_new_attach" >
		</td>
	</tr>
	 <tr >
	 	<td colspan=2 align="left"><span style=" color:red;">附件类型为：'doc', 'docx', 'xls', 'xlsx', 'ppt', 'txt', 'zip', 'rar'</span></td>
	 </tr>
</table>
	<script>
		var demo_attach="<tr>"+$("#demo_attach").html()+"</tr>";
		var demo_descript="<tr>"+$("#demo_descript").html()+"</tr>";
 		var demo_input="<tr>"+$("#demo_input").html()+"</tr>";
		var demo_unstock_descript="<tr>"+$("#demo_unstock_descript").html()+"</tr>";
 		var demo_unstock_input="<tr>"+$("#demo_unstock_input").html()+"</tr>";
	 	var total_income=0.00;
   	 	var total_out=0.00;
		total_price(".history_table");
		total_price(".plan_table");
  		$(function(){
			//选择日期控件
		    $("input.jcDate").jcDate({
		        IcoClass : "jcDateIco",
		        Event : "click",
		        Speed : 100,
		        Left :-125,
		        Top : 28,
		        format : "-",
		        Timeout : 100
		    });
			$(".add_new_row").live("click",function(){
				var num=parseFloat($("input[name='stock_num']").val())+1;
				$("input[name='stock_num']").val(num);
				
				new_descript= demo_descript.replace("股东<?php echo ($stock_num); ?>简介：","股东"+num+"简介：");
				new_descript=new_descript.replace(/stock\[<?php echo ($stock_num); ?>\]/,"stock["+num+"]");
				
				new_input=demo_input.replace("序号<?php echo ($stock_num); ?>:","序号"+num+":");
				new_input=new_input.replace(/stock\[<?php echo ($stock_num); ?>\]/g,"stock["+num+"]");
				
  				 $("table[rel='2_descript']").append(new_descript);
				 $("table[rel='2_input']").append(new_input);
				 bindKdedior();
 			});
			$("table[rel='2_input'] .del_new_row").live("click",function(){
				 var sort_num=$("table[rel='2_input']  .del_new_row").index($(this));
  			 	 $("table[rel='2_descript'] tr:eq("+sort_num+")").remove("tr");
				 $("table[rel='2_input'] tbody tr:eq("+sort_num+")").remove("tr");
			});
			
			$(".add_new_unstock_row").live("click",function(){
				var num=parseFloat($("input[name='unstock_num']").val())+1;
				$("input[name='unstock_num']").val(num);
				
				var new_unstock_descript= demo_unstock_descript.replace("员工<?php echo ($unstock_num); ?>简介：","员工"+num+"简介：");
				new_unstock_descript=new_unstock_descript.replace(/stock\[<?php echo ($unstock_num); ?>\]/,"stock["+num+"]");
				
				var new_unstock_input=demo_unstock_input.replace("序号<?php echo ($unstock_num); ?>:","序号"+num+":");
				new_unstock_input=new_unstock_input.replace(/stock\[<?php echo ($unstock_num); ?>\]/g,"stock["+num+"]");
				
  				 $("table[rel='7_descript']").append(new_unstock_descript);
				 $("table[rel='7_input']").append(new_unstock_input);
				 bindKdedior();
 			});
			$("table[rel='7_input'] .del_new_unstock_row").live("click",function(){
				 var sort_num=$("table[rel='7_input'] .del_new_unstock_row").index($(this));
  			 	 $("table[rel='7_descript'] tr:eq("+sort_num+")").remove("tr");
				 $("table[rel='7_input'] tbody tr:eq("+sort_num+")").remove("tr");
			});
			
			$("#add_new_attach").live('click',function(){
 				num=parseFloat($("input[name='attach_num']").val())+1;
				$("input[name='attach_num']").val(num);
				demo_attach=demo_attach.replace("imgFile","imgFile_"+num);
				demo_attach=demo_attach.replace(/attach\[1\]/g,"attach["+num+"]");
				//demo_attach=demo_attach.replace("url","url_"+num);
  				$("table[rel='attach_form'] tbody").append(demo_attach);
				bindFileUpload();
			});
			$("table[rel='attach_form'] .del_attch").live("click",function(){
				 sort_num=$("table[rel='attach_form'] .del_attch").index($(this));
				 $("table[rel='attach_form'] tbody tr:eq("+sort_num+")").remove("tr");
			});
			$(".plan_del").live('click',function(){
				var num=$(".plan_del").index($(this));
				$(".plan_table:eq("+num+")").remove("tr");
				total_price(".plan_table");
			});
			$(".history_del").live('click',function(){
				var num=$(".history_del").index($(this));
				$(".history_table:eq("+num+")").remove("tr");
				total_price(".history_table");
			});
			$(".history_table").live('blur',function(){
		        total_price(".history_table");
		    });
			$(".plan_table").live('blur',function(){
		        total_price(".plan_table");
		    });
			
			$("table[rel='7_input'] .unstock_name").live('change',function(){
				
				var unstock_name=$(this).val();
 				var unstock_num=$("table[rel='7_input'] .unstock_name").index($(this));
				$("table[rel='7_descript'] .unstock_descript:eq("+unstock_num+")").html('员工'+unstock_name+'简介：');
			});
			
			$("table[rel='2_input'] .stock_name").live('change',function(){
				
				var stock_name=$(this).val();
 				var stock_num=$("table[rel='2_input'] .stock_name").index($(this));
				$("table[rel='2_descript'] .stock_descript:eq("+stock_num+")").html('股东'+stock_name+'简介：');
			});
			
		});
		
	</script>

<div class="blank5"></div>
	<table class="form" cellpadding=0 cellspacing=0>
		<tr>
			<td colspan=2 class="topTd"></td>
		</tr>
		<tr>
			<td class="item_title"></td>
			<td class="item_input">
			<!--隐藏元素-->
			<input type="hidden" value="1" name="type">
			<input type="hidden" name="<?php echo conf("VAR_MODULE");?>" value="Deal" />
			<input type="hidden" name="<?php echo conf("VAR_ACTION");?>" value="<?php echo ($action); ?>" />
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
 	function investor_check(){
		var num=0;
		$("table[rel='2_input']").find(".gufen").each(function(i){
 			num=num+parseFloat($(this).val());
 		});
 		if(num<100){
			alert("股份必须要等于100%");
			return false;
		}
		return true;
	}
</script>
</body>
</html>