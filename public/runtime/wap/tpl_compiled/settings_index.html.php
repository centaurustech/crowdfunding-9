<?php echo $this->fetch('inc/header.html'); ?>
<div class="user_center">
    <section class="u_top">
        <img src="<?php echo $this->_var['TMPL']; ?>/images/mybackground.png" width="100%" style=" position:absolute; top:0px;">
        <div class="this_details">
            <div class="user_pic">
                <img src="<?php 
$k = array (
  'name' => 'get_user_avatar',
  'uid' => $this->_var['user_info']['id'],
  'type' => 'middle',
);
echo $k['name']($k['uid'],$k['type']);
?>" width="100%">
            </div>
            <div class="user_info">
                <h3><?php echo $this->_var['user_info']['user_name']; ?></h3>
                <p>
                    <i class="fa fa-map-marker"></i>
                    <span>会员</span>
					<?php if ($this->_var['user_info']['user_level']): ?>
                    <span><?php echo $this->_var['level_name']; ?></span>
					<?php endif; ?>
                </p>
            </div>
        </div>
    </section>
    <section class="u_details">
        <ul id="u_money_box">
            <li class="u_money" id="u_money_main">
                <div class="project_ico" style="background:#47aef0;">
                    <i class="fa fa-list-alt"></i>
                </div>
                <div class="specific_items">
                    <h5>账户余额</h5>
                    <div class="f_r b">
                        <span class="symbol">¥</span><span class="f_money"><?php echo $this->_var['user_info']['money']; ?></span>
                    </div>
                </div>
            </li>
            <?php if ($this->_var['is_tg']): ?>
                <?php if ($this->_var['user_info']['ips_acct_no']): ?>
                <li class="u_money" id="u_money_other" style="display:none">
                    <div class="project_ico" style="background:#47aef0;">
                        <i class="fa fa-list-alt"></i>
                    </div>
                    <div class="specific_items">
                        <h5>第三方管理账号</h5>
                        <div class="f_r b">
                            <span class="symbol">¥</span><span class="f_money" id="u_money_other_money"></span>
                        </div>
                    </div>
                </li>
                <?php else: ?>
                <li class="u_money" id="u_money_other" style="padding-right:30px">
                    <div class="project_ico" style="background:#47aef0;">
                        <i class="fa fa-list-alt"></i>
                    </div>
                    <div class="specific_items">
                        <h5 class="f_999">第三方管理账号</h5>
                        <div class="f_r">
                            <a href="<?php echo $this->_var['tg_register_url']; ?>" id="J_bind_ips" class="f_red">去绑定</a>
                        </div>
                        <div class="go_see"><i class="fa fa-chevron-right"></i></div>
                    </div>
                </li>
                <?php endif; ?>
            <?php endif; ?>
        </ul>
        <ul>
        	<?php if (app_conf ( 'INVEST_STATUS' ) == 0 || app_conf ( 'INVEST_STATUS' ) == 1): ?>
	            <li>
                    <a href="<?php
echo parse_url_tag_wap("u:account#index|"."".""); 
?>">
    	                <div class="project_ico" style=" background:#9bcd46;">
                            <i class="fa fa-gavel"></i>
                        </div>
    	                <div class="specific_items">
    	                    <h5>支持的项目</h5>
    	                </div>
    	                <div class="go_see"><i class="fa fa-chevron-right"></i></div>
                    </a>
	            </li>
			<?php endif; ?>
			<?php if (app_conf ( 'INVEST_STATUS' ) == 0 || app_conf ( 'INVEST_STATUS' ) == 2): ?>
	            <li>
                    <a href="<?php
