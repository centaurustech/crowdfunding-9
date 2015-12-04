<?php echo $this->fetch('inc/header.html'); ?> 
<script type="text/javascript" src="<?php echo $this->_var['TMPL']; ?>/js/TouchSlide.1.1.js"></script>
<!--banner 开始 -->
<style type="text/css">
body{background: #f0f0f0}
</style>
<section class="index">
    <div class="oComment_height">
        <nav class="index_nav">
            <ul class="webkit-box">
            	<?php if ($this->_var['invest_status'] == 0): ?>
	                <li class="curr webkit-box-flex"><a href="<?php
echo parse_url_tag_wap("u:deals#index|"."".""); 
?>">产品众筹</a></li>
					<li class="webkit-box-flex"><a href="<?php
echo parse_url_tag_wap("u:deals#index|"."type=1".""); 
?>" class="equity">股权众筹</a></li>
				<?php elseif ($this->_var['invest_status'] == 1): ?>
					<li class="curr webkit-box-flex"><a href="<?php
echo parse_url_tag_wap("u:deals#index|"."".""); 
?>">产品众筹</a></li>
				<?php else: ?>
					<li class="webkit-box-flex"><a href="<?php
echo parse_url_tag_wap("u:deals#index|"."type=1".""); 
?>" class="equity">股权众筹</a></li>
				<?php endif; ?>
                <li class="webkit-box-flex"><a href="<?php
echo parse_url_tag_wap("u:article_cate|"."".""); 
?>">新闻资讯</a></li>
                <li class="nav_last webkit-box-flex"><a href="<?php
echo parse_url_tag_wap("u:category|"."".""); 
?>">全部分类</a></li>  
            </ul>
            <i id="nav_line"></i>
        </nav>
        <div class="oComment_1" style="padding-top:49px;">
             <!--banner 开始 -->
            <?php if ($this->_var['adv_list']): ?>
            <div id="slideBox" class="banner">
                <div class="bd">
                    <ul>
                        <?php $_from = $this->_var['adv_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'adv');if (count($_from)):
    foreach ($_from AS $this->_var['k'] => $this->_var['adv']):
?>
                        <li>
                            <a href="<?php echo $this->_var['adv']['url']; ?>"><img src="<?php echo $this->_var['adv']['img']; ?>"></a>
                        </li>
                        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                    </ul>
                </div>
                <div class="hd">
                    <ul></ul>
                </div>
            </div>
            <script type="text/javascript">
                if($("#slideBox .bd ul").find('li').length>1){
                    TouchSlide({ 
                        slideCell:"#slideBox",
                        titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
                        mainCell:".bd ul", 
                        effect:"leftLoop", 
                        autoPage:true,//自动分页
                        autoPlay:true //自动播放
                    });
                }
                if($("#slideBox > .hd").find("li").length <=1){
                    $("#slideBox > .hd").hide();
                }
            </script>
            <?php endif; ?>
            <!--banner 结束 -->
            <!-- 首页分类 开始 -->
            <div class="index_category sizing" id="category_slidebox">
                <div class="bd">
                    <ul>
                    <?php $_from = $this->_var['cate_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'cate');$this->_foreach['cate_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cate_list']['total'] > 0):
    foreach ($_from AS $this->_var['k'] => $this->_var['cate']):
        $this->_foreach['cate_list']['iteration']++;
?>
                    <?php if ($this->_var['cate']['pid'] == 0): ?>
                        <?php if ($this->_foreach['cate_list']['iteration'] % 8 == 1): ?>
                        <li class="itemss">
                        <?php endif; ?>
                            <div class="items">
                                <div class="item <?php if ($this->_var['k'] % 6 == 0): ?>bg1<?php endif; ?><?php if ($this->_var['k'] % 6 == 1): ?>bg2<?php endif; ?><?php if ($this->_var['k'] % 6 == 2): ?>bg3<?php endif; ?><?php if ($this->_var['k'] % 6 == 3): ?>bg4<?php endif; ?><?php if ($this->_var['k'] % 6 == 4): ?>bg5<?php endif; ?><?php if ($this->_var['k'] % 6 == 5): ?>bg6<?php endif; ?>">
                                    <a href="<?php if (app_conf ( 'INVEST_STATUS' ) == 0 || app_conf ( 'INVEST_STATUS' ) == 1): ?><?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cate']['id']."".""); 
?><?php endif; ?><?php if (app_conf ( 'INVEST_STATUS' ) == 2): ?><?php
echo parse_url_tag_wap("u:deals#index|"."id=".$this->_var['cate']['id']."&type=1".""); 
?><?php endif; ?>" class="">
                                        <span><?php echo $this->_var['cate']['name']; ?></span>
                                    </a>
                                </div>
                            </div>
                        <?php if ($this->_foreach['cate_list']['iteration'] % 8 == 0): ?>
                        </li>
                        <?php endif; ?>
                    <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                    </ul>
                </div>
                <div class="hd">
                    <ul></ul>
                </div>
            </div>
            <script type="text/javascript">
                if($("#category_slidebox .bd ul").find('li').length>1){
                    TouchSlide({ 
                        slideCell:"#category_slidebox",
                        titCell:"#category_slidebox .hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
                        mainCell:"#category_slidebox .bd ul", 
                        effect:"leftLoop", 
                        autoPage:true,//自动分页
                        autoPlay:false //自动播放
                    });
                }
                if($("#category_slidebox .hd").find("li").length <=1){
                    $("#category_slidebox .hd").hide();
                }
            </script>
            <!-- 首页分类 结束 -->
            <!--list 开始 -->
            <div class="blank10"></div>
            <h2 class="h2-title bdl sizing">
                最新创意
                <span class="f_r">
                    <?php if ($this->_var['invest_status'] == 0 || $this->_var['invest_status'] == 1): ?>
                        <a href="<?php
echo parse_url_tag_wap("u:deals#index|"."".""); 
?>">更多产品项目&nbsp;<i class="fa fa-angle-right"></i></a>
                    <?php endif; ?>
                    <?php if ($this->_var['invest_status'] == 2): ?>
                        <a href="<?php
echo parse_url_tag_wap("u:deals#index|"."type=1".""); 
?>">更多股权项目&nbsp;<i class="fa fa-angle-right"></i></a> 
                    <?php endif; ?>
                </span>
            </h2>
            <div class="tabul-box">
                <a name="classify"></a>
                <div class="tabul-div">
                    <ul class="tab-ul">
                        <li>
                            <a class="current">综合推荐</a>
                        </li>
                        <li>
                            <a href="<?php if (app_conf ( 'INVEST_STATUS' ) == 0 || app_conf ( 'INVEST_STATUS' ) == 1): ?><?php
echo parse_url_tag_wap("u:deals|"."r=rec".""); 
?><?php endif; ?><?php if (app_conf ( 'INVEST_STATUS' ) == 2): ?><?php
echo parse_url_tag_wap("u:deals|"."r=rec&type=1".""); 
?><?php endif; ?>">推荐项目</a>
                        </li>
                        <li>
                            <a href="<?php if (app_conf ( 'INVEST_STATUS' ) == 0 || app_conf ( 'INVEST_STATUS' ) == 1): ?><?php
echo parse_url_tag_wap("u:deals|"."r=yure".""); 
?><?php endif; ?><?php if (app_conf ( 'INVEST_STATUS' ) == 2): ?><?php
echo parse_url_tag_wap("u:deals|"."r=yure&type=1".""); 
?><?php endif; ?>">正在预热</a>
                        </li>
                        <li>
                            <a href="<?php if (app_conf ( 'INVEST_STATUS' ) == 0 || app_conf ( 'INVEST_STATUS' ) == 1): ?><?php
echo parse_url_tag_wap("u:deals|"."r=new".""); 
?><?php endif; ?><?php if (app_conf ( 'INVEST_STATUS' ) == 2): ?><?php
echo parse_url_tag_wap("u:deals|"."r=new&type=1".""); 
?><?php endif; ?>">最新上线</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <?php if (app_conf ( 'INVEST_STATUS' ) == 0 || app_conf ( 'INVEST_STATUS' ) == 1): ?>
        <?php echo $this->fetch('inc/deal_list_index_new_pro.html'); ?> 
        <div class="readall">
            <a href="<?php
echo parse_url_tag_wap("u:deals#index|"."".""); 
?>"><span class="f_l ck">更多产品众筹</span><span class="f_r jh"><i class="fa fa-angle-right"></i></span></a>
        </div>
    <?php else: ?>
        <?php echo $this->fetch('inc/deal_list_index_new_invest.html'); ?>
        <div class="readall">
            <a href="<?php
echo parse_url_tag_wap("u:deals#index|"."type=1".""); 
?>"><span class="f_l ck">更多股权众筹</span><span class="f_r jh"><i class="fa fa-angle-right"></i></span></a>
        </div>
    <?php endif; ?>
    <?php if (app_conf ( 'INVEST_STATUS' ) != 1): ?>
    <div class="blank5"></div>
     <h2 class="h2-title bdl sizing">
        热门投资
        <span class="f_r">
            <?php if ($this->_var['invest_status'] == 0 || $this->_var['invest_status'] == 2): ?>
                <a href="<?php
echo parse_url_tag_wap("u:deals#index|"."type=1".""); 
?>">更多股权项目&nbsp;<i class="fa fa-angle-right"></i></a>
            <?php endif; ?>
        </span>
    </h2>
    <div class="tabul-box">
        <a name="classify"></a>
        <div class="tabul-div">
            <ul class="tab-ul">
                <li>
                    <a class="current">综合推荐</a>
                </li>
                <li>
                    <a href="<?php
echo parse_url_tag_wap("u:deals|"."r=rec&type=1".""); 
?>">推荐项目</a>
                </li>
                <li>
                    <a href="<?php
echo parse_url_tag_wap("u:deals|"."r=yure&type=1".""); 
?>">正在预热</a>
                </li>
                <li>
                    <a href="<?php
echo parse_url_tag_wap("u:deals|"."r=new&type=1".""); 
?>">最新上线</a>
                </li>
            </ul>
        </div>
    </div>
    <?php echo $this->fetch('inc/deal_list_index_hot_invest.html'); ?>
    <div class="readall">
        <a href="<?php
echo parse_url_tag_wap("u:deals#index|"."type=1".""); 
?>"><span class="f_l ck">更多股权众筹</span><span class="f_r jh"><i class="fa fa-angle-right"></i></span></a>
    </div>
    <?php endif; ?>
    <!--list 结束 -->
    <div class="blank10"></div>
</section>
<script type="text/javascript">
    if($(".left_time").length){
        leftTimeAct(".left_time");
    }
    // 未开始项目倒计时
    function leftTimeAct(left_time){
        var leftTimeActInv = null;
        clearTimeout(leftTimeActInv);
        $(left_time).each(function(){
            var leftTime = parseInt($(this).attr("data"));
            if(leftTime > 0)
            {
                var day  =  parseInt(leftTime / 24 /3600);
                var hour = parseInt((leftTime % (24 *3600)) / 3600);
                var min = parseInt((leftTime % 3600) / 60);
                var sec = parseInt((leftTime % 3600) % 60);
                $(this).find(".day").html((day<10?"0"+day:day));
                $(this).find(".hour").html((hour<10?"0"+hour:hour));
                $(this).find(".min").html((min<10?"0"+min:min));
                $(this).find(".sec").html((sec<10?"0"+sec:sec));
                leftTime = leftTime-1;
                $(this).attr("data",leftTime);
            }
            else{
                $(this).parent(".div_dt").hide();
                $(this).parent().next().show();
                return false;
            }
        });
        leftTimeActInv = setTimeout(function(){
            leftTimeAct(left_time);
        },1000);
    }
</script>
<?php echo $this->fetch('inc/footer.html'); ?>