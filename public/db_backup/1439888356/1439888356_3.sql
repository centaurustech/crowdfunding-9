-- fanwe SQL Dump Program
-- Microsoft-IIS/6.0
-- 
-- DATE : 2015-08-19 00:59:18
-- MYSQL SERVER VERSION : 5.5.34
-- PHP VERSION : isapi
-- Vol : 3


DROP TABLE IF EXISTS `%DB_PREFIX%role`;
CREATE TABLE `%DB_PREFIX%role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%role` VALUES ('4','管理员','1','0');
INSERT INTO `%DB_PREFIX%role` VALUES ('5','信息发布','1','1');
DROP TABLE IF EXISTS `%DB_PREFIX%role_access`;
CREATE TABLE `%DB_PREFIX%role_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%role_access` VALUES ('87','5','0','133');
INSERT INTO `%DB_PREFIX%role_access` VALUES ('88','5','0','134');
INSERT INTO `%DB_PREFIX%role_access` VALUES ('89','5','0','92');
INSERT INTO `%DB_PREFIX%role_access` VALUES ('90','5','0','118');
INSERT INTO `%DB_PREFIX%role_access` VALUES ('91','5','0','117');
INSERT INTO `%DB_PREFIX%role_access` VALUES ('92','5','0','124');
INSERT INTO `%DB_PREFIX%role_access` VALUES ('93','5','0','132');
INSERT INTO `%DB_PREFIX%role_access` VALUES ('94','5','0','123');
INSERT INTO `%DB_PREFIX%role_access` VALUES ('95','5','0','127');
INSERT INTO `%DB_PREFIX%role_access` VALUES ('96','5','0','128');
DROP TABLE IF EXISTS `%DB_PREFIX%role_group`;
CREATE TABLE `%DB_PREFIX%role_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `nav_id` int(11) NOT NULL COMMENT '后台导航分组ID',
  `is_delete` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%role_group` VALUES ('1','首页','1','0','1','1');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('5','系统设置','3','0','1','1');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('7','管理员','3','0','1','2');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('8','数据库操作','3','0','1','6');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('9','系统日志','3','0','1','7');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('19','菜单设置','11','0','1','17');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('28','邮件管理','10','0','1','26');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('29','短信管理','10','0','1','27');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('31','广告设置','11','0','1','29');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('33','队列管理','10','0','1','31');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('69','会员管理','5','0','1','31');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('70','会员整合','5','0','1','32');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('71','同步登录','5','0','1','33');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('72','项目管理','13','0','1','33');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('73','项目支持','13','0','1','34');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('74','项目点评','13','0','1','35');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('75','支付接口','14','0','1','1');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('76','付款记录','14','0','1','2');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('77','消息模板','10','0','1','1');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('78','提现记录','14','0','1','3');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('79','友情链接','11','0','1','36');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('80','文章管理','11','0','1','37');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('81','文章分类管理','11','0','1','38');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('82','地区管理','13','0','1','39');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('83','系统监测','3','0','1','83');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('62','手机端设置','3','0','1','1');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('84','问卷调查设置','11','0','1','84');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('85','会员邀请','5','0','1','31');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('86','回报项目统计','15','0','1','86');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('87','股权项目统计','15','0','1','87');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('88','平台统计','15','0','1','88');
