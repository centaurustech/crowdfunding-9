<?php exit;?>a:3:{s:8:"template";a:4:{i:0;s:50:"/home/crowdfunding/wap/tpl/default/user_login.html";i:1;s:58:"/home/crowdfunding/wap/tpl/default/inc/header_account.html";i:2;s:57:"/home/crowdfunding/wap/tpl/default/inc/header_search.html";i:3;s:50:"/home/crowdfunding/wap/tpl/default/inc/footer.html";}s:7:"expires";i:1449124682;s:8:"maketime";i:1449121082;}<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="format-detection" content="telephone=no">
        <meta name="format-detection" content="email=no">
        <title>会员登录 - FunnyDream众筹 - 预购一个梦想</title>
        <meta name="keywords" content="FunnyDream众筹 - 预购一个梦想" />
        <meta name="description" content="FunnyDream众筹" />
                <link rel="stylesheet" type="text/css" href="http://z.forfunnet.com/public/script/Font-Awesome-4.2.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="http://z.forfunnet.com/public/runtime/statics/4b688daddcbe8810d3af6106ab15dc16.css" />
        <script type="text/javascript" src="http://z.forfunnet.com/public/runtime/statics/234818593327b86354fa8ed4ba13d633.js"></script>
        <script type="text/javascript">
            var APP_ROOT = 'http://z.forfunnet.com/wap';
            var APP_ROOT_ORA = 'http://z.forfunnet.com';
                        var send_span = 2000;
            			var __HASH_KEY__ = "qXIDsxeMjBaLNnZGJGDThFifKNRItKAvOhVwzpqiwEZbSVJxno";
        </script>
        <script type='text/javascript' src='/public/region.js'></script>
        <!--百度轻应用-->
        <meta name="baidu-tc-cerfication" content="688cdfaa49f7c8f87fd5883492587d8e">
    </head>
    <body style="background:#f0f0f0;">
	<div class="navbar theme_color1">
	    <div class="nav-wrap-left">
	        <a  onclick="window.history.go(-1);" class="back"><i class="fa fa-chevron-left"></i></a>
	    </div>
	    <span>会员登录</span>
	   <div class="nav-wrap-right">
            <a class="mybtn" href="/wap/index.php?ctl=settings"><i class="fa fa-user"></i></a>
        </div>
	</div>
	<div class="selectbox1" id="selectbox1">
    <div class="selectbox" id="selectbox"></div>
    <div class="selectbj" id="selectbj">
	<!--
        <div class="tav_nav webkit-box" id="top_search_hd">
                                    <a href="javascript:void(0);" livalue="0" class="search_cate search_cate_all webkit-box-flex cur" checked="checked">产品众筹</a>
                                </div>-->
        <div class="searchbox">
            <form action="/wap/index.php?ctl=deals" method="post">
                <div class="search">
                    <div class="seach_text">
                        <input type="text" name="k" placeholder="请输入关键字搜索">
                    </div>
                    <div class="blank"></div>
                    <div class="seach_submit pr">
                        <i class="fa fa-search"></i>
                        <input type="submit" value="搜索" class="ps" style="opacity:0;width:100%;height:100%;left:0;">
                                                                            <input type="hidden" name="type" value="0"/>        
                                                      
                    </div>
                </div>
            </form>
        </div>
        <div id="top_search_bd">
            <ul>
                                                 <li rel="0">
<!--                     <dl>
                        <dt>众筹类别</dt>
                        <dd>
                            <a href="/wap/index.php?ctl=deals">全部产品众筹</a>
                        </dd>
                    </dl>
                    <p class="cl"></p> -->
                    <dl>
                        <dt>属性</dt>
                        <dd>
                            <a href="/wap/index.php?ctl=deals&r=rec">推荐项目</a>
                        </dd>
                        <dd class="c24">
                            <a href="/wap/index.php?ctl=deals&r=yure">正在预热</a>
                        </dd>
                        <dd class="c23">
                            <a href="/wap/index.php?ctl=deals&r=new">最新上线</a>
                        </dd>
                    </dl>
                    <p class="cl"></p>
                    <dl>
                        <dt>分类</dt>
                                                                        <dd>
                            <a href="/wap/index.php?ctl=deals&id=8"  class=" " >生活·吃喝玩乐</a>
                        </dd>
                                                                                                 <dd>
                            <a href="/wap/index.php?ctl=deals&id=7"  class="c24 " >公益·社会创新</a>
                        </dd>
                                                                                                 <dd>
                            <a href="/wap/index.php?ctl=deals&id=9"  class=" c23" >出版·设计影像</a>
                        </dd>
                                                                                                 <dd>
                            <a href="/wap/index.php?ctl=deals&id=6"  class=" " >创意·无限可能</a>
                        </dd>
                                                                                                 <dd>
                            <a href="/wap/index.php?ctl=deals&id=2"  class="c24 " >旅行·去体验吧</a>
                        </dd>
                                                                     </dl>
                </li>
                                            </ul>
        </div>
    </div>
    <div class="blank"></div>
