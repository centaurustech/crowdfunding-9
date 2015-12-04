<style>
       .paiduan ul li{float:left;margin-left:18px;margin-top: 1px;}
      .paiduan .num_1{
            background: #afc968;
            display: block;
            text-align: center;
            height: 18px;
            width:60px;
            padding-top: 2px;
            margin-left: 145px;
            
        }
        .paiduan .no{
            background: #7aafd9;
            display: block;
            text-align: center;
            height: 18px;
            width:60px;
            padding-top: 2px;
            margin-left: 145px;
            
        }
        .paiduan .num_2{
            background: #7dcac8;
            display: block;
            text-align: center;
            height: 18px;
            width:60px;
            padding-top: 2px;
            margin-left: 145px;
            
        }
		.deal_item_box {
			width: 225px;
			background: #fff;
			border: #ccc solid 1px;
			display: inline-block;
			margin-bottom: 16px;
			border-radius: 8px;
		}
		.paiduan .num_success{
            background: #f6aa31;
            display: block;
            text-align: center;
            height: 20px;
            width:60px;
            padding-top: 2px;
			padding-bottom:2px;
            margin-left: 153px;
            color:#fff;
        }
		.paiduan .num_ing{
            background: #690;
            display: block;
            text-align: center;
            height: 20px;
            width:60px;
            padding-top: 2px;
			padding-bottom:2px;
            margin-left: 153px;
            color:#fff;
        }
		.paiduan .num_fail{
            background: #999;
            display: block;
            text-align: center;
            height: 20px;
            width:60px;
            padding-top: 2px;
			padding-bottom:2px;
            margin-left: 153px;
            color:#fff;
        }
		.paiduan .no{
            background: #7aafd9;
            display: block;
            text-align: center;
            height: 20px;
            width:60px;
            padding-top: 2px;
			padding-bottom:2px;
            margin-left: 153px;
            color:#fff;
        }