echo parse_url_tag_wap("u:account#mine_investor_status|"."".""); 
?>">
                        <div class="project_ico" style="background:#9bcd46;">
                            <i class="fa fa-check-circle"></i>
                        </div>
    	                <div class="specific_items">
    	                    <h5>投资的项目</h5>
    	                </div>
    	                <div class="go_see"><i class="fa fa-chevron-right"></i></div>
                    </a>
	            </li>
			<?php endif; ?>
            <li>
                <a href="<?php if (app_conf ( 'INVEST_STATUS' ) == 0 || app_conf ( 'INVEST_STATUS' ) == 1): ?><?php
echo parse_url_tag_wap("u:account#project|"."".""); 
?><?php endif; ?><?php if (app_conf ( 'INVEST_STATUS' ) == 2): ?><?php
echo parse_url_tag_wap("u:account#project_invest|"."".""); 
?><?php endif; ?>">
                    <div class="project_ico" style="background:#41c8cd;">
                        <i class="fa fa-tags"></i>
                    </div>
                    <div class="specific_items">
                        <h5>我的项目</h5>
                    </div>
                    <div class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
            <li>
                <a href="<?php
echo parse_url_tag_wap("u:account#focus|"."".""); 
?>">
                    <div class="project_ico" style=" background:#41c8cd;"><i class="fa fa-heart"></i></div>
                    <div class="specific_items">
                        <h5>关注的项目</h5>
                    </div>
                    <div href="#" class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
			<li>
                <a href="<?php
echo parse_url_tag_wap("u:account#recommend|"."".""); 
?>">
                    <div class="project_ico" style=" background:#41c8cd;"><i class="fa fa-paper-plane"></i></div>
                    <div class="specific_items">
                        <h5>推荐的项目</h5>
                    </div>
                    <div href="#" class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
        </ul>
        <ul>
            <li>
                <a href="<?php
echo parse_url_tag_wap("u:account#record|"."".""); 
?>">
                    <div class="project_ico" style="background:#fa82a5;">
                        <i class="fa fa-rmb"></i>
                    </div>
                    <div class="specific_items">
                        <h5>充值记录</h5>
                    </div>
                    <div class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
                <a class="small_but bg_red" href="<?php
echo parse_url_tag_wap("u:account#incharge|"."".""); 
?>">充值</a>
            </li>
            <li>
                <a href="<?php
echo parse_url_tag_wap("u:account#refund|"."".""); 
?>">
                    <div class="project_ico" style="background:#fa82a5;">
                        <i class="fa fa-suitcase"></i>
                    </div>
                    <div class="specific_items">
                        <h5>提现记录</h5>
                    </div>
                    <div class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
                <a class="small_but theme_color" href="<?php
echo parse_url_tag_wap("u:account#money_carry_bank|"."".""); 
?>">提现</a>
            </li>
            <li>
                <a href="<?php
echo parse_url_tag_wap("u:account#credit|"."".""); 
?>">
                    <div class="project_ico" style="background:#fa82a5;">
                        <i class="fa fa-calculator"></i>
                    </div>
                    <div class="specific_items">
                        <h5>收支明细</h5>
                    </div>
                    <div class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
            <li>
                <a href="<?php
echo parse_url_tag_wap("u:account#score|"."".""); 
?>">
                    <div class="project_ico" style="background:#fa82a5;">
                        <i class="fa fa-calculator"></i>
                    </div>
                    <div class="specific_items">
                        <h5>积分明细</h5>
                    </div>
                    <div class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
            <li>
                <a href="<?php
echo parse_url_tag_wap("u:account#point|"."".""); 
?>">
                    <div class="project_ico" style=" background:#fa82a5;">
                        <i class="fa fa-calculator"></i>
                    </div>
                    <div class="specific_items">
                        <h5>信用明细</h5>
                    </div>
                    <div href="#" class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
			<li>
                <a href="<?php
echo parse_url_tag_wap("u:account#money_freeze|"."".""); 
?>">
                    <div class="project_ico" style="background:#fa82a5;">
                        <i class="fa fa-calculator"></i>
                    </div>
                    <div class="specific_items">
                        <h5>诚意金明细</h5>
                    </div>
                    <div class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
        </ul>
        <ul>
            <li class="hide">
                <a href="<?php