</div>
<script type="text/javascript">
    $("#top_search_hd .search_cate").bind('click',function(){
        var $obj=$(this);
        var i=$obj.index();
        $obj.attr("checked",true).addClass("cur").siblings().attr("checked",false).removeClass("cur");
        $obj.parent().parent().find("input[name='type']").val($(this).attr("livalue"));
        $("#top_search_bd li").eq(i).fadeIn(300).siblings().hide();
    });
</script>    <div class="wraper"><script type="text/javascript" src="http://z.forfunnet.com/public/runtime/statics/fa42be4c5c0e9997002a1dfe023f0d12.js"></script>
<!-- 登录 开始 -->  
<section class="login p10 tc">
	<form id="user_login_form" name="user_login_form" action="/wap/index.php?ctl=user&act=do_login">
		<input class="input100 sizing" type="text"  name="email" id="email" placeholder="手机号/会员名/邮箱" required="required">
		<input class="input100 sizing" type="password" name="user_pwd"  id="user_pwd" placeholder="输入登录密码" required="required">
		<div class="blank10"></div>
		<input class="ui-button theme_color" type="button" name="submit_form" value="登录" rel="ui-button">
		<input type="hidden" name="ajax" value="1">
	</form>
	<a class="f_l rgst f_red pt10" href="/wap/index.php?ctl=user&act=register">注册账号</a>
			<a class="f_r rgst f_red pt10" href="/wap/index.php?ctl=user&act=getpassword">忘记密码？</a>
		<div class="blank"></div>
</section>
<!-- 登录 结束 -->  
</div>
<div class="foot webkit-box" id="foot">
    <a href="/wap/index.php" class="webkit-box-flex"><i class="fa fa-home"></i>&nbsp;首页</a>
	 	<a href="/wap/index.php?ctl=investor&act=invester_list" class="webkit-box-flex" style="border:none;"><i class="fa fa-users"></i>&nbsp;投资人</a>
 	<div class="blank"></div>
</div>
<div id="jumphelper" style="display:block;">
    <a href="/wap/index.php?ctl=user_message" class="investor_btn sizing">
        <i class="fa fa-pencil-square-o"></i>
    </a>
 	<a href="/wap/index.php?ctl=project&act=choose" class="investor_btn sizing" style="display:none">
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
		var is_tg=0;
		var is_user_tg=0;
		var	is_user_investor=0;
		var	check_login=$("input[name='check_login']").val();
		if(check_login){
			if(is_tg){
				if(!is_user_tg){
					$.showConfirm("您还未绑定资金托管账户，无法发起项目，现在去绑定？",function(){
						window.location.href=APP_ROOT+"/index.php?ctl=collocation&act=CreateNewAcct&user_type=0&user_id=";
					});
				}else{
					window.location.href="/wap/index.php?ctl=project&act=choose";
				}
			}else{
				
				if(is_user_investor ==1){
					window.location.href="/wap/index.php?ctl=project&act=choose";
				}else if(is_user_investor ==2){
					$.showErr("您的实名认证正在审核中，还不能发起项目，请联系网站管理员");
				}
				else{
					$.showErr("您未进行身份认证，无法发起项目，点击确定后跳转到身份认证页面",function(){
						window.location.href="/wap/index.php?ctl=settings&act=security&method=setting-id-box";
					});
				}
				
			}
		}
		else{
			$.showErr("请先登录再进行发起项目",function(){
				window.location.href="/wap/index.php?ctl=user&act=login";
			});
		}
	}
</script>
</html>