</style>
	
		<?php $_from = $this->_var['deal_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'deal_item');$this->_foreach['deal_items'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['deal_items']['total'] > 0):
    foreach ($_from AS $this->_var['key'] => $this->_var['deal_item']):
        $this->_foreach['deal_items']['iteration']++;
?>
			
				<div class="deal_item_box f_l <?php if ($this->_foreach['deal_items']['iteration'] % 4 == 1): ?>first<?php endif; ?>">
						<div class="deal_content_box">
						<a href="<?php
echo parse_url_tag("u:deal#show|"."id=".$this->_var['deal_item']['id']."".""); 
?>" title="<?php echo $this->_var['deal_item']['name']; ?>">
						<img src="<?php if ($this->_var['deal_item']['image'] == ''): ?><?php echo $this->_var['TMPL']; ?>/images/empty_thumb.gif<?php else: ?><?php 
$k = array (
  'name' => 'get_spec_image',
  'v' => $this->_var['deal_item']['image'],
  'w' => '205',
  'h' => '160',
  'g' => '1',
);
echo $k['name']($k['v'],$k['w'],$k['h'],$k['g']);
?><?php endif; ?>" alt="<?php echo $this->_var['deal_item']['name']; ?>" />
						</a>
						<div class="blank"></div>
						<a href="<?php
echo parse_url_tag("u:deal#show|"."id=".$this->_var['deal_item']['id']."".""); 
?>" title="<?php echo $this->_var['deal_item']['name']; ?>" class="deal_title"><?php 
$k = array (
  'name' => 'msubstr',
  'v' => $this->_var['deal_item']['name'],
  'b' => '0',
  'e' => '25',
);
echo $k['name']($k['v'],$k['b'],$k['e']);
?></a>
						<div class="blank"></div>
						<div class="deal_loc">
						<?php if ($this->_var['deal_item']['user_name'] == ''): ?><?php else: ?>
						<a href="<?php
echo parse_url_tag("u:home|"."id=".$this->_var['deal_item']['user_id']."".""); 
?>" class="<?php if ($this->_var['deal_item']['rz']['is_self_passed'] == 1): ?>desc<?php endif; ?> <?php if ($this->_var['deal_item']['rz']['is_company_passed'] == 1): ?>desc1<?php endif; ?>" title="<?php if ($this->_var['deal_item']['rz']['is_self_passed'] == 1): ?>个人实名认证通过<?php endif; ?> <?php if ($this->_var['deal_item']['rz']['is_company_passed'] == 1): ?>企业实名认证通过<?php endif; ?>"><?php echo $this->_var['deal_item']['user_name']; ?></a>&nbsp;&nbsp;
						<?php endif; ?>
						<?php if ($this->_var['deal_item']['province'] != '' || $this->_var['deal_item']['city'] != ''): ?>
						(
						<?php if ($this->_var['deal_item']['province'] != ''): ?>
						<span><a href="<?php
echo parse_url_tag("u:deals|"."loc=".$this->_var['deal_item']['province']."".""); 
?>" title="<?php echo $this->_var['deal_item']['province']; ?>"><?php echo $this->_var['deal_item']['province']; ?></a></span>
						<?php endif; ?>
						<?php if ($this->_var['deal_item']['city'] != ''): ?>
						<span><a href="<?php
echo parse_url_tag("u:deals|"."loc=".$this->_var['deal_item']['city']."".""); 
?>" title="<?php echo $this->_var['deal_item']['city']; ?>"><?php echo $this->_var['deal_item']['city']; ?></a></span>
						<?php endif; ?>
						)
						<?php endif; ?>
						</div>
						<div class="blank"></div>
						<div class="deal_brief" title="<?php echo $this->_var['deal_item']['brief']; ?>"><?php 
$k = array (
  'name' => 'msubstr',
  'v' => $this->_var['deal_item']['brief'],
  'b' => '0',
  'e' => '45',
);
echo $k['name']($k['v'],$k['b'],$k['e']);
?></div>
						</div>
						<div class="deal_item_dash"></div>
			                        <div  class="paiduan">
			                                 
			                            <ul>
			                                     <li>
			                                         <a href="<?php
echo parse_url_tag("u:deal#update|"."id=".$this->_var['deal_item']['id']."".""); 
?>" title="<?php echo $this->_var['deal_item']['name']; ?>">      
			                                             <?php echo $this->_var['deal_item']['rz']['is_self_passed']; ?> 动态(<span><?php echo $this->_var['deal_item']['log_count']; ?></a></span>)
			                                         </a>
			                                     </li>
			                                     <li>
			                                         <a href="<?php
echo parse_url_tag("u:deal#support|"."id=".$this->_var['deal_item']['id']."".""); 
?>" title="<?php echo $this->_var['deal_item']['name']; ?>">
			                                            支持者(<span><?php echo $this->_var['deal_item']['support_count']; ?></a></span>)
			                                         </a>
			                                     </li>
			                            </ul>
			                                   <div class="">
								<?php if ($this->_var['deal_item']['begin_time'] > $this->_var['now']): ?>
			                                        <span class="no"><b>正在预热</b></span>
								<?php elseif ($this->_var['deal_item']['end_time'] < $this->_var['now'] && $this->_var['deal_item']['end_time'] != 0): ?>
			                                        <span class="">
			                                            <?php if ($this->_var['deal_item']['percent'] >= 100): ?><b class="num_success">筹资成功</b>
			                                            <?php else: ?><b class="num_fail">筹资失败</b>
			                                            <?php endif; ?>
			                                        </span>
								<?php else: ?>
								<span class="num_ing">
									<?php if ($this->_var['deal_item']['end_time'] == 0): ?>
									长期项目
									<?php else: ?>
									<b>筹资中</b>
									<?php endif; ?>
								</span>
								<?php endif; ?>			
							</div>
			                        </div>
			                        <div class="deal_content_box">
			                <?php if ($this->_var['deal_item']['begin_time'] > $this->_var['now']): ?>
								<div class="ui-progress">
									<span style="width:<?php echo $this->_var['deal_item']['percent']; ?>%;background: #7aafd9;"></span>
								</div>
							<?php elseif ($this->_var['deal_item']['end_time'] < $this->_var['now'] && $this->_var['deal_item']['end_time'] != 0): ?>
			                <?php if ($this->_var['deal_item']['percent'] >= 100): ?>				
								<div class="ui-progress">
									<span style="width:<?php echo $this->_var['deal_item']['percent']; ?>%;background: #f6aa31;"></span>
								</div>
							<?php else: ?>
								<div class="ui-progress">
									<span style="width:<?php echo $this->_var['deal_item']['percent']; ?>%;background: #999;"></span>
								</div>
							<?php endif; ?>
							<?php else: ?>
								<?php if ($this->_var['deal_item']['end_time'] == 0): ?>
									<div class="ui-progress">
										<span style="width:<?php echo $this->_var['deal_item']['percent']; ?>%;background:#690;"></span>
									</div>
								<?php else: ?>
									<div class="ui-progress">
										<span style="width:<?php echo $this->_var['deal_item']['percent']; ?>%;background:#690;"></span>
									</div>
								<?php endif; ?>
							
							<?php endif; ?>
							
									
							<div class="blank"></div>
							<div class="div3"><span class="num"><?php echo $this->_var['deal_item']['percent']; ?>%</span><span class="til">达到</span></div>
							<div class="div3"><span class="num" ><font><?php 
$k = array (
  'name' => 'round',
  'v' => $this->_var['deal_item']['support_amount'],
  'e' => '2',
);
echo $k['name']($k['v'],$k['e']);
?></font>元</span><span class="til">已获支持</span></div>
							<div class="div3">
								<?php if ($this->_var['deal_item']['begin_time'] > $this->_var['now']): ?>
								<span class="num"><font><?php echo $this->_var['deal_item']['left_days']; ?></font>天</span>
								<?php elseif ($this->_var['deal_item']['end_time'] < $this->_var['now'] && $this->_var['deal_item']['end_time'] != 0): ?>
								<span class="num"><?php if ($this->_var['deal_item']['percent'] > 100): ?><?php 
$k = array (
  'name' => 'to_date',
  'v' => $this->_var['deal_item']['success_time'],
  'f' => 'y/m/d',
);
echo $k['name']($k['v'],$k['f']);
?><?php else: ?><?php 
$k = array (
  'name' => 'to_date',
  'v' => $this->_var['deal_item']['end_time'],
  'f' => 'y/m/d',
);
echo $k['name']($k['v'],$k['f']);
?><?php endif; ?></span>
								<?php else: ?>
								<span class="num">
									<?php if ($this->_var['deal_item']['end_time'] == 0): ?>
									长期项目
									<?php else: ?>
									<font><?php echo $this->_var['deal_item']['remain_days']; ?></font>天
									<?php endif; ?>
								</span>
								<?php endif; ?>	
								<span class="til">
									<?php if ($this->_var['deal_item']['begin_time'] > $this->_var['now']): ?>
									已经预热
									<?php elseif (( $this->_var['deal_item']['end_time'] < $this->_var['now'] && $this->_var['deal_item']['end_time'] != 0 ) || $this->_var['deal_item']['percent'] > 100): ?>
									结束时间
									<?php else: ?>
									<?php if ($this->_var['deal_item']['end_time'] == 0): ?>
									长期项目
									<?php else: ?>
									剩余时间
									<?php endif; ?>
									<?php endif; ?>
									</span>				
							</div>
							<div class="blank1"></div>
						</div>
				</div>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		
		