INSERT INTO `%DB_PREFIX%role_group` VALUES ('89','留言列表','5','0','1','89');
DROP TABLE IF EXISTS `%DB_PREFIX%role_module`;
CREATE TABLE `%DB_PREFIX%role_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%role_module` VALUES ('5','Role','权限组别','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('6','Admin','管理员','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('12','Conf','系统配置','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('13','Database','数据库','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('15','Log','系统日志','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('19','File','文件管理','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('58','Index','首页','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('36','Nav','导航菜单','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('47','MailServer','邮件服务器','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('48','Sms','短信接口','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('53','Adv','广告模块','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('56','DealMsgList','业务群发队列','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('92','Cache','缓存处理','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('113','User','会员管理','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('114','MsgTemplate','消息模板管理','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('115','Integrate','会员整合','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('116','ApiLogin','同步登录','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('117','DealCate','项目分类','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('118','Deal','项目管理','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('119','Payment','支付接口','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('120','IndexImage','轮播广告图','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('121','Help','站点帮助','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('122','Faq','常见问题','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('123','DealOrder','项目支持','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('124','DealComment','项目点评','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('125','PaymentNotice','付款记录','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('126','UserRefund','用户提现','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('127','PromoteMsg','推广模块','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('128','PromoteMsgList','推广队列','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('129','Link','友情链接','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('130','LinkGroup','友情链接分组','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('131','UserLevel','会员等级','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('132','DealLevel','项目等级','0','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('133','Article','文章','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('134','ArticleCate','文章分类','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('135','RegionConf','地区','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('136','SqlCheck','系统监测','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('93','MAdv','手机端广告','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('137','UserInvestor','投资人申请管理','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('138','Bank','提现银行设置','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('139','Vote','问卷调查','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('141','Collocation','资金托管','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('140','UserCarry','提现手续费','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('142','Referrals','会员邀请','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('143','Statistics','统计','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('144','Message','留言列表','1','0');
INSERT INTO `%DB_PREFIX%role_module` VALUES ('145','MessageCate','留言分类列表','1','0');
DROP TABLE IF EXISTS `%DB_PREFIX%role_nav`;
CREATE TABLE `%DB_PREFIX%role_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%role_nav` VALUES ('1','首页','0','1','1');
INSERT INTO `%DB_PREFIX%role_nav` VALUES ('3','系统设置','0','1','10');
INSERT INTO `%DB_PREFIX%role_nav` VALUES ('5','会员管理','0','1','3');
INSERT INTO `%DB_PREFIX%role_nav` VALUES ('10','短信邮件','0','1','7');
INSERT INTO `%DB_PREFIX%role_nav` VALUES ('13','项目管理','0','1','4');
INSERT INTO `%DB_PREFIX%role_nav` VALUES ('14','支付管理','0','1','5');
INSERT INTO `%DB_PREFIX%role_nav` VALUES ('11','前端设置','0','1','6');
INSERT INTO `%DB_PREFIX%role_nav` VALUES ('15','统计模块','0','1','8');
DROP TABLE IF EXISTS `%DB_PREFIX%role_node`;
CREATE TABLE `%DB_PREFIX%role_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `group_id` int(11) NOT NULL COMMENT '后台分组菜单分组ID',
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6888 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%role_node` VALUES ('334','main','首页','1','0','1','58');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('11','index','管理员分组列表','1','0','7','5');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('13','trash','管理员分组回收站','1','0','7','5');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('14','index','管理员列表','1','0','7','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('15','trash','管理员回收站','1','0','7','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('16','index','系统配置','1','0','5','12');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('17','index','数据库备份列表','1','0','8','13');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('18','sql','SQL操作','1','0','8','13');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('19','index','系统日志列表','1','0','9','15');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('24','do_upload','编辑器图片上传','1','0','0','19');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('43','index','导航菜单列表','1','0','19','36');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('57','index','邮件服务器列表','1','0','28','47');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('58','index','短信接口列表','1','0','29','48');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('63','index','广告列表','1','0','31','53');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('66','index','业务队列列表','1','0','33','56');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('68','add','添加页面','1','0','0','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('69','edit','编辑页面','1','0','0','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('70','set_effect','设置生效','1','0','0','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('71','add','添加执行','1','0','0','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('72','update','编辑执行','1','0','0','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('73','delete','删除','1','0','0','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('74','restore','恢复','1','0','0','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('75','foreverdelete','永久删除','1','0','0','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('76','set_default','设置默认管理员','1','0','0','6');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('77','add','添加页面','1','0','0','53');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('78','edit','编辑页面','1','0','0','53');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('79','update','编辑执行','1','0','0','53');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('80','foreverdelete','永久删除','1','0','0','53');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('81','set_effect','设置生效','1','0','0','53');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('99','update','更新配置','1','0','0','12');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('100','dump','备份数据','1','0','0','13');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('101','delete','删除备份','1','0','0','13');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('102','restore','恢复备份','1','0','0','13');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('103','load_file','读取页面','1','0','0','53');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('104','load_adv_id','读取广告位','1','0','0','53');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('105','execute','执行SQL语句','1','0','0','13');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('147','show_content','显示内容','1','0','0','56');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('148','send','手动发送','1','0','0','56');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('149','foreverdelete','永久删除','1','0','0','56');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('181','do_upload_img','图片控件上传','1','0','0','19');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('182','deleteImg','删除图片','1','0','0','19');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('198','foreverdelete','永久删除','1','0','0','15');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('205','add','添加页面','1','0','0','47');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('206','insert','添加执行','1','0','0','47');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('207','edit','编辑页面','1','0','0','47');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('208','update','编辑执行','1','0','0','47');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('209','set_effect','设置生效','1','0','0','47');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('210','foreverdelete','永久删除','1','0','0','47');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('211','send_demo','发送测试邮件','1','0','0','47');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('229','edit','编辑页面','1','0','0','36');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('230','update','编辑执行','1','0','0','36');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('231','set_effect','设置生效','1','0','0','36');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('232','set_sort','排序','1','0','0','36');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('257','add','添加页面','1','0','0','5');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('258','insert','添加执行','1','0','0','5');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('259','edit','编辑页面','1','0','0','5');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('260','update','编辑执行','1','0','0','5');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('261','set_effect','设置生效','1','0','0','5');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('262','delete','删除','1','0','0','5');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('263','restore','恢复','1','0','0','5');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('264','foreverdelete','永久删除','1','0','0','5');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('265','insert','安装页面','1','0','0','48');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('266','insert','安装保存','1','0','0','48');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('267','edit','编辑页面','1','0','0','48');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('268','update','编辑执行','1','0','0','48');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('269','uninstall','卸载','1','0','0','48');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('270','set_effect','设置生效','1','0','0','48');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('271','send_demo','发送测试短信','1','0','0','48');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('474','index','缓存处理','1','0','0','92');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('475','clear_parse_file','清空脚本样式缓存','1','0','0','92');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('477','clear_data','清空数据缓存','1','0','0','92');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('480','syn_data','同步数据','1','0','0','92');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('481','clear_image','清空图片缓存','1','0','0','92');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('482','clear_admin','清空后台缓存','1','0','0','92');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('605','index','消息模板','1','0','77','114');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('606','update','更新模板','1','0','0','114');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('607','index','会员列表','1','0','69','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('608','add','添加会员','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('609','insert','添提执行','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('610','edit','编辑会员','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('611','update','编辑执行','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('612','delete','删除会员','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('613','modify_account','会员资金变更','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('614','account_detail','帐户日志','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('615','foreverdelete_account_detail','删除帐户日志','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('616','consignee','配送地址','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('617','foreverdelete_consignee','删除配送地址','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('618','weibo','微博列表','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('619','foreverdelete_weibo','删除微博','1','0','0','113');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('620','index','会员整合','1','0','70','115');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('621','save','执行整合','1','0','0','115');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('622','uninstall','卸载整合','1','0','0','115');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('623','index','同步登录接口','1','0','71','116');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('624','insert','安装接口','1','0','0','116');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('625','update','更新配置','1','0','0','116');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('626','uninstall','卸载接口','1','0','0','116');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('627','index','分类列表','1','0','72','117');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('628','insert','添加分类','1','0','0','117');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('629','update','更新分类','1','0','0','117');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('630','foreverdelete','删除分类','1','0','0','117');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('631','online_index','上线项目列表','1','0','72','118');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('632','submit_index','未审核项目','1','0','72','118');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('633','index','支付接口列表','1','0','75','119');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('634','insert','安装支付接口','1','0','0','119');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('635','update','更新支付接口','1','0','0','119');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('636','uninstall','卸载接口','1','0','0','119');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('637','index','轮播广告设置','1','0','5','120');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('638','insert','添加广告','1','0','0','120');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('639','update','修改广告','1','0','0','120');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('640','foreverdelete','删除广告','1','0','0','120');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('641','delete_index','回收站','1','0','72','118');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('642','index','帮助列表','1','0','5','121');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('643','insert','添加帮助','1','0','0','121');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('644','update','修改帮助','1','0','0','121');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('645','foreverdelete','删除帮助','1','0','0','121');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('646','index','常见问题','1','0','5','122');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('647','insert','添加问题','1','0','0','122');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('648','update','更新问题','1','0','0','122');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('649','foreverdelete','删除问题','1','0','0','122');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('650','pay_log','筹款发放','1','0','0','118');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('651','save_pay_log','发放','1','0','0','118');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('652','del_pay_log','删除发放','1','0','0','118');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('653','deal_log','项目日志','1','0','0','118');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('654','del_deal_log','删除日志','1','0','0','118');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('655','batch_refund','批量退款','1','0','0','118');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('656','index','项目支持','1','0','73','123');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('657','view','查看详情','1','0','0','123');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('658','refund','项目退款','1','0','0','123');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('659','delete','删除支持','1','0','0','123');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('660','incharge','项目收款','1','0','0','123');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('661','index','项目点评','1','0','74','124');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('662','index','付款记录','1','0','76','125');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('663','delete','删除记录','1','0','0','125');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('664','index','提现记录','1','0','78','126');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('665','delete','删除记录','1','0','0','126');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('666','confirm','确认提现','1','0','0','126');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('667','mail_index','邮件列表','1','0','28','127');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('668','sms_index','短信列表','1','0','29','127');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('669','insert_mail','新增邮件','1','0','0','127');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('670','insert_sms','新增短信','1','0','0','127');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('671','update_mail','更新邮件','1','0','0','127');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('672','update_sms','更新短信','1','0','0','127');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('673','foreverdelete','删除','1','0','0','127');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('674','index','推广队列列表','1','0','33','128');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('675','send','发送','1','0','0','128');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('676','foreverdelete','删除','1','0','0','128');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('677','index','友情链接列表','1','0','79','129');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('678','insert','添加链接','1','0','0','129');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('679','update','更新链接','1','0','0','129');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('680','index','友情链接分组列表','1','0','79','130');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('681','index','会员等级','1','0','69','131');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('682','index','项目等级','0','0','72','132');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('684','index','文章列表','1','0','80','133');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('685','trash','文章回收站','1','0','80','133');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('686','index','文章分类列表','1','0','81','134');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('687','trash','文章分类回收站','1','0','81','134');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('688','index','地区列表','1','0','82','135');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('689','index','系统监测列表','1','0','83','136');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('483','mobile','手机端配置','1','0','62','12');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('484','index','手机端广告列表','1','0','62','93');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('485','savemobile','保存手机端配置','1','0','0','12');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6867','index','投资申请列表','1','0','69','137');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6868','index','提现银行设置','1','0','5','138');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6869','index','问卷调查列表','1','0','84','139');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6871','index','资金托管','1','0','75','141');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('692','index','会员银行列表','1','0','0','139');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('693','edit','编辑页面','1','0','0','139');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('694','update','编辑执行','1','0','0','139');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('695','add','增加页面','1','0','0','139');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('696','insert','增加执行','1','0','0','139');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('697','delete','删除','1','0','0','139');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6870','config','提现手续费','1','0','5','140');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('698','sharefee_list','查看分红列表','1','0','0','118');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('700','referrals_count','会员邀请统计','1','0','85','142');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('701','index','会员邀请返利列表','1','0','85','142');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6872','project','项目统计','1','0','86','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6874','usernum_total','人数统计','1','0','86','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6875','investe_total','项目统计','1','0','87','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6876','money_total','金额统计','1','0','86','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6877','hasback_total','回报统计','1','0','86','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6878','overdue_total','逾期统计','1','0','86','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6879','investors_total','投资人统计','1','0','87','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6880','financing_amount_total','融资金额','1','0','87','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6881','breach_convention_total','违约统计','1','0','87','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6882','money_inchange_total','充值统计','1','0','88','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6883','money_carry_bank_total','提现统计','1','0','88','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6884','user_total','用户统计','1','0','88','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6885','site_costs_total','网站费用统计','1','0','88','143');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6886','index','留言分类列表','1','0','89','145');
INSERT INTO `%DB_PREFIX%role_node` VALUES ('6887','index','留言列表','1','0','89','144');
DROP TABLE IF EXISTS `%DB_PREFIX%sms`;
CREATE TABLE `%DB_PREFIX%sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `server_url` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%sms` VALUES ('10','短信宝增值平台 (<a href=\'http://www.smsbao.com/reg?r=5001\' target=\'_blank\'><font color=\'red\'>还没账号？点击这免费注册</font></a>)','','smsbao','http://www.smsbao.com/sms','','','N;','1');
DROP TABLE IF EXISTS `%DB_PREFIX%sql_check`;
CREATE TABLE `%DB_PREFIX%sql_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `module_action` varchar(255) NOT NULL,
  `para` varchar(255) NOT NULL COMMENT '参数',
  `module_action_para` varchar(255) NOT NULL,
  `sql_num` int(11) NOT NULL,
  `sql_str` text NOT NULL,
  `query_time` float(11,6) NOT NULL DEFAULT '0.000000' COMMENT 'SQL运行时间',
  `run_time` float(11,6) NOT NULL DEFAULT '0.000000' COMMENT '运行时间',
  `memory_usage` float(11,4) NOT NULL DEFAULT '0.0000' COMMENT '内存占用情况',
  `gzip_on` tinyint(1) NOT NULL COMMENT '是否开启gzip_on',
  `url` varchar(255) NOT NULL COMMENT '请求地址',
  `file_name` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=279312 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279256','deals','index','deals-index','type-id','deals-index-type-id','11','a:12:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439763943 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:3;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:4;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:5;s:98:\"select province from fanwe_deal where type=1 and is_effect =1 group by province  order by sort asc\";i:6;s:152:\"select rc.* from fanwe_region_conf as rc where rc.name in (select province from fanwe_deal) or  rc.name in (select city from fanwe_deal) or rc.is_hot=1 \";i:7;s:167:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (8) and d.type=1 \";i:8;s:31:\"select * from fanwe_deal_level \";i:9;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_top\' and is_effect = 1\";i:10;s:88:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_bottom\' and is_effect = 1\";i:11;s:100:\"select sql_num from fanwe_sql_check where module_action_para=\'deals-index-type-id\' order by id desc \";}','0.010474','0.104115','5.3500','1','http://ext4.ihancc.com/deals/id-8-type-1.html','index.php','1439763943');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279257','settings','index','settings-index','','settings-index','7','a:8:{i:0;s:56:\"select * from fanwe_user where id = 20 and is_effect = 1\";i:1;s:45:\"select level from fanwe_user_level where id=0\";i:2;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439764327 - create_time > 259200\";i:3;s:38:\"select count(*) from fanwe_deal_notify\";i:4;s:35:\"select code,val from fanwe_m_config\";i:5;s:47:\"select * from fanwe_deal_cate order by sort asc\";i:6;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:7;s:95:\"select sql_num from fanwe_sql_check where module_action_para=\'settings-index\' order by id desc \";}','0.002194','0.064038','4.4900','1','http://ext4.ihancc.com/wap/index.php?ctl=settings','index.php','1439764327');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279258','settings','modify','settings-modify','','settings-modify','10','a:11:{i:0;s:56:\"select * from fanwe_user where id = 20 and is_effect = 1\";i:1;s:45:\"select level from fanwe_user_level where id=0\";i:2;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439764331 - create_time > 259200\";i:3;s:38:\"select count(*) from fanwe_deal_notify\";i:4;s:35:\"select code,val from fanwe_m_config\";i:5;s:47:\"select * from fanwe_deal_cate order by sort asc\";i:6;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:7;s:70:\"select * from fanwe_region_conf where region_level = 2 order by py asc\";i:8;s:62:\"select * from fanwe_region_conf where pid = 11 order by py asc\";i:9;s:49:\"select * from fanwe_user_weibo where user_id = 20\";i:10;s:96:\"select sql_num from fanwe_sql_check where module_action_para=\'settings-modify\' order by id desc \";}','0.002683','0.104287','4.6800','1','http://ext4.ihancc.com/wap/index.php?ctl=settings&act=modify','index.php','1439764331');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279259','settings','consignee','settings-consignee','','settings-consignee','8','a:9:{i:0;s:56:\"select * from fanwe_user where id = 20 and is_effect = 1\";i:1;s:45:\"select level from fanwe_user_level where id=0\";i:2;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439764334 - create_time > 259200\";i:3;s:38:\"select count(*) from fanwe_deal_notify\";i:4;s:35:\"select code,val from fanwe_m_config\";i:5;s:47:\"select * from fanwe_deal_cate order by sort asc\";i:6;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:7;s:53:\"select * from fanwe_user_consignee where user_id = 20\";i:8;s:99:\"select sql_num from fanwe_sql_check where module_action_para=\'settings-consignee\' order by id desc \";}','0.002417','0.047022','4.4600','1','http://ext4.ihancc.com/wap/index.php?ctl=settings&act=consignee','index.php','1439764334');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279260','settings','add_consignee','settings-add_consignee','','settings-add_consignee','8','a:9:{i:0;s:56:\"select * from fanwe_user where id = 20 and is_effect = 1\";i:1;s:45:\"select level from fanwe_user_level where id=0\";i:2;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439764336 - create_time > 259200\";i:3;s:38:\"select count(*) from fanwe_deal_notify\";i:4;s:35:\"select code,val from fanwe_m_config\";i:5;s:47:\"select * from fanwe_deal_cate order by sort asc\";i:6;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:7;s:70:\"select * from fanwe_region_conf where region_level = 2 order by py asc\";i:8;s:103:\"select sql_num from fanwe_sql_check where module_action_para=\'settings-add_consignee\' order by id desc \";}','0.002070','0.048058','4.5000','1','http://ext4.ihancc.com/wap/index.php?ctl=settings&act=add_consignee','index.php','1439764336');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279261','settings','add_consignee','settings-add_consignee','id','settings-add_consignee-id','10','a:11:{i:0;s:56:\"select * from fanwe_user where id = 20 and is_effect = 1\";i:1;s:45:\"select level from fanwe_user_level where id=0\";i:2;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439764358 - create_time > 259200\";i:3;s:38:\"select count(*) from fanwe_deal_notify\";i:4;s:35:\"select code,val from fanwe_m_config\";i:5;s:47:\"select * from fanwe_deal_cate order by sort asc\";i:6;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:7;s:65:\"select * from fanwe_user_consignee where id = 38 and user_id = 20\";i:8;s:70:\"select * from fanwe_region_conf where region_level = 2 order by py asc\";i:9;s:63:\"select * from fanwe_region_conf where pid = 396 order by py asc\";i:10;s:106:\"select sql_num from fanwe_sql_check where module_action_para=\'settings-add_consignee-id\' order by id desc \";}','0.002717','0.048017','4.5000','1','http://ext4.ihancc.com/wap/index.php?ctl=settings&act=add_consignee&id=38','index.php','1439764358');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279262','account','point','account-point','','account-point','9','a:10:{i:0;s:56:\"select * from fanwe_user where id = 20 and is_effect = 1\";i:1;s:45:\"select level from fanwe_user_level where id=0\";i:2;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439764438 - create_time > 259200\";i:3;s:38:\"select count(*) from fanwe_deal_notify\";i:4;s:35:\"select code,val from fanwe_m_config\";i:5;s:47:\"select * from fanwe_deal_cate order by sort asc\";i:6;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:7;s:104:\"select * from fanwe_user_log where user_id = 20 and point <>0  order by log_time desc,id desc limit 0,10\";i:8;s:68:\"select count(*) from fanwe_user_log where user_id = 20 and point <>0\";i:9;s:94:\"select sql_num from fanwe_sql_check where module_action_para=\'account-point\' order by id desc \";}','0.002093','0.054553','4.9100','1','http://ext4.ihancc.com/wap/index.php?ctl=account&act=point','index.php','1439764438');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279263','user','login','user-login','','user-login','5','a:6:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439764438 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:35:\"select code,val from fanwe_m_config\";i:3;s:47:\"select * from fanwe_deal_cate order by sort asc\";i:4;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:5;s:91:\"select sql_num from fanwe_sql_check where module_action_para=\'user-login\' order by id desc \";}','0.001040','0.045119','4.3600','1','http://ext4.ihancc.com/wap/index.php?ctl=user&act=login','index.php','1439764438');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279264','index','index','index-index','','index-index','47','a:48:{i:0;s:42:\"select * from fanwe_help order by sort asc\";i:1;s:48:\"select * from fanwe_message_cate order by id asc\";i:2;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439884059 - create_time > 259200\";i:3;s:38:\"select count(*) from fanwe_deal_notify\";i:4;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:5;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:6;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:7;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:8;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:9;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_S\'\";i:10;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:11;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439884059 and d.end_time!=0\";i:12;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:13;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:14;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439884059 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:15;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:16;s:31:\"select * from fanwe_deal_level \";i:17;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:18;s:45:\"select name from fanwe_deal_cate where id = 9\";i:19;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:20;s:31:\"select * from fanwe_deal_level \";i:21;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:22;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:23;s:31:\"select * from fanwe_deal_level \";i:24;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:25;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:26;s:31:\"select * from fanwe_deal_level \";i:27;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:28;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:29;s:31:\"select * from fanwe_deal_level \";i:30;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:31;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:32;s:31:\"select * from fanwe_deal_level \";i:33;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:34;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:35;s:31:\"select * from fanwe_deal_level \";i:36;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:37;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:38;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:39;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:40;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:41;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:42;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:43;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:44;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:45;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:46;s:29:\"select * from fanwe_api_login\";i:47;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.018229','0.135365','5.2900','1','http://zc3.vitakung.com/index.php','index.php','1439884059');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279265','index','index','index-index','','index-index','41','a:42:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439884067 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:4;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:5;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:6;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439884067 and d.end_time!=0\";i:7;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:8;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:9;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439884067 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:10;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:11;s:31:\"select * from fanwe_deal_level \";i:12;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:13;s:45:\"select name from fanwe_deal_cate where id = 9\";i:14;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:15;s:31:\"select * from fanwe_deal_level \";i:16;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:17;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:18;s:31:\"select * from fanwe_deal_level \";i:19;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:20;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:21;s:31:\"select * from fanwe_deal_level \";i:22;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:23;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:24;s:31:\"select * from fanwe_deal_level \";i:25;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:26;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:27;s:31:\"select * from fanwe_deal_level \";i:28;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:29;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:30;s:31:\"select * from fanwe_deal_level \";i:31;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:32;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:33;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:34;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:35;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:36;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:37;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:38;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:39;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:40;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:41;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.004905','0.105846','5.3000','1','http://zc3.vitakung.com/index.php','index.php','1439884067');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279266','index','index','index-index','','index-index','56','a:57:{i:0;s:31:\"select * from fanwe_weixin_conf\";i:1;s:42:\"select * from fanwe_help order by sort asc\";i:2;s:48:\"select * from fanwe_message_cate order by id asc\";i:3;s:49:\"select * from fanwe_user_level order by point asc\";i:4;s:47:\"select * from fanwe_deal_cate where is_delete=0\";i:5;s:88:\"select * from fanwe_article_cate  where is_effect=1 and  is_delete=0  order by  sort asc\";i:6;s:251:\"select ac.*,fa.num from fanwe_article_cate as ac left join (SELECT count(*) as num,cate_id from fanwe_article where is_effect=1 and is_delete=0 GROUP BY cate_id) as fa on fa.cate_id=ac.id  where ac.is_effect=1 and  ac.is_delete=0  order by ac.sort asc\";i:7;s:98:\"select id,cate_id,title from fanwe_article  where is_effect=1 and  is_delete=0  order by  sort asc\";i:8;s:61:\"select * from fanwe_nav where is_effect = 1 order by sort asc\";i:9;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439884090 - create_time > 259200\";i:10;s:38:\"select count(*) from fanwe_deal_notify\";i:11;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:12;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:13;s:81:\"select * from fanwe_article where is_effect=1 and is_delete=0 order by sort desc \";i:14;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:15;s:50:\"select * from fanwe_index_image order by sort desc\";i:16;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:17;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:18;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_S\'\";i:19;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:20;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439884090 and d.end_time!=0\";i:21;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:22;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:23;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439884090 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:24;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:25;s:31:\"select * from fanwe_deal_level \";i:26;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:27;s:45:\"select name from fanwe_deal_cate where id = 9\";i:28;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:29;s:31:\"select * from fanwe_deal_level \";i:30;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:31;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:32;s:31:\"select * from fanwe_deal_level \";i:33;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:34;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:35;s:31:\"select * from fanwe_deal_level \";i:36;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:37;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:38;s:31:\"select * from fanwe_deal_level \";i:39;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:40;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:41;s:31:\"select * from fanwe_deal_level \";i:42;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:43;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:44;s:31:\"select * from fanwe_deal_level \";i:45;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:46;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:47;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:48;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:49;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:50;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:51;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:52;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:53;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:54;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:55;s:29:\"select * from fanwe_api_login\";i:56;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.015807','2.581711','6.4800','1','http://zc3.vitakung.com/index.php','index.php','1439884093');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279267','deals','index','deals-index','type','deals-index-type','12','a:13:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439884100 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:4;s:98:\"select province from fanwe_deal where type=1 and is_effect =1 group by province  order by sort asc\";i:5;s:152:\"select rc.* from fanwe_region_conf as rc where rc.name in (select province from fanwe_deal) or  rc.name in (select city from fanwe_deal) or rc.is_hot=1 \";i:6;s:186:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=1 \";i:7;s:31:\"select * from fanwe_deal_level \";i:8;s:222:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=1  ORDER BY   d.begin_time desc  LIMIT 0,4\";i:9;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_top\' and is_effect = 1\";i:10;s:88:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_bottom\' and is_effect = 1\";i:11;s:29:\"select * from fanwe_api_login\";i:12;s:97:\"select sql_num from fanwe_sql_check where module_action_para=\'deals-index-type\' order by id desc \";}','0.010044','0.135070','5.3500','1','http://zc3.vitakung.com/index.php?rewrite_param=deals/type-1','index.php','1439884100');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279268','deals','index','deals-index','','deals-index','10','a:11:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439884103 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:98:\"select province from fanwe_deal where type=0 and is_effect =1 group by province  order by sort asc\";i:4;s:152:\"select rc.* from fanwe_region_conf as rc where rc.name in (select province from fanwe_deal) or  rc.name in (select city from fanwe_deal) or rc.is_hot=1 \";i:5;s:186:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=0 \";i:6;s:31:\"select * from fanwe_deal_level \";i:7;s:222:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=0  ORDER BY   d.begin_time desc  LIMIT 0,4\";i:8;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_top\' and is_effect = 1\";i:9;s:88:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_bottom\' and is_effect = 1\";i:10;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'deals-index\' order by id desc \";}','0.002484','0.105009','5.2100','1','http://zc3.vitakung.com/index.php?rewrite_param=deals','index.php','1439884103');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279269','news','index','news-index','','news-index','8','a:9:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439884104 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:47:\"select * from fanwe_deal_cate order by sort asc\";i:4;s:167:\"select * from fanwe_deal where  1=1  and is_delete = 0 and is_effect = 1 and begin_time < 1439884104 and (end_time >1439884104 or end_time = 0) order by rand() limit 3\";i:5;s:129:\"select l.* from fanwe_deal_log as l left join fanwe_deal as d on d.id=l.deal_id where  1=1  order by l.create_time desc limit 0,5\";i:6;s:96:\"select count(*) from fanwe_deal_log as l left join fanwe_deal as d on d.id=l.deal_id where  1=1 \";i:7;s:84:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'news_top\' and is_effect = 1\";i:8;s:91:\"select sql_num from fanwe_sql_check where module_action_para=\'news-index\' order by id desc \";}','0.002787','0.218458','5.4200','1','http://zc3.vitakung.com/index.php?rewrite_param=news','index.php','1439884105');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279270','investor','invester_list','investor-invester_list','','investor-invester_list','13','a:14:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439884106 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:75:\"select province from fanwe_user group by province order by create_time desc\";i:4;s:70:\"select * from fanwe_region_conf where region_level = 2 order by py asc\";i:5;s:122:\"select * from fanwe_user where is_effect = 1  and (is_investor = 1 or is_investor = 2) order by create_time desc limit 0,8\";i:6;s:93:\"select count(*) from fanwe_user where is_effect = 1  and (is_investor = 1 or is_investor = 2)\";i:7;s:92:\"select * from fanwe_deal where is_success = 1 and is_effect = 1 order by support_count desc \";i:8;s:130:\"select * from fanwe_user where investor_status = 1 and is_effect = 1 and (is_investor = 1 or is_investor = 2) order by point desc \";i:9;s:136:\"select * from fanwe_user where investor_status = 1 and is_effect = 1 and (is_investor = 1 or is_investor = 2) order by update_time desc \";i:10;s:93:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'invester_list_top\' and is_effect = 1\";i:11;s:96:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'invester_list_bottom\' and is_effect = 1\";i:12;s:29:\"select * from fanwe_api_login\";i:13;s:103:\"select sql_num from fanwe_sql_check where module_action_para=\'investor-invester_list\' order by id desc \";}','0.003156','0.109286','5.2400','1','http://zc3.vitakung.com/index.php?rewrite_param=investor-invester_list','index.php','1439884106');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279271','home','index','home-index','id','home-index-id','6','a:7:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439884124 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:56:\"select * from fanwe_user where id = 21 and is_effect = 1\";i:4;s:49:\"select * from fanwe_user_weibo where user_id = 21\";i:5;s:97:\"select count(*) from fanwe_deal where  is_delete = 0 and is_effect = 1 and user_id = 21  and 1=1 \";i:6;s:94:\"select sql_num from fanwe_sql_check where module_action_para=\'home-index-id\' order by id desc \";}','0.001468','0.121278','5.2500','1','http://zc3.vitakung.com/index.php?rewrite_param=home/id-21','index.php','1439884124');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279272','index','index','index-index','','index-index','55','a:56:{i:0;s:42:\"select * from fanwe_help order by sort asc\";i:1;s:48:\"select * from fanwe_message_cate order by id asc\";i:2;s:49:\"select * from fanwe_user_level order by point asc\";i:3;s:47:\"select * from fanwe_deal_cate where is_delete=0\";i:4;s:88:\"select * from fanwe_article_cate  where is_effect=1 and  is_delete=0  order by  sort asc\";i:5;s:251:\"select ac.*,fa.num from fanwe_article_cate as ac left join (SELECT count(*) as num,cate_id from fanwe_article where is_effect=1 and is_delete=0 GROUP BY cate_id) as fa on fa.cate_id=ac.id  where ac.is_effect=1 and  ac.is_delete=0  order by ac.sort asc\";i:6;s:98:\"select id,cate_id,title from fanwe_article  where is_effect=1 and  is_delete=0  order by  sort asc\";i:7;s:61:\"select * from fanwe_nav where is_effect = 1 order by sort asc\";i:8;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439884816 - create_time > 259200\";i:9;s:38:\"select count(*) from fanwe_deal_notify\";i:10;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:11;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:12;s:81:\"select * from fanwe_article where is_effect=1 and is_delete=0 order by sort desc \";i:13;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:14;s:50:\"select * from fanwe_index_image order by sort desc\";i:15;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:16;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:17;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_S\'\";i:18;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:19;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439884816 and d.end_time!=0\";i:20;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:21;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:22;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439884816 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:23;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:24;s:31:\"select * from fanwe_deal_level \";i:25;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:26;s:45:\"select name from fanwe_deal_cate where id = 9\";i:27;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:28;s:31:\"select * from fanwe_deal_level \";i:29;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:30;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:31;s:31:\"select * from fanwe_deal_level \";i:32;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:33;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:34;s:31:\"select * from fanwe_deal_level \";i:35;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:36;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:37;s:31:\"select * from fanwe_deal_level \";i:38;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:39;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:40;s:31:\"select * from fanwe_deal_level \";i:41;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:42;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:43;s:31:\"select * from fanwe_deal_level \";i:44;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:45;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:46;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:47;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:48;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:49;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:50;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:51;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:52;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:53;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:54;s:29:\"select * from fanwe_api_login\";i:55;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.006846','2.277447','6.4800','1','http://zc3.vitakung.com/index.php','index.php','1439884819');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279273','faq','index','faq-index','','faq-index','9','a:10:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885092 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:57:\"select distinct(`group`) from fanwe_faq order by sort asc\";i:4;s:70:\"select * from fanwe_faq where `group`=\'基本问题\' order by sort asc\";i:5;s:85:\"select * from fanwe_faq where `group`=\'项目发起人相关问题\' order by sort asc\";i:6;s:85:\"select * from fanwe_faq where `group`=\'项目支持者相关问题\' order by sort asc\";i:7;s:89:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'faq_index_top\' and is_effect = 1\";i:8;s:29:\"select * from fanwe_api_login\";i:9;s:90:\"select sql_num from fanwe_sql_check where module_action_para=\'faq-index\' order by id desc \";}','0.002746','0.138416','5.0600','1','http://zc3.vitakung.com/index.php?rewrite_param=faq','index.php','1439885093');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279274','faq','index','faq-index','','faq-index','3','a:4:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885096 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:90:\"select sql_num from fanwe_sql_check where module_action_para=\'faq-index\' order by id desc \";}','0.000340','0.082505','4.9200','1','http://zc3.vitakung.com/index.php?rewrite_param=faq','index.php','1439885096');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279275','article_cate','index','article_cate-index','','article_cate-index','5','a:6:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885098 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:243:\"SELECT a.*,c.type_id,c.title as cate_name from fanwe_article a LEFT JOIN fanwe_article_cate c on a.cate_id=c.id where 1=1 and a.is_delete=0 and a.is_effect=1 and c.is_effect=1 and c.type_id=0  order by a.sort desc,a.update_time desc limit 0,15\";i:4;s:169:\"select COUNT(a.id) from fanwe_article a LEFT JOIN fanwe_article_cate c on a.cate_id=c.id WHERE 1=1 and a.is_delete=0 and a.is_effect=1 and c.is_effect=1 and c.type_id=0 \";i:5;s:99:\"select sql_num from fanwe_sql_check where module_action_para=\'article_cate-index\' order by id desc \";}','0.001760','0.096152','5.0400','1','http://zc3.vitakung.com/index.php?ctl=article_cate','index.php','1439885098');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279276','news','index','news-index','','news-index','9','a:10:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885103 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:47:\"select * from fanwe_deal_cate order by sort asc\";i:4;s:167:\"select * from fanwe_deal where  1=1  and is_delete = 0 and is_effect = 1 and begin_time < 1439885103 and (end_time >1439885103 or end_time = 0) order by rand() limit 3\";i:5;s:129:\"select l.* from fanwe_deal_log as l left join fanwe_deal as d on d.id=l.deal_id where  1=1  order by l.create_time desc limit 0,5\";i:6;s:96:\"select count(*) from fanwe_deal_log as l left join fanwe_deal as d on d.id=l.deal_id where  1=1 \";i:7;s:84:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'news_top\' and is_effect = 1\";i:8;s:29:\"select * from fanwe_api_login\";i:9;s:91:\"select sql_num from fanwe_sql_check where module_action_para=\'news-index\' order by id desc \";}','0.002609','0.209838','5.4200','1','http://zc3.vitakung.com/index.php?rewrite_param=news','index.php','1439885103');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279277','deals','index','deals-index','','deals-index','11','a:12:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885104 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:4;s:98:\"select province from fanwe_deal where type=0 and is_effect =1 group by province  order by sort asc\";i:5;s:152:\"select rc.* from fanwe_region_conf as rc where rc.name in (select province from fanwe_deal) or  rc.name in (select city from fanwe_deal) or rc.is_hot=1 \";i:6;s:186:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=0 \";i:7;s:31:\"select * from fanwe_deal_level \";i:8;s:222:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=0  ORDER BY   d.begin_time desc  LIMIT 0,4\";i:9;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_top\' and is_effect = 1\";i:10;s:88:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_bottom\' and is_effect = 1\";i:11;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'deals-index\' order by id desc \";}','0.001155','0.127880','5.3400','1','http://zc3.vitakung.com/index.php?rewrite_param=deals','index.php','1439885104');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279278','deals','index','deals-index','type','deals-index-type','10','a:11:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885106 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:98:\"select province from fanwe_deal where type=1 and is_effect =1 group by province  order by sort asc\";i:4;s:152:\"select rc.* from fanwe_region_conf as rc where rc.name in (select province from fanwe_deal) or  rc.name in (select city from fanwe_deal) or rc.is_hot=1 \";i:5;s:186:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=1 \";i:6;s:31:\"select * from fanwe_deal_level \";i:7;s:222:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=1  ORDER BY   d.begin_time desc  LIMIT 0,4\";i:8;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_top\' and is_effect = 1\";i:9;s:88:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_bottom\' and is_effect = 1\";i:10;s:97:\"select sql_num from fanwe_sql_check where module_action_para=\'deals-index-type\' order by id desc \";}','0.001120','0.098343','5.2300','1','http://zc3.vitakung.com/index.php?rewrite_param=deals/type-1','index.php','1439885106');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279279','deals','index','deals-index','','deals-index','10','a:11:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885108 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:98:\"select province from fanwe_deal where type=0 and is_effect =1 group by province  order by sort asc\";i:4;s:152:\"select rc.* from fanwe_region_conf as rc where rc.name in (select province from fanwe_deal) or  rc.name in (select city from fanwe_deal) or rc.is_hot=1 \";i:5;s:186:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=0 \";i:6;s:31:\"select * from fanwe_deal_level \";i:7;s:222:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=0  ORDER BY   d.begin_time desc  LIMIT 0,4\";i:8;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_top\' and is_effect = 1\";i:9;s:88:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_bottom\' and is_effect = 1\";i:10;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'deals-index\' order by id desc \";}','0.001026','0.095381','5.2200','1','http://zc3.vitakung.com/index.php?rewrite_param=deals','index.php','1439885108');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279280','news','index','news-index','','news-index','7','a:8:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885154 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:167:\"select * from fanwe_deal where  1=1  and is_delete = 0 and is_effect = 1 and begin_time < 1439885154 and (end_time >1439885154 or end_time = 0) order by rand() limit 3\";i:4;s:129:\"select l.* from fanwe_deal_log as l left join fanwe_deal as d on d.id=l.deal_id where  1=1  order by l.create_time desc limit 0,5\";i:5;s:96:\"select count(*) from fanwe_deal_log as l left join fanwe_deal as d on d.id=l.deal_id where  1=1 \";i:6;s:84:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'news_top\' and is_effect = 1\";i:7;s:91:\"select sql_num from fanwe_sql_check where module_action_para=\'news-index\' order by id desc \";}','0.002402','0.096179','5.1300','1','http://zc3.vitakung.com/index.php?rewrite_param=news','index.php','1439885154');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279281','article_cate','index','article_cate-index','','article_cate-index','4','a:5:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885156 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:169:\"select COUNT(a.id) from fanwe_article a LEFT JOIN fanwe_article_cate c on a.cate_id=c.id WHERE 1=1 and a.is_delete=0 and a.is_effect=1 and c.is_effect=1 and c.type_id=0 \";i:4;s:99:\"select sql_num from fanwe_sql_check where module_action_para=\'article_cate-index\' order by id desc \";}','0.000449','0.087836','5.0400','1','http://zc3.vitakung.com/index.php?ctl=article_cate','index.php','1439885156');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279282','index','index','index-index','','index-index','41','a:42:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885159 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:4;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:5;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:6;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439885159 and d.end_time!=0\";i:7;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:8;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:9;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439885159 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:10;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:11;s:31:\"select * from fanwe_deal_level \";i:12;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:13;s:45:\"select name from fanwe_deal_cate where id = 9\";i:14;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:15;s:31:\"select * from fanwe_deal_level \";i:16;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:17;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:18;s:31:\"select * from fanwe_deal_level \";i:19;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:20;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:21;s:31:\"select * from fanwe_deal_level \";i:22;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:23;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:24;s:31:\"select * from fanwe_deal_level \";i:25;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:26;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:27;s:31:\"select * from fanwe_deal_level \";i:28;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:29;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:30;s:31:\"select * from fanwe_deal_level \";i:31;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:32;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:33;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:34;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:35;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:36;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:37;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:38;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:39;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:40;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:41;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.004921','0.105929','5.3600','1','http://zc3.vitakung.com/index.php?rewrite_param=index','index.php','1439885159');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279283','user','register','user-register','','user-register','3','a:4:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885166 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:94:\"select sql_num from fanwe_sql_check where module_action_para=\'user-register\' order by id desc \";}','0.000901','2.699292','5.3400','1','http://zc3.vitakung.com/index.php?rewrite_param=user-register','index.php','1439885169');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279284','user','register','user-register','','user-register','5','a:6:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885689 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:3;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:4;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:5;s:94:\"select sql_num from fanwe_sql_check where module_action_para=\'user-register\' order by id desc \";}','0.001064','0.088166','5.2100','1','http://zc3.vitakung.com/index.php?rewrite_param=user-register','index.php','1439885689');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279285','user','register','user-register','','user-register','3','a:4:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885696 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:94:\"select sql_num from fanwe_sql_check where module_action_para=\'user-register\' order by id desc \";}','0.000357','0.084609','5.2100','1','http://zc3.vitakung.com/index.php?rewrite_param=user-register','index.php','1439885696');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279286','ajax','weixin_login','ajax-weixin_login','fhash','ajax-weixin_login-fhash','3','a:4:{i:0;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:1;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:104:\"select sql_num from fanwe_sql_check where module_action_para=\'ajax-weixin_login-fhash\' order by id desc \";}','0.000484','0.074101','4.3800','1','http://zc3.vitakung.com/index.php?ctl=ajax&act=weixin_login&fhash=rszeKADwhCIwPUWwdlFAyYzFFUYIlTsqjbCpZHoQALbyPQHORH','index.php','1439885733');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279287','ajax','weixin_login','ajax-weixin_login','fhash','ajax-weixin_login-fhash','1','a:2:{i:0;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:1;s:104:\"select sql_num from fanwe_sql_check where module_action_para=\'ajax-weixin_login-fhash\' order by id desc \";}','0.000075','0.069093','4.3800','1','http://zc3.vitakung.com/index.php?ctl=ajax&act=weixin_login&fhash=rszeKADwhCIwPUWwdlFAyYzFFUYIlTsqjbCpZHoQALbyPQHORH','index.php','1439885737');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279288','help','term','help-term','','help-term','4','a:5:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439885748 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:54:\"select * from fanwe_help where type = \'term\' or id = 0\";i:4;s:90:\"select sql_num from fanwe_sql_check where module_action_para=\'help-term\' order by id desc \";}','0.002555','0.161656','4.8800','1','http://zc3.vitakung.com/index.php?rewrite_param=help-term','index.php','1439885748');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279289','index','index','index-index','','index-index','55','a:56:{i:0;s:42:\"select * from fanwe_help order by sort asc\";i:1;s:48:\"select * from fanwe_message_cate order by id asc\";i:2;s:49:\"select * from fanwe_user_level order by point asc\";i:3;s:47:\"select * from fanwe_deal_cate where is_delete=0\";i:4;s:88:\"select * from fanwe_article_cate  where is_effect=1 and  is_delete=0  order by  sort asc\";i:5;s:251:\"select ac.*,fa.num from fanwe_article_cate as ac left join (SELECT count(*) as num,cate_id from fanwe_article where is_effect=1 and is_delete=0 GROUP BY cate_id) as fa on fa.cate_id=ac.id  where ac.is_effect=1 and  ac.is_delete=0  order by ac.sort asc\";i:6;s:98:\"select id,cate_id,title from fanwe_article  where is_effect=1 and  is_delete=0  order by  sort asc\";i:7;s:61:\"select * from fanwe_nav where is_effect = 1 order by sort asc\";i:8;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439886326 - create_time > 259200\";i:9;s:38:\"select count(*) from fanwe_deal_notify\";i:10;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:11;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:12;s:81:\"select * from fanwe_article where is_effect=1 and is_delete=0 order by sort desc \";i:13;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:14;s:50:\"select * from fanwe_index_image order by sort desc\";i:15;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:16;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:17;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_S\'\";i:18;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:19;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439886326 and d.end_time!=0\";i:20;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:21;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:22;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439886326 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:23;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:24;s:31:\"select * from fanwe_deal_level \";i:25;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:26;s:45:\"select name from fanwe_deal_cate where id = 9\";i:27;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:28;s:31:\"select * from fanwe_deal_level \";i:29;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:30;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:31;s:31:\"select * from fanwe_deal_level \";i:32;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:33;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:34;s:31:\"select * from fanwe_deal_level \";i:35;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:36;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:37;s:31:\"select * from fanwe_deal_level \";i:38;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:39;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:40;s:31:\"select * from fanwe_deal_level \";i:41;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:42;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:43;s:31:\"select * from fanwe_deal_level \";i:44;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:45;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:46;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:47;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:48;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:49;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:50;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:51;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:52;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:53;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:54;s:29:\"select * from fanwe_api_login\";i:55;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.011514','2.377817','6.5400','1','http://zc3.vitakung.com/index.php','index.php','1439886328');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279290','deals','index','deals-index','k','deals-index-k','11','a:12:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439886366 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:4;s:98:\"select province from fanwe_deal where type=0 and is_effect =1 group by province  order by sort asc\";i:5;s:152:\"select rc.* from fanwe_region_conf as rc where rc.name in (select province from fanwe_deal) or  rc.name in (select city from fanwe_deal) or rc.is_hot=1 \";i:6;s:324:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND  d.is_delete = 0 and d.is_effect = 1  and d.cate_id in (2,1,9,3,7,6,8,4,5,10) and d.type=0  and (match(d.name_match) against(\'ux49\'  IN BOOLEAN MODE) or match(d.tags_match) against(\'ux49\'  IN BOOLEAN MODE)  or d.name like \'%1%\') \";i:7;s:31:\"select * from fanwe_deal_level \";i:8;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_top\' and is_effect = 1\";i:9;s:88:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deals_bottom\' and is_effect = 1\";i:10;s:29:\"select * from fanwe_api_login\";i:11;s:94:\"select sql_num from fanwe_sql_check where module_action_para=\'deals-index-k\' order by id desc \";}','0.001543','0.137955','5.8000','1','http://zc3.vitakung.com/index.php?rewrite_param=deals/r--id-0-loc--state-0-tag--k-1-type-0','index.php','1439886366');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279291','index','index','index-index','','index-index','41','a:42:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439886887 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:4;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:5;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:6;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439886887 and d.end_time!=0\";i:7;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:8;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:9;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439886887 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:10;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:11;s:31:\"select * from fanwe_deal_level \";i:12;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:13;s:45:\"select name from fanwe_deal_cate where id = 9\";i:14;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:15;s:31:\"select * from fanwe_deal_level \";i:16;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:17;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:18;s:31:\"select * from fanwe_deal_level \";i:19;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:20;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:21;s:31:\"select * from fanwe_deal_level \";i:22;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:23;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:24;s:31:\"select * from fanwe_deal_level \";i:25;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:26;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:27;s:31:\"select * from fanwe_deal_level \";i:28;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:29;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:30;s:31:\"select * from fanwe_deal_level \";i:31;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:32;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:33;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:34;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:35;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:36;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:37;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:38;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:39;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:40;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:41;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.005122','0.108241','5.4200','1','http://zc3.vitakung.com/index.php','index.php','1439886887');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279292','index','index','index-index','','index-index','58','a:59:{i:0;s:42:\"select * from fanwe_help order by sort asc\";i:1;s:48:\"select * from fanwe_message_cate order by id asc\";i:2;s:49:\"select * from fanwe_user_level order by point asc\";i:3;s:47:\"select * from fanwe_deal_cate where is_delete=0\";i:4;s:88:\"select * from fanwe_article_cate  where is_effect=1 and  is_delete=0  order by  sort asc\";i:5;s:251:\"select ac.*,fa.num from fanwe_article_cate as ac left join (SELECT count(*) as num,cate_id from fanwe_article where is_effect=1 and is_delete=0 GROUP BY cate_id) as fa on fa.cate_id=ac.id  where ac.is_effect=1 and  ac.is_delete=0  order by ac.sort asc\";i:6;s:98:\"select id,cate_id,title from fanwe_article  where is_effect=1 and  is_delete=0  order by  sort asc\";i:7;s:61:\"select * from fanwe_nav where is_effect = 1 order by sort asc\";i:8;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439886938 - create_time > 259200\";i:9;s:38:\"select count(*) from fanwe_deal_notify\";i:10;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:11;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:12;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 18 order by sort desc\";i:13;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 19 order by sort desc\";i:14;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 20 order by sort desc\";i:15;s:81:\"select * from fanwe_article where is_effect=1 and is_delete=0 order by sort desc \";i:16;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:17;s:50:\"select * from fanwe_index_image order by sort desc\";i:18;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:19;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:20;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_S\'\";i:21;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:22;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439886938 and d.end_time!=0\";i:23;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:24;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:25;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439886938 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:26;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:27;s:31:\"select * from fanwe_deal_level \";i:28;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:29;s:45:\"select name from fanwe_deal_cate where id = 9\";i:30;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:31;s:31:\"select * from fanwe_deal_level \";i:32;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:33;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:34;s:31:\"select * from fanwe_deal_level \";i:35;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:36;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:37;s:31:\"select * from fanwe_deal_level \";i:38;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:39;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:40;s:31:\"select * from fanwe_deal_level \";i:41;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:42;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:43;s:31:\"select * from fanwe_deal_level \";i:44;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:45;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:46;s:31:\"select * from fanwe_deal_level \";i:47;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:48;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:49;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:50;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:51;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:52;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:53;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:54;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:55;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:56;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:57;s:29:\"select * from fanwe_api_login\";i:58;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.008125','2.188244','6.5600','1','http://zc3.vitakung.com/index.php','index.php','1439886940');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279293','index','index','index-index','','index-index','59','a:60:{i:0;s:31:\"select * from fanwe_weixin_conf\";i:1;s:42:\"select * from fanwe_help order by sort asc\";i:2;s:48:\"select * from fanwe_message_cate order by id asc\";i:3;s:49:\"select * from fanwe_user_level order by point asc\";i:4;s:47:\"select * from fanwe_deal_cate where is_delete=0\";i:5;s:88:\"select * from fanwe_article_cate  where is_effect=1 and  is_delete=0  order by  sort asc\";i:6;s:251:\"select ac.*,fa.num from fanwe_article_cate as ac left join (SELECT count(*) as num,cate_id from fanwe_article where is_effect=1 and is_delete=0 GROUP BY cate_id) as fa on fa.cate_id=ac.id  where ac.is_effect=1 and  ac.is_delete=0  order by ac.sort asc\";i:7;s:98:\"select id,cate_id,title from fanwe_article  where is_effect=1 and  is_delete=0  order by  sort asc\";i:8;s:61:\"select * from fanwe_nav where is_effect = 1 order by sort asc\";i:9;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439886962 - create_time > 259200\";i:10;s:38:\"select count(*) from fanwe_deal_notify\";i:11;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:12;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:13;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 18 order by sort desc\";i:14;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 19 order by sort desc\";i:15;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 20 order by sort desc\";i:16;s:81:\"select * from fanwe_article where is_effect=1 and is_delete=0 order by sort desc \";i:17;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:18;s:50:\"select * from fanwe_index_image order by sort desc\";i:19;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:20;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:21;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_S\'\";i:22;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:23;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439886962 and d.end_time!=0\";i:24;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:25;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:26;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439886962 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:27;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:28;s:31:\"select * from fanwe_deal_level \";i:29;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:30;s:45:\"select name from fanwe_deal_cate where id = 9\";i:31;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:32;s:31:\"select * from fanwe_deal_level \";i:33;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:34;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:35;s:31:\"select * from fanwe_deal_level \";i:36;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:37;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:38;s:31:\"select * from fanwe_deal_level \";i:39;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:40;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:41;s:31:\"select * from fanwe_deal_level \";i:42;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:43;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:44;s:31:\"select * from fanwe_deal_level \";i:45;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:46;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:47;s:31:\"select * from fanwe_deal_level \";i:48;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:49;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:50;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:51;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:52;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:53;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:54;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:55;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:56;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:57;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:58;s:29:\"select * from fanwe_api_login\";i:59;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.007594','2.346874','6.5600','1','http://zc3.vitakung.com/index.php','index.php','1439886965');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279294','deal','show','deal-show','id','deal-show-id','28','a:29:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439886990 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:112:\"select * from fanwe_deal where id = 156 and is_delete = 0 and (is_effect = 1 or (is_effect = 0 and user_id = 0))\";i:4;s:43:\"select name from fanwe_deal_cate where id=2\";i:5;s:45:\"select login_time from fanwe_user where id=20\";i:6;s:46:\"select is_investor from fanwe_user where id=20\";i:7;s:129:\"select count(*) from fanwe_deal_visit_log where deal_id = 156 and client_ip = \'60.253.251.254\' and 1439886990 - create_time < 600\";i:8;s:25:\"DESC fanwe_deal_visit_log\";i:9;s:113:\"INSERT INTO fanwe_deal_visit_log (deal_id, client_ip, create_time) VALUES (\'156\', \'60.253.251.254\', \'1439886990\')\";i:10;s:64:\"update fanwe_deal set view_count = view_count + 1 where id = 156\";i:11;s:73:\"select count(*) from fanwe_investment_list where  type=2 and  deal_id=156\";i:12;s:73:\"select count(*) from fanwe_investment_list where  type=0 and  deal_id=156\";i:13;s:66:\"select * from fanwe_deal_faq where deal_id = 156 order by sort asc\";i:14;s:68:\"select * from fanwe_deal_item where deal_id = 156 order by price asc\";i:15;s:120:\"update fanwe_deal set deal_extra_cache  = \'a:2:{s:13:\"deal_faq_list\";a:0:{}s:14:\"deal_item_list\";a:0:{}}\' where id = 156\";i:16;s:87:\"select count(*) from fanwe_deal_comment where deal_id = 156 and log_id = 0 and status=1\";i:17;s:45:\"select level from fanwe_deal_level where id=0\";i:18;s:65:\"select sum(virtual_person) from fanwe_deal_item where deal_id=156\";i:19;s:94:\"update fanwe_deal set source_vedio=\'http://player.youku.com/embed/XMjgxNjMzNjI4\'  where id=156\";i:20;s:44:\"select name from fanwe_deal_cate where id =2\";i:21;s:195:\"select i.*,u.user_name,u.user_level,u.is_investor from fanwe_investment_list i LEFT JOIN fanwe_user as u on u.id=i.user_id where i.deal_id=156 and i.type=2   ORDER BY i.create_time DESC LIMIT 0,4\";i:22;s:237:\"select i.*,u.user_name,u.identify_name,u.user_level,u.is_investor from fanwe_investment_list i LEFT JOIN fanwe_user as u on u.id=i.user_id where i.deal_id=156 and i.type=1 and status=1 GROUP BY i.user_id,i.user_id ORDER BY i.user_id DESC\";i:23;s:103:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_hot=1\";i:24;s:31:\"select * from fanwe_deal_level \";i:25;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_hot=1 ORDER BY support_count desc\";i:26;s:101:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'deal_investor_show_bottom\' and is_effect = 1\";i:27;s:29:\"select * from fanwe_api_login\";i:28;s:93:\"select sql_num from fanwe_sql_check where module_action_para=\'deal-show-id\' order by id desc \";}','0.016736','0.257527','5.5600','1','http://zc3.vitakung.com/index.php?rewrite_param=deal-show/id-156','index.php','1439886990');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279295','deal','show','deal-show','id','deal-show-id','20','a:21:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439886999 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:112:\"select * from fanwe_deal where id = 155 and is_delete = 0 and (is_effect = 1 or (is_effect = 0 and user_id = 0))\";i:4;s:43:\"select name from fanwe_deal_cate where id=9\";i:5;s:45:\"select login_time from fanwe_user where id=20\";i:6;s:46:\"select is_investor from fanwe_user where id=20\";i:7;s:129:\"select count(*) from fanwe_deal_visit_log where deal_id = 155 and client_ip = \'60.253.251.254\' and 1439886999 - create_time < 600\";i:8;s:25:\"DESC fanwe_deal_visit_log\";i:9;s:113:\"INSERT INTO fanwe_deal_visit_log (deal_id, client_ip, create_time) VALUES (\'155\', \'60.253.251.254\', \'1439886999\')\";i:10;s:64:\"update fanwe_deal set view_count = view_count + 1 where id = 155\";i:11;s:66:\"select * from fanwe_deal_faq where deal_id = 155 order by sort asc\";i:12;s:68:\"select * from fanwe_deal_item where deal_id = 155 order by price asc\";i:13;s:76:\"select * from fanwe_deal_item_image where deal_id=155 and deal_item_id = 247\";i:14;s:76:\"select * from fanwe_deal_item_image where deal_id=155 and deal_item_id = 248\";i:15;s:1550:\"update fanwe_deal set deal_extra_cache  = \'a:2:{s:13:\"deal_faq_list\";a:0:{}s:14:\"deal_item_list\";a:2:{i:0;a:17:{s:2:\"id\";s:3:\"247\";s:7:\"deal_id\";s:3:\"155\";s:5:\"price\";s:6:\"100.00\";s:13:\"support_count\";s:1:\"0\";s:14:\"support_amount\";s:4:\"0.00\";s:11:\"description\";s:63:\"获得回报优惠券获得回报优惠券获得回报优惠券\";s:11:\"is_delivery\";s:1:\"0\";s:12:\"delivery_fee\";s:4:\"0.00\";s:13:\"is_limit_user\";s:1:\"0\";s:10:\"limit_user\";s:1:\"0\";s:10:\"repaid_day\";s:2:\"10\";s:14:\"virtual_person\";s:1:\"0\";s:8:\"is_share\";s:1:\"0\";s:9:\"share_fee\";s:4:\"0.00\";s:4:\"type\";s:1:\"0\";s:6:\"images\";a:1:{i:0;a:4:{s:2:\"id\";s:3:\"187\";s:7:\"deal_id\";s:3:\"155\";s:12:\"deal_item_id\";s:3:\"247\";s:5:\"image\";s:50:\"./public/attachment/201508/17/13/55d17052970d3.jpg\";}}s:12:\"price_format\";s:3:\"100\";}i:1;a:17:{s:2:\"id\";s:3:\"248\";s:7:\"deal_id\";s:3:\"155\";s:5:\"price\";s:6:\"200.00\";s:13:\"support_count\";s:1:\"1\";s:14:\"support_amount\";s:6:\"200.00\";s:11:\"description\";s:147:\"获得回报优惠券获得回报优惠券获得回报优惠券获得回报优惠券获得回报优惠券获得回报优惠券获得回报优惠券\";s:11:\"is_delivery\";s:1:\"0\";s:12:\"delivery_fee\";s:4:\"0.00\";s:13:\"is_limit_user\";s:1:\"0\";s:10:\"limit_user\";s:1:\"0\";s:10:\"repaid_day\";s:1:\"0\";s:14:\"virtual_person\";s:1:\"0\";s:8:\"is_share\";s:1:\"0\";s:9:\"share_fee\";s:4:\"0.00\";s:4:\"type\";s:1:\"0\";s:6:\"images\";a:1:{i:0;a:4:{s:2:\"id\";s:3:\"188\";s:7:\"deal_id\";s:3:\"155\";s:12:\"deal_item_id\";s:3:\"248\";s:5:\"image\";s:50:\"./public/attachment/201508/17/13/55d17065f2414.png\";}}s:12:\"price_format\";s:3:\"200\";}}}\' where id = 155\";i:16;s:87:\"select count(*) from fanwe_deal_comment where deal_id = 155 and log_id = 0 and status=1\";i:17;s:45:\"select level from fanwe_deal_level where id=0\";i:18;s:65:\"select sum(virtual_person) from fanwe_deal_item where deal_id=155\";i:19;s:94:\"update fanwe_deal set source_vedio=\'http://player.youku.com/embed/XMjgxNjMzNjI4\'  where id=155\";i:20;s:93:\"select sql_num from fanwe_sql_check where module_action_para=\'deal-show-id\' order by id desc \";}','0.004484','0.408664','5.6200','1','http://zc3.vitakung.com/index.php?rewrite_param=deal-show/id-155','index.php','1439886999');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279296','faq','index','faq-index','','faq-index','9','a:10:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887007 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:57:\"select distinct(`group`) from fanwe_faq order by sort asc\";i:4;s:70:\"select * from fanwe_faq where `group`=\'基本问题\' order by sort asc\";i:5;s:85:\"select * from fanwe_faq where `group`=\'项目发起人相关问题\' order by sort asc\";i:6;s:85:\"select * from fanwe_faq where `group`=\'项目支持者相关问题\' order by sort asc\";i:7;s:89:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'faq_index_top\' and is_effect = 1\";i:8;s:29:\"select * from fanwe_api_login\";i:9;s:90:\"select sql_num from fanwe_sql_check where module_action_para=\'faq-index\' order by id desc \";}','0.000981','0.103343','5.1600','1','http://zc3.vitakung.com/index.php?rewrite_param=faq','index.php','1439887007');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279297','faq','index','faq-index','','faq-index','3','a:4:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887008 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:90:\"select sql_num from fanwe_sql_check where module_action_para=\'faq-index\' order by id desc \";}','0.000309','0.086992','5.0200','1','http://zc3.vitakung.com/index.php?rewrite_param=faq','index.php','1439887008');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279298','article','index','article-index','id','article-index-id','9','a:10:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887039 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:113:\"select a.*,ac.type_id from fanwe_article as a left join fanwe_article_cate as ac on ac.id=a.cate_id where a.id=68\";i:4;s:99:\"select * from fanwe_article where id<68 and is_delete=0 and is_effect=1  order by id desc limit 0,1\";i:5;s:99:\"select * from fanwe_article where id>68 and is_delete=0 and is_effect=1  order by id desc limit 0,1\";i:6;s:219:\"SELECT a.*,c.type_id from fanwe_article a LEFT JOIN fanwe_article_cate c on a.cate_id=c.id where 1=1 and a.is_delete=0 and a.is_effect=1 and c.type_id=1 and a.cate_id=22 and a.id!=68  order by update_time desc limit 0,5\";i:7;s:40:\"select * from fanwe_article where id=68 \";i:8;s:48:\"select title from fanwe_article_cate where id=22\";i:9;s:97:\"select sql_num from fanwe_sql_check where module_action_para=\'article-index-id\' order by id desc \";}','0.001891','0.097299','5.1300','1','http://zc3.vitakung.com/index.php?ctl=article&id=68','index.php','1439887039');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279299','article_cate','index','article_cate-index','tag','article_cate-index-tag','5','a:6:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887046 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:308:\"SELECT a.*,c.type_id,c.title as cate_name from fanwe_article a LEFT JOIN fanwe_article_cate c on a.cate_id=c.id where 1=1 and a.is_delete=0 and a.is_effect=1 and c.is_effect=1 and c.type_id=0  and (a.content like \'%众筹网%\' or a.title like \'%众筹网%\') order by a.sort desc,a.update_time desc limit 0,15\";i:4;s:234:\"select COUNT(a.id) from fanwe_article a LEFT JOIN fanwe_article_cate c on a.cate_id=c.id WHERE 1=1 and a.is_delete=0 and a.is_effect=1 and c.is_effect=1 and c.type_id=0  and (a.content like \'%众筹网%\' or a.title like \'%众筹网%\')\";i:5;s:103:\"select sql_num from fanwe_sql_check where module_action_para=\'article_cate-index-tag\' order by id desc \";}','0.001760','0.095283','5.1300','1','http://zc3.vitakung.com/index.php?ctl=article_cate&tag=%E4%BC%97%E7%AD%B9%E7%BD%91','index.php','1439887046');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279300','deal','show','deal-show','id','deal-show-id','11','a:12:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887114 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:112:\"select * from fanwe_deal where id = 155 and is_delete = 0 and (is_effect = 1 or (is_effect = 0 and user_id = 0))\";i:4;s:43:\"select name from fanwe_deal_cate where id=9\";i:5;s:45:\"select login_time from fanwe_user where id=20\";i:6;s:46:\"select is_investor from fanwe_user where id=20\";i:7;s:87:\"select count(*) from fanwe_deal_comment where deal_id = 155 and log_id = 0 and status=1\";i:8;s:45:\"select level from fanwe_deal_level where id=0\";i:9;s:65:\"select sum(virtual_person) from fanwe_deal_item where deal_id=155\";i:10;s:94:\"update fanwe_deal set source_vedio=\'http://player.youku.com/embed/XMjgxNjMzNjI4\'  where id=155\";i:11;s:93:\"select sql_num from fanwe_sql_check where module_action_para=\'deal-show-id\' order by id desc \";}','0.001295','0.097432','5.3200','1','http://zc3.vitakung.com/index.php?rewrite_param=deal-show/id-155','index.php','1439887114');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279301','article_cate','index','article_cate-index','bs','article_cate-index-bs','7','a:8:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887126 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:260:\"SELECT a.*,c.type_id,c.title as cate_name from fanwe_article a LEFT JOIN fanwe_article_cate c on a.cate_id=c.id where 1=1 and a.is_delete=0 and a.is_effect=1 and c.is_effect=1 and c.type_id=1  and a.cate_id=21 order by a.sort desc,a.update_time desc limit 0,15\";i:4;s:186:\"select COUNT(a.id) from fanwe_article a LEFT JOIN fanwe_article_cate c on a.cate_id=c.id WHERE 1=1 and a.is_delete=0 and a.is_effect=1 and c.is_effect=1 and c.type_id=1  and a.cate_id=21\";i:5;s:84:\"select COUNT(*) from fanwe_article where is_delete=0 and is_effect=1 and cate_id =21\";i:6;s:49:\"select title from fanwe_article_cate where id=21 \";i:7;s:102:\"select sql_num from fanwe_sql_check where module_action_para=\'article_cate-index-bs\' order by id desc \";}','0.001526','0.094993','5.1500','1','http://zc3.vitakung.com/index.php?ctl=article_cate&bs=zdsm','index.php','1439887126');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279302','index','index','index-index','','index-index','58','a:59:{i:0;s:42:\"select * from fanwe_help order by sort asc\";i:1;s:48:\"select * from fanwe_message_cate order by id asc\";i:2;s:49:\"select * from fanwe_user_level order by point asc\";i:3;s:47:\"select * from fanwe_deal_cate where is_delete=0\";i:4;s:88:\"select * from fanwe_article_cate  where is_effect=1 and  is_delete=0  order by  sort asc\";i:5;s:251:\"select ac.*,fa.num from fanwe_article_cate as ac left join (SELECT count(*) as num,cate_id from fanwe_article where is_effect=1 and is_delete=0 GROUP BY cate_id) as fa on fa.cate_id=ac.id  where ac.is_effect=1 and  ac.is_delete=0  order by ac.sort asc\";i:6;s:98:\"select id,cate_id,title from fanwe_article  where is_effect=1 and  is_delete=0  order by  sort asc\";i:7;s:61:\"select * from fanwe_nav where is_effect = 1 order by sort asc\";i:8;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887229 - create_time > 259200\";i:9;s:38:\"select count(*) from fanwe_deal_notify\";i:10;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:11;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:12;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 18 order by sort desc\";i:13;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 19 order by sort desc\";i:14;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 20 order by sort desc\";i:15;s:81:\"select * from fanwe_article where is_effect=1 and is_delete=0 order by sort desc \";i:16;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:17;s:50:\"select * from fanwe_index_image order by sort desc\";i:18;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:19;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:20;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_S\'\";i:21;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:22;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439887229 and d.end_time!=0\";i:23;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:24;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:25;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439887229 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:26;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:27;s:31:\"select * from fanwe_deal_level \";i:28;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:29;s:45:\"select name from fanwe_deal_cate where id = 9\";i:30;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:31;s:31:\"select * from fanwe_deal_level \";i:32;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:33;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:34;s:31:\"select * from fanwe_deal_level \";i:35;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:36;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:37;s:31:\"select * from fanwe_deal_level \";i:38;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:39;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:40;s:31:\"select * from fanwe_deal_level \";i:41;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:42;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:43;s:31:\"select * from fanwe_deal_level \";i:44;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:45;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:46;s:31:\"select * from fanwe_deal_level \";i:47;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:48;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:49;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:50;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:51;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:52;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:53;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:54;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:55;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:56;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:57;s:29:\"select * from fanwe_api_login\";i:58;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.014582','2.608593','6.5700','1','http://zc3.vitakung.com/index.php','index.php','1439887232');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279303','index','index','index-index','','index-index','41','a:42:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887243 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:4;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:5;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:6;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439887243 and d.end_time!=0\";i:7;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:8;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:9;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439887243 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:10;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:11;s:31:\"select * from fanwe_deal_level \";i:12;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:13;s:45:\"select name from fanwe_deal_cate where id = 9\";i:14;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:15;s:31:\"select * from fanwe_deal_level \";i:16;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:17;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:18;s:31:\"select * from fanwe_deal_level \";i:19;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:20;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:21;s:31:\"select * from fanwe_deal_level \";i:22;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:23;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:24;s:31:\"select * from fanwe_deal_level \";i:25;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:26;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:27;s:31:\"select * from fanwe_deal_level \";i:28;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:29;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:30;s:31:\"select * from fanwe_deal_level \";i:31;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:32;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:33;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:34;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:35;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:36;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:37;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:38;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:39;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:40;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:41;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.008193','0.113517','5.4600','1','http://zc3.vitakung.com/index.php','index.php','1439887243');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279304','user','register','user-register','','user-register','4','a:5:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887249 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:29:\"select * from fanwe_api_login\";i:4;s:94:\"select sql_num from fanwe_sql_check where module_action_para=\'user-register\' order by id desc \";}','0.000406','1.537613','5.4300','1','http://zc3.vitakung.com/index.php?rewrite_param=user-register','index.php','1439887251');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279305','index','index','index-index','','index-index','58','a:59:{i:0;s:42:\"select * from fanwe_help order by sort asc\";i:1;s:48:\"select * from fanwe_message_cate order by id asc\";i:2;s:49:\"select * from fanwe_user_level order by point asc\";i:3;s:47:\"select * from fanwe_deal_cate where is_delete=0\";i:4;s:88:\"select * from fanwe_article_cate  where is_effect=1 and  is_delete=0  order by  sort asc\";i:5;s:251:\"select ac.*,fa.num from fanwe_article_cate as ac left join (SELECT count(*) as num,cate_id from fanwe_article where is_effect=1 and is_delete=0 GROUP BY cate_id) as fa on fa.cate_id=ac.id  where ac.is_effect=1 and  ac.is_delete=0  order by ac.sort asc\";i:6;s:98:\"select id,cate_id,title from fanwe_article  where is_effect=1 and  is_delete=0  order by  sort asc\";i:7;s:61:\"select * from fanwe_nav where is_effect = 1 order by sort asc\";i:8;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887465 - create_time > 259200\";i:9;s:38:\"select count(*) from fanwe_deal_notify\";i:10;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:11;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:12;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 18 order by sort desc\";i:13;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 19 order by sort desc\";i:14;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 20 order by sort desc\";i:15;s:81:\"select * from fanwe_article where is_effect=1 and is_delete=0 order by sort desc \";i:16;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:17;s:50:\"select * from fanwe_index_image order by sort desc\";i:18;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:19;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:20;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_S\'\";i:21;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:22;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439887465 and d.end_time!=0\";i:23;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:24;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:25;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439887465 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:26;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:27;s:31:\"select * from fanwe_deal_level \";i:28;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:29;s:45:\"select name from fanwe_deal_cate where id = 9\";i:30;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:31;s:31:\"select * from fanwe_deal_level \";i:32;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:33;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:34;s:31:\"select * from fanwe_deal_level \";i:35;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:36;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:37;s:31:\"select * from fanwe_deal_level \";i:38;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:39;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:40;s:31:\"select * from fanwe_deal_level \";i:41;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:42;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:43;s:31:\"select * from fanwe_deal_level \";i:44;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:45;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:46;s:31:\"select * from fanwe_deal_level \";i:47;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:48;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:49;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:50;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:51;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:52;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:53;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:54;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:55;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:56;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:57;s:29:\"select * from fanwe_api_login\";i:58;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.008585','2.806941','6.5900','1','http://zc3.vitakung.com/index.php','index.php','1439887468');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279306','help','8','help-8','','help-8','5','a:6:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887491 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:51:\"select * from fanwe_help where type = \'8\' or id = 8\";i:4;s:29:\"select * from fanwe_api_login\";i:5;s:87:\"select sql_num from fanwe_sql_check where module_action_para=\'help-8\' order by id desc \";}','0.000839','0.092272','5.0500','1','http://zc3.vitakung.com/index.php?rewrite_param=help-8','index.php','1439887491');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279307','help','about','help-about','','help-about','4','a:5:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887503 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:55:\"select * from fanwe_help where type = \'about\' or id = 0\";i:4;s:91:\"select sql_num from fanwe_sql_check where module_action_para=\'help-about\' order by id desc \";}','0.000723','0.089295','5.0000','1','http://zc3.vitakung.com/index.php?rewrite_param=help-about','index.php','1439887503');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279308','help','8','help-8','','help-8','3','a:4:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439887509 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:87:\"select sql_num from fanwe_sql_check where module_action_para=\'help-8\' order by id desc \";}','0.000361','0.083393','5.0600','1','http://zc3.vitakung.com/index.php?rewrite_param=help-8','index.php','1439887509');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279309','ajax','login','ajax-login','fhash','ajax-login-fhash','7','a:8:{i:0;s:52:\"select * from  fanwe_link_group where is_effect = 1 \";i:1;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 14 order by sort desc\";i:2;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 18 order by sort desc\";i:3;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 19 order by sort desc\";i:4;s:100:\"select * from fanwe_link where is_effect = 1 and show_index = 1 and group_id = 20 order by sort desc\";i:5;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:6;s:29:\"select * from fanwe_api_login\";i:7;s:97:\"select sql_num from fanwe_sql_check where module_action_para=\'ajax-login-fhash\' order by id desc \";}','0.001026','0.123488','5.4300','1','http://zc3.vitakung.com/index.php?ctl=ajax&act=login&fhash=rszeKADwhCIwPUWwdlFAyYzFFUYIlTsqjbCpZHoQALbyPQHORH','index.php','1439888029');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279310','index','index','index-index','','index-index','44','a:45:{i:0;s:58:\"select * from fanwe_user where id = 4288 and is_effect = 1\";i:1;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439888039 - create_time > 259200\";i:2;s:38:\"select count(*) from fanwe_deal_notify\";i:3;s:75:\"select count(*) from fanwe_user_notify where user_id = 4288 and is_read = 0\";i:4;s:76:\"select count(*) from fanwe_user_message where user_id = 4288 and is_read = 0\";i:5;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:6;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:7;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:8;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:9;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439888039 and d.end_time!=0\";i:10;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:11;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:12;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439888039 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:13;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:14;s:31:\"select * from fanwe_deal_level \";i:15;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:16;s:45:\"select name from fanwe_deal_cate where id = 9\";i:17;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:18;s:31:\"select * from fanwe_deal_level \";i:19;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:20;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:21;s:31:\"select * from fanwe_deal_level \";i:22;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:23;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:24;s:31:\"select * from fanwe_deal_level \";i:25;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:26;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:27;s:31:\"select * from fanwe_deal_level \";i:28;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:29;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:30;s:31:\"select * from fanwe_deal_level \";i:31;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:32;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:33;s:31:\"select * from fanwe_deal_level \";i:34;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:35;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:36;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:37;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:38;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:39;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:40;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:41;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:42;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:43;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:44;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.006816','0.112485','5.5500','1','http://zc3.vitakung.com/index.php?rewrite_param=index','index.php','1439888039');
INSERT INTO `%DB_PREFIX%sql_check` VALUES ('279311','index','index','index-index','','index-index','41','a:42:{i:0;s:109:\"delete from fanwe_deal_order where order_status = 0 and credit_pay = 0 and  1439888108 - create_time > 259200\";i:1;s:38:\"select count(*) from fanwe_deal_notify\";i:2;s:51:\"select * from  fanwe_collocation where is_effect=1 \";i:3;s:65:\"select * from fanwe_deal_cate where is_delete=0 order by sort asc\";i:4;s:150:\"select d.*,u.mobile from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=1 and d.is_has_send_success=0 and d.is_delete = 0 \";i:5;s:226:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=1 and d.is_has_send_success=1 and d.is_delete = 0 AND dlo.order_status=3 AND dlo.is_success=1 AND dlo.is_has_send_success=0 \";i:6;s:323:\"select d.*,u.mobile,u.user_name  from fanwe_deal d LEFT JOIN fanwe_user u ON u.id = d.user_id where d.is_success=0 and d.is_has_send_success=0 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439888108 and d.end_time!=0\";i:7;s:60:\"select * from fanwe_msg_template where name=\'TPL_SMS_USER_F\'\";i:8;s:63:\"select * from fanwe_msg_template where name=\'TPL_SMS_DEAL_FAIL\'\";i:9;s:373:\"SELECT dlo.* FROM fanwe_deal_order dlo LEFT JOIN fanwe_deal d ON d.id= dlo.deal_id WHERE d.is_success=0 and d.is_has_send_success=1 and d.is_delete = 0 and d.support_amount < (d.limit_price-(select sum(virtual_person*price) FROM fanwe_deal_item where deal_id=d.id )) and d.end_time < 1439888108 AND dlo.order_status=\'3\' AND dlo.is_success=\'1\' AND dlo.is_has_send_success=0 \";i:10;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:11;s:31:\"select * from fanwe_deal_level \";i:12;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY  sort asc  LIMIT 0,8\";i:13;s:45:\"select name from fanwe_deal_cate where id = 9\";i:14;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1\";i:15;s:31:\"select * from fanwe_deal_level \";i:16;s:127:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 ORDER BY  sort asc  LIMIT 0,8\";i:17;s:101:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0\";i:18;s:31:\"select * from fanwe_deal_level \";i:19;s:124:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=0 ORDER BY id desc LIMIT 0,8\";i:20;s:115:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1 \";i:21;s:31:\"select * from fanwe_deal_level \";i:22;s:149:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND type=1 and is_hot=1  ORDER BY support_count desc LIMIT 0,4\";i:23;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1\";i:24;s:31:\"select * from fanwe_deal_level \";i:25;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_success=1 ORDER BY  sort asc  LIMIT 0,8\";i:26;s:109:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1\";i:27;s:31:\"select * from fanwe_deal_level \";i:28;s:135:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_recommend=1 ORDER BY  sort asc  LIMIT 0,8\";i:29;s:107:\"select count(*)  from fanwe_deal as d  where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1\";i:30;s:31:\"select * from fanwe_deal_level \";i:31;s:133:\"select d.* from fanwe_deal  as d   where  1=1 AND d.is_delete = 0 AND d.is_effect = 1  AND is_special=1 ORDER BY  sort asc  LIMIT 0,8\";i:32;s:86:\"select count(*) from fanwe_deal where is_delete=0 and is_effect = 1 and is_success = 1\";i:33;s:53:\"select count(*) from fanwe_user where  is_effect = 1 \";i:34;s:77:\"select count(*) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:35;s:101:\"select sum((support_count+virtual_num)) from fanwe_deal where is_effect = 1 and is_delete=0  and 1=1 \";i:36;s:113:\"select sum(support_amount+virtual_price) from fanwe_deal where is_effect = 1 and is_delete=0 and type=0  and 1=1 \";i:37;s:97:\"select sum(invote_money) from fanwe_deal where is_effect = 1 and is_delete=0 and type=1  and 1=1 \";i:38;s:229:\"select d.* from (select * from fanwe_deal order by sort asc)  as d left join fanwe_deal_cate as dc on dc.id=d.cate_id    where  d.is_delete = 0 and d.is_effect = 1   AND d.is_recommend=\'1\' group by d.cate_id order by dc.sort asc \";i:39;s:81:\"select * from fanwe_user where is_effect=1    order by login_time desc limit 0,22\";i:40;s:85:\"select * from fanwe_adv where tmpl=\'fanwe_1\' and adv_id=\'index_top\' and is_effect = 1\";i:41;s:92:\"select sql_num from fanwe_sql_check where module_action_para=\'index-index\' order by id desc \";}','0.004931','0.112997','5.5800','1','http://zc3.vitakung.com/index.php','index.php','1439888108');
DROP TABLE IF EXISTS `%DB_PREFIX%user`;
CREATE TABLE `%DB_PREFIX%user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `money` decimal(20,2) NOT NULL COMMENT '金额',
  `login_time` int(11) NOT NULL,
  `login_ip` varchar(50) NOT NULL,
  `province` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `password_verify` varchar(255) NOT NULL COMMENT '找回密码的验证号',
  `sex` tinyint(1) NOT NULL COMMENT '性别',
  `build_count` int(11) NOT NULL COMMENT '发起的项目数',
  `support_count` int(11) NOT NULL COMMENT '支持的项目数',
  `focus_count` int(11) NOT NULL COMMENT '关注的项目数',
  `integrate_id` int(11) NOT NULL,
  `intro` text NOT NULL COMMENT '个人简介',
  `ex_real_name` varchar(255) NOT NULL COMMENT '发布者真实姓名',
  `ex_account_bank` text NOT NULL,
  `ex_account_info` text NOT NULL COMMENT '银行帐号等信息',
  `ex_contact` text NOT NULL COMMENT '联系方式',
  `ex_qq` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `sina_id` varchar(255) NOT NULL,
  `sina_token` varchar(255) NOT NULL,
  `sina_secret` varchar(255) NOT NULL,
  `sina_url` varchar(255) NOT NULL,
  `tencent_id` varchar(255) NOT NULL,
  `tencent_token` varchar(255) NOT NULL,
  `tencent_secret` varchar(255) NOT NULL,
  `tencent_url` varchar(255) NOT NULL,
  `verify` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `user_type` int(11) NOT NULL,
  `is_has_send_success` tinyint(1) NOT NULL,
  `is_bank` tinyint(1) NOT NULL COMMENT '（0表示银行账户信息未提交，1表示银行账户信息提交）',
  `verify_time` int(11) DEFAULT NULL COMMENT '验证发送时间',
  `verify_setting` varchar(255) DEFAULT NULL COMMENT '设置时候的验证码',
  `verify_setting_time` int(11) NOT NULL COMMENT '设置时间',
  `identify_name` varchar(255) NOT NULL COMMENT '身份证名称',
  `identify_number` varchar(255) NOT NULL COMMENT '身份证号码',
  `identify_positive_image` varchar(255) NOT NULL COMMENT '身份证正面',
  `identify_nagative_image` varchar(255) NOT NULL COMMENT '身份证反面',
  `identify_business_licence` varchar(255) NOT NULL COMMENT '营业执照',
  `identify_business_code` varchar(255) NOT NULL COMMENT '组织机构代码证',
  `identify_business_tax` varchar(255) NOT NULL COMMENT '税务登记证',
  `identify_business_name` varchar(255) NOT NULL COMMENT '机构名称',
  `is_investor` tinyint(1) NOT NULL DEFAULT '0' COMMENT '判断是否为投资者，默认0表示非投资者，1表示投资者,2 表示机构投资者',
  `mortgage_money` decimal(20,2) NOT NULL COMMENT '诚意金',
  `investor_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '投资认证是否通过 0 表示未通过，1表示通过审核',
  `investor_status_send` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核结果通知用户，0表示未发送，1表示已发送',
  `break_num` tinyint(1) NOT NULL DEFAULT '0' COMMENT '毁约次数',
  `wx_openid` varchar(255) NOT NULL COMMENT '微信openid',
  `investor_send_info` varchar(255) NOT NULL COMMENT '审核信息',
  `paypassword` varchar(255) NOT NULL COMMENT '提现和支付密码',
  `source_url` varchar(255) NOT NULL COMMENT '来源url',
  `ips_mer_code` varchar(10) NOT NULL COMMENT '由IPS颁发的商户号 is_investor = 2',
  `ips_acct_no` varchar(255) DEFAULT NULL COMMENT '托管平台账户号',
  `pid` int(11) NOT NULL COMMENT '推荐人id',
  `score` int(11) NOT NULL COMMENT '积分',
  `is_send_referrals` tinyint(1) NOT NULL COMMENT '是否发放推荐返利给推存人，0：没有推荐人,不用发放返利，1：未发，2.已发',
  `referral_count` int(11) NOT NULL COMMENT '返利数量',
  `point` int(11) NOT NULL COMMENT '信用值',
  `cate_name` varchar(255) NOT NULL COMMENT '投资领域',
  `company` varchar(255) NOT NULL COMMENT '公司',
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '职位',
  `qq_id` varchar(255) NOT NULL,
  `qq_token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `is_effect` (`is_effect`)
) ENGINE=MyISAM AUTO_INCREMENT=4292 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%user` VALUES ('20','myname','8887e36756eec0b46946a9beeaee6bfa','1439760205','1439760205','1','295@qq.com','15999800.00','1439762253','123.14.81.83','河南','济源','','0','2','1','0','0','','','','','','','','','2.00GFL7CCkEm','','http://weibo.com/','','','','http://t.qq.com/','','0','15837108635','0','0','0','','','0','我的','','','','','','','','1','0.00','1','1','0','','','8887e36756eec0b46946a9beeaee6bfa','','','','0','622','0','0','622','N;','','','','');
INSERT INTO `%DB_PREFIX%user` VALUES ('21','myname1','8887e36756eec0b46946a9beeaee6bfa','1439761319','1439761319','1','29666@qq.com','1599999.99','1439761977','123.14.81.83','河南','济源','32132123123123','0','0','0','0','0','','','','','','','','111','2.22','','http://','','','','','','0','13462936661','0','0','0','','','0','','','','','','','','','1','0.01','1','1','0','','','8887e36756eec0b46946a9beeaee6bfa','','','','0','566','0','0','522','N:','','','','');
INSERT INTO `%DB_PREFIX%user` VALUES ('4288','vitakung','29c22315747814fd2e4c5364942040eb','1439887646','1439887646','1','vitakung@qq.com','0.00','1439888038','60.253.251.254','北京','朝阳区','','1','0','0','0','0','','','','','','','','','','','','','','','','','0','15510192688','0','0','0','','','0','','','','','','','','','1','0.00','1','0','0','','','','','','','0','0','0','0','0','','','','','');
INSERT INTO `%DB_PREFIX%user` VALUES ('4289','vitagong','27ecf1a891383f706edb58eec7194ba0','1439887701','1439887701','1','vitagong@qq.com','0.00','0','','北京','东城区','','1','0','0','0','0','','','','','','','','','','','','','','','','','0','13371606927','0','0','0','','','0','','','','','','','','','2','0.00','1','0','0','','','','','','','0','0','0','0','0','','','','','');
INSERT INTO `%DB_PREFIX%user` VALUES ('4290','kungkuan','edea9be455cb82e8f0ec8f0bba7bbf6d','1439887799','1439887799','1','2830381117@qq.com','0.00','0','','北京','平谷区','','1','0','0','0','0','','','','','','','','','','','','','','','','','0','15315556661','0','0','0','','','0','','','','','','','','','2','0.00','1','0','0','','','','','','','0','0','0','0','0','','','','','');
INSERT INTO `%DB_PREFIX%user` VALUES ('4291','vk','5d44a032652974c3e53644945a95b126','1439887842','1439887842','1','2602082743@qq.com','0.00','0','','北京','昌平区','','-1','0','0','0','0','','','','','','','','','','','','','','','','','0','15510192699','0','0','0','','','0','','','','','','','','','1','0.00','1','0','0','','','','','','','0','0','0','0','0','','','','','');
DROP TABLE IF EXISTS `%DB_PREFIX%user_bank`;
CREATE TABLE `%DB_PREFIX%user_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '体现人（标识ID）',
  `bank_id` int(11) NOT NULL COMMENT '银行(标识ID)',
  `bank_name` varchar(255) NOT NULL,
  `bankcard` varchar(30) NOT NULL COMMENT '卡号',
  `real_name` varchar(20) NOT NULL COMMENT '姓名',
  `region_lv1` varchar(50) NOT NULL,
  `region_lv2` varchar(50) NOT NULL,
  `region_lv3` varchar(50) NOT NULL,
  `region_lv4` varchar(50) NOT NULL,
  `bankzone` varchar(255) NOT NULL COMMENT '开户网点',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `bank_id` (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%user_carry_config`;
CREATE TABLE `%DB_PREFIX%user_carry_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '简称',
  `min_price` decimal(20,0) NOT NULL COMMENT '最低额度',
  `max_price` decimal(20,0) NOT NULL COMMENT '最高额度',
  `fee` decimal(20,2) NOT NULL COMMENT '费率',
  `fee_type` tinyint(1) NOT NULL COMMENT '费率类型 0 是固定值 1是百分比',
  `vip_id` int(11) NOT NULL COMMENT 'VIP等级     0默认配置  否则就是对应VIP等级设置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%user_carry_config` VALUES ('2','5万以内','10001','50000','20.00','0','0');
INSERT INTO `%DB_PREFIX%user_carry_config` VALUES ('1','1万以内','0','10000','10.00','0','0');
DROP TABLE IF EXISTS `%DB_PREFIX%user_consignee`;
CREATE TABLE `%DB_PREFIX%user_consignee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `consignee` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%user_consignee` VALUES ('38','20','澳门','澳门','我的','13462936667','450000','我的');
INSERT INTO `%DB_PREFIX%user_consignee` VALUES ('39','20','甘肃','白银','第二排','13646955334','466855','地址');
DROP TABLE IF EXISTS `%DB_PREFIX%user_copy`;
CREATE TABLE `%DB_PREFIX%user_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `money` double(20,4) NOT NULL,
  `login_time` int(11) NOT NULL,
  `login_ip` varchar(50) NOT NULL,
  `province` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `password_verify` varchar(255) NOT NULL COMMENT '找回密码的验证号',
  `sex` tinyint(1) NOT NULL COMMENT '性别',
  `build_count` int(11) NOT NULL COMMENT '发起的项目数',
  `support_count` int(11) NOT NULL COMMENT '支持的项目数',
  `focus_count` int(11) NOT NULL COMMENT '关注的项目数',
  `integrate_id` int(11) NOT NULL,
  `intro` text NOT NULL COMMENT '个人简介',
  `ex_real_name` varchar(255) NOT NULL COMMENT '发布者真实姓名',
  `ex_account_bank` text NOT NULL,
  `ex_account_info` text NOT NULL COMMENT '银行帐号等信息',
  `ex_contact` text NOT NULL COMMENT '联系方式',
  `ex_qq` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `sina_id` varchar(255) NOT NULL,
  `sina_token` varchar(255) NOT NULL,
  `sina_secret` varchar(255) NOT NULL,
  `sina_url` varchar(255) NOT NULL,
  `tencent_id` varchar(255) NOT NULL,
  `tencent_token` varchar(255) NOT NULL,
  `tencent_secret` varchar(255) NOT NULL,
  `tencent_url` varchar(255) NOT NULL,
  `verify` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `user_type` int(11) NOT NULL,
  `is_has_send_success` tinyint(1) NOT NULL,
  `is_bank` tinyint(1) NOT NULL COMMENT '（0表示银行账户信息未提交，1表示银行账户信息提交）',
  `verify_time` int(11) DEFAULT NULL COMMENT '验证发送时间',
  `verify_setting` varchar(255) DEFAULT NULL COMMENT '设置时候的验证码',
  `verify_setting_time` int(11) NOT NULL COMMENT '设置时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `is_effect` (`is_effect`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%user_copy1`;
CREATE TABLE `%DB_PREFIX%user_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `money` double(20,4) NOT NULL,
  `province` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `sex` tinyint(1) NOT NULL COMMENT '性别',
  `ex_real_name` varchar(255) NOT NULL COMMENT '发布者真实姓名',
  `ex_account_bank` text NOT NULL,
  `ex_account_info` text NOT NULL COMMENT '银行帐号等信息',
  `ex_contact` text NOT NULL COMMENT '联系方式',
  `ex_qq` text NOT NULL,
  `sina_url` varchar(255) NOT NULL,
  `tencent_url` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%user_deal_notify`;
CREATE TABLE `%DB_PREFIX%user_deal_notify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deal_id_user_id` (`user_id`,`deal_id`),
  KEY `user_id` (`user_id`),
  KEY `deal_id` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='用于发送下单成功的用户与关注用户的项目成功准备队列';
INSERT INTO `%DB_PREFIX%user_deal_notify` VALUES ('58','20','155','1439760547');
DROP TABLE IF EXISTS `%DB_PREFIX%user_level`;
CREATE TABLE `%DB_PREFIX%user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '等级名',
  `level` int(11) DEFAULT NULL COMMENT '等级大小   大->小',
  `point` int(11) NOT NULL COMMENT '所需信用值',
  `icon` varchar(255) NOT NULL COMMENT '等级图标',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%user_log`;
CREATE TABLE `%DB_PREFIX%user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_info` text NOT NULL,
  `log_time` int(11) NOT NULL,
  `log_admin_id` int(11) NOT NULL,
  `money` double(20,4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型 0表示充值 1表示 加入诚意金 2表示违约扣除诚意金 3表示分红  4提现 5购买回报 6购买股权 7积分购买 8积分消费 9退款',
  `deal_id` int(11) NOT NULL COMMENT '商品ID号',
  `score` int(11) NOT NULL COMMENT '积分',
  `point` int(11) NOT NULL COMMENT '信用值',
  `money_type` tinyint(1) DEFAULT NULL COMMENT '资金类型',
  `order_id` int(11) DEFAULT NULL COMMENT '订单编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=683 DEFAULT CHARSET=utf8 COMMENT='帐户资金变动日志';
DROP TABLE IF EXISTS `%DB_PREFIX%user_message`;
CREATE TABLE `%DB_PREFIX%user_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `message` text NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '该私信所属人ID',
  `dest_user_id` int(11) NOT NULL COMMENT '对方的用户ID（如果user_id是发件人，该ID为收件，反之为发件人ID）',
  `send_user_id` int(11) NOT NULL COMMENT '发件人ID',
  `receive_user_id` int(11) NOT NULL COMMENT '收件人ID',
  `user_name` varchar(255) NOT NULL,
  `dest_user_name` varchar(255) NOT NULL,
  `send_user_name` varchar(255) NOT NULL,
  `receive_user_name` varchar(255) NOT NULL,
  `message_type` enum('inbox','outbox') NOT NULL COMMENT '类型：inbox(收件) outbox(发件)',
  `is_read` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%user_notify`;
CREATE TABLE `%DB_PREFIX%user_notify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `log_info` text NOT NULL,
  `log_time` int(11) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `url_route` varchar(255) NOT NULL,
  `url_param` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=639 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%user_refund`;
CREATE TABLE `%DB_PREFIX%user_refund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` double(20,4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '提现申请时间',
  `reply` text NOT NULL COMMENT '提现审核回复',
  `is_pay` tinyint(1) NOT NULL,
  `pay_time` int(11) NOT NULL,
  `memo` text NOT NULL COMMENT '提现的备注',
  `pay_log` text NOT NULL COMMENT '支付说明',
  `user_bank_id` int(11) NOT NULL COMMENT '银行ID',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%user_weibo`;
CREATE TABLE `%DB_PREFIX%user_weibo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `weibo_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%vote`;
CREATE TABLE `%DB_PREFIX%vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '调查的项目名称',
  `begin_time` int(11) NOT NULL COMMENT '开始时间',
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `is_effect` tinyint(1) NOT NULL COMMENT '有效性',
  `sort` int(11) NOT NULL,
  `description` text NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%vote_ask`;
CREATE TABLE `%DB_PREFIX%vote_ask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '投票项名称',
  `type` tinyint(1) NOT NULL COMMENT '投票类型，单选多选/自定义可叠加 1:单选 2:多选 3:自定义',
  `sort` int(11) NOT NULL COMMENT ' 排序 大到小',
  `vote_id` int(11) NOT NULL COMMENT '调查ID',
  `val_scope` text NOT NULL COMMENT '预选范围 逗号分开',
  `is_fill` tinyint(1) NOT NULL COMMENT '1表示该项必填，0表示可以不填',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%vote_list`;
CREATE TABLE `%DB_PREFIX%vote_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '调查项ID',
  `value` text NOT NULL COMMENT '问题答案',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%vote_result`;
CREATE TABLE `%DB_PREFIX%vote_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '投票的名称',
  `count` int(11) NOT NULL COMMENT '计数',
  `vote_id` int(11) NOT NULL COMMENT '调查项ID',
  `vote_ask_id` int(11) NOT NULL COMMENT '投票项（问题）ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_account`;
CREATE TABLE `%DB_PREFIX%weixin_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL COMMENT 'AppID(应用ID)-第三方平台指 授权方appid',
  `appsecret` varchar(255) NOT NULL COMMENT 'AppSecret(应用密钥)-第三方平台无用',
  `app_url` varchar(255) NOT NULL COMMENT 'URL(服务器地址)-第三方平台无用',
  `app_token` varchar(255) NOT NULL COMMENT 'Token(令牌)-第三方平台无用',
  `app_encodingAESKey` varchar(255) NOT NULL COMMENT 'EncodingAESKey(消息加解密密钥)-第三方平台无用',
  `authorizer_appid` varchar(255) NOT NULL COMMENT '授权方appid',
  `authorizer_access_token` varchar(255) NOT NULL COMMENT '授权方令牌-第三方平台无用',
  `expires_in` int(11) NOT NULL COMMENT '授权方令牌 有效时间-第三方平台无用',
  `authorizer_refresh_token` varchar(255) NOT NULL COMMENT '刷新令牌-第三方平台',
  `func_info` text NOT NULL COMMENT '公众号授权给开发者的权限集列表',
  `verify_type_info` tinyint(1) NOT NULL COMMENT '授权方认证类型，-1代表未认证，0代表微信认证，1代表新浪微博认证，2代表腾讯微博认证，3代表已资质认证通过但还未通过名称认证，4代表已资质认证通过、还未通过名称认证，但通过了新浪微博认证，5代表已资质认证通过、还未通过名称认证，但通过了腾讯微博认证',
  `service_type_info` tinyint(1) NOT NULL COMMENT '授权方公众号类型，0代表订阅号，1代表由历史老帐号升级后的订阅号，2代表服务号',
  `nick_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL COMMENT '授权方公众号的原始ID',
  `authorizer_info` varchar(255) NOT NULL COMMENT '授权方昵称',
  `head_img` varchar(255) NOT NULL COMMENT '授权方头像',
  `alias` varchar(255) NOT NULL COMMENT '授权方公众号所设置的微信号，可能为空',
  `qrcode_url` varchar(255) NOT NULL COMMENT '二维码图片的URL，开发者最好自行也进行保存',
  `location_report` tinyint(1) NOT NULL COMMENT '地理位置上报选项 0 无上报 1 进入会话时上报 2 每5s上报',
  `voice_recognize` tinyint(1) NOT NULL COMMENT '语音识别开关选项 0 关闭语音识别 1 开启语音识别',
  `customer_service` tinyint(1) NOT NULL COMMENT '客服开关选项 0 关闭多客服 1 开启多客服',
  `is_authorized` tinyint(1) NOT NULL DEFAULT '0' COMMENT '授权方是否取消授权 0表示取消授权 1表示授权',
  `user_id` int(11) NOT NULL COMMENT '会员ID ，诺type为1，user_id 为空',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 表示前台会员 1 表示后台管理员',
  `industry_1` int(11) NOT NULL,
  `industry_1_status` tinyint(1) NOT NULL,
  `industry_2` int(11) NOT NULL,
  `industry_2_status` tinyint(1) NOT NULL,
  `test_user` varchar(255) DEFAULT NULL COMMENT '测试微信号',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `au_app_id` (`authorizer_appid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='//微信公众号列表';
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_api_get_record`;
CREATE TABLE `%DB_PREFIX%weixin_api_get_record` (
  `openid` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`openid`),
  KEY `account_id` (`account_id`) USING BTREE,
  KEY `idx_0` (`account_id`,`create_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='请求的用户记录';
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_conf`;
CREATE TABLE `%DB_PREFIX%weixin_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '配置输入的类型 0:文本输入 1:下拉框输入 2:图片上传 3:编辑器',
  `value_scope` text NOT NULL COMMENT '取值范围',
  `is_require` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_conf` tinyint(1) NOT NULL COMMENT '是否可配置 0: 可配置  1:不可配置',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='//微信配置选项';
INSERT INTO `%DB_PREFIX%weixin_conf` VALUES ('1','第三方平台appid','platform_appid','appid','0','0','','0','1','1','1');
INSERT INTO `%DB_PREFIX%weixin_conf` VALUES ('2','第三方平台token','platform_token','token','0','0','','0','1','1','2');
INSERT INTO `%DB_PREFIX%weixin_conf` VALUES ('3','第三方平台symmetric_key','platform_encodingAesKey','symmetric_key','0','0','','0','1','1','3');
INSERT INTO `%DB_PREFIX%weixin_conf` VALUES ('4','是否开启第三方平台','platform_status','0','0','4','0,1','0','1','1','4');
INSERT INTO `%DB_PREFIX%weixin_conf` VALUES ('5','第三方平台AppSecret','platform_appsecret','0','0','0','','0','1','1','1');
INSERT INTO `%DB_PREFIX%weixin_conf` VALUES ('6','component_verify_ticket','platform_component_verify_ticket','0','0','0','','0','1','0','6');
INSERT INTO `%DB_PREFIX%weixin_conf` VALUES ('7','第三方平台access_token','platform_component_access_token','0','0','0','','0','1','0','7');
INSERT INTO `%DB_PREFIX%weixin_conf` VALUES ('8','第三方平台预授权码','platform_pre_auth_code','0','0','0','','0','1','0','8');
INSERT INTO `%DB_PREFIX%weixin_conf` VALUES ('9','第三方平台access_token有效期','platform_component_access_token_expire','0','0','0','','0','1','0','9');
INSERT INTO `%DB_PREFIX%weixin_conf` VALUES ('10','第三方平台预授权码有效期','platform_pre_auth_code_expire','0','0','0','','0','1','0','10');
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_group`;
CREATE TABLE `%DB_PREFIX%weixin_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groupid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(200) NOT NULL DEFAULT '',
  `account_id` varchar(30) NOT NULL DEFAULT '',
  `fanscount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`,`account_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_msg_list`;
CREATE TABLE `%DB_PREFIX%weixin_msg_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dest` varchar(255) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) NOT NULL,
  `is_send` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `result` text NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  `title` text NOT NULL,
  `is_youhui` tinyint(1) NOT NULL,
  `youhui_id` int(11) NOT NULL,
  `code` varchar(60) NOT NULL COMMENT '发送的验证码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='//微信消息列表';
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_nav`;
CREATE TABLE `%DB_PREFIX%weixin_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '菜单名称',
  `sort` int(11) DEFAULT '0' COMMENT '菜单排序 大->小',
  `key_or_url` varchar(255) DEFAULT '' COMMENT '用于推送到微信平台的key或url(所有以http://开头的表示url，其余一率为key)',
  `event_type` enum('click') DEFAULT 'click' COMMENT '按钮的事件，目前微信只支持click',
  `account_id` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否已推送到微信(0:未推送或失败 1:成功)，该列同一个商家全部相同，菜单为一次性推送,对菜单本地修改时，批量更新该值为0',
  `u_id` int(11) DEFAULT NULL,
  `u_module` varchar(255) DEFAULT NULL,
  `u_action` varchar(255) DEFAULT NULL,
  `u_param` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`),
  KEY `event_type` (`event_type`),
  KEY `account_id` (`account_id`,`key_or_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='为微信自定义的菜单设置';
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_reply`;
CREATE TABLE `%DB_PREFIX%weixin_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `i_msg_type` enum('event','link','location','image','text') DEFAULT 'text' COMMENT '接收到的微信的推送到本系统api中的MsgType',
  `o_msg_type` enum('news','music','text') DEFAULT 'text' COMMENT '用于响应并回复给微信推送的消息类型 news:图文 music:音乐 text:纯文本',
  `keywords` varchar(300) DEFAULT NULL COMMENT '用于响应文本(i_msg_type:text或者i_event:click时对key的响应)类型的回复时进行匹配的关键词',
  `keywords_match` text COMMENT 'keywords的全文索引列',
  `keywords_match_row` text COMMENT 'keywords全文索引的未作unicode编码的原文，用于开发者查看',
  `address` text COMMENT '用于显示的地理地址',
  `api_address` text COMMENT '用于地理定位的API地址',
  `x_point` varchar(100) DEFAULT '' COMMENT '用于lbs消息,i_msg_type:location 匹配的经度',
  `y_point` varchar(100) DEFAULT '' COMMENT '用于lbs消息,i_msg_type:location 匹配的纬度',
  `scale_meter` int(11) DEFAULT '0' COMMENT '用于lbs消息,i_msg_type:location 匹配的距离范围(米)',
  `i_event` enum('subscribe','unsubscribe','click','empty') DEFAULT 'empty' COMMENT '用于响应i_msg_type为event时的对应事件',
  `reply_content` text COMMENT '回复的文本消息',
  `reply_music` varchar(255) DEFAULT '' COMMENT '回复的音乐链接',
  `reply_news_title` text COMMENT '图文回复的标题',
  `reply_news_description` text COMMENT '图文回复的描述',
  `reply_news_picurl` varchar(255) DEFAULT '' COMMENT '图文回复的图片链接',
  `reply_news_url` varchar(255) DEFAULT '' COMMENT '图文回复的跳转链接',
  `reply_news_content` text,
  `type` tinyint(1) DEFAULT '0' COMMENT '回复归类 \r\n0:普通的回复 \r\n1:默认回复(只能一条文本或图文) \r\n2:官网回复(只能有一条图文)\r\n3.业务数据(图文)\r\n4.关注时回复(只能有一条文本或图文) \r\n5.取消关注时回复(只能有一条文本或图文) ',
  `relate_data` varchar(255) DEFAULT '' COMMENT '关联的业务数据源(如youhui,vote)等',
  `relate_id` int(11) DEFAULT '0' COMMENT '所关联的relate_data的id，用于判断数据关联的删除(指定url)',
  `account_id` int(11) DEFAULT '0' COMMENT '所属的商家ID',
  `default_close` tinyint(1) DEFAULT '1' COMMENT '默认回复是否关闭 0：关闭 1：开启',
  `relate_type` tinyint(1) DEFAULT NULL COMMENT '与关联数据的关系 0:回复数据由关联数据源获取 1:只url跳转数据来源于关联数据',
  `match_type` tinyint(1) NOT NULL DEFAULT '0',
  `u_id` int(11) DEFAULT NULL,
  `u_module` varchar(255) DEFAULT NULL,
  `u_action` varchar(255) DEFAULT NULL,
  `u_param` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_msg_type` (`i_msg_type`),
  KEY `o_msg_type` (`o_msg_type`),
  KEY `i_event` (`i_event`),
  KEY `type` (`type`),
  KEY `relate_data` (`relate_data`),
  KEY `relate_id` (`relate_id`),
  KEY `account_id` (`account_id`),
  KEY `match_type` (`account_id`,`match_type`,`keywords`),
  FULLTEXT KEY `keywords_match` (`keywords_match`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商家回复设置表';
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_reply_relate`;
CREATE TABLE `%DB_PREFIX%weixin_reply_relate` (
  `main_reply_id` int(11) DEFAULT '0' COMMENT '主回复ID',
  `relate_reply_id` int(11) DEFAULT '0' COMMENT '关联的多图文用的子回复ID',
  `sort` tinyint(1) DEFAULT '0',
  KEY `main_reply_id` (`main_reply_id`),
  KEY `relate_reply_id` (`relate_reply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='多图文回复的关联配置';
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_send`;
CREATE TABLE `%DB_PREFIX%weixin_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `author` varchar(100) NOT NULL COMMENT '作者件',
  `media_file` varchar(255) NOT NULL COMMENT '多媒体文件',
  `content` text NOT NULL COMMENT '图文消息页面的内容，支持HTML标签',
  `send_type` tinyint(4) NOT NULL COMMENT '0普通群发，1高级群发',
  `user_type` tinyint(4) NOT NULL COMMENT '发送对 0所有 1会员组 2会员等级',
  `user_type_id` int(11) NOT NULL COMMENT '组ID或者等级ID',
  `msgtype` enum('news','music','video','voice','image','text') NOT NULL COMMENT '消息类型',
  `relate_type` tinyint(4) NOT NULL COMMENT '与关联数据的关系 0:回复数据由关联数据源获取 1:只url跳转数据来源于关联数据',
  `relate_data` varchar(255) NOT NULL,
  `relate_id` int(255) NOT NULL,
  `url` varchar(255) NOT NULL COMMENT '连接地址',
  `digest` text NOT NULL COMMENT '简介',
  `account_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `send_time` int(11) NOT NULL COMMENT '推送时间',
  `media_id` varchar(255) NOT NULL COMMENT '微信服务器的关联多媒体ID',
  `u_id` int(11) NOT NULL,
  `u_module` varchar(255) NOT NULL,
  `u_action` varchar(255) NOT NULL,
  `u_param` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_send_relate`;
CREATE TABLE `%DB_PREFIX%weixin_send_relate` (
  `relate_id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_tmpl`;
CREATE TABLE `%DB_PREFIX%weixin_tmpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '菜单名称',
  `sort` int(11) DEFAULT '0' COMMENT '菜单排序 大->小',
  `account_id` int(11) DEFAULT '0' COMMENT '所属的商家ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信模板';
DROP TABLE IF EXISTS `%DB_PREFIX%weixin_user`;
CREATE TABLE `%DB_PREFIX%weixin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员ID',
  `account_id` int(11) NOT NULL,
  `subscribe` tinyint(1) NOT NULL COMMENT '用户是否订阅该公众号标识，值为0时，代表此用户没有关注该公众号，拉取不到其余信息。',
  `openid` varchar(255) NOT NULL COMMENT '用户的标识，对当前公众号唯一',
  `nickname` varchar(255) NOT NULL,
  `sex` tinyint(1) NOT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `subscribe_time` varchar(255) DEFAULT NULL COMMENT '用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间',
  `unionid` varchar(255) DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段。',
  `remark` varchar(255) DEFAULT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` int(11) DEFAULT NULL COMMENT '用户所在的分组ID',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `only` (`account_id`,`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=733 DEFAULT CHARSET=utf8 COMMENT='//微信公众号会员列表';
