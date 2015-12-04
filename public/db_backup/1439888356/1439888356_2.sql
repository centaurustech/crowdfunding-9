-- fanwe SQL Dump Program
-- Microsoft-IIS/6.0
-- 
-- DATE : 2015-08-19 00:59:17
-- MYSQL SERVER VERSION : 5.5.34
-- PHP VERSION : isapi
-- Vol : 2


DROP TABLE IF EXISTS `%DB_PREFIX%licai_advance`;
CREATE TABLE `%DB_PREFIX%licai_advance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `redempte_id` int(11) NOT NULL COMMENT '赎回ID',
  `user_id` int(11) NOT NULL COMMENT '申请人ID',
  `user_name` varchar(255) NOT NULL COMMENT '申请用户名',
  `money` decimal(10,2) NOT NULL DEFAULT '1.00' COMMENT '赎回本金',
  `earn_money` decimal(10,2) NOT NULL COMMENT '收益金额',
  `fee` decimal(10,2) NOT NULL COMMENT '赎回手续费',
  `organiser_fee` decimal(10,2) NOT NULL,
  `advance_money` decimal(10,2) NOT NULL COMMENT '垫付金额',
  `real_money` decimal(10,2) NOT NULL COMMENT '发起人账户金额和冻结资金被扣的金额',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0表示未处理 1表示通过',
  `type` tinyint(1) NOT NULL COMMENT '0 预热期赎回 1.起息时间违约赎回 2.正常到期赎回',
  `create_date` date NOT NULL COMMENT '申请时间',
  `update_date` date NOT NULL COMMENT '处理时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%licai_bank`;
CREATE TABLE `%DB_PREFIX%licai_bank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '产品名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1:有效;0无效',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='基金种类：\r\n全部 货币型 股票型 债券型 混合型 理财型 指数型 QDII 其他型';
DROP TABLE IF EXISTS `%DB_PREFIX%licai_dealshow`;
CREATE TABLE `%DB_PREFIX%licai_dealshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `licai_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%licai_fund_brand`;
CREATE TABLE `%DB_PREFIX%licai_fund_brand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '产品名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1:有效;0无效',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='基金品牌：\r\n全部 嘉实 鹏华 易方达 国泰 南方 建信 招商 工银瑞信 海富通 华商 中邮创业 长盛 东方\r\n';
DROP TABLE IF EXISTS `%DB_PREFIX%licai_fund_type`;
CREATE TABLE `%DB_PREFIX%licai_fund_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '产品名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1:有效;0无效',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='基金种类：\r\n全部 货币型 股票型 债券型 混合型 理财型 指数型 QDII 其他型';
INSERT INTO `%DB_PREFIX%licai_fund_type` VALUES ('1','货币型','1','0');
INSERT INTO `%DB_PREFIX%licai_fund_type` VALUES ('2','股票型','1','0');
INSERT INTO `%DB_PREFIX%licai_fund_type` VALUES ('3','债券型','1','0');
INSERT INTO `%DB_PREFIX%licai_fund_type` VALUES ('4','混合型','1','0');
INSERT INTO `%DB_PREFIX%licai_fund_type` VALUES ('5','理财型','1','0');
INSERT INTO `%DB_PREFIX%licai_fund_type` VALUES ('6','标准','1','0');
INSERT INTO `%DB_PREFIX%licai_fund_type` VALUES ('7','QDII','1','0');
INSERT INTO `%DB_PREFIX%licai_fund_type` VALUES ('8','其他型','1','0');
INSERT INTO `%DB_PREFIX%licai_fund_type` VALUES ('9','中欧','1','0');
DROP TABLE IF EXISTS `%DB_PREFIX%licai_history`;
CREATE TABLE `%DB_PREFIX%licai_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `licai_id` varchar(50) NOT NULL COMMENT '编号',
  `history_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '购买金额起',
  `net_value` decimal(10,2) NOT NULL COMMENT '当日净利',
  `rate` decimal(7,4) NOT NULL COMMENT '利率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='基金净值列表';
DROP TABLE IF EXISTS `%DB_PREFIX%licai_holiday`;
CREATE TABLE `%DB_PREFIX%licai_holiday` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL COMMENT '年',
  `holiday` date NOT NULL COMMENT '假日',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%licai_interest`;
CREATE TABLE `%DB_PREFIX%licai_interest` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `licai_id` varchar(50) NOT NULL COMMENT '编号',
  `min_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '购买金额起',
  `max_money` decimal(10,2) NOT NULL COMMENT '购买金额起',
  `interest_rate` decimal(7,4) NOT NULL COMMENT '利息率',
  `buy_fee_rate` decimal(10,4) DEFAULT NULL COMMENT '原购买手续费',
  `site_buy_fee_rate` decimal(10,4) DEFAULT NULL COMMENT '网站购买手续费',
  `redemption_fee_rate` decimal(10,4) DEFAULT NULL COMMENT '赎回手续费',
  `before_rate` decimal(10,4) DEFAULT NULL COMMENT '预热期利率',
  `before_breach_rate` decimal(10,4) DEFAULT NULL COMMENT '预热期违约利率',
  `breach_rate` decimal(10,4) DEFAULT NULL COMMENT '正常利息 违约收益率',
  `platform_rate` decimal(10,4) DEFAULT NULL COMMENT '平台收益率',
  `freeze_bond_rate` decimal(10,4) DEFAULT NULL,
  `platform_breach_rate` decimal(10,4) DEFAULT NULL COMMENT '用户违约网站收益',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='利率列表【不同投资金额，可以获得不同的利率】';
DROP TABLE IF EXISTS `%DB_PREFIX%licai_order`;
CREATE TABLE `%DB_PREFIX%licai_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `licai_id` int(11) NOT NULL COMMENT '理财产品ID',
  `user_id` int(11) NOT NULL COMMENT '购买用户的id',
  `user_name` varchar(50) NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '购买金额',
  `status` tinyint(1) NOT NULL COMMENT '0：未支付 1：已支付 2、部分赎回 3、已完结',
  `freeze_bond_rate` decimal(10,4) NOT NULL COMMENT '冻结保证金费率',
  `freeze_bond` decimal(10,2) NOT NULL COMMENT '冻结保证金',
  `pay_money` decimal(10,2) NOT NULL COMMENT '发放金额',
  `status_time` datetime NOT NULL COMMENT '处理时间',
  `create_time` datetime NOT NULL COMMENT '购买时间',
  `create_date` date NOT NULL COMMENT '购买年月日',
  `site_buy_fee_rate` decimal(10,4) NOT NULL COMMENT '实际申购费率',
  `site_buy_fee` decimal(10,2) NOT NULL COMMENT '实际申购费',
  `redemption_fee_rate` decimal(10,4) NOT NULL COMMENT '赎回手续费',
  `before_interest_date` date NOT NULL COMMENT '预热开始时间',
  `before_interest_enddate` date NOT NULL COMMENT '预热结束时间',
  `before_rate` decimal(10,4) NOT NULL COMMENT '预热利率',
  `before_interest` decimal(10,2) NOT NULL COMMENT '预热利息',
  `is_before_pay` tinyint(1) NOT NULL COMMENT '是否已经支付预热期手续费',
  `before_breach_rate` decimal(10,4) NOT NULL COMMENT '预热期违约利率',
  `begin_interest_type` tinyint(1) NOT NULL COMMENT '【0:当日生效，1:次日生效，2:下个工作日生效,3下二个工作日】',
  `begin_interest_date` date NOT NULL COMMENT '起息时间YMD',
  `interest_rate` decimal(10,4) NOT NULL COMMENT '利息率',
  `breach_rate` decimal(10,4) NOT NULL COMMENT '正常利息 违约收益率',
  `end_interest_date` date NOT NULL COMMENT '结束时间YMD',
  `service_fee_rate` decimal(10,4) NOT NULL COMMENT '成交服务费率',
  `service_fee` decimal(10,2) NOT NULL COMMENT '成交服务费',
  `redempte_money` decimal(10,2) DEFAULT '0.00' COMMENT '赎回金额',
  `gross` decimal(10,2) DEFAULT '0.00' COMMENT '毛利',
  `gross_margins` decimal(10,4) DEFAULT '0.0000' COMMENT '毛利率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='理财订单表';
DROP TABLE IF EXISTS `%DB_PREFIX%licai_recommend`;
CREATE TABLE `%DB_PREFIX%licai_recommend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `licai_id` varchar(50) NOT NULL COMMENT '编号',
  `name` varchar(255) NOT NULL COMMENT '产品名称',
  `img` varchar(255) NOT NULL COMMENT '项目图片',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1:有效;0无效',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='个性推荐';
