<?php $_from = $this->_var['deal_new_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('k', 'deal');if (count($_from)):
    foreach ($_from AS $this->_var['k'] => $this->_var['deal']):
?>
<section class="deal_item_list">
    <a href="<?php echo $this->_var['deal']['url']; ?>" title="<?php echo $this->_var['deal']['name']; ?>">
        <div class="deal_item_box">
            <!--1-->
            <div class="imgbox">
                <img src="<?php if ($this->_var['deal']['image'] == ''): ?><?php echo $this->_var['TMPL']; ?>/images/empty_thumb.gif<?php else: ?><?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['deal']['image'],
  'w' => '640',
  'h' => '445',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?><?php endif; ?>" alt="<?php echo $this->_var['deal']['name']; ?>">
            </div>
            <div class="clear"></div>
            <h3 class="deal_title sizing"><?php echo $this->_var['deal']['name']; ?></h3>
            <div class="clear"></div>
            <!--2-->
            <div class="paiduan">
                <span class="caption-title">
                    已筹资：<span class="symbol">¥</span><span class="f_money"><?php 
$k = array (
  'name' => 'round',
  'v' => $this->_var['deal']['support_amount'],
  'e' => '2',
);
echo $k['name']($k['v'],$k['e']);
?></span>&nbsp;&nbsp; 
                    目标：<span class="symbol" style="color:#333">¥</span><span class="f_money" style="color:#333"><?php 
$k = array (
  'name' => 'round',
  'v' => $this->_var['deal']['limit_price'],
  'e' => '2',
);
echo $k['name']($k['v'],$k['e']);
?></span>
                </span>
                <span class="f_r ">
            	<?php if ($this->_var['deal']['status'] == 0): ?>
                    <span class="common common-fail">即将开始</span>
            	<?php else: ?>
                	<?php if ($this->_var['deal']['percent'] >= 100): ?>
						<span class="common common-success">已成功</span>
					<?php else: ?>
                        <?php if ($this->_var['deal']['status'] == 1): ?>
                            <span class="common common-success">已成功</span>
                        <?php endif; ?>
                        <?php if ($this->_var['deal']['status'] == 2): ?>
                            <span class="common common-fail">筹资失败</span>
                        <?php endif; ?>
                        <?php if ($this->_var['deal']['status'] == 3): ?>
                            <span class="common common-sprite">筹资中</span>
                        <?php endif; ?>
                        <?php if ($this->_var['deal']['status'] == 4): ?>
                            <span class="common common-sprite">长期项目</span>
                        <?php endif; ?>
					<?php endif; ?>
				<?php endif; ?>
                </span>
            </div>
            <div class="clear"></div>
            <!--3-->
            <div class="deal_content_box pd">
                <div class="ui">
                    <?php if ($this->_var['deal']['percent'] >= 100): ?>
                    <span class="common-success" style="width:100%;"></span>
                    <?php else: ?>
                    <span class="progress" style="width:<?php echo $this->_var['deal']['percent']; ?>%;"></span>
                    <?php endif; ?>
                </div>
                <div class="blank">
                </div>
                <?php if ($this->_var['deal']['left_begin_time'] > 0): ?>
                <div class="div_dt" style="width:100%;border-right:0">
                    <div class="f_999">离项目开始还有</div>
                    <div class="left_time" data="<?php echo $this->_var['deal']['left_begin_time']; ?>">
                        <em class="s day">--</em>
                        <em class="l">天</em>
                        <em class="s hour">--</em>
                        <em class="l">时</em>
                        <em class="s min">--</em>
                        <em class="l">分</em>
                        <em class="s sec">--</em>
                        <em class="l">秒</em>
                    </div>
                </div>
                <div class="div_dt_hide hide">
                    <div class="div_dt">
                        <span class="num"><?php echo $this->_var['deal']['percent']; ?>%</span><br />
                        <span class="til">已达</span>
                    </div>
                    <div class="div_dt">
                        <?php if ($this->_var['deal']['remain_days'] > 0): ?>
                        <span class="num"><?php echo $this->_var['deal']['remain_days']; ?>天</span><br />
                        <span class="til">剩余时间</span>
                        <?php else: ?>
                        <span class="num"><?php 
$k = array (
  'name' => 'to_date',
  'v' => $this->_var['deal']['end_time'],
  'p' => 'Y-m-d',
);
echo $k['name']($k['v'],$k['p']);
?></span><br />
                        <span class="til">结束时间</span>
                        <?php endif; ?>
                    </div>
                    <div class="div_dt" style="border:none;">
                        <span class="num"><?php echo $this->_var['deal']['support_count']; ?></span><br />
                        <span class="til">支持者</span>
                    </div>
                </div>
                <?php else: ?>
                <div class="div_dt">
                    <span class="num"><?php echo $this->_var['deal']['percent']; ?>%</span><br />
                    <span class="til">已达</span>
                </div>
                <div class="div_dt">
                	
                    <?php if ($this->_var['deal']['remain_days'] > 0): ?>
                    <span class="num"><?php echo $this->_var['deal']['remain_days']; ?>天</span><br />
                    <span class="til">剩余时间</span>
                    <?php else: ?>
                    <span class="num"><?php 
$k = array (
  'name' => 'to_date',
  'v' => $this->_var['deal']['end_time'],
  'p' => 'Y-m-d',
);
echo $k['name']($k['v'],$k['p']);
?></span><br />
                    <span class="til">结束时间</span>
                    <?php endif; ?>
                    
                </div>
                <div class="div_dt" style="border:none;">
                    <span class="num"><?php echo $this->_var['deal']['support_count']; ?></span><br />
                    <span class="til">支持者</span>
                </div>
                <?php endif; ?>
                <div class="blank"></div>
            </div>
        </div>
    </a>
</section>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>  