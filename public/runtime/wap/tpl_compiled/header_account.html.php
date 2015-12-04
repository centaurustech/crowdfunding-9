<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="format-detection" content="telephone=no">
        <meta name="format-detection" content="email=no">
        <title><?php if ($this->_var['page_title'] != ''): ?><?php echo $this->_var['page_title']; ?> - <?php endif; ?><?php echo $this->_var['site_name']; ?> - <?php echo $this->_var['seo_title']; ?></title>
        <meta name="keywords" content="<?php echo $this->_var['seo_keyword']; ?>" />
        <meta name="description" content="<?php echo $this->_var['seo_description']; ?>" />
        <?php
        $this->_var['pagecss'][] = $this->_var['TMPL_REAL']."/css/layout.css";
        $this->_var['pagecss'][] = $this->_var['TMPL_REAL']."/css/style.css";
        $this->_var['pagecss'][] = $this->_var['TMPL_REAL']."/css/weebox.css";

        $this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/common_js/jquery-1.8.2.min.js";
        $this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/fanwe_utils/jquery.bgiframe.js";
        $this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/fanwe_utils/jquery.weebox.js";
        $this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/fanwe_utils/touch.js";
        $this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/fanwe_utils/fanweUI.js";
        $this->_var['cpagejs'][] = $this->_var['TMPL_REAL']."/js/fanwe_utils/fanweUI.js";
        $this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/fanwe_utils/zcUI.js";
        $this->_var['cpagejs'][] = $this->_var['TMPL_REAL']."/js/fanwe_utils/zcUI.js";
        $this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/common_js/script.js";
        $this->_var['cpagejs'][]='';
        if(app_conf("APP_MSG_SENDER_OPEN")==1)
        {
            $this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/msg_sender.js";
            $this->_var['cpagejs'][] = $this->_var['TMPL_REAL']."/js/msg_sender.js";
        }
        $this->_var['pagejs'][] = $this->_var['TMPL_REAL']."/js/plupload/plupload.full.min.js";
        $this->_var['cpagejs'][] = $this->_var['TMPL_REAL']."/js/plupload/plupload.full.min.js";
        ?>
        <link rel="stylesheet" type="text/css" href="<?php echo $this->_var['font_url']; ?>" />
        <link rel="stylesheet" type="text/css" href="<?php 
$k = array (
  'name' => 'parse_css',
  'v' => $this->_var['pagecss'],
);
echo $k['name']($k['v']);
?>" />
        <script type="text/javascript" src="<?php 
$k = array (
  'name' => 'parse_script',
  'v' => $this->_var['pagejs'],
  'c' => $this->_var['cpagejs'],
);
echo $k['name']($k['v'],$k['c']);
?>"></script>
        <script type="text/javascript">
            var APP_ROOT = '<?php echo $this->_var['APP_URL']; ?>';
            var APP_ROOT_ORA = '<?php echo $this->_var['PC_URL']; ?>';
            <?php if (app_conf ( "APP_MSG_SENDER_OPEN" ) == 1): ?>
            var send_span = <?php 
$k = array (
  'name' => 'app_conf',
  'v' => 'SEND_SPAN',
);
echo $k['name']($k['v']);
?>000;
            <?php endif; ?>
			var __HASH_KEY__ = "<?php echo $this->_var['hash_key']; ?>";
        </script>
        <script type='text/javascript' src='<?php echo $this->_var['APP_ROOT']; ?>/public/region.js'></script>
        <!--百度轻应用-->
        <meta name="baidu-tc-cerfication" content="688cdfaa49f7c8f87fd5883492587d8e">
    </head>
    <body <?php if (ACT == ( 'account' && 'settings' && 'index' )): ?>style="background:#f0f0f0;"<?php endif; ?>>
	<div class="navbar theme_color1">
	    <div class="nav-wrap-left">
	        <a  <?php if ($this->_var['pre_page']): ?>href="<?php echo $this->_var['pre_page']; ?>"<?php else: ?>onclick="window.history.go(-1);"<?php endif; ?> class="back"><i class="fa fa-chevron-left"></i></a>
	    </div>
	    <span><?php echo $this->_var['page_title']; ?></span>
	   <div class="nav-wrap-right">
            <a class="mybtn" href="<?php
echo parse_url_tag_wap("u:settings|"."".""); 
?>"><i class="fa fa-user"></i></a>
        </div>
	</div>
	<?php echo $this->fetch('inc/header_search.html'); ?>
    <div class="wraper">