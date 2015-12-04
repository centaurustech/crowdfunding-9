</div>
<div class="foot webkit-box" id="foot">
    <a href="<?php
echo parse_url_tag_wap("u:index|"."".""); 
?>" class="webkit-box-flex"><i class="fa fa-home"></i>&nbsp;首页</a>
	<?php if (! app_conf ( "PROJECT_HIDE" )): ?>
	<a href="javascript:check_tg();" class="invest_plus"><i class="icon_plus"></i></a>
	<input type="hidden" name="check_login" value="<?php echo $this->_var['user_info']['id']; ?>">
	<?php endif; ?>
 	<a href="<?php
echo parse_url_tag_wap("u:investor#invester_list|"."".""); 
?>" class="webkit-box-flex" style="border:none;"><i class="fa fa-users"></i>&nbsp;投资人</a>
 	<div class="blank"></div>
</div>
<div id="jumphelper" style="display:block;">
    <a href="<?php
echo parse_url_tag_wap("u:user_message#index|"."".""); 
?>" class="investor_btn sizing">
        <i class="fa fa-pencil-square-o"></i>
    </a>
 	<a href="<?php
echo parse_url_tag_wap("u:project#choose|"."".""); 
?>" class="investor_btn sizing" style="display:none">
        <i class="fa fa-plus-circle"></i>
    </a>
    <a href="javascript:void(0);" id="gotop" class="gotop">∧</a>
    <a href="javascript:void(0);" id="gobot" class="gotop" style="display:none">∨</a>
</div>
</body>
<script type="text/javascript">
	// 滑动触发
	isTouchDevice();
	// 返回顶部
	init_gotop();
</script>
<script type="text/javascript">
	function check_tg(){
		var is_tg=<?php echo $this->_var['is_tg']; ?>;
		var is_user_tg=<?php echo $this->_var['is_user_tg']; ?>;
		var	is_user_investor=<?php echo $this->_var['is_user_investor']; ?>;
		var	check_login=$("input[name='check_login']").val();
		if(check_login){
			if(is_tg){
				if(!is_user_tg){
					$.showConfirm("您还未绑定资金托管账户，无法发起项目，现在去绑定？",function(){
						window.location.href=APP_ROOT+"/index.php?ctl=collocation&act=CreateNewAcct&user_type=0&user_id=<?php echo $this->_var['user_info']['id']; ?>";
					});
				}else{
					window.location.href="<?php
echo parse_url_tag_wap("u:project#choose|"."".""); 
?>";
				}
			}else{
				
				if(is_user_investor ==1){
					window.location.href="<?php
echo parse_url_tag_wap("u:project#choose|"."".""); 
?>";
				}else if(is_user_investor ==2){
					$.showErr("您的实名认证正在审核中，还不能发起项目，请联系网站管理员");
				}
				else{
					$.showErr("您未进行身份认证，无法发起项目，点击确定后跳转到身份认证页面",function(){
						window.location.href="<?php
echo parse_url_tag_wap("u:settings#security|"."method=setting-id-box".""); 
?>";
					});
				}
				
			}
		}
		else{
			$.showErr("请先登录再进行发起项目",function(){
				window.location.href="<?php
echo parse_url_tag_wap("u:user#login|"."".""); 
?>";
			});
		}
	}
</script>
<?php if ($this->_var['signPackage']): ?>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>
  wx.config({
      debug: false,
      appId: '<?php echo $this->_var['signPackage']['appId']; ?>',
      timestamp: <?php echo $this->_var['signPackage']['timestamp']; ?>,
      nonceStr: '<?php echo $this->_var['signPackage']['nonceStr']; ?>',
      signature: '<?php echo $this->_var['signPackage']['signature']; ?>',
      jsApiList: [
        'checkJsApi',
        'onMenuShareTimeline',
        'onMenuShareAppMessage',
        'onMenuShareQQ',
        'onMenuShareWeibo',
        'hideMenuItems',
        'showMenuItems',
        'hideAllNonBaseMenuItem',
        'showAllNonBaseMenuItem',
        'translateVoice',
        'startRecord',
        'stopRecord',
        'onRecordEnd',
        'playVoice',
        'pauseVoice',
        'stopVoice',
        'uploadVoice',
        'downloadVoice',
        'chooseImage',
        'previewImage',
        'uploadImage',
        'downloadImage',
        'getNetworkType',
        'openLocation',
        'getLocation',
        'hideOptionMenu',
        'showOptionMenu',
        'closeWindow',
        'scanQRCode',
        'chooseWXPay',
        'openProductSpecificView',
        'addCard',
        'chooseCard',
        'openCard'
      ]
  });
   wx.ready(function () {
    // 在这里调用 API
			<?php if ($this->_var['wx']['title']): ?>
			var wx_title="<?php echo $this->_var['wx']['title']; ?>";
			<?php else: ?>
			var wx_title='<?php echo $this->_var['seo_title']; ?>';
 			<?php endif; ?>
			 <?php if ($this->_var['wx']['desc']): ?>
			var wx_desc= '<?php echo $this->_var['wx']['desc']; ?>'; // 分享描述
			<?php else: ?>
			var wx_desc=  '<?php echo $this->_var['seo_description']; ?>'; // 分享描述
			<?php endif; ?>
			var wx_link='<?php echo $this->_var['wx_url']; ?>';
			<?php if ($this->_var['wx']['img_url']): ?>
			var  wx_img= "<?php echo $this->_var['wx']['img_url']; ?>"; // 分享图标
			<?php else: ?>
			var  wx_img=  '<?php echo $this->_var['site_logo']; ?>'; // 分享图标
			<?php endif; ?>
		wx.onMenuShareTimeline({
		 	title: wx_title, // 分享标题
		    link: wx_link, // 分享链接
 			imgUrl: wx_img, // 分享图标
 		    success: function () { 
		        // 用户确认分享后执行的回调函数
		    },
		    cancel: function () { 
		        // 用户取消分享后执行的回调函数
		    }
		});
		wx.onMenuShareAppMessage({
			title: wx_title, // 分享标题
 			desc: wx_desc, // 分享描述
 		    link: wx_link,  // 分享链接
 			imgUrl: wx_img, // 分享图标
 		    type: 'link', // 分享类型,music、video或link，不填默认为link
		   // dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
		    success: function () { 
		        // 用户确认分享后执行的回调函数
		    },
		    cancel: function () { 
		        // 用户取消分享后执行的回调函数
		    }
		});
  });
</script>
<?php endif; ?>
</html>