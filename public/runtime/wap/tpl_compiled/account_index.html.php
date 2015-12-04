<?php echo $this->fetch('inc/header_account.html'); ?>
<?php
    $this->_var['dpagejs'][] = $this->_var['TMPL_REAL']."/js/order_list.js";
    $this->_var['dcpagejs'][] = $this->_var['TMPL_REAL']."/js/order_list.js";
?>
<script type="text/javascript" src="<?php 
$k = array (
  'name' => 'parse_script',
  'v' => $this->_var['dpagejs'],
  'c' => $this->_var['dcpagejs'],
);
echo $k['name']($k['v'],$k['c']);
?>"></script>
<!--中间部分-->  
<?php if ($this->_var['order_list']): ?>
<section class="account_index my_project account_mod">
    <ul>
    	<?php $_from = $this->_var['order_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'order_item');if (count($_from)):
    foreach ($_from AS $this->_var['order_item']):
?>
        <li>
            <div class="webkit-box">
                <div class="pic_show mr5">
                    <a href="<?php
echo parse_url_tag_wap("u:deal#show|"."id=".$this->_var['order_item']['deal_id']."".""); 
?>" title="<?php echo $this->_var['order_item']['deal_name']; ?>"><img src="<?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['order_item']['deal_info']['image'],
  'w' => '60',
  'h' => '45',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?>" width="100%" height="100%"></a>
                </div>
                <div class="details webkit-box-flex">
                    <h3 class="info_name">
                        <a href="<?php
echo parse_url_tag_wap("u:deal#show|"."id=".$this->_var['order_item']['deal_id']."".""); 
?>" title="<?php echo $this->_var['order_item']['deal_name']; ?>"><?php 
$k = array (
  'name' => 'msubstr',
  'v' => $this->_var['order_item']['deal_name'],
  'b' => '0',
  'e' => '25',
);
echo $k['name']($k['v'],$k['b'],$k['e']);
?></a>
                    </h3>
                    <div class="info_all">
                        <div class="info_group">
                            <label class="label_l">金额:</label>&nbsp;
                            <span class="symbol">¥</span><span class="f_money"><?php echo $this->_var['order_item']['total_price']; ?></span>
                        </div>
                        <div class="info_group">
                            <label class="label_l">状态:</label>&nbsp;
                            <span class="label_r">
                                <?php if ($this->_var['order_item']['order_status'] == 0): ?>
                                余额预支付<span class="f_red"><?php 
$k = array (
  'name' => 'format_price',
  'v' => $this->_var['order_item']['credit_pay'],
);
echo $k['name']($k['v']);
?></span>&nbsp;支付未完成
                                <?php else: ?>      
                                    <?php if ($this->_var['order_item']['deal_info']): ?>
                                    <?php if ($this->_var['order_item']['deal_info']['is_success'] == 1): ?>
                                        <?php if ($this->_var['order_item']['deal_info']['begin_time'] > $this->_var['now']): ?>未开始<?php endif; ?>
                                        <?php if ($this->_var['order_item']['deal_info']['end_time'] < $this->_var['now'] && $this->_var['order_item']['deal_info']['end_time'] != 0): ?>已成功&nbsp;<?php if ($this->_var['order_item']['repay_time'] > 0): ?>回报已发放<?php if ($this->_var['order_item']['repay_make_time'] > 0): ?> &nbsp;  确认收到<?php else: ?> &nbsp; 未确认收到<?php endif; ?> <?php else: ?>等待发放回报<?php endif; ?><?php endif; ?>
                                        <?php if ($this->_var['order_item']['deal_info']['begin_time'] < $this->_var['now'] && ( $this->_var['order_item']['deal_info']['end_time'] > $this->_var['now'] || $this->_var['order_item']['deal_info']['end_time'] == 0 )): ?>已成功&nbsp;<?php if ($this->_var['order_item']['repay_time'] > 0): ?>回报已发放<?php if ($this->_var['order_item']['repay_make_time'] > 0): ?> 确认收到<?php else: ?> 未确认收到<?php endif; ?><?php else: ?>等待发放回报<?php endif; ?><?php endif; ?>
                                        <?php else: ?>
                                        <?php if ($this->_var['order_item']['deal_info']['begin_time'] > $this->_var['now']): ?>未开始<?php endif; ?>
                                        <?php if ($this->_var['order_item']['deal_info']['end_time'] < $this->_var['now'] && $this->_var['order_item']['deal_info']['end_time'] != 0): ?>未成功&nbsp;<?php if ($this->_var['order_item']['is_refund'] == 1): ?>已退款<?php else: ?>等待退款<?php endif; ?><?php endif; ?>
                                        <?php if ($this->_var['order_item']['deal_info']['begin_time'] < $this->_var['now'] && ( $this->_var['order_item']['deal_info']['end_time'] > $this->_var['now'] || $this->_var['order_item']['deal_info']['end_time'] == 0 )): ?>未结束<?php endif; ?>
                                    <?php endif; ?>
                                    <?php else: ?>
                                        <?php if ($this->_var['order_item']['is_success'] == 0): ?>
                                        未成功&nbsp;<?php if ($this->_var['order_item']['repay_time'] > 0): ?>回报已发放<?php if ($this->_var['order_item']['repay_make_time'] > 0): ?><br /> 确认收到<?php else: ?> <br /> 未确认收到<?php endif; ?><?php else: ?>等待发放回报<?php endif; ?>
                                        <?php else: ?>
                                        已成功&nbsp;<?php if ($this->_var['order_item']['is_refund'] == 1): ?>已退款<?php else: ?>等待退款<?php endif; ?>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </span>
                        </div>
                    </div>
                </div>   
            </div>
            <div class="blank5"></div>
            <div class="operating f_r webkit-box">
                <?php if ($this->_var['order_item']['order_status'] == 0): ?>
                <div class="pay bg_red" onclick="window.location.href='<?php
echo parse_url_tag_wap("u:account#view_order|"."id=".$this->_var['order_item']['id']."".""); 
?>';">继续支付</div>
                <a class="pay del_deal ml5 bg_gray" href="<?php
echo parse_url_tag_wap("u:account#del_order|"."id=".$this->_var['order_item']['id']."".""); 
?>">删除</a>
                <?php else: ?>
                 <div class="pay theme_color" onclick="window.location.href='<?php
echo parse_url_tag_wap("u:account#view_order|"."id=".$this->_var['order_item']['id']."".""); 
?>';">查看详情</div>
                <?php endif; ?> 
            </div>
        </li>
	   <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </ul>
</section>
<div class="blank15"></div>
<div class="pages"><?php echo $this->_var['pages']; ?></div>
<div class="blank15"></div>
<?php else: ?>
<?php endif; ?>
<?php echo $this->fetch('inc/footer.html'); ?>