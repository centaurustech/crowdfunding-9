-- fanwe SQL Dump Program
-- Microsoft-IIS/6.0
-- 
-- DATE : 2015-08-23 16:01:59
-- MYSQL SERVER VERSION : 5.1.71-community
-- PHP VERSION : cgi-fcgi
-- Vol : 1


DROP TABLE IF EXISTS `%DB_PREFIX%admin`;
CREATE TABLE `%DB_PREFIX%admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_name` varchar(255) NOT NULL,
  `adm_password` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `role_id` int(11) NOT NULL,
  `login_time` int(11) NOT NULL,
  `login_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_adm_name` (`adm_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%admin` VALUES ('1','admin','f6fdffe48c908deb0f4c3bd36c032e72','1','0','4','1440180186','101.244.167.214');
DROP TABLE IF EXISTS `%DB_PREFIX%adv`;
CREATE TABLE `%DB_PREFIX%adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmpl` varchar(255) NOT NULL,
  `adv_id` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_table` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmpl` (`tmpl`),
  KEY `adv_id` (`adv_id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_table` (`rel_table`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%api_login`;
CREATE TABLE `%DB_PREFIX%api_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `bicon` varchar(255) NOT NULL,
  `is_weibo` tinyint(1) NOT NULL,
  `dispname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%api_login` VALUES ('13','新浪api登录接口','a:3:{s:7:\"app_key\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";s:7:\"app_url\";s:0:\"\";}','Sina','./public/attachment/201210/13/17/50792e5bbc901.gif','./public/attachment/201210/13/16/5079277a72c9d.gif','1','新浪微博');
INSERT INTO `%DB_PREFIX%api_login` VALUES ('15','微信登录','N;','Weixin','/public/images/api_login/Weixin_api.png','/public/images/api_login/Weixin_api.png','0','微信登录');
INSERT INTO `%DB_PREFIX%api_login` VALUES ('16','腾讯微博登录插件','a:3:{s:7:\"app_key\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";s:7:\"app_url\";s:0:\"\";}','Tencent','/public/images/api_login/Tencent_api.png','/public/images/api_login/Tencent_api.png','1','腾讯微博');
DROP TABLE IF EXISTS `%DB_PREFIX%article`;
CREATE TABLE `%DB_PREFIX%article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `content` text NOT NULL COMMENT ' 文章内容',
  `cate_id` int(11) NOT NULL COMMENT '文章分类ID',
  `create_time` int(11) NOT NULL COMMENT '发表时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `add_admin_id` int(11) NOT NULL COMMENT '发布人(管理员ID)',
  `is_effect` tinyint(4) NOT NULL COMMENT '有效性标识',
  `rel_url` varchar(255) NOT NULL COMMENT '自动跳转的外链',
  `update_admin_id` int(11) NOT NULL COMMENT '更新人(管理员ID)',
  `is_delete` tinyint(4) NOT NULL COMMENT '删除标识',
  `click_count` int(11) NOT NULL COMMENT '点击数',
  `sort` int(11) NOT NULL COMMENT '排序 由大到小',
  `seo_title` text NOT NULL COMMENT '自定义seo页面标题',
  `seo_keyword` text NOT NULL COMMENT '自定义seo页面keyword',
  `seo_description` text NOT NULL COMMENT '自定义seo页面标述',
  `uname` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `is_week` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `icon` varchar(255) NOT NULL COMMENT '展示图表',
  `writer` varchar(255) NOT NULL COMMENT '发布者',
  `tags` varchar(255) NOT NULL COMMENT '标签',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`),
  KEY `create_time` (`create_time`),
  KEY `update_time` (`update_time`),
  KEY `click_count` (`click_count`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=5305 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%article` VALUES ('68','关于我们','<p>\r\n	<strong><span style=\"font-size:14px;\"><span style=\"font-family:\'Microsoft YaHei\';\">众筹，译自国外crowdfunding一词，即大众筹资或群众筹资。是指用团购+预购的形式，向网友募集项目资金的模式。</span><span style=\"font-family:\'Microsoft YaHei\';\"></span><span style=\"font-family:\'Microsoft YaHei\';\">众筹利用互联网和SNS传播的特性，让许多有梦想的人可以向公众展示自己的创意，发起项目争取别人的支持与帮助，进而获得所需要的援助，支持者则会获得实物、服务等不同形式的回报。</span></span></strong>\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-size:14px;font-family:\'Microsoft YaHei\';\">&nbsp;众筹是一个协助亲们发起创意、梦想的平台，不论你是学生、白领、艺术家、明星，如果你有一个想完成的计划（例如：电影、音乐、动漫、设计、公益等），你可以在此发起项目向大家展示你的计划，并邀请喜欢你的计划的人以资金支持你。如果你愿意帮助别人，支持别人的梦想，你可以在众筹浏览到各行各业的人发起的项目计划，也可以成为发起人的梦想合伙人，当你们一起见证项目成功后，你还会获得发起人感谢你支持的回报。</span></strong>\r\n</p>','22','1413251192','1439886066','0','1','','0','0','0','1','','','','','','','1','1','','VK维客众筹','众筹网');
INSERT INTO `%DB_PREFIX%article` VALUES ('72','常见问题','<div style=\"text-align:center;\">\r\n	<!--[if gte mso 9]>MicrosoftInternetExplorer402DocumentNotSpecified7.8Normal0<![endif]-->\r\n	<p class=\"p0\" align=\"center\" style=\"text-align:left;\">\r\n		<b>众筹，译自国外crowdfunding一词，即大众筹资或群众筹资。是指用团购+预购的形式，向网友募集项目资金的模式。众筹利用互联网和SNS传播的特性，让许多有梦想的人可以向公众展示自己的创意，发起项目争取别人的支持与帮助，进而获得所需要的援助，支持者则会获得实物、服务等不同形式的回报。</b>\r\n	</p>\r\n	<p style=\"text-align:left;color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n		<b><br />\r\n</b> \r\n	</p>\r\n<b>\r\n	<div style=\"text-align:left;\">\r\n		<b><span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:21px;background-color:#FFFFFF;\">众筹是一个协助亲们发起创意、梦想的平台，不论你是学生、白领、艺术家、明星，如果你有一个想完成的计划（例如：电影、音乐、动漫、设计、公益等），你可以在此发起项目向大家展示你的计划，并邀请喜欢你的计划的人以资金支持你。如果你愿意帮助别人，支持别人的梦想，你可以在众筹浏览到各行各业的人发起的项目计划，也可以成为发起人的梦想合伙人，当你们一起见证项目成功后，你还会获得发起人感谢你支持的回报。</span></b>\r\n	</div>\r\n</b> \r\n	<p style=\"text-align:left;\">\r\n		<br />\r\n	</p>\r\n	<p class=\"p0\" style=\"margin-left:18.0000pt;\" align=\"left\">\r\n		<span style=\"font-size:14px;\" 宋体\";\"=\"\"><span><span style=\"font-size:14px;\"></span></span></span> \r\n	</p>\r\n<!--[if gte mso 9]><![endif]-->\r\n</div>','24','1413338371','1439886023','0','1','index.php?ctl=faq','0','0','0','5','','','','','','','1','1','','VK维客众筹','VK维客众筹');
INSERT INTO `%DB_PREFIX%article` VALUES ('77','项目规范','<div style=\"text-align:center;\">\r\n	<!--[if gte mso 9]>MicrosoftInternetExplorer402DocumentNotSpecified7.8Normal0<![endif]-->\r\n	<p class=\"p0\" align=\"center\" style=\"text-align:left;\">\r\n		<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">本众筹系统是中国最专业的众筹系统服务提供商，帮您在一天内快速搭建众筹平台。</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">系统咨询热线：&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">以下是众筹网站发布项目的基本要求，不合要求的项目，将会被拒绝或删除。如果你有疑问，可以通过邮件或电话联系我们。&nbsp;</span><br />\r\n<br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">附注：某些规范会随着时间而更新或者调整，会导致一些旧项目并不能完全符合最新规范。</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">项目发布团队资格：</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; （团队中必须有至少一名成员满足以下条件）</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 18周岁以上;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 中华人民共和国公民;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 拥有能够在中国地区接收人民币汇款的银行卡或者支付宝、财付通账户;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 提供必要的身份认证和资质认证，根据项目内容，有可能包括但不限于：身份证，护照，学历证明等;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 其他跟项目发布、执行需求、渠道销售相关的必须条件。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">项目发布：</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 根据相关法律法规，项目发布申请提交后，须经过众筹网站工作人员审核后才能发布;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 根据项目的内容，众筹网站会要求项目发布团队提供相关材料，证明项目的可行性，以及项目发布团队的执行能力;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 众筹网站对提交上线审核的项目是否拥有上线资格具有最终决定权;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 项目在众筹网站上线预售期间，不能在中国大陆其他相似平台（包括但不限于众筹网站、电商网站、及其他形式网店等）同时发布。一经发现将立即下线处 理，其项目上线期间所获得的金额将被立即退回给预订用户在众筹网站上的账户中。</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">项目内容规范（不符合以下内容规范的项目将被退回）：</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 1. 只允许尚未正式对外发布的项目在众筹网站上线。项目在众筹网站上线之前，不能在中国大陆其他相似平台（包括但不限于众筹网站、电商网站、及其 他形式网店等）或媒体发布。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 2. 项目必须为智能项目。智能项目的定义为：设备必须可采集数据、联网联动，并提供自动化的服务。单纯有设计感的非智能项目暂时无法通过审核。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 3. 项目发布方必须在项目上线前提供无bug的实物试产样机，由众筹网站工作人员进行盲测确保没有问题才能正式上线。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 4. 项目内容介绍框架必须包含“项目介绍”、“团队介绍”、“研发进展”等重要板块。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 5. 项目软硬件设计必须完整、合理、具有可行性；有完整的计划和执行能力，且图片、视频不能借用或盗用非自行拍摄的内容。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 6. 项目发布团队必须有明确的生产计划及售后服务计划，尚不确定是否会量产的项目不符合首次发布的标准皆不能上线。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 7. 提交申请的项目必须能符合如下分类：医疗健康、家居生活、出行定位、影音娱乐、科技外设。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 8. 以下类别的项目或内容将不被允许在此发布或作为给预订用户的附加回报：</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 烟、酒相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 洗浴、美容或化妆项目相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 毒品、类似毒品的物质、吸毒用具、烟等相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 枪支、武器和刀具相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 营养补充剂相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 色情、保健、性用品内容相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 房地产相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 饮食类相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 财政奖励(所有权、利润份额、还款贷款等)</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 多级直销和传销类相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 令人反感的内容(仇恨言论、不适当内容等)</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 支持或反对政治党派的项目</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 推广或美化暴力行为的项目</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 对奖、彩票和抽奖活动相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 股权、债券、分红、利息等形式的附加回报</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 与首发项目无关的附加回报</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 以其他无可行、不合理的承诺作为附加回报</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">举报及推荐标准：</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 举报：不符合《项目内容规范》</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 合格：符合《项目内容规范》</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 推荐：合格并且满足下列标准中的任意1-3项（含3项），视为推荐</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 强烈推荐：合格并且满足下列标准中的任意3项以上，视为强烈推荐</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 1. 项目定位清晰，功能逻辑性强、完整且条理清晰、团队对研发和生产有完整的计划和管控能力，有相关的图片和视频（图片、视频不能借用或盗用非 本人/公司拍摄的）</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 2. 项目符合时下趋势、有热点，具备可传播性</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 3. 项目本身有创意、创新；非山寨、抄袭、跟风；市面上无同类相似项目</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 4. 项目设计感好，有品质，符合大众审美喜好的要求</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 5. 项目发布团队有一定的推广渠道、媒体资源、或在公众平台上有一定的影响力</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 6. 项目发布团队的话题运营能力出众，与粉丝互动积极正面，能调动起网友的兴趣和参与感</span>\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"p0\" style=\"margin-left:18.0000pt;\" align=\"left\">\r\n		<span style=\"font-size:14px;\" 宋体\";\"=\"\"><span><span style=\"font-size:14px;\"></span></span></span> \r\n	</p>\r\n<!--[if gte mso 9]><![endif]-->\r\n</div>','28','1413588165','1439885977','0','1','','0','0','0','9','','','','','','','1','1','','VK维客众筹','VK维客众筹');
INSERT INTO `%DB_PREFIX%article` VALUES ('75','使用条款','<div style=\"text-align:center;\">\r\n	<!--[if gte mso 9]>MicrosoftInternetExplorer402DocumentNotSpecified7.8Normal0<![endif]-->\r\n	<p class=\"p0\" align=\"center\" style=\"text-align:left;\">\r\n		<b>众筹，译自国外crowdfunding一词，即大众筹资或群众筹资。是指用团购+预购的形式，向网友募集项目资金的模式。众筹利用互联网和SNS传播的特性，让许多有梦想的人可以向公众展示自己的创意，发起项目争取别人的支持与帮助，进而获得所需要的援助，支持者则会获得实物、服务等不同形式的回报。</b>\r\n	</p>\r\n	<p style=\"text-align:left;color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n		<b><br />\r\n</b>\r\n	</p>\r\n<b>\r\n	<div style=\"text-align:left;\">\r\n		<b><span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:21px;background-color:#FFFFFF;\">众筹是一个协助亲们发起创意、梦想的平台，不论你是学生、白领、艺术家、明星，如果你有一个想完成的计划（例如：电影、音乐、动漫、设计、公益等），你可以在此发起项目向大家展示你的计划，并邀请喜欢你的计划的人以资金支持你。如果你愿意帮助别人，支持别人的梦想，你可以在众筹浏览到各行各业的人发起的项目计划，也可以成为发起人的梦想合伙人，当你们一起见证项目成功后，你还会获得发起人感谢你支持的回报。</span></b>\r\n	</div>\r\n</b> \r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"p0\" style=\"margin-left:18.0000pt;\" align=\"left\">\r\n		<span style=\"font-size:14px;\" 宋体\";\"=\"\"><span><span style=\"font-size:14px;\"></span></span></span> \r\n	</p>\r\n<!--[if gte mso 9]><![endif]-->\r\n</div>','21','1413586458','1439886006','0','1','','0','0','0','7','','','','','','','1','1','','VK维客众筹','VK维客众筹');
INSERT INTO `%DB_PREFIX%article` VALUES ('78','版权申明','<div style=\"text-align:center;\">\r\n	<!--[if gte mso 9]>MicrosoftInternetExplorer402DocumentNotSpecified7.8Normal0<![endif]-->\r\n	<p class=\"p0\" align=\"center\" style=\"text-align:left;\">\r\n		<b>众筹，译自国外crowdfunding一词，即大众筹资或群众筹资。是指用团购+预购的形式，向网友募集项目资金的模式。众筹利用互联网和SNS传播的特性，让许多有梦想的人可以向公众展示自己的创意，发起项目争取别人的支持与帮助，进而获得所需要的援助，支持者则会获得实物、服务等不同形式的回报。</b>\r\n	</p>\r\n	<p style=\"text-align:left;color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n		<b><br />\r\n</b>\r\n	</p>\r\n<b>\r\n	<div style=\"text-align:left;\">\r\n		<b><span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:21px;background-color:#FFFFFF;\">众筹是一个协助亲们发起创意、梦想的平台，不论你是学生、白领、艺术家、明星，如果你有一个想完成的计划（例如：电影、音乐、动漫、设计、公益等），你可以在此发起项目向大家展示你的计划，并邀请喜欢你的计划的人以资金支持你。如果你愿意帮助别人，支持别人的梦想，你可以在众筹浏览到各行各业的人发起的项目计划，也可以成为发起人的梦想合伙人，当你们一起见证项目成功后，你还会获得发起人感谢你支持的回报。</span></b>\r\n	</div>\r\n</b> \r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"p0\" style=\"margin-left:18.0000pt;\" align=\"left\">\r\n		<span style=\"font-size:14px;\" 宋体\";\"=\"\"><span><span style=\"font-size:14px;\"></span></span></span> \r\n	</p>\r\n<!--[if gte mso 9]><![endif]-->\r\n</div>','21','1413588553','1439885952','0','1','','0','0','0','10','','','','','','','1','1','','VK维客众筹','VK维客众筹');
INSERT INTO `%DB_PREFIX%article` VALUES ('79','风险提示','<div style=\"text-align:center;\">\r\n	<!--[if gte mso 9]>MicrosoftInternetExplorer402DocumentNotSpecified7.8Normal0<![endif]-->\r\n	<p class=\"p0\" align=\"center\" style=\"text-align:left;\">\r\n		<b>众筹，译自国外crowdfunding一词，即大众筹资或群众筹资。是指用团购+预购的形式，向网友募集项目资金的模式。众筹利用互联网和SNS传播的特性，让许多有梦想的人可以向公众展示自己的创意，发起项目争取别人的支持与帮助，进而获得所需要的援助，支持者则会获得实物、服务等不同形式的回报。</b>\r\n	</p>\r\n	<p style=\"text-align:left;color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n		<b><br />\r\n</b>\r\n	</p>\r\n<b>\r\n	<div style=\"text-align:left;\">\r\n		<b><span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:21px;background-color:#FFFFFF;\">众筹是一个协助亲们发起创意、梦想的平台，不论你是学生、白领、艺术家、明星，如果你有一个想完成的计划（例如：电影、音乐、动漫、设计、公益等），你可以在此发起项目向大家展示你的计划，并邀请喜欢你的计划的人以资金支持你。如果你愿意帮助别人，支持别人的梦想，你可以在众筹浏览到各行各业的人发起的项目计划，也可以成为发起人的梦想合伙人，当你们一起见证项目成功后，你还会获得发起人感谢你支持的回报。</span></b>\r\n	</div>\r\n</b> \r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"p0\" style=\"margin-left:18.0000pt;\" align=\"left\">\r\n		<span style=\"font-size:14px;\" 宋体\";\"=\"\"><span><span style=\"font-size:14px;\"></span></span></span> \r\n	</p>\r\n<!--[if gte mso 9]><![endif]-->\r\n</div>','28','1413588976','1439885933','0','1','','0','0','0','11','','','','/fxts','','','1','1','','VK维客众筹','众筹网');
INSERT INTO `%DB_PREFIX%article` VALUES ('85','业务流程','<div style=\"text-align:center;\">\r\n	<!--[if gte mso 9]>MicrosoftInternetExplorer402DocumentNotSpecified7.8Normal0<![endif]-->\r\n	<p class=\"p0\" align=\"center\" style=\"text-align:left;\">\r\n		<b>众筹，译自国外crowdfunding一词，即大众筹资或群众筹资。是指用团购+预购的形式，向网友募集项目资金的模式。众筹利用互联网和SNS传播的特性，让许多有梦想的人可以向公众展示自己的创意，发起项目争取别人的支持与帮助，进而获得所需要的援助，支持者则会获得实物、服务等不同形式的回报。</b>\r\n	</p>\r\n	<p style=\"text-align:left;color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n		<b><br />\r\n</b>\r\n	</p>\r\n<b>\r\n	<div style=\"text-align:left;\">\r\n		<b><span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:21px;background-color:#FFFFFF;\">众筹是一个协助亲们发起创意、梦想的平台，不论你是学生、白领、艺术家、明星，如果你有一个想完成的计划（例如：电影、音乐、动漫、设计、公益等），你可以在此发起项目向大家展示你的计划，并邀请喜欢你的计划的人以资金支持你。如果你愿意帮助别人，支持别人的梦想，你可以在众筹浏览到各行各业的人发起的项目计划，也可以成为发起人的梦想合伙人，当你们一起见证项目成功后，你还会获得发起人感谢你支持的回报。</span></b>\r\n	</div>\r\n</b> \r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"p0\" style=\"margin-left:18.0000pt;\" align=\"left\">\r\n		<span style=\"font-size:14px;\" 宋体\";\"=\"\"><span><span style=\"font-size:14px;\"></span></span></span> \r\n	</p>\r\n<!--[if gte mso 9]><![endif]-->\r\n</div>','24','1415744764','1439885917','0','1','','0','0','0','1','','','','/ywlc/','','','1','1','','VK维客众筹','众筹网');
DROP TABLE IF EXISTS `%DB_PREFIX%article_cate`;
CREATE TABLE `%DB_PREFIX%article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '分类名称',
  `brief` varchar(255) NOT NULL COMMENT '分类简介(备用字段)',
  `pid` int(11) NOT NULL COMMENT '父ID，程序分类可分二级',
  `is_effect` tinyint(4) NOT NULL COMMENT '有效性标识',
  `is_delete` tinyint(4) NOT NULL COMMENT '删除标识',
  `type_id` tinyint(1) NOT NULL COMMENT '型 0:普通文章（可通前台分类列表查找到） 1.帮助文章（用于前台页面底部的站点帮助） 2.公告文章（用于前台页面公告模块的调用） 3.系统文章（自定义的一些文章，需要前台自定义一些入口链接到该文章） 所属该分类的所有文章类型与分类一致',
  `sort` int(11) NOT NULL,
  `seo_title` varchar(255) NOT NULL COMMENT 'SEO标题',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `type_id` (`type_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%article_cate` VALUES ('21','站点申明','','0','1','0','1','10','zdsm');
INSERT INTO `%DB_PREFIX%article_cate` VALUES ('22','关于我们','','0','1','0','1','0','gywm');
INSERT INTO `%DB_PREFIX%article_cate` VALUES ('29','行业新闻','','0','1','0','0','20','hyxw');
INSERT INTO `%DB_PREFIX%article_cate` VALUES ('24','新手帮助','','0','1','0','1','1','xsbz');
INSERT INTO `%DB_PREFIX%article_cate` VALUES ('25','活动报名','','0','0','0','0','5','hdbm');
INSERT INTO `%DB_PREFIX%article_cate` VALUES ('26','站内新闻','','0','1','0','0','21','znxw');
INSERT INTO `%DB_PREFIX%article_cate` VALUES ('27','合作方式','','0','0','0','1','7','hzfs');
INSERT INTO `%DB_PREFIX%article_cate` VALUES ('28','法律条款','','0','1','0','1','8','fltk');
DROP TABLE IF EXISTS `%DB_PREFIX%auto_cache`;
CREATE TABLE `%DB_PREFIX%auto_cache` (
  `cache_key` varchar(100) NOT NULL,
  `cache_type` varchar(100) NOT NULL,
  `cache_data` text NOT NULL,
  `cache_time` int(11) NOT NULL,
  PRIMARY KEY (`cache_key`,`cache_type`),
  KEY `cache_type` (`cache_type`),
  KEY `cache_key` (`cache_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%bank`;
CREATE TABLE `%DB_PREFIX%bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '银行名称',
  `is_rec` tinyint(1) NOT NULL COMMENT '是否推荐',
  `day` int(11) NOT NULL COMMENT '处理时间',
  `sort` int(11) NOT NULL COMMENT '银行排序',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%bank` VALUES ('1','中国工商银行','1','3','0','./public/bank/1.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('2','中国农业银行','1','3','0','./public/bank/2.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('3','中国建设银行','1','3','0','./public/bank/3.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('4','招商银行','1','3','0','./public/bank/4.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('5','中国光大银行','1','3','0','./public/bank/5.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('6','中国邮政储蓄银行','1','3','0','./public/bank/6.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('7','兴业银行','1','3','0','./public/bank/7.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('8','中国银行','0','3','0','./public/bank/8.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('9','交通银行','0','3','3','./public/bank/9.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('10','中信银行','0','3','0','./public/bank/10.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('11','华夏银行','0','3','0','./public/bank/11.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('12','上海浦东发展银行','0','3','1','./public/bank/12.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('13','城市信用社','0','3','0','./public/bank/13.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('14','恒丰银行','0','3','0','./public/bank/14.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('15','广东发展银行','0','3','0','./public/bank/15.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('16','深圳发展银行','0','3','2','./public/bank/16.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('17','中国民生银行','0','3','0','./public/bank/17.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('18','中国农业发展银行','0','3','0','./public/bank/18.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('19','农村商业银行','0','3','0','./public/bank/19.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('20','农村信用社','0','3','0','./public/bank/20.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('21','城市商业银行','0','3','0','./public/bank/21.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('22','农村合作银行','0','3','0','./public/bank/22.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('23','浙商银行','0','3','0','./public/bank/23.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('24','上海农商银行','0','3','0','./public/bank/24.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('25','中国进出口银行','0','3','0','./public/bank/25.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('26','渤海银行','0','3','0','./public/bank/26.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('27','国家开发银行','0','3','0','./public/bank/27.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('28','村镇银行','0','3','0','./public/bank/28.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('29','徽商银行股份有限公司','0','3','0','./public/bank/29.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('30','南洋商业银行','0','3','0','./public/bank/30.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('31','韩亚银行','0','3','0','./public/bank/31.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('32','花旗银行','0','3','0','./public/bank/32.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('33','渣打银行','0','3','0','./public/bank/33.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('34','华一银行','0','3','0','./public/bank/34.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('35','东亚银行','1','3','0','./public/bank/35.jpg');
INSERT INTO `%DB_PREFIX%bank` VALUES ('36','苏格兰皇家银行','1','1','26','./public/bank/36.jpg');
DROP TABLE IF EXISTS `%DB_PREFIX%collocation`;
CREATE TABLE `%DB_PREFIX%collocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `fee_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%conf`;
CREATE TABLE `%DB_PREFIX%conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `input_type` tinyint(1) NOT NULL COMMENT '配置输入的类型 0:文本输入 1:下拉框输入 2:图片上传 3:编辑器',
  `value_scope` text NOT NULL COMMENT '取值范围',
  `is_effect` tinyint(1) NOT NULL,
  `is_conf` tinyint(1) NOT NULL COMMENT '是否可配置 0: 可配置  1:不可配置',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%conf` VALUES ('1','DEFAULT_ADMIN','admin','1','0','','1','0','0');
INSERT INTO `%DB_PREFIX%conf` VALUES ('2','URL_MODEL','0','1','1','0,1','1','1','3');
INSERT INTO `%DB_PREFIX%conf` VALUES ('3','AUTH_KEY','fanwe','1','0','','1','1','4');
INSERT INTO `%DB_PREFIX%conf` VALUES ('4','TIME_ZONE','8','1','1','0,8','1','1','1');
INSERT INTO `%DB_PREFIX%conf` VALUES ('5','ADMIN_LOG','1','1','1','0,1','0','1','0');
INSERT INTO `%DB_PREFIX%conf` VALUES ('6','DB_VERSION','1.6','0','0','','1','0','0');
INSERT INTO `%DB_PREFIX%conf` VALUES ('7','DB_VOL_MAXSIZE','8000000','1','0','','1','1','11');
INSERT INTO `%DB_PREFIX%conf` VALUES ('8','WATER_MARK','','2','2','','1','1','48');
INSERT INTO `%DB_PREFIX%conf` VALUES ('10','BIG_WIDTH','500','2','0','','0','0','49');
INSERT INTO `%DB_PREFIX%conf` VALUES ('11','BIG_HEIGHT','500','2','0','','0','0','50');
INSERT INTO `%DB_PREFIX%conf` VALUES ('12','SMALL_WIDTH','200','2','0','','0','0','51');
INSERT INTO `%DB_PREFIX%conf` VALUES ('13','SMALL_HEIGHT','200','2','0','','0','0','52');
INSERT INTO `%DB_PREFIX%conf` VALUES ('14','WATER_ALPHA','50','2','0','','1','1','53');
INSERT INTO `%DB_PREFIX%conf` VALUES ('15','WATER_POSITION','4','2','1','1,2,3,4,5','1','1','54');
INSERT INTO `%DB_PREFIX%conf` VALUES ('16','MAX_IMAGE_SIZE','3000000','2','0','','1','1','55');
INSERT INTO `%DB_PREFIX%conf` VALUES ('17','ALLOW_IMAGE_EXT','jpg,gif,png','2','0','','1','1','56');
INSERT INTO `%DB_PREFIX%conf` VALUES ('18','BG_COLOR','#ffffff','2','0','','0','0','57');
INSERT INTO `%DB_PREFIX%conf` VALUES ('19','IS_WATER_MARK','0','2','1','0,1','1','1','58');
INSERT INTO `%DB_PREFIX%conf` VALUES ('20','TEMPLATE','fanwe_1','1','0','','1','1','17');
INSERT INTO `%DB_PREFIX%conf` VALUES ('21','SITE_LOGO','./public/attachment/201508/17/12/55d162085b8dd.png','1','2','','1','1','19');
INSERT INTO `%DB_PREFIX%conf` VALUES ('173','SEO_TITLE','预购一个梦想','1','0','','1','1','20');
INSERT INTO `%DB_PREFIX%conf` VALUES ('23','MAIL_ON','1','3','1','0,1','1','1','72');
INSERT INTO `%DB_PREFIX%conf` VALUES ('24','SMS_ON','1','5','1','0,1','1','1','78');
INSERT INTO `%DB_PREFIX%conf` VALUES ('26','PUBLIC_DOMAIN_ROOT','','2','0','','0','1','59');
INSERT INTO `%DB_PREFIX%conf` VALUES ('27','APP_MSG_SENDER_OPEN','1','1','1','0,1','1','1','9');
INSERT INTO `%DB_PREFIX%conf` VALUES ('28','ADMIN_MSG_SENDER_OPEN','1','1','1','0,1','1','1','10');
INSERT INTO `%DB_PREFIX%conf` VALUES ('29','GZIP_ON','1','1','1','0,1','1','1','2');
INSERT INTO `%DB_PREFIX%conf` VALUES ('42','SITE_NAME','VK维客众筹','1','0','','1','1','1');
INSERT INTO `%DB_PREFIX%conf` VALUES ('30','CACHE_ON','1','1','1','0,1','1','1','7');
INSERT INTO `%DB_PREFIX%conf` VALUES ('31','EXPIRED_TIME','0','1','0','','1','1','5');
INSERT INTO `%DB_PREFIX%conf` VALUES ('32','TMPL_DOMAIN_ROOT','','2','0','0','0','0','62');
INSERT INTO `%DB_PREFIX%conf` VALUES ('33','CACHE_TYPE','File','1','1','File,Xcache,Memcached','1','1','7');
INSERT INTO `%DB_PREFIX%conf` VALUES ('34','MEMCACHE_HOST','127.0.0.1:11211','1','0','','1','1','8');
INSERT INTO `%DB_PREFIX%conf` VALUES ('35','IMAGE_USERNAME','admin','2','0','','0','1','60');
INSERT INTO `%DB_PREFIX%conf` VALUES ('36','IMAGE_PASSWORD','admin','2','4','','0','1','61');
INSERT INTO `%DB_PREFIX%conf` VALUES ('37','DEAL_MSG_LOCK','0','0','0','','0','0','0');
INSERT INTO `%DB_PREFIX%conf` VALUES ('38','SEND_SPAN','2','1','0','','1','1','85');
INSERT INTO `%DB_PREFIX%conf` VALUES ('39','TMPL_CACHE_ON','1','1','1','0,1','1','1','6');
INSERT INTO `%DB_PREFIX%conf` VALUES ('40','DOMAIN_ROOT','','1','0','','1','0','10');
INSERT INTO `%DB_PREFIX%conf` VALUES ('41','COOKIE_PATH','/','1','0','','0','1','10');
INSERT INTO `%DB_PREFIX%conf` VALUES ('43','INTEGRATE_CFG','','0','0','','1','0','0');
INSERT INTO `%DB_PREFIX%conf` VALUES ('44','INTEGRATE_CODE','','0','0','','1','0','0');
INSERT INTO `%DB_PREFIX%conf` VALUES ('172','PAY_RADIO','0.1','3','0','','1','1','10');
INSERT INTO `%DB_PREFIX%conf` VALUES ('176','SITE_LICENSE','VK维客众筹 zc3.vitakung.com 版权所有','1','0','','1','1','22');
INSERT INTO `%DB_PREFIX%conf` VALUES ('174','SEO_KEYWORD','VK维客众筹 - 预购一个梦想','1','0','','1','1','21');
INSERT INTO `%DB_PREFIX%conf` VALUES ('175','SEO_DESCRIPTION','VK维客众筹','1','0','','1','1','22');
INSERT INTO `%DB_PREFIX%conf` VALUES ('177','PROMOTE_MSG_LOCK','1','0','0','','0','0','0');
INSERT INTO `%DB_PREFIX%conf` VALUES ('178','PROMOTE_MSG_PAGE','0','0','0','0','0','0','0');
INSERT INTO `%DB_PREFIX%conf` VALUES ('179','STATE_CDOE','','1','0','','1','1','23');
INSERT INTO `%DB_PREFIX%conf` VALUES ('180','USER_VERIFY','2','4','1','0,1,2,3,4','1','1','63');
INSERT INTO `%DB_PREFIX%conf` VALUES ('181','INVITE_REFERRALS','10','4','0','','1','1','67');
INSERT INTO `%DB_PREFIX%conf` VALUES ('182','INVITE_REFERRALS_TYPE','1','4','1','0,1','0','1','68');
INSERT INTO `%DB_PREFIX%conf` VALUES ('183','USER_MESSAGE_AUTO_EFFECT','1','4','1','0,1','1','1','64');
INSERT INTO `%DB_PREFIX%conf` VALUES ('184','BUY_INVITE_REFERRALS','20','4','0','','1','1','67');
INSERT INTO `%DB_PREFIX%conf` VALUES ('185','REFERRAL_IP_LIMI','1','4','1','0,1','1','1','71');
INSERT INTO `%DB_PREFIX%conf` VALUES ('190','MAIL_SEND_PAYMENT','1','5','1','0,1','1','1','75');
INSERT INTO `%DB_PREFIX%conf` VALUES ('191','REPLY_ADDRESS','2602082743@qq.com','5','0','','1','1','77');
INSERT INTO `%DB_PREFIX%conf` VALUES ('192','MAIL_SEND_DELIVERY','1','5','1','0,1','1','1','76');
INSERT INTO `%DB_PREFIX%conf` VALUES ('193','MAIL_ON','1','5','1','0,1','1','1','72');
INSERT INTO `%DB_PREFIX%conf` VALUES ('262','NETWORK_FOR_RECORD','京ICP备11046674号-3','1','0','','1','1','201');
INSERT INTO `%DB_PREFIX%conf` VALUES ('263','QR_CODE','./public/attachment/201508/18/23/55d355b980d4b.png','3','2','','1','1','202');
INSERT INTO `%DB_PREFIX%conf` VALUES ('264','REPAY_MAKE','7','1','0','','1','1','264');
INSERT INTO `%DB_PREFIX%conf` VALUES ('265','SQL_CHECK','1','1','1','0,1','1','1','265');
INSERT INTO `%DB_PREFIX%conf` VALUES ('266','MORTGAGE_MONEY','0.01','6','0','','1','1','1');
INSERT INTO `%DB_PREFIX%conf` VALUES ('267','ENQUIER_NUM','6','6','0','','1','1','2');
INSERT INTO `%DB_PREFIX%conf` VALUES ('268','INVEST_PAY_SEND_STATUS','1','6','1','0,1,2','1','1','3');
INSERT INTO `%DB_PREFIX%conf` VALUES ('269','INVEST_STATUS_SEND_STATUS','1','6','1','0,1,2','1','1','4');
INSERT INTO `%DB_PREFIX%conf` VALUES ('270','INVEST_PAID_SEND_STATUS','1','6','1','0,1,2','1','1','5');
INSERT INTO `%DB_PREFIX%conf` VALUES ('271','INVEST_STATUS','0','6','1','0,1,2','1','1','0');
INSERT INTO `%DB_PREFIX%conf` VALUES ('272','AVERAGE_USER_STATUS','0','6','1','0,1','1','1','6');
INSERT INTO `%DB_PREFIX%conf` VALUES ('186','REFERRAL_LIMIT','999','4','0','','1','1','69');
INSERT INTO `%DB_PREFIX%conf` VALUES ('275','SCORE_TRADE_NUMBER','100','4','0','','1','1','72');
INSERT INTO `%DB_PREFIX%conf` VALUES ('276','BUY_PRESEND_SCORE_MULTIPLE','0.5','4','0','','1','1','72');
INSERT INTO `%DB_PREFIX%conf` VALUES ('277','BUY_PRESEND_POINT_MULTIPLE','0.5','4','0','','1','1','72');
INSERT INTO `%DB_PREFIX%conf` VALUES ('290','WX_MSG_LOCK','0','0','0','','0','0','0');
INSERT INTO `%DB_PREFIX%conf` VALUES ('288','VIRSUAL_NUM','2000','4','0','','1','1','288');
INSERT INTO `%DB_PREFIX%conf` VALUES ('282','WORK_TIME','09:00-18:30','3','0','','1','1','69');
INSERT INTO `%DB_PREFIX%conf` VALUES ('289','MORTGAGE_MONEY_UNFREEZE','12','6','0','','1','1','500');
INSERT INTO `%DB_PREFIX%conf` VALUES ('287','BUSINESS_TAX','1','4','1','0,1','1','1','287');
INSERT INTO `%DB_PREFIX%conf` VALUES ('284','IDENTIFY_NAGATIVE','1','4','1','0,1','1','1','284');
INSERT INTO `%DB_PREFIX%conf` VALUES ('281','PROJECT_HIDE','0','3','1','0,1','1','1','69');
INSERT INTO `%DB_PREFIX%conf` VALUES ('286','BUSINESS_CODE','1','4','1','0,1','1','1','286');
INSERT INTO `%DB_PREFIX%conf` VALUES ('280','KF_QQ','2602082743','3','0','','1','1','280');
INSERT INTO `%DB_PREFIX%conf` VALUES ('285','BUSINESS_LICENCE','1','4','1','0,1','1','1','285');
INSERT INTO `%DB_PREFIX%conf` VALUES ('283','IDENTIFY_POSITIVE','1','4','1','0,1','1','1','283');
INSERT INTO `%DB_PREFIX%conf` VALUES ('279','KF_PHONE','010-56267773','3','0','','1','1','279');
DROP TABLE IF EXISTS `%DB_PREFIX%deal`;
CREATE TABLE `%DB_PREFIX%deal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_match` text NOT NULL,
  `name_match_row` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `source_vedio` varchar(255) NOT NULL,
  `vedio` varchar(255) NOT NULL,
  `deal_days` int(11) NOT NULL COMMENT '上线天数，仅提供管理员审核参考',
  `begin_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `limit_price` decimal(20,2) NOT NULL COMMENT '项目金额',
  `brief` text NOT NULL,
  `description` text NOT NULL,
  `comment_count` int(11) NOT NULL,
  `support_count` int(11) NOT NULL COMMENT '支持人数',
  `focus_count` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `log_count` int(11) NOT NULL,
  `support_amount` decimal(20,2) NOT NULL COMMENT '支持总金额，需大等于limit_price(不含运费)',
  `pay_amount` decimal(20,2) NOT NULL COMMENT '可发放金额，抽完佣金的可领金额（含运费，运费不抽佣金）\r\n即support_amount*佣金比率+delivery_fee_amount',
  `delivery_fee_amount` decimal(20,2) NOT NULL COMMENT '交付费用金额',
  `create_time` int(11) NOT NULL,
  `seo_title` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_description` text NOT NULL,
  `tags` text NOT NULL,
  `tags_match` text NOT NULL,
  `tags_match_row` text NOT NULL,
  `success_time` int(11) NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `is_recommend` tinyint(1) NOT NULL COMMENT '推荐项目',
  `is_classic` tinyint(1) NOT NULL COMMENT '经典项目',
  `is_delete` tinyint(1) NOT NULL,
  `deal_extra_cache` text NOT NULL,
  `is_edit` tinyint(1) NOT NULL,
  `description_1` text NOT NULL,
  `is_support_print` int(11) NOT NULL,
  `user_level` int(11) NOT NULL,
  `is_has_send_success` tinyint(1) NOT NULL,
  `pay_radio` decimal(20,2) NOT NULL,
  `adv_image` varchar(255) NOT NULL COMMENT '广告图片',
  `status` tinyint(1) NOT NULL,
  `deal_background_image` varchar(255) NOT NULL COMMENT '项目背景图片',
  `deal_backgroundColor_image` varchar(255) NOT NULL COMMENT '项目底色图片',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 表示普通众筹，1表示股权众筹,2表示众筹买房',
  `description_2` text NOT NULL COMMENT '目标用户或客户群体定位',
  `description_3` text NOT NULL COMMENT '目标用户或客户群体目前困扰或需求定位',
  `description_4` text NOT NULL COMMENT '满足目标用户或客户需求的产品或服务模式说明',
  `description_5` text NOT NULL COMMENT '项目赢利模式说明',
  `description_6` text NOT NULL COMMENT '市场主要同行或竞争对手概述',
  `description_7` text NOT NULL COMMENT '项目主要核心竞争力说明',
  `stock` text NOT NULL COMMENT '股东信息',
  `unstock` text NOT NULL COMMENT '非股东成员',
  `history` text NOT NULL COMMENT '三年信息',
  `plan` text NOT NULL COMMENT '三年计划',
  `attach` text NOT NULL COMMENT '附件信息',
  `investor_authority` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示只有投资人可以，1表所有人都可以看',
  `project_step` tinyint(1) NOT NULL COMMENT '项目阶段 0表示未启动 1表示在开发中 2产品已上市或上线，3已经有收入，4已经盈利',
  `business_create_time` int(11) NOT NULL COMMENT '企业成立时间',
  `business_employee_num` int(11) NOT NULL COMMENT '企业员工数量',
  `business_is_exist` tinyint(1) NOT NULL COMMENT '公司是否成立',
  `has_another_project` tinyint(1) NOT NULL COMMENT '是否有其他项目 0表示么有  1表示有',
  `business_name` varchar(255) NOT NULL COMMENT '公司名称',
  `business_address` varchar(255) NOT NULL COMMENT '办公地址',
  `business_stock_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '入股方式  0直接入股原公司 1 创建新公司入股',
  `business_pay_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '付款方式 0表示一次性付款',
  `business_descripe` text NOT NULL COMMENT '企业简介',
  `pay_end_time` int(11) NOT NULL COMMENT '支付结算时间',
  `investor_edit` int(1) NOT NULL COMMENT '0表示显示下一步按钮，1表示显示不错和返回按钮',
  `mine_stock` decimal(10,2) DEFAULT NULL COMMENT '投资人占有的股份',
  `transfer_share` decimal(10,2) NOT NULL,
  `virtual_num` int(11) NOT NULL COMMENT '虚拟人数',
  `virtual_price` decimal(20,2) NOT NULL COMMENT '虚拟金额',
  `gen_num` int(11) NOT NULL COMMENT '跟投人数',
  `xun_num` int(11) NOT NULL COMMENT '询价人数',
  `invote_money` decimal(20,2) NOT NULL COMMENT '预购金额',
  `invote_num` int(11) NOT NULL COMMENT '投资人数',
  `invote_mini_money` decimal(10,2) NOT NULL COMMENT '最低支付金额',
  `refuse_reason` text COMMENT '拒绝理由',
  `audit_data` text NOT NULL COMMENT '发起人资料',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '热门',
  `ips_bill_no` varchar(255) NOT NULL COMMENT '托管项目',
  `share_fee_amount` decimal(20,2) NOT NULL COMMENT '分红总金额',
  `is_special` tinyint(1) NOT NULL COMMENT '专题',
  `invest_status` tinyint(1) NOT NULL COMMENT '融资状态：0未确认，1成功，2失败',
  `left_money` decimal(20,2) NOT NULL COMMENT '剩余筹款',
  PRIMARY KEY (`id`),
  KEY `begin_time` (`begin_time`),
  KEY `end_time` (`end_time`),
  KEY `is_effect` (`is_effect`),
  KEY `limit_price` (`limit_price`),
  KEY `comment_count` (`comment_count`),
  KEY `support_count` (`support_count`),
  KEY `focus_count` (`focus_count`),
  KEY `view_count` (`view_count`),
  KEY `log_count` (`log_count`),
  KEY `support_amount` (`support_amount`),
  KEY `create_time` (`create_time`),
  KEY `is_success` (`is_success`),
  KEY `cate_id` (`cate_id`),
  KEY `sort` (`sort`),
  KEY `is_recommend` (`is_recommend`),
  KEY `is_classic` (`is_classic`),
  KEY `is_delete` (`is_delete`),
  FULLTEXT KEY `tags_match` (`tags_match`),
  FULLTEXT KEY `name_match` (`name_match`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%deal` VALUES ('155','项目名称：泡温泉','ux28201ux27849,ux21517ux31216,ux39033ux30446,ux39033ux30446ux21517ux31216ux65306ux27873ux28201ux27849','温泉,名称,项目,项目名称：泡温泉','./public/attachment/201508/17/13/55d1701794f62.jpg','http://player.youku.com/embed/XMjgxNjMzNjI4','http://v.youku.com/v_show/id_XMjgxNjMzNjI4.html','20','1439760386','1450387588','1','11000.00','简要说明','<h3>\r\n	关于我\r\n</h3>\r\n<p>\r\n	向支持者介绍一下你自己，以及你与所发起的项目之间的背景。这样有助于拉近你与支持者之间的距离。建议不超过100字。\r\n</p>\r\n<h3>\r\n	我想要做什么\r\n</h3>\r\n<p>\r\n	以图文并茂的方式简洁生动地说明你的项目，让大家一目了然，这会决定是否将你的项目描述继续看下去。建议不超过300字。\r\n</p>\r\n<h3>\r\n	为什么我需要你的支持\r\n</h3>\r\n<p>\r\n	这是加分项。说说你的项目不同寻常的特色、资金用途、以及大家支持你的理由。这会让更多人能够支持你，不超过200个汉字。\r\n</p>\r\n<h3>\r\n	我的承诺与回报\r\n</h3>\r\n让大家感到你对待项目的认真程度，鞭策你将项目执行最终成功。同时向大家展示一下你为支持者准备的回报，来吸引更多人支持你。','0','2','0','24','0','300.00','270.00','0.00','1439760313','','','','温泉 名称 项目','ux28201ux27849,ux21517ux31216,ux39033ux30446','温泉,名称,项目','0','0','9','安徽','宿州','20','0','myname','1','1','0','','0','','1','0','0','0.00','','0','','','0','','','','','','','','','','','','0','0','0','0','0','0','','','0','0','','0','0','0.00','0.00','0','0.00','0','0','0.00','0','0.00','','','1','','0.00','1','0','0.00');
INSERT INTO `%DB_PREFIX%deal` VALUES ('156','度假酒店','ux24230ux20551,ux37202ux24215,ux24230ux20551ux37202ux24215','度假,酒店,度假酒店','./public/attachment/201508/17/13/55d17188b7a6f.jpg','http://player.youku.com/embed/XMjgxNjMzNjI4','http://v.youku.com/v_show/id_XMjgxNjMzNjI4.html','0','1439760866','1460756070','1','10000000.00','','','0','0','0','15','0','0.00','0.00','0.00','1439760691','','','','酒店','ux37202ux24215','酒店','1440288003','1','2','广东','广州','20','0','myname','1','1','0','a:2:{s:13:\"deal_faq_list\";a:0:{}s:14:\"deal_item_list\";a:0:{}}','0','','0','0','1','0.00','','0','','','1','<span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">目标用户或客户群体定位</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">目标用户或客户群体定位</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">目标用户或客户群体定位</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">目标用户或客户群体定位</span>','<span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">目标用户或客户群体目前困扰或需求定位</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">目标用户或客户群体目前困扰或需求定位</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">目标用户或客户群体目前困扰或需求定位</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">目标用户或客户群体目前困扰或需求定位</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">目标用户或客户群体目前困扰或需求定位</span>','<span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">满足目标用户或客户需求的产品或服务模式说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">满足目标用户或客户需求的产品或服务模式说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">满足目标用户或客户需求的产品或服务模式说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">满足目标用户或客户需求的产品或服务模式说明</span>','<span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目赢利模式说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目赢利模式说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目赢利模式说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目赢利模式说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目赢利模式说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目赢利模式说明</span>','<span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">市场主要同行或竞争对手概述</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">市场主要同行或竞争对手概述</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">市场主要同行或竞争对手概述</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">市场主要同行或竞争对手概述</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">市场主要同行或竞争对手概述</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">市场主要同行或竞争对手概述</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">市场主要同行或竞争对手概述</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">市场主要同行或竞争对手概述</span>','<span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目主要核心竞争力说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目主要核心竞争力说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目主要核心竞争力说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目主要核心竞争力说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目主要核心竞争力说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目主要核心竞争力说明</span>','a:1:{i:0;a:7:{s:4:\"name\";s:9:\"读懂人\";s:3:\"job\";s:6:\"职位\";s:12:\"is_full_time\";s:6:\"全职\";s:5:\"share\";d:100;s:12:\"invest_money\";s:3:\"200\";s:8:\"relation\";s:0:\"\";s:8:\"describe\";s:615:\"<span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目主要核心竞争力说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目主要核心竞争力说明</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">项目主要核心竞争力说明</span>\";}}','a:0:{}','a:1:{i:0;a:1:{s:4:\"info\";a:11:{s:4:\"name\";s:10:\"第1阶段\";s:10:\"begin_time\";s:8:\"2015-8-4\";s:8:\"end_time\";s:9:\"2015-8-31\";s:8:\"describe\";s:1080:\"<span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">第</span><span class=\"daxie\" style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">1</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">阶段</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">第</span><span class=\"daxie\" style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">1</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">阶段</span>\";s:11:\"do_describe\";s:1620:\"<span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">第</span><span class=\"daxie\" style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">1</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">阶段</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">第</span><span class=\"daxie\" style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">1</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">阶段</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">第</span><span class=\"daxie\" style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">1</span><span style=\"color:#3D9EEB;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:18px;line-height:40px;background-color:#FFFFFF;\">阶段</span>\";s:9:\"is_income\";s:1:\"0\";s:11:\"item_income\";s:1:\"0\";s:6:\"is_out\";s:1:\"0\";s:8:\"item_out\";s:1:\"0\";s:10:\"income_num\";i:1;s:7:\"out_num\";i:1;}}}','a:0:{}','a:1:{i:0;a:2:{s:5:\"title\";s:6:\"附件\";s:4:\"file\";s:71:\"http://ext4.ihancc.com/public/attachment/201508/17/13/55d172389c50d.txt\";}}','0','3','1438588800','200','1','1','度假酒店','度假酒店度假酒店','0','0','度假酒店度假酒店度假酒店度假酒店度假酒店度假酒店度假酒店度假酒店度假酒店','1471037675','1','0.00','10.00','0','0.00','1','0','10000000.00','1','1000000.00','','a:7:{s:8:\"legal_id\";a:4:{s:5:\"image\";a:1:{i:0;s:50:\"./public/attachment/201508/17/13/55d1719d2ebc4.jpg\";}s:6:\"status\";s:1:\"1\";s:6:\"reason\";s:0:\"\";s:12:\"display_type\";s:1:\"0\";}s:12:\"legal_credit\";a:4:{s:5:\"image\";a:1:{i:0;s:50:\"./public/attachment/201508/17/13/55d1719f458b9.jpg\";}s:6:\"status\";s:1:\"1\";s:6:\"reason\";s:0:\"\";s:12:\"display_type\";s:1:\"0\";}s:16:\"business_license\";a:4:{s:5:\"image\";a:1:{i:0;s:50:\"./public/attachment/201508/17/13/55d171a186616.jpg\";}s:6:\"status\";s:1:\"1\";s:6:\"reason\";s:0:\"\";s:12:\"display_type\";s:1:\"0\";}s:28:\"tax_registration_certificate\";a:4:{s:5:\"image\";a:1:{i:0;s:50:\"./public/attachment/201508/17/13/55d171a3bf205.jpg\";}s:6:\"status\";s:1:\"1\";s:6:\"reason\";s:0:\"\";s:12:\"display_type\";s:1:\"0\";}s:17:\"organization_code\";a:4:{s:5:\"image\";a:1:{i:0;s:50:\"./public/attachment/201508/17/13/55d171a5bb8ef.jpg\";}s:6:\"status\";s:1:\"1\";s:6:\"reason\";s:0:\"\";s:12:\"display_type\";s:1:\"0\";}s:13:\"company_photo\";a:4:{s:5:\"image\";a:1:{i:0;s:50:\"./public/attachment/201508/17/13/55d171a772efe.jpg\";}s:6:\"status\";s:1:\"1\";s:6:\"reason\";s:0:\"\";s:12:\"display_type\";s:1:\"0\";}s:13:\"site_contract\";a:4:{s:5:\"image\";a:1:{i:0;s:50:\"./public/attachment/201508/17/13/55d171a973470.jpg\";}s:6:\"status\";s:1:\"1\";s:6:\"reason\";s:0:\"\";s:12:\"display_type\";s:1:\"0\";}}','1','','0.00','1','0','0.00');
INSERT INTO `%DB_PREFIX%deal` VALUES ('157','111','','','./public/attachment/201508/21/17/55d6f1f900d8d.jpg','','','60','0','0','0','100.00','1111','1111','0','0','0','0','0','0.00','0.00','0.00','1440121231','','','','111','','','0','0','2','辽宁','大连','4288','0','vitakung','0','0','0','','0','','0','0','0','0.00','','0','','','0','','','','','','','','','','','','0','0','0','0','0','0','','','0','0','','0','0','','0.00','0','0.00','0','0','0.00','0','0.00','','','0','','0.00','0','0','0.00');
DROP TABLE IF EXISTS `%DB_PREFIX%deal_cate`;
CREATE TABLE `%DB_PREFIX%deal_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%deal_cate` VALUES ('1','音乐','2','0','0');
INSERT INTO `%DB_PREFIX%deal_cate` VALUES ('2','游戏','1','0','0');
INSERT INTO `%DB_PREFIX%deal_cate` VALUES ('3','教育','4','0','0');
INSERT INTO `%DB_PREFIX%deal_cate` VALUES ('4','美食','8','0','0');
INSERT INTO `%DB_PREFIX%deal_cate` VALUES ('5','农业','9','0','0');
INSERT INTO `%DB_PREFIX%deal_cate` VALUES ('6','科技','6','0','0');
INSERT INTO `%DB_PREFIX%deal_cate` VALUES ('7','公益','5','0','0');
INSERT INTO `%DB_PREFIX%deal_cate` VALUES ('8','旅行','7','0','0');
INSERT INTO `%DB_PREFIX%deal_cate` VALUES ('9','影视','3','0','0');
INSERT INTO `%DB_PREFIX%deal_cate` VALUES ('10','其他','10','0','0');
DROP TABLE IF EXISTS `%DB_PREFIX%deal_comment`;
CREATE TABLE `%DB_PREFIX%deal_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL COMMENT '回复的评论ID',
  `deal_user_id` int(11) NOT NULL COMMENT '项目发起人的ID',
  `reply_user_id` int(11) NOT NULL COMMENT '回复的评论的评论人ID',
  `deal_user_name` varchar(255) NOT NULL,
  `reply_user_name` varchar(255) NOT NULL,
  `deal_info_cache` text NOT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '状态0 表示隐藏 ，1 表示 显示',
  PRIMARY KEY (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`),
  KEY `log_id` (`log_id`),
  KEY `pid` (`pid`),
  KEY `deal_user_id` (`deal_user_id`),
  KEY `reply_user_id` (`reply_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%deal_faq`;
CREATE TABLE `%DB_PREFIX%deal_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%deal_focus_log`;
CREATE TABLE `%DB_PREFIX%deal_focus_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%deal_info_list`;
CREATE TABLE `%DB_PREFIX%deal_info_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL COMMENT '项目ID',
  `type` tinyint(1) NOT NULL COMMENT '类型 0 非股权团队 1 股权团队 2 项目历史 3 计划  4 项目附件',
  `name_list` text NOT NULL,
  `descrip_list` text NOT NULL,
  `pay_list` text NOT NULL COMMENT '支出列表',
  `income_list` text NOT NULL COMMENT '收入列表',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS `%DB_PREFIX%deal_item`;
CREATE TABLE `%DB_PREFIX%deal_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '金额',
  `support_count` int(11) NOT NULL,
  `support_amount` decimal(20,2) NOT NULL COMMENT '支持量',
  `description` text NOT NULL,
  `is_delivery` tinyint(1) NOT NULL,
  `delivery_fee` decimal(20,2) NOT NULL COMMENT '支付金额',
  `is_limit_user` tinyint(1) NOT NULL COMMENT '是否限',
  `limit_user` int(11) NOT NULL COMMENT '限额数量',
  `repaid_day` int(11) NOT NULL COMMENT '项目成功后的回报时间',
  `virtual_person` int(11) NOT NULL,
  `is_share` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否分红',
  `share_fee` decimal(20,2) NOT NULL COMMENT '分红金额',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 表示回报类型 1表示无私奉献',
  PRIMARY KEY (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%deal_item` VALUES ('248','155','200.00','1','200.00','获得回报优惠券获得回报优惠券获得回报优惠券获得回报优惠券获得回报优惠券获得回报优惠券获得回报优惠券','0','0.00','0','0','0','0','0','0.00','0');
INSERT INTO `%DB_PREFIX%deal_item` VALUES ('247','155','100.00','1','100.00','获得回报优惠券获得回报优惠券获得回报优惠券','0','0.00','0','0','10','0','0','0.00','0');
INSERT INTO `%DB_PREFIX%deal_item` VALUES ('249','157','10.00','0','0.00','111','0','0.00','0','0','0','0','0','0.00','0');
DROP TABLE IF EXISTS `%DB_PREFIX%deal_item_image`;
CREATE TABLE `%DB_PREFIX%deal_item_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `deal_item_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `deal_item_id` (`deal_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%deal_item_image` VALUES ('188','155','248','./public/attachment/201508/17/13/55d17065f2414.png');
INSERT INTO `%DB_PREFIX%deal_item_image` VALUES ('187','155','247','./public/attachment/201508/17/13/55d17052970d3.jpg');
DROP TABLE IF EXISTS `%DB_PREFIX%deal_level`;
CREATE TABLE `%DB_PREFIX%deal_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '等级名',
  `level` int(11) DEFAULT NULL COMMENT '等级大小   大->小',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%deal_level` VALUES ('5','1级','1');
DROP TABLE IF EXISTS `%DB_PREFIX%deal_log`;
CREATE TABLE `%DB_PREFIX%deal_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_info` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `vedio` varchar(255) NOT NULL,
  `source_vedio` varchar(255) NOT NULL,
  `comment_data_cache` text NOT NULL,
  `deal_info_cache` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `deal_id` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='项目的动态，主要由发起人更新动态进度';
DROP TABLE IF EXISTS `%DB_PREFIX%deal_msg_list`;
CREATE TABLE `%DB_PREFIX%deal_msg_list` (
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
) ENGINE=MyISAM AUTO_INCREMENT=9568 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%deal_msg_list` VALUES ('9558','15510192688','0','您的短信校验码为 684252 请勿泄漏，需要您进行身份校验.【VK维客众筹】','1439889578','1','1439889576','4288','参数不全','0','0','短信验证码','0','0','684252');
INSERT INTO `%DB_PREFIX%deal_msg_list` VALUES ('9559','15510192688','0','您的短信校验码为 856381 请勿泄漏，需要您进行身份校验.【VK维客众筹】','1439889779','1','1439889777','4288','','1','0','短信验证码','0','0','856381');
INSERT INTO `%DB_PREFIX%deal_msg_list` VALUES ('9560','13507884102','0','您的短信校验码为 724160 请勿泄漏，需要您进行身份校验.【VK维客众筹】','1440046275','1','1440046272','0','','1','0','短信验证码','0','0','724160');
INSERT INTO `%DB_PREFIX%deal_msg_list` VALUES ('9561','13507884102','0','您的短信校验码为 325082 请勿泄漏，需要您进行身份校验.【VK维客众筹】','1440046443','1','1440046442','0','','1','0','短信验证码','0','0','325082');
INSERT INTO `%DB_PREFIX%deal_msg_list` VALUES ('9562','13507884102','0','您的短信校验码为 235379 请勿泄漏，需要您进行身份校验.【VK维客众筹】','1440046559','1','1440046558','4292','','1','0','短信验证码','0','0','235379');
INSERT INTO `%DB_PREFIX%deal_msg_list` VALUES ('9563','13513213702','0','您的短信校验码为 548242 请勿泄漏，需要您进行身份校验.【VK维客众筹】','1440119261','1','1440119261','0','','1','0','短信验证码','0','0','548242');
INSERT INTO `%DB_PREFIX%deal_msg_list` VALUES ('9564','rlbell@qq.com','1','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\r\n<tbody>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"http://zc3.vitakung.com/public/attachment/201508/17/12/55d162085b8dd.png\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\r\n		</tr>\r\n        </tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td width=\"25px;\" style=\"width:25px;\"></td>\r\n			<td align=\"\">\r\n				<div style=\"line-height:40px;height:40px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您好！</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您于 2015年08月21日 17时08分 帐号 发送验证码：</p>\r\n				<p style=\"margin:0px;padding:0px;\">验证码：697463</p>\r\n 				 \r\n				<div style=\"line-height:80px;height:80px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">VK维客众筹帐号团队</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\"><span style=\"border-bottom:1px dashed #ccc;\" t=\"5\" times=\"\">2015年08月21日</span></p>\r\n			</td>\r\n		</tr>\r\n		</tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-top:1px solid #dfdfdf\">\r\n			<tbody>\r\n			<tr>\r\n				<td width=\"25px;\" style=\"width:25px;\"></td>\r\n				<td align=\"\">\r\n					<div style=\"line-height:40px;height:40px;\"></div>\r\n					<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:\'宋体\',arial,sans-serif;\">若您没有注册过VK维客众筹帐号，请忽略此邮件，此帐号将不会被激活，由此给您带来的不便请谅解。</p>\r\n				</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n		</td>\r\n	</tr>\r\n</tbody>\r\n</table>','1440119323','1','1440119323','0','发件失败的发件人地址2602082743@qq.com','0','1','邮件验证码','0','0','697463');
INSERT INTO `%DB_PREFIX%deal_msg_list` VALUES ('9565','275322973@qq.com','1','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\r\n<tbody>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"http://zc3.vitakung.com/public/attachment/201508/17/12/55d162085b8dd.png\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\r\n		</tr>\r\n        </tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td width=\"25px;\" style=\"width:25px;\"></td>\r\n			<td align=\"\">\r\n				<div style=\"line-height:40px;height:40px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您好！</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您于 2015年08月21日 17时13分 帐号 发送验证码：</p>\r\n				<p style=\"margin:0px;padding:0px;\">验证码：523577</p>\r\n 				 \r\n				<div style=\"line-height:80px;height:80px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">VK维客众筹帐号团队</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\"><span style=\"border-bottom:1px dashed #ccc;\" t=\"5\" times=\"\">2015年08月21日</span></p>\r\n			</td>\r\n		</tr>\r\n		</tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-top:1px solid #dfdfdf\">\r\n			<tbody>\r\n			<tr>\r\n				<td width=\"25px;\" style=\"width:25px;\"></td>\r\n				<td align=\"\">\r\n					<div style=\"line-height:40px;height:40px;\"></div>\r\n					<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:\'宋体\',arial,sans-serif;\">若您没有注册过VK维客众筹帐号，请忽略此邮件，此帐号将不会被激活，由此给您带来的不便请谅解。</p>\r\n				</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n		</td>\r\n	</tr>\r\n</tbody>\r\n</table>','1440119584','1','1440119583','0','发件失败的发件人地址2602082743@qq.com','0','1','邮件验证码','0','0','523577');
INSERT INTO `%DB_PREFIX%deal_msg_list` VALUES ('9566','275322973@qq.com','1','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\r\n<tbody>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"http://zc3.vitakung.com/public/attachment/201508/17/12/55d162085b8dd.png\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\r\n		</tr>\r\n        </tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td width=\"25px;\" style=\"width:25px;\"></td>\r\n			<td align=\"\">\r\n				<div style=\"line-height:40px;height:40px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您好！</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您于 2015年08月21日 17时32分 帐号 发送验证码：</p>\r\n				<p style=\"margin:0px;padding:0px;\">验证码：391082</p>\r\n 				 \r\n				<div style=\"line-height:80px;height:80px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">VK维客众筹帐号团队</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\"><span style=\"border-bottom:1px dashed #ccc;\" t=\"5\" times=\"\">2015年08月21日</span></p>\r\n			</td>\r\n		</tr>\r\n		</tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-top:1px solid #dfdfdf\">\r\n			<tbody>\r\n			<tr>\r\n				<td width=\"25px;\" style=\"width:25px;\"></td>\r\n				<td align=\"\">\r\n					<div style=\"line-height:40px;height:40px;\"></div>\r\n					<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:\'宋体\',arial,sans-serif;\">若您没有注册过VK维客众筹帐号，请忽略此邮件，此帐号将不会被激活，由此给您带来的不便请谅解。</p>\r\n				</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n		</td>\r\n	</tr>\r\n</tbody>\r\n</table>','1440120739','1','1440120738','0','发件失败的发件人地址2602082743@qq.com','0','1','邮件验证码','0','0','391082');
INSERT INTO `%DB_PREFIX%deal_msg_list` VALUES ('9567','vitakung@qq.com','1','<table cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"\" width=\"100%\" style=\"background:#ffffff;\" class=\"baidu_pass\">\r\n<tbody>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;width:137px;\"><img src=\"http://zc3.vitakung.com/public/attachment/201508/17/12/55d162085b8dd.png\" class=\"logo\" ellpadding=\"0\" cellspacing=\"0\"></td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #ffffff;width:10px;\">&nbsp;</td>\r\n			<td style=\"background:#ffffff;border-bottom:2px solid #dfdfdf;\">&nbsp;</td>\r\n		</tr>\r\n        </tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n        <tbody>\r\n		<tr>\r\n			<td width=\"25px;\" style=\"width:25px;\"></td>\r\n			<td align=\"\">\r\n				<div style=\"line-height:40px;height:40px;\"></div>\r\n				<p style=\"margin:0px;padding:0px;\"><strong style=\"font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;\">亲爱的用户：</strong></p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">您好！</p>\r\n				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\">vitakung您好，恭喜您，已经支付100元,支付单号为2148</p>\r\n				\r\n  				<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:\'宋体\',arial,sans-serif;\"><span style=\"border-bottom:1px dashed #ccc;\" t=\"5\" times=\"\">2015年08月22日</span></p>\r\n			</td>\r\n		</tr>\r\n		</tbody>\r\n		</table>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-top:1px solid #dfdfdf\">\r\n			<tbody>\r\n			<tr>\r\n				<td width=\"25px;\" style=\"width:25px;\"></td>\r\n				<td align=\"\">\r\n					<div style=\"line-height:40px;height:40px;\"></div>\r\n					<p style=\"margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:\'宋体\',arial,sans-serif;\">若您没有注册过VK维客众筹帐号，请忽略此邮件，由此给您带来的不便请谅解。</p>\r\n				</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n		</td>\r\n	</tr>\r\n</tbody>\r\n</table>','1440155876','1','1440155875','4288','发件失败的发件人地址2602082743@qq.com','0','1','VK维客众筹已付款通知','0','0','');
DROP TABLE IF EXISTS `%DB_PREFIX%deal_notify`;
CREATE TABLE `%DB_PREFIX%deal_notify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deal_id` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=595 DEFAULT CHARSET=utf8 COMMENT='准备发送通知的项目ID';
DROP TABLE IF EXISTS `%DB_PREFIX%deal_order`;
CREATE TABLE `%DB_PREFIX%deal_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `deal_item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `pay_time` int(11) NOT NULL,
  `total_price` decimal(20,2) NOT NULL COMMENT '总价',
  `delivery_fee` decimal(20,2) NOT NULL COMMENT '运费',
  `deal_price` decimal(20,2) NOT NULL COMMENT '项目费用',
  `support_memo` text NOT NULL,
  `payment_id` int(11) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `credit_pay` decimal(20,2) NOT NULL COMMENT '信贷付款',
  `online_pay` decimal(20,2) NOT NULL COMMENT '在线付款',
  `deal_name` varchar(255) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '0:未支付 1:已支付(过期) 2:已支付(无库存) 3:成功',
  `create_time` int(11) NOT NULL,
  `consignee` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `repay_time` int(11) NOT NULL COMMENT '回报更新时间',
  `repay_memo` text NOT NULL COMMENT '回报备注，由发起人更新',
  `is_refund` tinyint(1) NOT NULL COMMENT '已退款 0:未 1:已',
  `is_has_send_success` tinyint(1) NOT NULL,
  `repay_make_time` int(11) NOT NULL DEFAULT '0' COMMENT '回报确认时间',
  `share_fee` decimal(20,2) NOT NULL COMMENT '分红金额',
  `share_status` tinyint(1) NOT NULL COMMENT '分红是否发放：0未发放，1已发',
  `is_tg` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是第三方托管',
  `score` int(11) NOT NULL COMMENT '付款积分',
  `score_money` decimal(20,2) NOT NULL COMMENT '积分对换的余额,对换的余额已加到余额支付里，这里记录是用在查看，退款时用',
  `sp_multiple` varchar(255) NOT NULL COMMENT '记录"购买送支付金额的几倍信用/积分"的倍数的反序列数组array("score_multiple"=>''倍数'',"point_multiple"=>''倍数''）,退款时用',
  `logistics_company` varchar(255) NOT NULL COMMENT '物流公司',
  `logistics_links` varchar(255) NOT NULL COMMENT '物流链接',
  `logistics_number` varchar(255) NOT NULL COMMENT '物流单号',
  `invest_id` int(11) NOT NULL COMMENT '投资id',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单类型 0表示普通众筹 1表示股权众筹 2表示无私奉献',
  `requestNo` varchar(255) NOT NULL COMMENT 'yeepay_log.id',
  `is_complete_transaction` tinyint(1) NOT NULL COMMENT '0 表示未放款 1表示放款  2表示退款',
  `fee` decimal(20,2) NOT NULL COMMENT '手续费',
  `targetAmount` decimal(20,2) NOT NULL COMMENT '获取的目标金额',
  `progress` tinyint(1) NOT NULL DEFAULT '0' COMMENT '项目进度 0 表示未支付 2表示已支付定金 3表示支付首付 4表示退款处理 5放款处理',
  PRIMARY KEY (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `deal_item_id` (`deal_item_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2149 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%deal_order` VALUES ('2146','156','0','21','myname1','0','10000000.00','0.00','10000000.00','','0','','1599999.99','0.00','度假酒店','0','1439761559','','','','','','','1','0','','0','0','1439761993','0.00','0','0','0','0.00','','','','','2','1','','0','0.00','0.00','0');
INSERT INTO `%DB_PREFIX%deal_order` VALUES ('2145','155','248','20','myname','1439760547','200.00','0.00','200.00','','0','','200.00','0.00','项目名称：泡温泉','3','1439760547','','','','','','','0','0','','0','0','1439760554','0.00','0','0','0','0.00','a:2:{s:14:\"score_multiple\";d:0.5;s:14:\"point_multiple\";d:0.5;}','','','','0','0','','0','0.00','0.00','0');
INSERT INTO `%DB_PREFIX%deal_order` VALUES ('2147','155','247','4292','3210','0','100.00','0.00','100.00','','32','','0.00','0.00','项目名称：泡温泉','0','1440047126','','','','','','','0','0','','0','0','0','0.00','0','0','0','0.00','','','','','0','0','','0','0.00','0.00','0');
INSERT INTO `%DB_PREFIX%deal_order` VALUES ('2148','155','247','4288','vitakung','1440155875','100.00','0.00','100.00','','0','','100.00','0.00','项目名称：泡温泉','3','1440155874','','','','','','','0','0','','0','0','1440155892','0.00','0','0','0','0.00','a:2:{s:14:\"score_multiple\";d:0.5;s:14:\"point_multiple\";d:0.5;}','','','','0','0','','0','0.00','0.00','0');
DROP TABLE IF EXISTS `%DB_PREFIX%deal_pay_log`;
CREATE TABLE `%DB_PREFIX%deal_pay_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `money` decimal(20,2) NOT NULL,
  `create_time` int(11) NOT NULL,
  `log_info` text NOT NULL,
  `comissions` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `share_fee` decimal(20,2) NOT NULL,
  `delivery_fee` decimal(20,2) NOT NULL,
  `requestNo` varchar(255) NOT NULL COMMENT '是第三方支付的请求号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`requestNo`) USING BTREE,
  KEY `deal_id` (`deal_id`),
  KEY `create_time` (`create_time`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='项目支持金额发放记录';
DROP TABLE IF EXISTS `%DB_PREFIX%deal_support_log`;
CREATE TABLE `%DB_PREFIX%deal_support_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '金额',
  `deal_item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`),
  KEY `deal_item_id` (`deal_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1779 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%deal_support_log` VALUES ('1777','155','20','1439760547','200.00','248');
INSERT INTO `%DB_PREFIX%deal_support_log` VALUES ('1778','155','4288','1440155875','100.00','247');
DROP TABLE IF EXISTS `%DB_PREFIX%deal_visit_log`;
CREATE TABLE `%DB_PREFIX%deal_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `client_ip` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_id` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24054 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24020','155','123.14.81.83','1439762124');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24019','155','220.181.132.15','1439761843');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24018','155','101.199.112.54','1439761214');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24017','155','220.181.132.215','1439761119');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24016','156','123.14.81.83','1439760892');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24015','155','123.14.81.83','1439760399');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24021','156','60.253.251.254','1439886990');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24022','155','60.253.251.254','1439886999');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24023','155','124.202.243.78','1439890105');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24024','156','124.202.243.78','1439890122');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24025','155','112.116.245.129','1439917171');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24026','155','124.207.248.114','1439925777');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24027','155','121.13.242.220','1440036941');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24028','156','121.13.242.220','1440036971');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24029','155','219.133.40.13','1440046234');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24030','155','14.17.37.145','1440046492');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24031','155','219.133.40.13','1440047093');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24032','155','101.226.33.202','1440047663');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24033','155','118.114.116.34','1440051190');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24034','155','220.181.132.215','1440051889');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24035','155','101.199.112.50','1440051904');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24036','156','183.22.119.123','1440064378');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24037','155','122.235.166.240','1440090259');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24038','155','60.166.234.219','1440106928');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24039','155','60.26.241.35','1440107753');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24040','156','123.151.42.46','1440107819');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24041','156','180.153.206.26','1440108631');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24042','155','222.223.223.130','1440119225');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24043','156','113.77.227.13','1440132808');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24044','156','113.77.227.13','1440132808');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24045','156','113.77.227.13','1440135551');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24046','156','124.202.243.78','1440155669');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24047','155','124.202.243.78','1440155696');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24048','156','220.181.132.215','1440156040');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24049','156','101.199.112.53','1440156085');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24050','156','220.181.132.19','1440156627');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24051','155','123.144.27.226','1440218940');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24052','155','112.65.193.13','1440218940');
INSERT INTO `%DB_PREFIX%deal_visit_log` VALUES ('24053','156','60.253.251.254','1440288102');
DROP TABLE IF EXISTS `%DB_PREFIX%deal_vote`;
CREATE TABLE `%DB_PREFIX%deal_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `deal_id` int(11) NOT NULL COMMENT '项目id',
  `create_time` int(11) NOT NULL COMMENT '投票创建时间',
  `begin_time` int(11) NOT NULL COMMENT '投票开始时间',
  `end_time` int(11) NOT NULL COMMENT '投票结束时间',
  `money` decimal(20,2) NOT NULL COMMENT '卖出金额',
  `status` tinyint(1) NOT NULL COMMENT '0表示未同意 1表示同意 2表示投票失败',
  `yes_num` int(11) NOT NULL COMMENT '同意的总票数',
  `no_num` int(11) NOT NULL COMMENT '不同意的总票数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%deal_vote_log`;
CREATE TABLE `%DB_PREFIX%deal_vote_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `deal_vote_id` int(11) NOT NULL COMMENT '投票id',
  `vote_status` tinyint(1) NOT NULL COMMENT '0表示不同意 1表示同意',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%DB_PREFIX%faq`;
CREATE TABLE `%DB_PREFIX%faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%faq` VALUES ('1','基本问题','这是一个什么样的网站？','我们是一个让你可以发起和支持创业项目的平台。如果你有一个创业的想法(想开一个咖啡馆？)，我们欢迎你到我们的平台上发起项目，向公众推广，并得到资金的支持去完成你的想法。','1');
INSERT INTO `%DB_PREFIX%faq` VALUES ('2','基本问题','我们都支持哪些项目','我们主要支持服务性行业的相关项目，比如开一家饭店、咖啡馆、西餐厅、美容店、健身房等等，因为这些店铺现金流充裕，项目比较容易获得成功，支持者支持了这些项目后在这些店铺消费时可以享受更多的折扣优惠，对双方都有利。','2');
INSERT INTO `%DB_PREFIX%faq` VALUES ('3','基本问题','这种模式有非法集资的风险吗？','不会，项目的回报首先是店铺的服务，支持者支持项目之后，会得到相应价值的储值卡，将来店铺开业后可以到相应的店铺去消费。支持者对一个项目的支持属于购买行为，而不是投资行为。项目发起人不能向支持者许诺任何资金上的收益。\r\n','3');
INSERT INTO `%DB_PREFIX%faq` VALUES ('4','基本问题','这个平台接受慈善项目类的提案么?','我们可接受慈善类项目。','4');
INSERT INTO `%DB_PREFIX%faq` VALUES ('5','项目发起人相关问题','是否会要求产品或作品的知识产权?','不会。我们只是提供一个宣传和支持的平台，知识产权由项目发起人所有。','5');
INSERT INTO `%DB_PREFIX%faq` VALUES ('6','项目发起人相关问题','什么人可以发起项目?','目前任何在两岸三地(中国大陆，台湾，港澳)的有创意的人都可以发起项目。你可以是一个从事创意行业的自由职业者，也可以是公司职员。只要你有个点子，我们都希望收到你的项目提案。','6');
INSERT INTO `%DB_PREFIX%faq` VALUES ('7','项目发起人相关问题','我怎么发起项目呢?','请到我们的网站并注册用户后，在我们网站上提交所需要的基本项目信息，包括项目的内容，目前进行的阶段等等。我们会有专人跟进，与你联系。','7');
INSERT INTO `%DB_PREFIX%faq` VALUES ('8','项目发起人相关问题','我想发起项目，但是我担心我的知识产权被人抄袭?','作为项目发起人，你可以选择公布更多的信息。知识产权敏感的信息，你可以选择不公开。同时，我们平台是一个面对公众的平台。你所提供的信息越丰富，越翔实，就越容易打动和说服别人的支持。','8');
INSERT INTO `%DB_PREFIX%faq` VALUES ('9','项目发起人相关问题','项目目标金额是否有上下限制?','我们对目标金额的下限是1000元人民币。原则上没有上限。但是资金的要求越高，成功的概率就越低。目前常见的目标金额从几千到几万不等。','9');
INSERT INTO `%DB_PREFIX%faq` VALUES ('10','项目发起人相关问题','没有达到目标金额，是否就不能得到支持?','是的。如果在项目截至日期到达时，没有达到预期，那么已经收到的资金会退还给支持者。这么做的原因是为了给支持者提供风险保护。只有当项目有足够多的人支持足够多的资金时，他们的支持才生效。','10');
INSERT INTO `%DB_PREFIX%faq` VALUES ('11','项目发起人相关问题','我的项目成功了，然后呢?','我们会分两次把资金打入你所提供的银行账户。两次汇款的时间和金额因项目而异，在项目上线之前，由我们平台与项目发起人确定。在资金的支持下，你就可以开始进行你的项目，给你的支持者以邮件或者其他形式的更新，并如期实现你承诺的回报。','11');
INSERT INTO `%DB_PREFIX%faq` VALUES ('12','项目发起人相关问题','如何设定项目截止日期?','一般来说，时间设置在一个月或以内比较合适。数据显示，绝大部分的支持发生在项目上线开始和结束前的一个星期中。','12');
INSERT INTO `%DB_PREFIX%faq` VALUES ('13','项目发起人相关问题','收到的金额能够超过预设的目标?','可以。在截至日期之前，项目可以一直接受资金支持。','13');
INSERT INTO `%DB_PREFIX%faq` VALUES ('14','项目发起人相关问题','大家支持的动机是什么?','大家对项目支持的动机是多样的，当然以获得企业的股权为主，在支持项目的同时实现自己的创业梦想。也有些是因为希望获得相应的产品或服务。还有一些是因为认可项目的发起人，希望助他一臂之力。','14');
INSERT INTO `%DB_PREFIX%faq` VALUES ('15','项目发起人相关问题','什么样的回报比较合适?','除了与投资人约定的股权回报，其他的回报因项目而异。可以是实物，比如普通商品，也可以是非实物。我们欢迎项目发起人展开想象，设计出各式各样的回报。','15');
INSERT INTO `%DB_PREFIX%faq` VALUES ('16','项目发起人相关问题','如何能够吸引更多的人来支持我的项目?','对此，我们会另外详细介绍。简短来说，有以下要点\r\n- 拍摄一个有趣，吸引人的视频。讲述这个项目背后的故事。\r\n- 提供有吸引力，物有所值的回报。\r\n- 项目刚上线时，要发动你的亲朋好友来支持你。让你的项目有一个基本的人气。\r\n- 充分运用微博，人人等社交网站来推广。\r\n- 在项目上线期间，经常性的在你的项目页上提供项目的更新，与支持者，询问者的互动。\r\n- 项目宣传视频是必须的么?\r\n宣传视频是项目页上的重要内容。是公众了解你和你的项目的第一步。一个好的宣传视频，能够比文字和图片起到更好的宣传效果。基于这个原因，我们要求每个项目都提供一个视频。有必要的话，我们平台可以提供视频拍摄的支持。','16');
INSERT INTO `%DB_PREFIX%faq` VALUES ('17','项目发起人相关问题','项目宣传视频有什么要求?','我们要求宣传视频在两分钟之内。内容上，强烈建议包括以下内容\r\n发起人姓名\r\n项目简短描述(特别说明其吸引人的地方)，目前进展\r\n为什么需要支持\r\n谢谢大家','17');
INSERT INTO `%DB_PREFIX%faq` VALUES ('18','项目支持者相关问题','如果项目没有达到目标金额，我支持的资金会还给我么?','是的。如果项目在截止日期没有达到目标，你所支持的金额会返还给你。','18');
INSERT INTO `%DB_PREFIX%faq` VALUES ('19','项目支持者相关问题','如何支持一个项目?','每个项目页的右侧有可选择的支持额度和相应的回报介绍。想支持的话，选择你想支持的金额，鼠标点击绿色的按钮，即可。你可以选择支付宝或者财付通来完成付款。','19');
INSERT INTO `%DB_PREFIX%faq` VALUES ('20','项目支持者相关问题','如何保证项目发起人能够实现他们的承诺呢?','项目本身存在无法规避的各种风险，每个项目都有最终走向失败的可能。项目支持者一方面要了解项目本身是有风险的，另一方面，我们要求项目发起人提供联系方式，并且鼓励有意支持者直接联系他们，在与项目发起人的沟通和互动中对项目的价值，风险，项目发起人的执行力等等有所判断。网站作为风险监控的一方也将严格实施相应的风险控制措施，具体请看《风险控制措施》。','20');
INSERT INTO `%DB_PREFIX%faq` VALUES ('22','基本问题','我们是如何收费的？','1、按照融资金额5%的标准向项目发起人一次性收取服务费；\r\n2、按照支持者支持金额的5%收取管理费，不提提取现金，直接投入到项目中。','5');
DROP TABLE IF EXISTS `%DB_PREFIX%help`;
CREATE TABLE `%DB_PREFIX%help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_fix` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%help` VALUES ('1','服务条款','<div class=\"layout960\">\r\n	<p>\r\n		<strong><span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:21px;background-color:#E56600;\">\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>一、接受条款</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			我们所提供的服务包含我们平台网站体验和使用、我们平台互联网消息传递服务以及我们平台提供的与我们平台网站有关的任何其他特色功能、内容或应用程序(合称\"我们平台服务\")。无论用户是以\"访客\"(表示用户只是浏览我们平台网站)还是\"成员\"(表示用户已在我们平台注册并登录)的身份使用我们平台服务，均表示该用户同意遵守本使用协议。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			如果用户自愿成为我们平台成员并与其他成员交流(包括通过我们平台网站直接联系或通过我们平台各种服务而连接到的成员)，以及使用我们平台网站及其各种附加服务，请务必认真阅读本协议并在注册过程中表明同意接受本协议。本协议的内容包含我们平台关于接受我们平台服务和在我们平台网站上发布内容的规定、用户使用我们平台服务所享有的权利、承担的义务和对使用我们平台服务所受的限制、以及我们平台的隐私条款。如果用户选择使用某些我们平台服务，可能会收到要求其下载软件或内容的通知，和/或要求用户同意附加条款和条件的通知。除非用户选择使用的我们平台服务相关的附加条款和条件另有规定，附加的条款和条件都应被包含于本协议中。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			我们平台有权随时修改本协议文本中的任何条款。一旦我们平台对本协议进行修改,我们平台将会以公告形式发布通知。任何该等修改自发布之日起生效。如果用户在该等修改发布后继续使用我们平台服务，则表示该用户同意遵守对本协议所作出的该等修改。因此，请用户务必定期查阅本协议，以确保了解所有关于本协议的最新修改。如果用户不同意我们平台对本协议进行的修改，请用户离开我们平台网站并立即停止使用我们平台服务。同时，用户还应当删除个人档案并注销成员资格。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>二、遵守法律</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			当使用我们平台服务时，用户同意遵守中华人民共和国(下称\"中国\")的相关法律法规，包括但不限于《中华人民共和国宪法》、《中华人民共和国合同法》、《中华人民共和国电信条例》、《互联网信息服务管理办法》、《互联网电子公告服务管理规定》、《中华人民共和国保守国家秘密法》、《全国人民代表大会常务委员会关于维护互联网安全的决定》、《中华人民共和国计算机信息系统安全保护条例》、《计算机信息网络国际联网安全保护管理办法》、《中华人民共和国著作权法》及其实施条例、《互联网著作权行政保护办法》等。用户只有在同意遵守所有相关法律法规和本协议时，才有权使用我们平台服务(无论用户是否有意访问或使用此服务)。请用户仔细阅读本协议并将其妥善保存。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>三、用户帐号、密码及安全</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户应提供及时、详尽、准确的个人资料，并不断及时更新注册时提供的个人资料，保持其详尽、准确。所有用户输入的资料将引用为注册资料。我们平台不对因用户提交的注册信息不真实或未及时准确变更信息而引起的问题、争议及其后果承担责任。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户不应将其帐号、密码转让、出借或告知他人，供他人使用。如用户发现帐号遭他人非法使用，应立即通知我们平台。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用的，我们平台不承担任何责任。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>四、隐私权政策</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户提供的注册信息及我们平台保留的用户所有资料将受到中国相关法律法规和我们平台《隐私权政策》的规范。《隐私权政策》构成本协议不可分割的一部分。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>五、上传内容</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户通过任何我们平台提供的服务上传、张贴、发送(通过电子邮件或任何其它方式传送)的文本、文件、图像、照片、视频、声音、音乐、其他创作作品或任何其他材料(以下简称\"内容\"，包括用户个人的或个人创作的照片、声音、视频等)，无论系公开还是私下传播，均由用户和内容提供者承担责任，我们平台不对该等内容的正确性、完整性或品质作出任何保证。用户在使用我们平台服务时，可能会接触到令人不快、不适当或令人厌恶之内容，用户需在接受服务前自行做出判断。在任何情况下，我们平台均不为任何内容负责(包括但不限于任何内容的错误、遗漏、不准确或不真实)，亦不对通过我们平台服务上传、张贴、发送(通过电子邮件或任何其它方式传送)的内容衍生的任何损失或损害负责。我们平台在管理过程中发现或接到举报并进行初步调查后，有权依法停止任何前述内容的传播并采取进一步行动，包括但不限于暂停某些用户使用我们平台的全部或部分服务，保存有关记录，并向有关机关报告。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>六、用户行为</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户在使用我们平台服务时，必须遵守中华人民共和国相关法律法规的规定，用户保证不会利用我们平台服务进行任何违法或不正当的活动，包括但不限于下列行为∶\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			上传、展示、张贴或以其它方式传播含有下列内容之一的信息：\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			反对宪法及其他法律的基本原则的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			损害国家荣誉和利益的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			煽动民族仇恨、民族歧视、破坏民族团结的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			破坏国家宗教政策，宣扬邪教和封建迷信的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			散布谣言，扰乱社会秩序，破坏社会稳定的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			侮辱或者诽谤他人，侵害他人合法权利的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			含有虚假、有害、胁迫、侵害他人隐私、骚扰、中伤、粗俗、猥亵、或其它道德上令人反感的内容;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			含有中国法律、法规、规章、条例以及任何具有法律效力的规范所限制或禁止的其它内容的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			不得为任何非法目的而使用网络服务系统;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户同时保证不会利用我们平台服务从事以下活动：\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			未经允许，进入计算机信息网络或者使用计算机信息网络资源的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			未经允许，对计算机信息网络功能进行删除、修改或者增加的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的;故意制作、传播计算机病毒等破坏性程序的;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			其他危害计算机信息网络安全的行为。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			如用户在使用网络服务时违反任何上述规定，我们平台或经其授权者有权要求该用户改正或直接采取一切必要措施(包括但不限于更改、删除相关内容、暂停或终止相关用户使用我们平台服务)以减轻和消除该用户不当行为造成的影响。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户不得对我们平台服务的任何部分或全部以及通过我们平台取得的任何形式的信息，进行复制、拷贝、出售、转售或用于任何其它商业目的。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户须对自己在使用我们平台服务过程中的行为承担法律责任。用户承担法律责任的形式包括但不限于：停止侵害行为，向受到侵害者公开赔礼道歉，恢复受到侵害这的名誉，对受到侵害者进行赔偿。如果我们平台网站因某用户的非法或不当行为受到行政处罚或承担了任何形式的侵权损害赔偿责任，该用户应向我们平台进行赔偿(不低于我们平台向第三方赔偿的金额)并通过全国性的媒体向我们平台公开赔礼道歉。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>七、知识产权和其他合法权益(包括但不限于名誉权、商誉等)</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			我们平台并不对用户发布到我们平台服务中的文本、文件、图像、照片、视频、声音、音乐、其他创作作品或任何其他材料(前文称为\"内容\")拥有任何所有权。在用户将内容发布到我们平台服务中后，用户将继续对内容享有权利，并且有权选择恰当的方式使用该等内容。如果用户在我们平台服务中或通过我们平台服务展示或发表任何内容，即表明该用户就此授予我们平台一个有限的许可以使我们平台能够合法使用、修改、复制、传播和出版此类内容。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户同意其已就在我们平台服务所发布的内容，授予我们平台可以免费的、永久有效的、不可撤销的、非独家的、可转授权的、在全球范围内对所发布内容进行使用、复制、修改、改写、改编、发行、翻译、创造衍生性著作的权利，及/或可以将前述部分或全部内容加以传播、表演、展示，及/或可以将前述部分或全部内容放入任何现在已知和未来开发出的以任何形式、媒体或科技承载的著作当中。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户声明并保证：用户对其在我们平台服务中或通过我们平台服务发布的内容拥有合法权利;用户在我们平台服务中或通过我们平台服务发布的内容不侵犯任何人的肖像权、隐私权、著作权、商标权、专利权、及其它合同权利。如因用户在我们平台服务中或通过我们平台服务发布的内容而需向其他任何人支付许可费或其它费用，全部由该用户承担。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			我们平台服务中包含我们平台提供的内容，包含用户和其他我们平台许可方的内容(下称\"我们平台的内容\")。我们平台的内容受《中华人民共和国著作权法》、《中华人民共和国商标法》、《中华人民共和国专利法》、《中华人民共和国反不正当竞争法》和其他相关法律法规的保护，我们平台拥有并保持对我们平台的内容和我们平台服务的所有权利。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>八、国际使用之特别警告</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户已了解国际互联网的无国界性，同意遵守所有关于网上行为、内容的法律法规。用户特别同意遵守有关从中国或用户所在国家或地区输出信息所可能涉及、适用的全部法律法规。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>九、赔偿</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			由于用户通过我们平台服务上传、张贴、发送或传播的内容，或因用户与本服务连线，或因用户违反本使用协议，或因用户侵害他人任何权利而导致任何第三人向我们平台提出赔偿请求，该用户同意赔偿我们平台及其股东、子公司、关联企业、代理人、品牌共有人或其它合作伙伴相应的赔偿金额(包括我们平台支付的律师费等)，以使我们平台的利益免受损害。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>十、关于使用及储存的一般措施</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户承认我们平台有权制定关于服务使用的一般措施及限制，包括但不限于我们平台服务将保留用户的电子邮件信息、用户所张贴内容或其它上载内容的最长保留期间、用户一个帐号可收发信息的最大数量、用户帐号当中可收发的单个信息的大小、我们平台服务器为用户分配的最大磁盘空间，以及一定期间内用户使用我们平台服务的次数上限(及每次使用时间之上限)。通过我们平台服务存储或传送的任何信息、通讯资料和其它任何内容，如被删除或未予储存，用户同意我们平台毋须承担任何责任。用户亦同意，超过一年未使用的帐号，我们平台有权关闭。我们平台有权依其自行判断和决定，随时变更相关一般措施及限制。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>十一、服务的修改</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户了解并同意，无论通知与否，我们平台有权于任何时间暂时或永久修改或终止部分或全部我们平台服务，对此，我们平台对用户和任何第三人均无需承担任何责任。用户同意，所有上传、张贴、发送到我们平台的内容，我们平台均无保存义务，用户应自行备份。我们平台不对任何内容丢失以及用户因此而遭受的相关损失承担责任。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>十二、终止服务</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户同意我们平台可单方面判断并决定，如果用户违反本使用协议或用户长时间未能使用其帐号，我们平台可以终止该用户的密码、帐号或某些服务的使用，并可将该用户在我们平台服务中留存的任何内容加以移除或删除。我们平台亦可基于自身考虑，在通知或未通知之情形下，随时对该用户终止部分或全部服务。用户了解并同意依本使用协议，无需进行事先通知，我们平台可在发现任何不适宜内容时，立即关闭或删除该用户的帐号及其帐号中所有相关信息及文件，并暂时或永久禁止该用户继续使用前述文件或帐号。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>十三、与广告商进行的交易</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户通过我们平台服务与广告商进行任何形式的通讯或商业往来，或参与促销活动(包括相关商品或服务的付款及交付)，以及达成的其它任何条款、条件、保证或声明，完全是用户与广告商之间的行为。除有关法律法规明文规定要求我们平台承担责任外，用户因前述任何交易、沟通等而遭受的任何性质的损失或损害，我们平台均不予负责。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>十四、链接</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户了解并同意，对于我们平台服务或第三人提供的其它网站或资源的链接是否可以利用，我们平台不予负责;存在或源于此类网站或资源的任何内容、广告、产品或其它资料，我们平台亦不保证或负责。因使用或信赖任何此类网站或资源发布的或经由此类网站或资源获得的任何商品、服务、信息，如对用户造成任何损害，我们平台不负任何直接或间接责任。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>十五、禁止商业行为</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户同意不对我们平台服务的任何部分或全部以及用户通过我们平台的服务取得的任何物品、服务、信息等，进行复制、拷贝、出售、转售或用于任何其它商业目的。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>十六、我们平台的专属权利</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户了解并同意，我们平台服务及其所使用的相关软件(以下简称\"服务软件\")含有受到相关知识产权及其它法律保护的专有保密资料。用户同时了解并同意，经由我们平台服务或广告商向用户呈现的赞助广告或信息所包含之内容，亦可能受到著作权、商标、专利等相关法律的保护。未经我们平台或广告商书面授权，用户不得修改、出售、传播部分或全部服务内容或软件，或加以制作衍生服务或软件。我们平台仅授予用户个人非专属的使用权，用户不得(也不得允许任何第三人)复制、修改、创作衍生著作，或通过进行还原工程、反向组译及其它方式破译原代码。用户也不得以转让、许可、设定任何担保或其它方式移转服务和软件的任何权利。用户同意只能通过由我们平台所提供的界面而非任何其它方式使用我们平台服务。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>十七、担保与保证</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			我们平台使用协议的任何规定均不会免除因我们平台造成用户人身伤害或因故意造成用户财产损失而应承担的任何责任。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户使用我们平台服务的风险由用户个人承担。我们平台对服务不提供任何明示或默示的担保或保证，包括但不限于商业适售性、特定目的的适用性及未侵害他人权利等的担保或保证。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			我们平台亦不保证以下事项：\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			服务将符合用户的要求;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			服务将不受干扰、及时提供、安全可靠或不会出错;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			使用服务取得的结果正确可靠;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户经由我们平台服务购买或取得的任何产品、服务、资讯或其它信息将符合用户的期望，且软件中任何错误都将得到更正。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户应自行决定使用我们平台服务下载或取得任何资料且自负风险，因任何资料的下载而导致的用户电脑系统损坏或数据流失等后果，由用户自行承担。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户经由我们平台服务获知的任何建议或信息(无论书面或口头形式)，除非使用协议有明确规定，将不构成我们平台对用户的任何保证。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>十八、责任限制</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户明确了解并同意，基于以下原因而造成的任何损失，我们平台均不承担任何直接、间接、附带、特别、衍生性或惩罚性赔偿责任(即使我们平台事先已被告知用户或第三方可能会产生相关损失)：\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			我们平台服务的使用或无法使用;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			通过我们平台服务购买、兑换、交换取得的任何商品、数据、信息、服务、信息，或缔结交易而发生的成本;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户的传输或数据遭到未获授权的存取或变造;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			任何第三方在我们平台服务中所作的声明或行为;\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			与我们平台服务相关的其它事宜，但本使用协议有明确规定的除外。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>十九、一般性条款</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			本使用协议构成用户与我们平台之间的正式协议，并用于规范用户的使用行为。在用户使用我们平台服务、使用第三方提供的内容或软件时，在遵守本协议的基础上，亦应遵守与该等服务、内容、软件有关附加条款及条件。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			本使用协以及用户与我们平台之间的关系，均受到中华人民共和国法律管辖。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			用户与我们平台就服务本身、本使用协议或其它有关事项发生的争议，应通过友好协商解决。协商不成的，应向北京市东城区人民法院提起诉讼。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			我们平台未行使或执行本使用协议设定、赋予的任何权利，不构成对该等权利的放弃。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			本使用协议中的任何条款因与中华人民共和国法律相抵触而无效，并不影响其它条款的效力。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			本使用协议的标题仅供方便阅读而设，如与协议内容存在矛盾，以协议内容为准。\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			<strong>二十、举报</strong>\r\n		</p>\r\n		<p style=\"color:#555555;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n			如用户发现任何违反本服务条款的情事，请及时通知我们平台。\r\n		</p>\r\n</span></strong>\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n</div>','term','','1','1');
INSERT INTO `%DB_PREFIX%help` VALUES ('2','服务介绍','<p>\r\n	<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">本众筹系统是中国最专业的众筹系统服务提供商，帮您在一天内快速搭建众筹平台。</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">系统咨询热线：&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">以下是众筹网站发布项目的基本要求，不合要求的项目，将会被拒绝或删除。如果你有疑问，可以通过邮件或电话联系我们。&nbsp;</span><br />\r\n<br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">附注：某些规范会随着时间而更新或者调整，会导致一些旧项目并不能完全符合最新规范。</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">项目发布团队资格：</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; （团队中必须有至少一名成员满足以下条件）</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 18周岁以上;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 中华人民共和国公民;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 拥有能够在中国地区接收人民币汇款的银行卡或者支付宝、财付通账户;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 提供必要的身份认证和资质认证，根据项目内容，有可能包括但不限于：身份证，护照，学历证明等;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 其他跟项目发布、执行需求、渠道销售相关的必须条件。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">项目发布：</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 根据相关法律法规，项目发布申请提交后，须经过众筹网站工作人员审核后才能发布;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 根据项目的内容，众筹网站会要求项目发布团队提供相关材料，证明项目的可行性，以及项目发布团队的执行能力;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 众筹网站对提交上线审核的项目是否拥有上线资格具有最终决定权;</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 项目在众筹网站上线预售期间，不能在中国大陆其他相似平台（包括但不限于众筹网站、电商网站、及其他形式网店等）同时发布。一经发现将立即下线处 理，其项目上线期间所获得的金额将被立即退回给预订用户在众筹网站上的账户中。</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">项目内容规范（不符合以下内容规范的项目将被退回）：</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 1. 只允许尚未正式对外发布的项目在众筹网站上线。项目在众筹网站上线之前，不能在中国大陆其他相似平台（包括但不限于众筹网站、电商网站、及其 他形式网店等）或媒体发布。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 2. 项目必须为智能项目。智能项目的定义为：设备必须可采集数据、联网联动，并提供自动化的服务。单纯有设计感的非智能项目暂时无法通过审核。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 3. 项目发布方必须在项目上线前提供无bug的实物试产样机，由众筹网站工作人员进行盲测确保没有问题才能正式上线。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 4. 项目内容介绍框架必须包含“项目介绍”、“团队介绍”、“研发进展”等重要板块。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 5. 项目软硬件设计必须完整、合理、具有可行性；有完整的计划和执行能力，且图片、视频不能借用或盗用非自行拍摄的内容。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 6. 项目发布团队必须有明确的生产计划及售后服务计划，尚不确定是否会量产的项目不符合首次发布的标准皆不能上线。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 7. 提交申请的项目必须能符合如下分类：医疗健康、家居生活、出行定位、影音娱乐、科技外设。</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 8. 以下类别的项目或内容将不被允许在此发布或作为给预订用户的附加回报：</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 烟、酒相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 洗浴、美容或化妆项目相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 毒品、类似毒品的物质、吸毒用具、烟等相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 枪支、武器和刀具相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 营养补充剂相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 色情、保健、性用品内容相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 房地产相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 饮食类相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 财政奖励(所有权、利润份额、还款贷款等)</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 多级直销和传销类相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 令人反感的内容(仇恨言论、不适当内容等)</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 支持或反对政治党派的项目</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 推广或美化暴力行为的项目</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 对奖、彩票和抽奖活动相关</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 股权、债券、分红、利息等形式的附加回报</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 与首发项目无关的附加回报</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 以其他无可行、不合理的承诺作为附加回报</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">举报及推荐标准：</span><br />\r\n<br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 举报：不符合《项目内容规范》</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 合格：符合《项目内容规范》</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 推荐：合格并且满足下列标准中的任意1-3项（含3项），视为推荐</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 强烈推荐：合格并且满足下列标准中的任意3项以上，视为强烈推荐</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 1. 项目定位清晰，功能逻辑性强、完整且条理清晰、团队对研发和生产有完整的计划和管控能力，有相关的图片和视频（图片、视频不能借用或盗用非 本人/公司拍摄的）</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 2. 项目符合时下趋势、有热点，具备可传播性</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 3. 项目本身有创意、创新；非山寨、抄袭、跟风；市面上无同类相似项目</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 4. 项目设计感好，有品质，符合大众审美喜好的要求</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 5. 项目发布团队有一定的推广渠道、媒体资源、或在公众平台上有一定的影响力</span><br />\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:22px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp; 6. 项目发布团队的话题运营能力出众，与粉丝互动积极正面，能调动起网友的兴趣和参与感</span>\r\n</p>','intro','','1','1');
INSERT INTO `%DB_PREFIX%help` VALUES ('3','隐私策略','<p>\r\n	<span style=\"background-color:#FFFFFF;color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:1.5;\">众筹，译自国外crowdfunding一词，即大众筹资或群众筹资。是指用团购+预购的形式，向网友募集项目资金的模式。众筹利用互联网和SNS传播的特性，让许多有梦想的人可以向公众展示自己的创意，发起项目争取别人的支持与帮助，进而获得所需要的援助，支持者则会获得实物、服务等不同形式的回报。</span>\r\n</p>\r\n<p style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:21px;background-color:#FFFFFF;\">众筹是一个协助亲们发起创意、梦想的平台，不论你是学生、白领、艺术家、明星，如果你有一个想完成的计划（例如：电影、音乐、动漫、设计、公益等），你可以在此发起项目向大家展示你的计划，并邀请喜欢你的计划的人以资金支持你。如果你愿意帮助别人，支持别人的梦想，你可以在众筹浏览到各行各业的人发起的项目计划，也可以成为发起人的梦想合伙人，当你们一起见证项目成功后，你还会获得发起人感谢你支持的回报。</span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','privacy','','1','1');
INSERT INTO `%DB_PREFIX%help` VALUES ('4','关于我们','<p class=\"p0\" style=\"text-align:left;\">\r\n	<span style=\"background-color:#FFFFFF;color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:1.5;\">众筹，译自国外crowdfunding一词，即大众筹资或群众筹资。是指用团购+预购的形式，向网友募集项目资金的模式。众筹利用互联网和SNS传播的特性，让许多有梦想的人可以向公众展示自己的创意，发起项目争取别人的支持与帮助，进而获得所需要的援助，支持者则会获得实物、服务等不同形式的回报。</span>\r\n</p>\r\n<p style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<span style=\"color:#404040;font-family:\'Microsoft Yahei\', 微软雅黑, Arial, \'Hiragino Sans GB\', 宋体;font-size:14px;line-height:21px;background-color:#FFFFFF;\">众筹是一个协助亲们发起创意、梦想的平台，不论你是学生、白领、艺术家、明星，如果你有一个想完成的计划（例如：电影、音乐、动漫、设计、公益等），你可以在此发起项目向大家展示你的计划，并邀请喜欢你的计划的人以资金支持你。如果你愿意帮助别人，支持别人的梦想，你可以在众筹浏览到各行各业的人发起的项目计划，也可以成为发起人的梦想合伙人，当你们一起见证项目成功后，你还会获得发起人感谢你支持的回报。</span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','about','','1','1');
INSERT INTO `%DB_PREFIX%help` VALUES ('5','官方微博','<p>\r\n	<br />\r\n</p>','','http://weibo.com/vitakung','0','1');
INSERT INTO `%DB_PREFIX%help` VALUES ('8','撰写指南','<p style=\"color:#404040;font-family:Simsun;font-size:medium;\">\r\n	<span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>尊敬的创业者朋友：</strong></span>\r\n</p>\r\n<p style=\"color:#404040;font-family:Simsun;font-size:medium;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">你好!</span>\r\n</p>\r\n<div style=\"margin:0px auto;padding:0px;color:#404040;font-family:Simsun;font-size:medium;\">\r\n	<div>\r\n		<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">一份完整、严肃的项目介绍，既是您对自己团队以及投资人起码的尊重，也是我们对投资人应尽的责任。如果您填写时有空白项未填或描写过于简单（比如几个字或一两句话），我们将直接退回项目信息并要求补充完善。只有在您根据指南填写完整后，我们才会根据您的项目情况提出具体的修改建议，所以请您积极配合，以加快审核、发布效率。一般情况下项目都需经过再次修改后才能发布，这并不是在为难创业者，而是希望能够帮助创业者真正完善好商业计划书后再发布融资，以最大程度地提高融资成功率，希望创业者能积极配合。所以请您参考以下一些基本要求，认真录入您的项目信息，如果您在附件中上传了商业计划书，也请您按照指南填写完善项目信息，因为附件资料仅供有兴趣进一步了解的投资人下载参考。</span>\r\n	</div>\r\n<span style=\"color:#B22222;\">\r\n	<div>\r\n		<strong><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">1、确保通篇文字表达通顺、简洁、正式，无错别字，格式美观；</span></strong>\r\n	</div>\r\n<strong><strong><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">2、项目名称简洁易懂，指明要点，比如“股权众筹网站（天使股权投资众筹平台）”；</span></strong></strong></span><strong><strong><span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\">3、“企业项目简介”</span></strong><span style=\"font-weight:normal;line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">中，至少应包括以下内容：</span></strong>\r\n	<div>\r\n		<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（1）目前是否已成立公司？如果没有，需说明团队目前的创业状态，比如是全职创业还是在职或在校，有没有固定办公地点，团队是否搭建齐全，发不发工资，准 备何时成立公司等。如果已成立，介绍企业全称、注册资本、成立时间、办公地点、主营业务、发展情况、已有成果等。</span>\r\n	</div>\r\n	<div>\r\n		<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（2）目前创始人是否全职创业，如果不是准备何时全职？是否只有这一个创业项目，如果不是还有其他哪些项目？</span>\r\n	</div>\r\n	<div>\r\n		<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（3）主营产品或服务的介绍，需说明清楚解决了什么市场需求，其技术原理、应用流程和场景是怎样等？</span>\r\n	</div>\r\n	<div>\r\n		<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（4）介绍本次融资的具体用途。</span>\r\n	</div>\r\n<span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>4、项目图片和项目视频地址：</strong></span>\r\n	<div>\r\n		<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">项目图片（必填项）：建议上传公司LOGO图、产品图、公司实拍照；</span>\r\n	</div>\r\n	<div>\r\n		<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">项目视频地址（选填项）：建议上传公司拍摄的视频介绍，一般更有利于投资人深刻理解项目；</span>\r\n	</div>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>5、“目标用户或客户群体定位”</strong></span><span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">中，务必说明清楚你的客户定位为什么人群，这些人群具备什么典型特征；</span>\r\n</div>\r\n<span style=\"color:#B22222;\"><span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>6、“目标用户或客户群体目前困扰或需求定位”</strong></span><span style=\"color:#404040;line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">中，说明清楚市场需求具体是什么，其市场容量及前景如何，目前已有的供需关系如何，存在哪些不足等。建议可补充政府对该行业的相关支持政策；</span></span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>7、“满足目标用户或客户需求的产品或服务模式说明”</strong></span><span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">中，说明你的产品和服务具体怎么满足上文描述的需求，改进了哪些不足。建议介绍该行业所在的产业链条上的分工情况，以及你处于该链条上的哪个环节；</span>\r\n</div>\r\n<span style=\"color:#B22222;\"><span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>8、“项目赢利模式说明”</strong></span><span style=\"color:#404040;line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">中，详细介绍你跟谁收费，收多少，怎么收，有什么前提条件？如果你的盈利模式已经在发生，需说明收入和现金流的大概情况。如果只是计划，尚未发生，说明你要产生收入需实现哪些前提条件？</span></span><span></span><span style=\"color:#B22222;\"><span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>9、“市场主要同行或竞争对手概述”</strong></span><span style=\"color:#404040;line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">中，列出你的直接竞争对手并做简述，并说明你与他们的差异化或你的竞争优势。务必在这里说明清楚，和他们相比，你的市场空间在哪里？你为什么认为你能吸引客户来用你的产品或服务，而不是去用他们的？</span></span><span></span><span style=\"color:#B22222;\"><span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>10、“项目主要核心竞争力说明”</strong></span><span style=\"color:#404040;line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">中， 需列出一二三，描述具体的优势，不要讲空话和大话。务必在这里说明或解释清楚，你这个行业的门槛不高，既然你能做，那其他人也能做，你怎么看待这个问题， 或者你准备如何应对？这将是所有投资人最关心的问题。此外，建议列举与你同处该细分行业内的同类公司（比如你的竞争对手）的成功融资案例，有利于增强投资 人信心；另外，建议创业者在此追加一句“各位投资人在报价前，可先单独与本人电话沟通协商，然后再到股权众筹上报价，谢谢！”；</span></span><span></span><span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>11、“创业团队”：</strong></span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（1）关于创始团队的股权结构：由于股权众筹目前主要服务于天使阶段的创业项目，所以一般要求创始人本人的占股不低于60%。即使是合伙创业，也需符合一方占60%以上，其余各方占剩余股份。如不符合该要求，请自行调整股权结构后再行申请。请注意，填写“所占股份”时，只需填写数字即可，不用填百分号，比如占股百分之百，只需填“100”，而不是“100%”。</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（2）表格中的“实际出资金额”，是指项目启动至今，各位股东实际投入的现金金额，而不是指注册资本，所以不计实物和知识产权等投入。</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（3）关于团队成员的介绍：需按照写简历的格式和详细程度来填写，需至少介绍团队成员的出生年月、性别、毕业院校、工作经历、工作成就、个人优势、过往的创业经历和心得、为什么会从事目前这个 行业的创业、目前各人的分工情况等。另外，请务必说明核心团队成员已合作多久，通过什么渠道认识的，目前正在或未来需要在哪些方面加强磨合，并举例说明？ 丰富创业团队的介绍，有利于加深投资人对你的了解，增强投资信心。注意出资金额的单位是万元；</span>\r\n</div>\r\n<span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>12、“历史执行情况”：</strong></span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（1）“阶段达成目标描述”中，应说明目前公司取得的成果或达到的目标，如产品研发到什么阶段、客户数达到多少、实现了什么突破等。建议说明目前有多少客户或用户，每月收入有多少，订单量有多少？目前每月开支金额多少，主要是什么支出等？</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（2）详细介绍“完成阶段目标的主要措施、方法、手段”。建议补充说明创业至今，团队已累计投入多少资金，目前有多少负债？</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（3）补充“阶段收入”和“阶段开支”的明细情况，如销售了多少产品，客户是谁？办公地每月租金多少，场地面积多大，付款方式怎样？目前有多少员工，各岗位的工资是多少，公司平均工资是多少？如果现在不发工资，应列上人员工资为0，并说明你预计何时开始发工资？</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（4）注意金额的单位是元；</span>\r\n</div>\r\n<span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>13、“未来计划”：</strong></span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（1）建议至少描述2个阶段，第一阶段建议从现在开始，到你产品的正式发布时间或开店营业时间；第二个阶段是从产品发布或开店营业开始，到公司实现盈亏平衡。建议预测时间在未来一年到一年半左右即可；</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（2）“阶段达成目标描述”中，需列出具体数据指标，比如粗略预计多长时间达到多少客户或用户，需多久或要什么条件才能达到盈亏平衡？如果无法预测，请说明理由。建议列出正在跟进、或计划跟进的大客户名单或订单。</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（3）详细介绍“完成阶段目标的主要措施、方法、手段”，不要讲空话大话。另外，建议说明你目前最需要的支持或资源是什么，方便有些投资人可以对接合作。</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（4）补充“阶段收入”和“阶段开支”的明细情况，这些预测数据需合理靠谱，股权众筹将重点审核该数据的可实现性。对于收入的预测不能过于乐观，需说明预测依据，并与同类公司的业务情况做对比，说明该预测数据的合理 性。开支明细也应详细描述，比如租房面积，每月租金，付款方式是怎样？还有人员工资，如果不发工资，你应列上人员工资为0，同时说明你预计企业发展到什么 阶段开始发工资。</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">（5）注意金额的单位是元；</span>\r\n</div>\r\n<span style=\"color:#B22222;\"><span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>14、“项目附件”</strong></span><span style=\"color:#404040;line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">中，需上传产品或服务的实景照，以及营业执照、组织机构代码证、税务登记证、创始人身份证的扫描件或照片，以及其它你认为有必要上传的材料；</span></span><span></span><span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>15、融资金额、出让股份和付款方式</strong></span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">仔细考虑您的融资金额和付款方式。股权众筹一般要求项目的融资金额在30-1000万之间（一般融资金额不超过团队未来一年到一年半左右的开支）。而出让股份需由投资人询价最终确定，询价范围限定在10%-30%之间。</span>\r\n</div>\r\n<span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>温馨提醒：</strong></span><span></span><span style=\"color:#B22222;\">\r\n<div>\r\n	<strong><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">1、</span><strong><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">项目审核上线问题</span></strong></strong>\r\n</div>\r\n</span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">从收到您提交的项目，到回复审核意见，一般需要一周左右的时间。如果您的项目通过审核，我们会通知您签订居间服务协议，股权众筹在收到您签好的居间服务协议后，才会上线您的项目正式开始融资。在审核期间，您可以随时电话咨询审核进度。需要说明的是，并非所有的项目都可以通过审核上线融资，股权众筹有专门的项目评审团队，并设定了详细的项目评审标准，对于尚不成熟或亮点不足的项目，股权众筹有权拒绝申请；</span>\r\n</div>\r\n<span style=\"color:#B22222;\">\r\n<div>\r\n	<strong><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">2、</span><strong><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">项目估值问题</span></strong></strong>\r\n</div>\r\n</span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">股权众筹对创业项目的估值不做评估，而是采取市场竞价机制，交由投资人评估报价。竞价方式为各投资人单独向创业者询价，以项目投后估值为竞价指标，对应的出让股份比例范围是10%-30%，创业者选择“拒绝或接受”，创业者也有权拒绝不询价的认投。创业者历次同意的最低估值（对应最高股权比例）为系统最终估值，项目未融资成功前投资人无法看到项目当前最新估值；</span>\r\n</div>\r\n<strong><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">3、成本费用问题</span></strong><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">创业者到股权众筹众筹融资只有一项成本，即项目融资成功后，股权众筹向创业者收取融资额度的5%作为服务费。如果项目没有融资成功，则不收取创业者任何费用，创业者仅付出了时间成本；</span>\r\n</div>\r\n<span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>4、融资时间问题</strong></span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">各个项目的众筹融资进度不一，根据我们过往的成功案例，有在一个礼拜内就融完的，也有在半年后才融完的。所以我们一般建议创业者至少做好等待四个月左右的准备；</span>\r\n</div>\r\n<span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>5、推进融资进度问题</strong></span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">股权众筹定位为独立第三方平台，不会主动向投资人推荐项目。创业者可以通过以下方式加快融资进度：</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">a、尽快确认领投人。一般领投人确认后，投资人会对项目更有信心，有利于加快融资进度。创业者获取领投人有两种途径：一是投资人认购项目后主动申请当领投 人；二是创业者主动邀请投资人担任领投人。股权众筹首页的“天使投资人”版块中有公布领投人名单，创业者可以主动联系和自荐项目；</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">b、实时更新“项目动态”。创业者可登录个人账户填写“项目动态”，“项目动态”的内容会实时展示在股权众筹首页。经常更新项目动态，有利于投资人了解项目的最新进展，并产生投资兴趣；</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">c、创业者个人积极推广。创业者可在自己的个人人脉圈中积极推广，例如微信朋友圈、个人微博、或者参加股权众筹组织的路演活动等等；</span>\r\n</div>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">d、其它个性化方式。</span>\r\n</div>\r\n<span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>6、项目修改及撤销问题</strong></span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">项目提交审核通过后，就开始发布融资了，此后就不能再修改或是撤销项目，特别是融资金额、付款方式这些要点，所以请您务必事先考虑清楚自己的需求，切勿事后反悔，引起不必要的麻烦。如果项目发布四个月后无法完成融资，届时您可以选择撤销融资；</span>\r\n</div>\r\n<span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>7、投资期限及退出问题</strong></span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">由于投资人最后是以有限合伙企业的名义来入股创业者的公司，而根据相关规定，一般情况下有限合伙企业的寿命是5年，所以一般情况下创业者必须在5年内让投 资人退出。所以创业者在融资前，需预先考虑好投资人的退出方式。一般有这几种退出方式：上市、被并购、后续新投资人进入后转让老股东股份、回购等。</span>\r\n</div>\r\n<span style=\"color:#B22222;font-family:\'Microsoft YaHei\';font-size:14px;\"><strong>8、投资人关系管理问题</strong></span><span></span>\r\n<div>\r\n	<span style=\"line-height:1.5;font-family:\'Microsoft YaHei\';font-size:14px;\">我们一般建议创业者在项目通过审核并发布后，尽快建立一个QQ群或微信群，并将该群号或二维码发布在“项目动态”中，方便投资人加入，提高沟通效率。</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\"></span><br />\r\n</div>','','','0','2');
DROP TABLE IF EXISTS `%DB_PREFIX%index_image`;
CREATE TABLE `%DB_PREFIX%index_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 表示首页轮播 1表示产品页轮播 2表示股权轮播',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
INSERT INTO `%DB_PREFIX%index_image` VALUES ('30','./public/attachment/201508/17/12/55d16265716d2.jpg','','3','3','0');
INSERT INTO `%DB_PREFIX%index_image` VALUES ('29','./public/attachment/201508/17/12/55d1625bba1be.JPG','','2','2','0');
INSERT INTO `%DB_PREFIX%index_image` VALUES ('28','./public/attachment/201508/17/12/55d1624c80f85.jpg','','1','1','0');
DROP TABLE IF EXISTS `%DB_PREFIX%investment_list`;
CREATE TABLE `%DB_PREFIX%investment_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(11) NOT NULL DEFAULT '0' COMMENT '投资的类型 0 表示 询价，1表示领投，2表示跟投,3表示追加的金额',
  `money` decimal(20,2) NOT NULL COMMENT '投资的金额',
  `stock_value` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '估指',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0表示 未来审核，1表示同意，2表示不同意',
  `introduce` text NOT NULL COMMENT '领投人的个人简介',
  `user_id` int(11) NOT NULL COMMENT '会员ID',
  `deal_id` int(11) NOT NULL COMMENT '股权众筹ID',
  `cates` text NOT NULL COMMENT '分类信息',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `investment_reason` text NOT NULL COMMENT '投资请求',
  `funding_to_help` text NOT NULL COMMENT '资金帮助',
  `investor_money_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '投资金额0 表示未审核 1表示审核通过 2表示审核拒绝 3表示已支付投资成功 4表示未按时间支付，违约',
  `order_id` int(11) NOT NULL COMMENT '订单号',
  `is_partner` tinyint(11) NOT NULL COMMENT '0表示无状态 1表示愿意承担企业合伙人 2表示不愿意承担企业合伙人',
  `leader_moban` text NOT NULL COMMENT '尽职调查和条款清单模板',
  `leader_help` text NOT NULL COMMENT '他为创业者还能提供的其它帮助',
  `leader_for_team` text NOT NULL COMMENT '对创业团队评价',
  `leader_for_project` text NOT NULL COMMENT '对创业项目评价',
  `send_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 表示未发送 1发送成功',
  `detailed_information` text NOT NULL COMMENT '详细资料',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
INSERT INTO `%DB_PREFIX%investment_list` VALUES ('2','2','10000000.00','0.00','0','','21','156','','1439761513','','','1','2146','1','','','','','0','');