DROP TABLE IF EXISTS `%DB_PREFIX%licai_redempte`;
CREATE TABLE `%DB_PREFIX%licai_redempte` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `user_id` int(11) NOT NULL COMMENT '申请人ID',
  `user_name` varchar(255) NOT NULL COMMENT '申请用户名',
  `money` decimal(10,2) NOT NULL DEFAULT '1.00' COMMENT '赎回本金',
  `earn_money` decimal(10,2) NOT NULL COMMENT '收益金额',
  `fee` decimal(10,2) NOT NULL COMMENT '赎回手续费',
  `organiser_fee` decimal(10,2) NOT NULL COMMENT '平台收益',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0表示未赎回 1表示已赎回 2表示拒绝 3表示取消赎回',
  `type` tinyint(1) NOT NULL COMMENT '0 预热期赎回 1.起息时间违约赎回 2.正常到期赎回',
  `create_date` date NOT NULL COMMENT '申请时间',
  `update_date` date NOT NULL COMMENT '处理时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%link`;
CREATE TABLE `%DB_PREFIX%link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `count` int(11) NOT NULL,
  `show_index` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%link` VALUES ('152','真格基金','19','http://www.zhenfund.com/','1','1','./public/attachment/201508/19/00/55d35cf64a053.png','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('153','Gobi VC','19','http://www.gobivc.com/','1','2','./public/attachment/201508/19/00/55d35d1c385a4.png','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('154','IDG资本','19','http://www.idgvc.com/','1','3','./public/attachment/201508/19/00/55d35d346ac94.png','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('155','经纬中国','19','http://www.matrixpartners.com.cn/','1','4','./public/attachment/201508/19/00/55d35d503668e.png','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('156','红杉资本中国基金','19','http://www.sequoiacap.cn/zh/','1','5','./public/attachment/201508/19/00/55d35d6ea5bb4.png','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('157','纪源资本','19','http://www.ggvc.com/','1','6','./public/attachment/201508/19/00/55d35d834f340.png','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('158','软银中国','19','http://www.sbcvc.com/','1','7','./public/attachment/201508/19/00/55d35d9b90f8e.png','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('159','猫力空间','20','http://mollygogo.com/','1','8','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('160','众筹网','20','http://www.zhongchou.cn/','1','9','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('161','京东众筹','20','http://z.jd.com/new.html','1','10','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('162','淘宝众筹','20','http://hi.taobao.com/','1','11','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('163','人人投','20','http://www.renrenchou.com/','1','12','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('164','VITAGONG宫伟','18','http://vitagong.com/','1','13','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('165','猫力中国','14','http://molly.net.cn/','1','14','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('166','MW猫力珠宝','18','http://mollywang.com/','1','15','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('167','qodo取道中国','14','http://qodo.com.cn/','1','16','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('168','VK维客','14','http://vitakung.com/','1','17','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('169','KK大公馆','14','http://kungkuan.com','1','18','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('170','猫力网','14','http://molly.so/','1','19','','','0','1');
INSERT INTO `%DB_PREFIX%link` VALUES ('171','qodo取道文化','14','http://qodoculture.com','1','20','','','0','1');
DROP TABLE IF EXISTS `%DB_PREFIX%link_group`;
CREATE TABLE `%DB_PREFIX%link_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '友情链接分组名称',
  `sort` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 文字描述 1图片描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%link_group` VALUES ('14','友情链接','1','1','0');
INSERT INTO `%DB_PREFIX%link_group` VALUES ('18','合作伙伴','2','1','0');
INSERT INTO `%DB_PREFIX%link_group` VALUES ('19','风投在线','3','1','1');
INSERT INTO `%DB_PREFIX%link_group` VALUES ('20','众筹在线','4','1','0');
DROP TABLE IF EXISTS `%DB_PREFIX%log`;
CREATE TABLE `%DB_PREFIX%log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_info` text NOT NULL,
  `log_time` int(11) NOT NULL,
  `log_admin` int(11) NOT NULL,
  `log_ip` varchar(255) NOT NULL,
  `log_status` tinyint(1) NOT NULL,
  `module` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12039 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%log` VALUES ('11962','admin登录成功','1439884081','1','124.202.243.78','1','Public','do_login');
INSERT INTO `%DB_PREFIX%log` VALUES ('11963','更新系统配置','1439884574','1','220.113.12.3','1','Conf','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11964','更新系统配置','1439884613','1','220.113.12.3','1','Conf','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11965','更新系统配置','1439884629','1','220.113.12.3','1','Conf','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11966','更新系统配置','1439884641','1','220.113.12.3','1','Conf','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11967','更新系统配置','1439884650','1','60.253.251.254','1','Conf','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11968','官方微博更新成功','1439884688','1','124.202.243.78','1','Help','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11969','更新成功','1439884764','1','124.202.243.78','1','MailServer','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11970','短信宝增值平台 (<a href=\'http://www.smsbao.com/reg?r=5001\' target=\'_blank\'><font color=\'red\'>还没账号？点击这免费注册</font></a>)安装成功','1439884781','1','124.202.243.78','1','Sms','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('11971','短信宝增值平台 (<a href=\'http://www.smsbao.com/reg?r=5001\' target=\'_blank\'><font color=\'red\'>还没账号？点击这免费注册</font></a>)启用成功','1439884822','1','124.202.243.78','1','Sms','set_effect');
INSERT INTO `%DB_PREFIX%log` VALUES ('11972','TPL_SMS_ZC_STATUS更新成功','1439884882','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11973','TPL_SMS_DEAL_SUCCESS更新成功','1439884888','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11974','TPL_SMS_DEAL_FAIL更新成功','1439884893','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11975','TPL_SMS_DEAL_RECEPROCATION更新成功','1439884898','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11976','TPL_SMS_USER_VERIFY更新成功','1439884910','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11977','TPL_SMS_USER_S更新成功','1439884916','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11978','TPL_SMS_USER_F更新成功','1439884921','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11979','TPL_SMS_VERIFY_CODE更新成功','1439884926','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11980','TPL_SMS_INVESTOR_PAY_STATUS更新成功','1439884932','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11981','TPL_SMS_INVESTOR_STATUS更新成功','1439884937','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11982','TPL_SMS_INVESTOR_PAID_STATUS更新成功','1439884983','1','124.202.243.78','1','MsgTemplate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11983','常见问题更新成功','1439885056','1','124.202.243.78','1','Article','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11984','新手帮助添加成功','1439885080','1','124.202.243.78','1','Nav','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('11985','服务条款更新成功','1439885789','1','220.113.12.3','1','Help','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11986','关于我们更新成功','1439885804','1','220.113.12.3','1','Help','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11987','隐私策略更新成功','1439885843','1','220.113.12.3','1','Help','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11988','服务介绍更新成功','1439885866','1','220.113.12.3','1','Help','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11989','业务流程更新成功','1439885917','1','60.253.251.254','1','Article','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11990','风险提示更新成功','1439885933','1','60.253.251.254','1','Article','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11991','版权申明更新成功','1439885952','1','60.253.251.254','1','Article','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11992','项目规范更新成功','1439885977','1','60.253.251.254','1','Article','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11993','使用条款更新成功','1439886006','1','60.253.251.254','1','Article','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11994','常见问题更新成功','1439886023','1','60.253.251.254','1','Article','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11995','关于我们更新成功','1439886066','1','60.253.251.254','1','Article','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11996','餐饮更新成功','1439886141','1','60.253.251.254','1','DealCate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11997','音乐更新成功','1439886184','1','60.253.251.254','1','DealCate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11998','服务更新成功','1439886197','1','60.253.251.254','1','DealCate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('11999','商品更新成功','1439886210','1','60.253.251.254','1','DealCate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('12000','娱乐更新成功','1439886238','1','60.253.251.254','1','DealCate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('12001','艺术更新成功','1439886268','1','60.253.251.254','1','DealCate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('12002','健身更新成功','1439886276','1','60.253.251.254','1','DealCate','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('12003','admin密码修改成功','1439886305','1','60.253.251.254','1','Index','do_change_password');
INSERT INTO `%DB_PREFIX%log` VALUES ('12004','合作伙伴添加成功','1439886386','1','60.253.251.254','1','LinkGroup','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12005','风投在线添加成功','1439886400','1','60.253.251.254','1','LinkGroup','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12006','众筹在线添加成功','1439886406','1','60.253.251.254','1','LinkGroup','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12007','风投在线更新成功','1439886414','1','60.253.251.254','1','LinkGroup','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('12008','百度更新成功','1439886456','1','60.253.251.254','1','Link','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('12009','Gobi VC添加成功','1439886494','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12010','IDG资本添加成功','1439886518','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12011','经纬中国添加成功','1439886546','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12012','红杉资本中国基金添加成功','1439886578','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12013','纪源资本添加成功','1439886598','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12014','软银中国添加成功','1439886621','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12015','猫力空间添加成功','1439886690','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12016','众筹网添加成功','1439886708','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12017','京东众筹添加成功','1439886726','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12018','淘宝众筹添加成功','1439886740','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12019','人人投添加成功','1439886756','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12020','VITAGONG宫伟添加成功','1439886792','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12021','猫力中国添加成功','1439886811','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12022','MW猫力珠宝添加成功','1439886826','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12023','qodo取道中国添加成功','1439886850','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12024','VK维客添加成功','1439886869','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12025','更新系统配置','1439886955','1','60.253.251.254','1','Conf','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('12026','KK大公馆添加成功','1439887172','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12027','猫力网添加成功','1439887199','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12028','qodo取道文化添加成功','1439887224','1','60.253.251.254','1','Link','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12029','更新系统配置','1439887295','1','60.253.251.254','1','Conf','update');
INSERT INTO `%DB_PREFIX%log` VALUES ('12030','撰写指南添加成功','1439887454','1','60.253.251.254','1','Help','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12031','vitakung添加成功','1439887646','1','60.253.251.254','1','User','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12032','vitagong添加成功','1439887701','1','60.253.251.254','1','User','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12033','kungkuan添加成功','1439887799','1','60.253.251.254','1','User','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12034','vk添加成功','1439887842','1','60.253.251.254','1','User','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12035','支付宝银行直连支付安装成功','1439888148','1','60.253.251.254','1','Payment','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12036','支付宝手机支付(WAP版本)安装成功','1439888176','1','60.253.251.254','1','Payment','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12037','微信支付(WAP版本)安装成功','1439888246','1','60.253.251.254','1','Payment','insert');
INSERT INTO `%DB_PREFIX%log` VALUES ('12038','支付宝即时到帐支付更新成功','1439888297','1','124.193.88.122','1','Payment','update');
DROP TABLE IF EXISTS `%DB_PREFIX%m_adv`;
CREATE TABLE `%DB_PREFIX%m_adv` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `img` varchar(255) DEFAULT '',
  `page` varchar(20) DEFAULT '',
  `type` tinyint(1) DEFAULT '0' COMMENT '1.标签集,2.url地址,3.分类排行,4.最亮达人,5.搜索发现,6.一起拍,7.热门单品排行,8.直接显示某个分享',
  `data` text,
  `sort` smallint(5) DEFAULT '10',
  `status` tinyint(1) DEFAULT '1',
  `open_url_type` int(11) DEFAULT '0' COMMENT '0:使用内置浏览器打开url;1:使用外置浏览器打开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%m_adv` VALUES ('36','2','./public/attachment/201508/17/12/55d162f6d23e1.jpg','top','1','','2','1','0');
INSERT INTO `%DB_PREFIX%m_adv` VALUES ('35','1','./public/attachment/201508/17/12/55d162e68fb4f.jpg','top','1','','1','1','0');
DROP TABLE IF EXISTS `%DB_PREFIX%m_config`;
CREATE TABLE `%DB_PREFIX%m_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `val` text,
  `type` tinyint(1) NOT NULL,
  `sort` int(11) DEFAULT '0',
  `value_scope` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%m_config` VALUES ('10','kf_phone','客服电话','010-56267773','0','1','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('11','kf_email','客服邮箱','2602082743@qq.com','0','2','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('29','ios_upgrade','ios版本升级内容','','3','9','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('16','page_size','分页大小','10','0','10','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('17','about_info','关于我们(填文章ID)','66','0','3','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('18','program_title','程序标题名称','VK维客众筹','0','0','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('22','android_version','android版本号(yyyymmddnn)','2015082101','0','4','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('23','android_filename','android下载包名(放程序根目录下)','VKzc3.apk','0','5','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('24','ios_version','ios版本号(yyyymmddnn)','2015082009','0','7','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('25','ios_down_url','ios下载地址(appstore连接地址)','','0','8','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('28','android_upgrade','android版本升级内容','修复bug','3','6','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('30','article_cate_id','文章分类ID','15','0','11','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('31','android_forced_upgrade','android是否强制升级(0:否;1:是)','1','0','0','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('32','ios_forced_upgrade','ios是否强制升级(0:否;1:是)','1','0','0','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('35','logo','系统LOGO','./public/attachment/201508/17/12/55d162c8c491e.png','2','1','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('33','index_adv_num','首页广告数','5','0','33','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('34','index_pro_num','首页推荐商品数','5','0','34','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('36','wx_appid','微信APPID','','0','36','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('37','wx_secrit','微信SECRIT','','0','37','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('38','sina_app_key','新浪APP_KEY','','0','38','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('39','sina_app_secret','新浪APP_SECRET','','0','39','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('40','sina_bind_url','新浪回调地址','','0','40','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('41','qq_app_key','QQ登录APP_KEY','','0','41','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('42','qq_app_secret','QQ登录APP_SECRET','','0','42','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('43','wx_app_key','微信(分享)appkey','','0','43','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('44','wx_app_secret','微信(分享)appSecret','','0','44','');
INSERT INTO `%DB_PREFIX%m_config` VALUES ('45','wx_controll','一站式登录方式','0','4','45','0,1');
DROP TABLE IF EXISTS `%DB_PREFIX%mail_list`;
CREATE TABLE `%DB_PREFIX%mail_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_address` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_address_idx` (`mail_address`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%mail_server`;
CREATE TABLE `%DB_PREFIX%mail_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_server` varchar(255) NOT NULL,
  `smtp_name` varchar(255) NOT NULL,
  `smtp_pwd` varchar(255) NOT NULL,
  `is_ssl` tinyint(1) NOT NULL,
  `smtp_port` varchar(255) NOT NULL,
  `use_limit` int(11) NOT NULL,
  `is_reset` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `total_use` int(11) NOT NULL,
  `is_verify` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%mail_server` VALUES ('8','smtp.exmail.qq.com','2602082743@qq.com','gong15510192688','0','25','0','0','1','1','1');
DROP TABLE IF EXISTS `%DB_PREFIX%message`;
CREATE TABLE `%DB_PREFIX%message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '该留言所属人ID',
  `user_name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='// 用户留言';
DROP TABLE IF EXISTS `%DB_PREFIX%message_cate`;
CREATE TABLE `%DB_PREFIX%message_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) NOT NULL,
  `is_project` tinyint(1) NOT NULL DEFAULT '0' COMMENT '项目发起的分类 0表示否 1表示 是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='// 用户留言分类';
INSERT INTO `%DB_PREFIX%message_cate` VALUES ('1','项目登记','1');
INSERT INTO `%DB_PREFIX%message_cate` VALUES ('2','建议留言','0');
DROP TABLE IF EXISTS `%DB_PREFIX%mobile_verify_code`;
CREATE TABLE `%DB_PREFIX%mobile_verify_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `verify_code` varchar(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `client_ip` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT '邮件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6263 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%mobile_verify_code` VALUES ('6262','989672','18678337046','1439590096','112.252.77.90','');
DROP TABLE IF EXISTS `%DB_PREFIX%money_freeze`;
CREATE TABLE `%DB_PREFIX%money_freeze` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `requestNo` int(10) NOT NULL DEFAULT '0' COMMENT '请求流水号',
  `platformUserNo` int(11) NOT NULL DEFAULT '0' COMMENT '平台会员编号',
  `platformNo` varchar(20) NOT NULL COMMENT '商户编号',
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '冻结金额',
  `expired` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '到期自劢解冻时间',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL COMMENT '返回码;1 成功 0 失败 2 xml参数格式错误 3 签名验证失败 101 引用了不存在的对象（例如错误的订单号） 102 业务状态不正确 103 由于业务限制导致业务不能执行 104 实名认证失败',
  `description` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `deal_id` int(10) NOT NULL COMMENT '项目id',
  `pay_type` tinyint(1) DEFAULT '0' COMMENT '0 表示第三方托管 1表示第三方支付',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示冻结诚意金，2表示解冻诚意金,3表示申请解冻',
  `create_time` int(11) DEFAULT NULL COMMENT '冻结时间',
  PRIMARY KEY (`id`,`requestNo`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%money_freeze` VALUES ('118','0','21','0','0.01','0000-00-00 00:00:00','1','','','156','1','1','1439761393');
DROP TABLE IF EXISTS `%DB_PREFIX%money_type`;
CREATE TABLE `%DB_PREFIX%money_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '分类名称',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'type类型 0 ~ ？',
  `class` varchar(100) NOT NULL DEFAULT '' COMMENT '所属分类 money  lock_money site_money  point  score',
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_effect` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%money_type` VALUES ('1','普通的','0','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('2','加入诚意金','1','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('3','违约扣除诚意金','2','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('4','分红','3','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('5','订金','4','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('6','首付','5','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('7','众筹买房','6','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('8','买房卖出回报','7','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('9','理财赎回本金','8','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('10','理财赎回收益','9','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('11','理财赎回手续费','10','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('12','理财本金','11','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('13','理财购买手续费','12','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('14','理财冻结资金','13','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('15','理财服务费','14','money','0','1');
INSERT INTO `%DB_PREFIX%money_type` VALUES ('16','理财发放资金','15','money','0','1');
DROP TABLE IF EXISTS `%DB_PREFIX%mortgate`;
CREATE TABLE `%DB_PREFIX%mortgate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员ID',
  `notice_id` int(11) NOT NULL COMMENT '0 表示为余额支付 大于0表示在线支付',
  `money` int(11) NOT NULL COMMENT '诚意金 金额',
  `status` tinyint(1) NOT NULL COMMENT '状态 1表示诚意金支付 2表示扣除诚意金 3表示诚意金解冻到余额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS `%DB_PREFIX%msg_template`;
CREATE TABLE `%DB_PREFIX%msg_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('1','TPL_MAIL_USER_PASSWORD','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\r\n<tbody>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"{$user.logo}\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\r\n		</tr>\r\n        </tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td width=\"25px;\" style=\"width:25px;\"></td>\r\n			<td align=\"\">\r\n				<div style=\"line-height:40px;height:40px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\r\n 				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">{$user.user_name}你好，请点击以下链接修改您的密码：</p>\r\n				<p style=\"margin:0px;padding:0px;\"><a href=\"{$user.password_url}\" style=\"line-height:24px;font-size:12px;font-family:arial,sans-serif;color:#0000cc\" target=\"_blank\">{$user.password_url}</a></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:arial,sans-serif;\">(如果您无法点击此链接，请将它复制到浏览器地址栏后访问)</p>\r\n				<div style=\"line-height:80px;height:80px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">{$user.site_name}团队</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\"><span style=\"border-bottom:1px dashed #ccc;\" t=\"5\" times=\"\">{$user.send_time}</span></p>\r\n			</td>\r\n		</tr>\r\n		</tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n \r\n</tbody>\r\n</table>','1','1');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('3','TPL_MAIL_USER_VERIFY','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\r\n<tbody>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"{$user.logo}\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\r\n		</tr>\r\n        </tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td width=\"25px;\" style=\"width:25px;\"></td>\r\n			<td align=\"\">\r\n				<div style=\"line-height:40px;height:40px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您好！</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您于 {$user.send_time_ms} 帐号 发送验证码：</p>\r\n				<p style=\"margin:0px;padding:0px;\">验证码：{$user.send_code}</p>\r\n 				 \r\n				<div style=\"line-height:80px;height:80px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">{$user.site_name}帐号团队</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\"><span style=\"border-bottom:1px dashed #ccc;\" t=\"5\" times=\"\">{$user.send_time}</span></p>\r\n			</td>\r\n		</tr>\r\n		</tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-top:1px solid #dfdfdf\">\r\n			<tbody>\r\n			<tr>\r\n				<td width=\"25px;\" style=\"width:25px;\"></td>\r\n				<td align=\"\">\r\n					<div style=\"line-height:40px;height:40px;\"></div>\r\n					<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:\'宋体\',arial,sans-serif;\">若您没有注册过{$user.site_name}帐号，请忽略此邮件，此帐号将不会被激活，由此给您带来的不便请谅解。</p>\r\n				</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n		</td>\r\n	</tr>\r\n</tbody>\r\n</table>','1','1');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('29','TPL_SMS_ZC_STATUS','{$user.control_content}【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('30','TPL_MAIL_ZC_STATUS','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\n<tbody>\n	<tr>\n		<td>\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n        <tbody>\n		<tr>\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"{$user.logo}\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\n		</tr>\n        </tbody>\n		</table>\n		</td>\n	</tr>\n	<tr>\n		<td>\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n        <tbody>\n		<tr>\n			<td width=\"25px;\" style=\"width:25px;\"></td>\n			<td align=\"\">\n				<div style=\"line-height:40px;height:40px;\"></div>\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您好！</p>\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">{$user.control_content}</p>\n				<p style=\"margin:0px;padding:0px;\"><a href=\"{$user.verify_url}\" style=\"line-height:24px;font-size:12px;font-family:arial,sans-serif;color:#0000cc\" target=\"_blank\">{$user.verify_url}</a></p>\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:arial,sans-serif;\">(如果您无法点击此链接，请将它复制到浏览器地址栏后访问)</p>\n 				<div style=\"line-height:80px;height:80px;\"></div>\n 				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\"><span style=\"border-bottom:1px dashed #ccc;\" t=\"5\" times=\"\">{$user.send_time}</span></p>\n			</td>\n		</tr>\n		</tbody>\n		</table>\n		</td>\n	</tr>\n	<tr>\n		<td>\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-top:1px solid #dfdfdf\">\n			<tbody>\n			<tr>\n				<td width=\"25px;\" style=\"width:25px;\"></td>\n				<td align=\"\">\n					<div style=\"line-height:40px;height:40px;\"></div>\n					<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:\'宋体\',arial,sans-serif;\">若您没有注册过{$user.site_name}帐号，请忽略此邮件，此帐号将不会被激活，由此给您带来的不便请谅解。</p>\n				</td>\n			</tr>\n			</tbody>\n			</table>\n		</td>\n	</tr>\n</tbody>\n</table>','1','1');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('17','TPL_SMS_DEAL_SUCCESS','{$success_user_info.user_name}，您所支持的 \"{$success_user_info.deal_name}\" 项目筹资成功!【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('18','TPL_SMS_DEAL_FAIL','{$fail_user_info.user_name}，您所支持的 \"{$fail_user_info.deal_name}\"项目筹资失败!【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('19','TPL_SMS_DEAL_RECEPROCATION','{$success_user_info_hui.user_name}，您投资的 \"{$success_user_info_hui.deal_name}项目\"，近期将会发放回报。【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('20','TPL_SMS_USER_VERIFY','{$success_user_info.user_name}：会员名,注册验证成功!【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('21','TPL_SMS_USER_S','{$user_s_msg.user_name},您发起的{$user_s_msg.deal_name}项目筹资成功!【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('22','TPL_SMS_USER_F','{$user_f_msg.user_name}，您发起的{$user_f_msg.deal_name}项目筹资失败!【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('23','TPL_SMS_VERIFY_CODE','您的短信校验码为 {$verify.code} 请勿泄漏，需要您进行身份校验.【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('4','TPL_MAIL_CHANGE_USER_VERIFY','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\r\n<tbody>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"{$user.logo}\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\r\n		</tr>\r\n        </tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td width=\"25px;\" style=\"width:25px;\"></td>\r\n			<td align=\"\">\r\n				<div style=\"line-height:40px;height:40px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您好！</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您于 {$user.send_time_ms} 进行邮件修改 <a href=\"mailto:{$user.email}\" target=\"_blank\">{$user.email}<wbr>.com</a> ，点击以下链接，即可进行下一步操作：</p>\r\n				<p style=\"margin:0px;padding:0px;\"><a href=\"{$user.verify_url}\" style=\"line-height:24px;font-size:12px;font-family:arial,sans-serif;color:#0000cc\" target=\"_blank\">{$user.verify_url}</a></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:arial,sans-serif;\">(如果您无法点击此链接，请将它复制到浏览器地址栏后访问)</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">1、为了保障您帐号的安全性，请在 48小时内完成激活，此链接将在您激活过一次后失效！</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">2、注册的帐号可以畅行{$user.site_name}产品</p>\r\n				<div style=\"line-height:80px;height:80px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">{$user.site_name}帐号团队</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\"><span style=\"border-bottom:1px dashed #ccc;\" t=\"5\" times=\"\">{$user.send_time}</span></p>\r\n			</td>\r\n		</tr>\r\n		</tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-top:1px solid #dfdfdf\">\r\n			<tbody>\r\n			<tr>\r\n				<td width=\"25px;\" style=\"width:25px;\"></td>\r\n				<td align=\"\">\r\n					<div style=\"line-height:40px;height:40px;\"></div>\r\n					<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:\'宋体\',arial,sans-serif;\">若您没有注册过{$user.site_name}帐号，请忽略此邮件，此帐号将不会被激活，由此给您带来的不便请谅解。</p>\r\n				</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n		</td>\r\n	</tr>\r\n</tbody>\r\n</table>','1','1');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('5','TPL_MAIL_INVESTOR_STATUS','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\r\n<tbody>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"{$user.logo}\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\r\n		</tr>\r\n        </tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td width=\"25px;\" style=\"width:25px;\"></td>\r\n			<td align=\"\">\r\n				<div style=\"line-height:40px;height:40px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您好！</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您于 {$user.send_time_ms} 进行{$user.is_investor_name}申请，{if $user.investor_status eq 1}很高兴您审核通过,点击以下链接，即可进行下一步操作{else}很遗憾您的申请未通过,理由是：{$user.investor_send_info};点击以下链接，即可重新申请{/if}：</p>\r\n				<p style=\"margin:0px;padding:0px;\"><a href=\"{$user.verify_url}\" style=\"line-height:24px;font-size:12px;font-family:arial,sans-serif;color:#0000cc\" target=\"_blank\">{$user.verify_url}</a></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:arial,sans-serif;\">(如果您无法点击此链接，请将它复制到浏览器地址栏后访问)</p>\r\n 				<div style=\"line-height:80px;height:80px;\"></div>\r\n 				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\"><span style=\"border-bottom:1px dashed #ccc;\" t=\"5\" times=\"\">{$user.send_time}</span></p>\r\n			</td>\r\n		</tr>\r\n		</tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-top:1px solid #dfdfdf\">\r\n			<tbody>\r\n			<tr>\r\n				<td width=\"25px;\" style=\"width:25px;\"></td>\r\n				<td align=\"\">\r\n					<div style=\"line-height:40px;height:40px;\"></div>\r\n					<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:\'宋体\',arial,sans-serif;\">若您没有注册过{$user.site_name}帐号，请忽略此邮件，此帐号将不会被激活，由此给您带来的不便请谅解。</p>\r\n				</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n		</td>\r\n	</tr>\r\n</tbody>\r\n</table>','1','1');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('25','TPL_MAIL_INVESTOR_PAY_STATUS','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\r\n<tbody>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"{$user.logo}\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\r\n		</tr>\r\n        </tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td width=\"25px;\" style=\"width:25px;\"></td>\r\n			<td align=\"\">\r\n				<div style=\"line-height:40px;height:40px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您好！</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">{$user.user_name}您好，您的投资申请已通过，请在{$user.pay_end_time}前进行支付{$user.money}元;点击以下链接</p>\r\n				<p style=\"margin:0px;padding:0px;\"><a href=\"{$user.note_url}\" style=\"line-height:24px;font-size:12px;font-family:arial,sans-serif;color:#0000cc\" target=\"_blank\">{$user.note_url}</a></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:arial,sans-serif;\">(如果您无法点击此链接，请将它复制到浏览器地址栏后访问)</p>\r\n			</td>\r\n		</tr>\r\n		</tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-top:1px solid #dfdfdf\">\r\n			<tbody>\r\n			<tr>\r\n				<td width=\"25px;\" style=\"width:25px;\"></td>\r\n				<td align=\"\">\r\n					<div style=\"line-height:40px;height:40px;\"></div>\r\n					<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:\'宋体\',arial,sans-serif;\">若您没有注册过{$user.site_name}帐号，请忽略此邮件，由此给您带来的不便请谅解。</p>\r\n				</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n		</td>\r\n	</tr>\r\n</tbody>\r\n</table>','1','1');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('26','TPL_SMS_INVESTOR_PAY_STATUS','{$user.user_name}您好，您的投资申请已通过，请在{$user.pay_end_time}前进行支付{$user.money}元【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('6','TPL_SMS_INVESTOR_STATUS','{$user.user_name}您好，{if $user.investor_status eq 1}恭喜您{else}很遗憾,{$user.investor_send_info}{/if},您申请的{$user.is_investor_name}{$user.investor_status_name}【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('27','TPL_SMS_INVESTOR_PAID_STATUS','恭喜您，已经支付{$user.paid_money}元,支付单号为{$user.notice_sn}【VK维客众筹】','0','0');
INSERT INTO `%DB_PREFIX%msg_template` VALUES ('28','TPL_MAIL_INVESTOR_PAID_STATUS','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\r\n<tbody>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"{$user.logo}\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\r\n		</tr>\r\n        </tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td width=\"25px;\" style=\"width:25px;\"></td>\r\n			<td align=\"\">\r\n				<div style=\"line-height:40px;height:40px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您好！</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">{$user.user_name}您好，恭喜您，已经支付{$user.paid_money}元,支付单号为{$user.notice_sn}</p>\r\n				\r\n  				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\"><span style=\"border-bottom:1px dashed #ccc;\" t=\"5\" times=\"\">{$user.send_time}</span></p>\r\n			</td>\r\n		</tr>\r\n		</tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-top:1px solid #dfdfdf\">\r\n			<tbody>\r\n			<tr>\r\n				<td width=\"25px;\" style=\"width:25px;\"></td>\r\n				<td align=\"\">\r\n					<div style=\"line-height:40px;height:40px;\"></div>\r\n					<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:\'宋体\',arial,sans-serif;\">若您没有注册过{$user.site_name}帐号，请忽略此邮件，由此给您带来的不便请谅解。</p>\r\n				</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n		</td>\r\n	</tr>\r\n</tbody>\r\n</table>','1','1');
DROP TABLE IF EXISTS `%DB_PREFIX%nav`;
CREATE TABLE `%DB_PREFIX%nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `blank` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `u_module` varchar(255) NOT NULL,
  `u_action` varchar(255) NOT NULL,
  `u_id` int(11) NOT NULL,
  `u_param` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%nav` VALUES ('42','首页','','0','1','1','index','','0','');
INSERT INTO `%DB_PREFIX%nav` VALUES ('47','回报众筹','deals.html','0','3','1','','','0','');
INSERT INTO `%DB_PREFIX%nav` VALUES ('46','股权众筹','deals/type-1.html','0','2','1','','','0','');
INSERT INTO `%DB_PREFIX%nav` VALUES ('48','最新动态','','0','4','1','news','index','0','');
INSERT INTO `%DB_PREFIX%nav` VALUES ('49','投资人','','0','5','1','investor','invester_list','0','');
INSERT INTO `%DB_PREFIX%nav` VALUES ('51','路演快讯','','0','6','1','article_cate','','0','');
INSERT INTO `%DB_PREFIX%nav` VALUES ('52','新手帮助','','0','7','1','faq','','0','');
DROP TABLE IF EXISTS `%DB_PREFIX%payment`;
CREATE TABLE `%DB_PREFIX%payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `online_pay` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `total_amount` decimal(20,2) NOT NULL COMMENT '总金额',
  `config` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%payment` VALUES ('29','Alipay','1','1','支付宝即时到帐支付','','0.00','a:3:{s:14:\"alipay_partner\";s:4:\"test\";s:14:\"alipay_account\";s:4:\"test\";s:10:\"alipay_key\";s:3:\"tet\";}','','1');
INSERT INTO `%DB_PREFIX%payment` VALUES ('30','AlipayBank','1','1','支付宝银行直连支付','','0.00','a:4:{s:14:\"alipay_partner\";s:16:\"2088701687941821\";s:14:\"alipay_account\";s:12:\"cw@fanwe.com\";s:10:\"alipay_key\";s:32:\"1tzqx98hvgcfxu59h54h3mye89hg03et\";s:14:\"alipay_gateway\";a:17:{s:7:\"ICBCB2C\";s:1:\"1\";s:3:\"CMB\";s:1:\"1\";s:3:\"CCB\";s:1:\"1\";s:3:\"ABC\";s:1:\"1\";s:4:\"SPDB\";s:1:\"1\";s:3:\"SDB\";s:1:\"1\";s:3:\"CIB\";s:1:\"1\";s:6:\"BJBANK\";s:1:\"1\";s:7:\"CEBBANK\";s:1:\"1\";s:4:\"CMBC\";s:1:\"1\";s:5:\"CITIC\";s:1:\"1\";s:3:\"GDB\";s:1:\"1\";s:7:\"SPABANK\";s:1:\"1\";s:6:\"BOCB2C\";s:1:\"1\";s:4:\"COMM\";s:1:\"1\";s:7:\"ICBCBTB\";s:1:\"1\";s:10:\"PSBC-DEBIT\";s:1:\"1\";}}','','2');
INSERT INTO `%DB_PREFIX%payment` VALUES ('31','Walipay','1','2','支付宝手机支付(WAP版本)','','0.00','a:3:{s:14:\"alipay_partner\";s:16:\"2088701687941821\";s:14:\"alipay_account\";s:12:\"cw@fanwe.com\";s:10:\"alipay_key\";s:32:\"1tzqx98hvgcfxu59h54h3mye89hg03et\";}','','3');
INSERT INTO `%DB_PREFIX%payment` VALUES ('32','Wwxjspay','1','2','微信支付(WAP版本)','','0.00','a:5:{s:5:\"appid\";s:18:\"wx8151cf1a1be59095\";s:9:\"appsecret\";s:32:\"ad7fb45aa8a688bd2f6985c372c49b4c\";s:5:\"mchid\";s:10:\"1237916602\";s:3:\"key\";s:32:\"qweumlasja213123123123p808123u08\";s:4:\"type\";s:2:\"V3\";}','','4');
DROP TABLE IF EXISTS `%DB_PREFIX%payment_notice`;
CREATE TABLE `%DB_PREFIX%payment_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_sn` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `pay_time` int(11) NOT NULL,
  `order_id` int(11) NOT NULL COMMENT 'order_id为0时为充值',
  `is_paid` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `memo` text NOT NULL,
  `money` decimal(20,2) NOT NULL COMMENT '金额',
  `outer_notice_sn` varchar(255) NOT NULL,
  `deal_id` int(11) NOT NULL COMMENT '0为充值',
  `deal_item_id` int(11) NOT NULL COMMENT '0为充值',
  `deal_name` varchar(255) NOT NULL COMMENT '空为充值',
  `is_has_send_success` tinyint(1) NOT NULL COMMENT '（0表示发送不成功，1表示发送成功）',
  `is_mortgate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是诚意金 0表示否 1表示 是 2表示诚意金已经冻结（从余额中取出）',
  `paid_send` tinyint(1) NOT NULL COMMENT '支付成功后是否发送',
  PRIMARY KEY (`id`),
  UNIQUE KEY `notice_sn_unk` (`notice_sn`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `payment_id` (`payment_id`),
  KEY `deal_id` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2317 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%payment_notice` VALUES ('2315','20150817849','1439762048','0','2146','0','21','29','','','8399994.35','','156','0','度假酒店','0','0','0');
INSERT INTO `%DB_PREFIX%payment_notice` VALUES ('2316','20150817555','1439762086','0','2146','0','21','29','','','8400000.01','','156','0','度假酒店','0','0','0');
DROP TABLE IF EXISTS `%DB_PREFIX%promote_msg`;
CREATE TABLE `%DB_PREFIX%promote_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '0:短信 1:邮件',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) NOT NULL,
  `send_status` tinyint(1) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `send_type_id` int(11) NOT NULL,
  `send_define_data` text NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `send_type` (`send_type`),
  KEY `send_type_id` (`send_type_id`),
  KEY `send_status` (`send_status`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%promote_msg_list`;
CREATE TABLE `%DB_PREFIX%promote_msg_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dest` varchar(255) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `send_time` int(11) NOT NULL,
  `is_send` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `result` text NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  `msg_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dest_idx` (`dest`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%recommend`;
CREATE TABLE `%DB_PREFIX%recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memo` text NOT NULL COMMENT '推荐理由',
  `deal_id` int(11) NOT NULL COMMENT '项目编号',
  `user_id` int(11) NOT NULL COMMENT '推送给哪个会员',
  `recommend_user_id` int(11) NOT NULL COMMENT '推送人ID',
  `create_time` int(11) NOT NULL COMMENT '推荐时间',
  `deal_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '项目类型 0表示普通项目 1表示股权项目',
  `deal_name` varchar(255) NOT NULL COMMENT '项目名称',
  `deal_image` varchar(255) NOT NULL COMMENT '推荐项目图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS `%DB_PREFIX%referrals`;
CREATE TABLE `%DB_PREFIX%referrals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '邀请人ID（即需要返利的会员ID）',
  `user_name` varchar(50) NOT NULL COMMENT '邀请人名称（即需要返利的会员名称）',
  `rel_user_id` int(11) NOT NULL COMMENT '被邀请人ID',
  `rel_user_name` varchar(50) NOT NULL COMMENT '被邀请人名称',
  `money` double(20,4) NOT NULL COMMENT '返利的现金',
  `create_time` int(11) NOT NULL COMMENT '返利生成的时间',
  `pay_time` int(11) NOT NULL COMMENT '返利发放的时间',
  `score` int(11) NOT NULL COMMENT '返利的积分',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `type` tinyint(1) NOT NULL COMMENT '类型：1表示注册奖励，2购买奖励',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COMMENT='邀请返利记录表';
DROP TABLE IF EXISTS `%DB_PREFIX%region_conf`;
CREATE TABLE `%DB_PREFIX%region_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '地区名称',
  `region_level` tinyint(4) NOT NULL COMMENT '1:国 2:省 3:市(县) 4:区(镇)',
  `py` varchar(50) NOT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为热门地区',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3401 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3','1','安徽','2','anhui','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('4','1','福建','2','fujian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('5','1','甘肃','2','gansu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('6','1','广东','2','guangdong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('7','1','广西','2','guangxi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('8','1','贵州','2','guizhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('9','1','海南','2','hainan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('10','1','河北','2','hebei','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('11','1','河南','2','henan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('12','1','黑龙江','2','heilongjiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('13','1','湖北','2','hubei','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('14','1','湖南','2','hunan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('15','1','吉林','2','jilin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('16','1','江苏','2','jiangsu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('17','1','江西','2','jiangxi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('18','1','辽宁','2','liaoning','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('19','1','内蒙古','2','neimenggu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('20','1','宁夏','2','ningxia','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('21','1','青海','2','qinghai','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('22','1','山东','2','shandong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('23','1','山西','2','shanxi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('24','1','陕西','2','shanxi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('26','1','四川','2','sichuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('28','1','西藏','2','xicang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('29','1','新疆','2','xinjiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('30','1','云南','2','yunnan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('31','1','浙江','2','zhejiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('36','3','安庆','3','anqing','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('37','3','蚌埠','3','bangbu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('38','3','巢湖','3','chaohu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('39','3','池州','3','chizhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('40','3','滁州','3','chuzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('41','3','阜阳','3','fuyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('42','3','淮北','3','huaibei','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('43','3','淮南','3','huainan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('44','3','黄山','3','huangshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('45','3','六安','3','liuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('46','3','马鞍山','3','maanshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('47','3','宿州','3','suzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('48','3','铜陵','3','tongling','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('49','3','芜湖','3','wuhu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('50','3','宣城','3','xuancheng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('51','3','亳州','3','zhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('52','2','北京','2','beijing','1');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('53','4','福州','3','fuzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('54','4','龙岩','3','longyan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('55','4','南平','3','nanping','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('56','4','宁德','3','ningde','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('57','4','莆田','3','putian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('58','4','泉州','3','quanzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('59','4','三明','3','sanming','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('60','4','厦门','3','xiamen','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('61','4','漳州','3','zhangzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('62','5','兰州','3','lanzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('63','5','白银','3','baiyin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('64','5','定西','3','dingxi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('65','5','甘南','3','gannan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('66','5','嘉峪关','3','jiayuguan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('67','5','金昌','3','jinchang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('68','5','酒泉','3','jiuquan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('69','5','临夏','3','linxia','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('70','5','陇南','3','longnan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('71','5','平凉','3','pingliang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('72','5','庆阳','3','qingyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('73','5','天水','3','tianshui','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('74','5','武威','3','wuwei','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('75','5','张掖','3','zhangye','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('76','6','广州','3','guangzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('77','6','深圳','3','shen','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('78','6','潮州','3','chaozhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('79','6','东莞','3','dong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('80','6','佛山','3','foshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('81','6','河源','3','heyuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('82','6','惠州','3','huizhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('83','6','江门','3','jiangmen','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('84','6','揭阳','3','jieyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('85','6','茂名','3','maoming','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('86','6','梅州','3','meizhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('87','6','清远','3','qingyuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('88','6','汕头','3','shantou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('89','6','汕尾','3','shanwei','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('90','6','韶关','3','shaoguan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('91','6','阳江','3','yangjiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('92','6','云浮','3','yunfu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('93','6','湛江','3','zhanjiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('94','6','肇庆','3','zhaoqing','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('95','6','中山','3','zhongshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('96','6','珠海','3','zhuhai','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('97','7','南宁','3','nanning','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('98','7','桂林','3','guilin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('99','7','百色','3','baise','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('100','7','北海','3','beihai','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('101','7','崇左','3','chongzuo','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('102','7','防城港','3','fangchenggang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('103','7','贵港','3','guigang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('104','7','河池','3','hechi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('105','7','贺州','3','hezhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('106','7','来宾','3','laibin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('107','7','柳州','3','liuzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('108','7','钦州','3','qinzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('109','7','梧州','3','wuzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('110','7','玉林','3','yulin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('111','8','贵阳','3','guiyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('112','8','安顺','3','anshun','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('113','8','毕节','3','bijie','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('114','8','六盘水','3','liupanshui','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('115','8','黔东南','3','qiandongnan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('116','8','黔南','3','qiannan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('117','8','黔西南','3','qianxinan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('118','8','铜仁','3','tongren','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('119','8','遵义','3','zunyi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('120','9','海口','3','haikou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('121','9','三亚','3','sanya','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('122','9','白沙','3','baisha','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('123','9','保亭','3','baoting','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('124','9','昌江','3','changjiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('125','9','澄迈县','3','chengmaixian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('126','9','定安县','3','dinganxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('127','9','东方','3','dongfang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('128','9','乐东','3','ledong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('129','9','临高县','3','lingaoxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('130','9','陵水','3','lingshui','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('131','9','琼海','3','qionghai','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('132','9','琼中','3','qiongzhong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('133','9','屯昌县','3','tunchangxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('134','9','万宁','3','wanning','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('135','9','文昌','3','wenchang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('136','9','五指山','3','wuzhishan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('137','9','儋州','3','zhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('138','10','石家庄','3','shijiazhuang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('139','10','保定','3','baoding','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('140','10','沧州','3','cangzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('141','10','承德','3','chengde','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('142','10','邯郸','3','handan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('143','10','衡水','3','hengshui','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('144','10','廊坊','3','langfang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('145','10','秦皇岛','3','qinhuangdao','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('146','10','唐山','3','tangshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('147','10','邢台','3','xingtai','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('148','10','张家口','3','zhangjiakou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('149','11','郑州','3','zhengzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('150','11','洛阳','3','luoyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('151','11','开封','3','kaifeng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('152','11','安阳','3','anyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('153','11','鹤壁','3','hebi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('154','11','济源','3','jiyuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('155','11','焦作','3','jiaozuo','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('156','11','南阳','3','nanyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('157','11','平顶山','3','pingdingshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('158','11','三门峡','3','sanmenxia','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('159','11','商丘','3','shangqiu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('160','11','新乡','3','xinxiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('161','11','信阳','3','xinyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('162','11','许昌','3','xuchang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('163','11','周口','3','zhoukou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('164','11','驻马店','3','zhumadian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('165','11','漯河','3','he','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('166','11','濮阳','3','yang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('167','12','哈尔滨','3','haerbin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('168','12','大庆','3','daqing','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('169','12','大兴安岭','3','daxinganling','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('170','12','鹤岗','3','hegang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('171','12','黑河','3','heihe','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('172','12','鸡西','3','jixi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('173','12','佳木斯','3','jiamusi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('174','12','牡丹江','3','mudanjiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('175','12','七台河','3','qitaihe','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('176','12','齐齐哈尔','3','qiqihaer','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('177','12','双鸭山','3','shuangyashan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('178','12','绥化','3','suihua','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('179','12','伊春','3','yichun','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('180','13','武汉','3','wuhan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('181','13','仙桃','3','xiantao','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('182','13','鄂州','3','ezhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('183','13','黄冈','3','huanggang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('184','13','黄石','3','huangshi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('185','13','荆门','3','jingmen','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('186','13','荆州','3','jingzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('187','13','潜江','3','qianjiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('188','13','神农架林区','3','shennongjialinqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('189','13','十堰','3','shiyan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('190','13','随州','3','suizhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('191','13','天门','3','tianmen','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('192','13','咸宁','3','xianning','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('193','13','襄樊','3','xiangfan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('194','13','孝感','3','xiaogan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('195','13','宜昌','3','yichang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('196','13','恩施','3','enshi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('197','14','长沙','3','changsha','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('198','14','张家界','3','zhangjiajie','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('199','14','常德','3','changde','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('200','14','郴州','3','chenzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('201','14','衡阳','3','hengyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('202','14','怀化','3','huaihua','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('203','14','娄底','3','loudi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('204','14','邵阳','3','shaoyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('205','14','湘潭','3','xiangtan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('206','14','湘西','3','xiangxi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('207','14','益阳','3','yiyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('208','14','永州','3','yongzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('209','14','岳阳','3','yueyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('210','14','株洲','3','zhuzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('211','15','长春','3','changchun','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('212','15','吉林','3','jilin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('213','15','白城','3','baicheng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('214','15','白山','3','baishan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('215','15','辽源','3','liaoyuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('216','15','四平','3','siping','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('217','15','松原','3','songyuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('218','15','通化','3','tonghua','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('219','15','延边','3','yanbian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('220','16','南京','3','nanjing','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('221','16','苏州','3','suzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('222','16','无锡','3','wuxi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('223','16','常州','3','changzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('224','16','淮安','3','huaian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('225','16','连云港','3','lianyungang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('226','16','南通','3','nantong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('227','16','宿迁','3','suqian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('228','16','泰州','3','taizhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('229','16','徐州','3','xuzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('230','16','盐城','3','yancheng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('231','16','扬州','3','yangzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('232','16','镇江','3','zhenjiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('233','17','南昌','3','nanchang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('234','17','抚州','3','fuzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('235','17','赣州','3','ganzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('236','17','吉安','3','jian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('237','17','景德镇','3','jingdezhen','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('238','17','九江','3','jiujiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('239','17','萍乡','3','pingxiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('240','17','上饶','3','shangrao','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('241','17','新余','3','xinyu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('242','17','宜春','3','yichun','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('243','17','鹰潭','3','yingtan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('244','18','沈阳','3','shenyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('245','18','大连','3','dalian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('246','18','鞍山','3','anshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('247','18','本溪','3','benxi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('248','18','朝阳','3','chaoyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('249','18','丹东','3','dandong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('250','18','抚顺','3','fushun','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('251','18','阜新','3','fuxin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('252','18','葫芦岛','3','huludao','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('253','18','锦州','3','jinzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('254','18','辽阳','3','liaoyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('255','18','盘锦','3','panjin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('256','18','铁岭','3','tieling','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('257','18','营口','3','yingkou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('258','19','呼和浩特','3','huhehaote','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('259','19','阿拉善盟','3','alashanmeng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('260','19','巴彦淖尔盟','3','bayannaoermeng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('261','19','包头','3','baotou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('262','19','赤峰','3','chifeng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('263','19','鄂尔多斯','3','eerduosi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('264','19','呼伦贝尔','3','hulunbeier','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('265','19','通辽','3','tongliao','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('266','19','乌海','3','wuhai','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('267','19','乌兰察布市','3','wulanchabushi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('268','19','锡林郭勒盟','3','xilinguolemeng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('269','19','兴安盟','3','xinganmeng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('270','20','银川','3','yinchuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('271','20','固原','3','guyuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('272','20','石嘴山','3','shizuishan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('273','20','吴忠','3','wuzhong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('274','20','中卫','3','zhongwei','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('275','21','西宁','3','xining','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('276','21','果洛','3','guoluo','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('277','21','海北','3','haibei','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('278','21','海东','3','haidong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('279','21','海南','3','hainan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('280','21','海西','3','haixi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('281','21','黄南','3','huangnan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('282','21','玉树','3','yushu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('283','22','济南','3','jinan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('284','22','青岛','3','qingdao','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('285','22','滨州','3','binzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('286','22','德州','3','dezhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('287','22','东营','3','dongying','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('288','22','菏泽','3','heze','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('289','22','济宁','3','jining','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('290','22','莱芜','3','laiwu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('291','22','聊城','3','liaocheng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('292','22','临沂','3','linyi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('293','22','日照','3','rizhao','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('294','22','泰安','3','taian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('295','22','威海','3','weihai','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('296','22','潍坊','3','weifang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('297','22','烟台','3','yantai','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('298','22','枣庄','3','zaozhuang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('299','22','淄博','3','zibo','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('300','23','太原','3','taiyuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('301','23','长治','3','changzhi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('302','23','大同','3','datong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('303','23','晋城','3','jincheng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('304','23','晋中','3','jinzhong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('305','23','临汾','3','linfen','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('306','23','吕梁','3','lvliang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('307','23','朔州','3','shuozhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('308','23','忻州','3','xinzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('309','23','阳泉','3','yangquan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('310','23','运城','3','yuncheng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('311','24','西安','3','xian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('312','24','安康','3','ankang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('313','24','宝鸡','3','baoji','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('314','24','汉中','3','hanzhong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('315','24','商洛','3','shangluo','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('316','24','铜川','3','tongchuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('317','24','渭南','3','weinan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('318','24','咸阳','3','xianyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('319','24','延安','3','yanan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('320','24','榆林','3','yulin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('321','25','上海','2','shanghai','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('322','26','成都','3','chengdu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('323','26','绵阳','3','mianyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('324','26','阿坝','3','aba','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('325','26','巴中','3','bazhong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('326','26','达州','3','dazhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('327','26','德阳','3','deyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('328','26','甘孜','3','ganzi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('329','26','广安','3','guangan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('330','26','广元','3','guangyuan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('331','26','乐山','3','leshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('332','26','凉山','3','liangshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('333','26','眉山','3','meishan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('334','26','南充','3','nanchong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('335','26','内江','3','neijiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('336','26','攀枝花','3','panzhihua','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('337','26','遂宁','3','suining','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('338','26','雅安','3','yaan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('339','26','宜宾','3','yibin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('340','26','资阳','3','ziyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('341','26','自贡','3','zigong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('342','26','泸州','3','zhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('343','27','天津','2','tianjin','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('344','28','拉萨','3','lasa','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('345','28','阿里','3','ali','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('346','28','昌都','3','changdu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('347','28','林芝','3','linzhi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('348','28','那曲','3','naqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('349','28','日喀则','3','rikaze','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('350','28','山南','3','shannan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('351','29','乌鲁木齐','3','wulumuqi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('352','29','阿克苏','3','akesu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('353','29','阿拉尔','3','alaer','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('354','29','巴音郭楞','3','bayinguoleng','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('355','29','博尔塔拉','3','boertala','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('356','29','昌吉','3','changji','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('357','29','哈密','3','hami','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('358','29','和田','3','hetian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('359','29','喀什','3','kashi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('360','29','克拉玛依','3','kelamayi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('361','29','克孜勒苏','3','kezilesu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('362','29','石河子','3','shihezi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('363','29','图木舒克','3','tumushuke','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('364','29','吐鲁番','3','tulufan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('365','29','五家渠','3','wujiaqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('366','29','伊犁','3','yili','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('367','30','昆明','3','kunming','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('368','30','怒江','3','nujiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('369','30','普洱','3','puer','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('370','30','丽江','3','lijiang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('371','30','保山','3','baoshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('372','30','楚雄','3','chuxiong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('373','30','大理','3','dali','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('374','30','德宏','3','dehong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('375','30','迪庆','3','diqing','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('376','30','红河','3','honghe','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('377','30','临沧','3','lincang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('378','30','曲靖','3','qujing','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('379','30','文山','3','wenshan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('380','30','西双版纳','3','xishuangbanna','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('381','30','玉溪','3','yuxi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('382','30','昭通','3','zhaotong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('383','31','杭州','3','hangzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('384','31','湖州','3','huzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('385','31','嘉兴','3','jiaxing','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('386','31','金华','3','jinhua','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('387','31','丽水','3','lishui','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('388','31','宁波','3','ningbo','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('389','31','绍兴','3','shaoxing','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('390','31','台州','3','taizhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('391','31','温州','3','wenzhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('392','31','舟山','3','zhoushan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('393','31','衢州','3','zhou','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('394','32','重庆','2','zhongqing','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('395','33','香港','2','xianggang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('396','34','澳门','2','aomen','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('397','35','台湾','2','taiwan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('500','52','东城区','3','dongchengqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('501','52','西城区','3','xichengqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('502','52','海淀区','3','haidianqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('503','52','朝阳区','3','chaoyangqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('504','52','崇文区','3','chongwenqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('505','52','宣武区','3','xuanwuqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('506','52','丰台区','3','fengtaiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('507','52','石景山区','3','shijingshanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('508','52','房山区','3','fangshanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('509','52','门头沟区','3','mentougouqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('510','52','通州区','3','tongzhouqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('511','52','顺义区','3','shunyiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('512','52','昌平区','3','changpingqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('513','52','怀柔区','3','huairouqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('514','52','平谷区','3','pingguqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('515','52','大兴区','3','daxingqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('516','52','密云县','3','miyunxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('517','52','延庆县','3','yanqingxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2703','321','长宁区','3','changningqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2704','321','闸北区','3','zhabeiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2705','321','闵行区','3','xingqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2706','321','徐汇区','3','xuhuiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2707','321','浦东新区','3','pudongxinqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2708','321','杨浦区','3','yangpuqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2709','321','普陀区','3','putuoqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2710','321','静安区','3','jinganqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2711','321','卢湾区','3','luwanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2712','321','虹口区','3','hongkouqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2713','321','黄浦区','3','huangpuqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2714','321','南汇区','3','nanhuiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2715','321','松江区','3','songjiangqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2716','321','嘉定区','3','jiadingqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2717','321','宝山区','3','baoshanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2718','321','青浦区','3','qingpuqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2719','321','金山区','3','jinshanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2720','321','奉贤区','3','fengxianqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2721','321','崇明县','3','chongmingxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2912','343','和平区','3','hepingqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2913','343','河西区','3','hexiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2914','343','南开区','3','nankaiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2915','343','河北区','3','hebeiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2916','343','河东区','3','hedongqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2917','343','红桥区','3','hongqiaoqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2918','343','东丽区','3','dongliqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2919','343','津南区','3','jinnanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2920','343','西青区','3','xiqingqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2921','343','北辰区','3','beichenqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2922','343','塘沽区','3','tangguqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2923','343','汉沽区','3','hanguqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2924','343','大港区','3','dagangqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2925','343','武清区','3','wuqingqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2926','343','宝坻区','3','baoqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2927','343','经济开发区','3','jingjikaifaqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2928','343','宁河县','3','ninghexian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2929','343','静海县','3','jinghaixian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('2930','343','蓟县','3','jixian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3325','394','合川区','3','hechuanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3326','394','江津区','3','jiangjinqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3327','394','南川区','3','nanchuanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3328','394','永川区','3','yongchuanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3329','394','南岸区','3','nananqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3330','394','渝北区','3','yubeiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3331','394','万盛区','3','wanshengqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3332','394','大渡口区','3','dadukouqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3333','394','万州区','3','wanzhouqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3334','394','北碚区','3','beiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3335','394','沙坪坝区','3','shapingbaqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3336','394','巴南区','3','bananqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3337','394','涪陵区','3','fulingqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3338','394','江北区','3','jiangbeiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3339','394','九龙坡区','3','jiulongpoqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3340','394','渝中区','3','yuzhongqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3341','394','黔江开发区','3','qianjiangkaifaqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3342','394','长寿区','3','changshouqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3343','394','双桥区','3','shuangqiaoqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3344','394','綦江县','3','jiangxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3345','394','潼南县','3','nanxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3346','394','铜梁县','3','tongliangxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3347','394','大足县','3','dazuxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3348','394','荣昌县','3','rongchangxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3349','394','璧山县','3','shanxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3350','394','垫江县','3','dianjiangxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3351','394','武隆县','3','wulongxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3352','394','丰都县','3','fengduxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3353','394','城口县','3','chengkouxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3354','394','梁平县','3','liangpingxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3355','394','开县','3','kaixian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3356','394','巫溪县','3','wuxixian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3357','394','巫山县','3','wushanxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3358','394','奉节县','3','fengjiexian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3359','394','云阳县','3','yunyangxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3360','394','忠县','3','zhongxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3361','394','石柱','3','shizhu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3362','394','彭水','3','pengshui','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3363','394','酉阳','3','youyang','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3364','394','秀山','3','xiushan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3365','395','沙田区','3','shatianqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3366','395','东区','3','dongqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3367','395','观塘区','3','guantangqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3368','395','黄大仙区','3','huangdaxianqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3369','395','九龙城区','3','jiulongchengqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3370','395','屯门区','3','tunmenqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3371','395','葵青区','3','kuiqingqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3372','395','元朗区','3','yuanlangqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3373','395','深水埗区','3','shenshui','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3374','395','西贡区','3','xigongqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3375','395','大埔区','3','dapuqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3376','395','湾仔区','3','wanziqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3377','395','油尖旺区','3','youjianwangqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3378','395','北区','3','beiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3379','395','南区','3','nanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3380','395','荃湾区','3','wanqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3381','395','中西区','3','zhongxiqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3382','395','离岛区','3','lidaoqu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3383','396','澳门','3','aomen','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3384','397','台北','3','taibei','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3385','397','高雄','3','gaoxiong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3386','397','基隆','3','jilong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3387','397','台中','3','taizhong','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3388','397','台南','3','tainan','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3389','397','新竹','3','xinzhu','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3390','397','嘉义','3','jiayi','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3391','397','宜兰县','3','yilanxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3392','397','桃园县','3','taoyuanxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3393','397','苗栗县','3','miaolixian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3394','397','彰化县','3','zhanghuaxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3395','397','南投县','3','nantouxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3396','397','云林县','3','yunlinxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3397','397','屏东县','3','pingdongxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3398','397','台东县','3','taidongxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3399','397','花莲县','3','hualianxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('3400','397','澎湖县','3','penghuxian','0');
INSERT INTO `%DB_PREFIX%region_conf` VALUES ('1','0','全国','1','quanguo','0');