echo parse_url_tag_wap("u:settings#invest_info|"."".""); 
?>">
                    <div class="project_ico" style="background:#f57d6e;">
                        <i class="fa fa-file-text"></i></i>
                    </div>
                    <div class="specific_items">
                        <h5>投资资料</h5>
                    </div>
                    <div class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
            <li>
                <a href="<?php
echo parse_url_tag_wap("u:settings#modify|"."".""); 
?>">
                    <div class="project_ico" style="background:#6c9bda;">
                        <i class="fa fa-pencil"></i>
                    </div>
                    <div class="specific_items">
                        <h5>修改资料</h5>
                    </div>
                    <div href="#" class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
            <li onclick="window.location.href='<?php
echo parse_url_tag_wap("u:settings#password|"."".""); 
?>'" class="hide">
                <div class="project_ico" style=" background:#6c9bda;"><i class="fa fa-unlock-alt"></i></div>
                <div class="specific_items">
                    <h5>修改密码</h5>
                </div>
                <a href="#" class="go_see"><i class="fa fa-chevron-right"></i></a>
            </li>
            <li  onclick="window.location.href='<?php
echo parse_url_tag_wap("u:settings#bind|"."".""); 
?>'" style="display:none;">
                <div class="project_ico" style=" background:#a894da;"><i class="fa fa-link"></i></div>
                <div class="specific_items">
                    <h5>绑定设置</h5>
                </div>
                <a href="#" class="go_see"><i class="fa fa-chevron-right"></i></a>
            </li>
			<li>
                <a href="<?php
echo parse_url_tag_wap("u:settings#security|"."".""); 
?>">
                    <div class="project_ico" style="background:#f57d6e;">
                        <i class="fa fa-shield"></i>
                    </div>
                    <div class="specific_items">
                        <h5>安全信息</h5>
                    </div>
                    <div href="#" class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
            <li>
                <a href="<?php
echo parse_url_tag_wap("u:settings#consignee|"."".""); 
?>">
                    <div class="project_ico" style="background:#f57d6e;">
                        <i class="fa fa-map-marker"></i>
                    </div>
                    <div class="specific_items">
                        <h5>收货地址管理</h5>
                    </div>
                    <div href="#" class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
			<li class="hide">
                <a href="<?php
echo parse_url_tag_wap("u:settings#bank|"."".""); 
?>">
                    <div class="project_ico" style="background:#f57d6e;">
                        <i class="fa fa-credit-card"></i>
                    </div>
                    <div class="specific_items">
                        <h5>银行账户</h5>
                    </div>
                    <div href="#" class="go_see"><i class="fa fa-chevron-right"></i></div>
                </a>
            </li>
        </ul>
        <ul>
            <li>
                <a href="<?php
echo parse_url_tag_wap("u:user#loginout|"."".""); 
?>">
                    <div class="project_ico" style=" background:#ff4800;">
                        <i class="fa fa-minus-circle"></i>
                    </div>
                    <div class="specific_items">
                        <h5>退出</h5>
                    </div>
                </a>
             </li>
        </ul>
    </section>	
</div>
<script type="text/javascript">
    (function(){
        <?php if ($this->_var['is_tg']): ?>
            checkIpsBalance(0,<?php echo $this->_var['user_info']['id']; ?>,function(result){
                var $u_money_box=$("#u_money_box");
                var $u_money_other=$u_money_box.find("#u_money_other");
                if(result.pErrCode=="1"){
                    $u_money_other.show();
                    $u_money_other.find("#u_money_other_money").html(formatNum(result.pBalance-result.pLock));
                    $u_money_other.find("#u_money_other_freeze").html(formatNum(result.pLock));
                }
            });
        <?php endif; ?>
    })();
</script>
<?php echo $this->fetch('inc/footer.html'); ?>