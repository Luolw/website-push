/*
Navicat MySQL Data Transfer

Source Server         : wchm-website-test
Source Server Version : 50557
Source Host           : 120.25.124.62:3306
Source Database       : website

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2018-12-14 15:20:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for eacoo_users
-- ----------------------------
DROP TABLE IF EXISTS `eacoo_users`;
CREATE TABLE `eacoo_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `number` char(10) DEFAULT '' COMMENT '会员编号',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `nickname` varchar(60) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `githob_token` varchar(255) NOT NULL DEFAULT '',
  `token` varchar(255) DEFAULT NULL COMMENT '用户中心',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机号',
  `avatar` varchar(150) DEFAULT '' COMMENT '用户头像，相对于uploads/avatar目录',
  `sex` smallint(1) unsigned DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `description` varchar(200) DEFAULT '' COMMENT '个人描述',
  `register_ip` varchar(16) DEFAULT '' COMMENT '注册IP',
  `login_num` tinyint(1) unsigned DEFAULT '0' COMMENT '登录次数',
  `last_login_ip` varchar(16) DEFAULT '' COMMENT '最后登录ip',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `activation_auth_sign` varchar(60) DEFAULT '' COMMENT '激活码',
  `url` varchar(100) DEFAULT '' COMMENT '用户个人网站',
  `score` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户积分',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '金额',
  `freeze_money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '冻结金额，和金币相同换算',
  `pay_pwd` char(32) DEFAULT '' COMMENT '支付密码',
  `reg_from` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '注册来源。1PC端，2WAP端，3微信端，4APP端，5后台添加',
  `reg_method` varchar(30) NOT NULL DEFAULT '' COMMENT '注册方式。wechat,sina,等',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `p_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '推荐人会员ID',
  `allow_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '允许后台。0不允许，1允许',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '用户状态 0：禁用； 1：正常 ；2：待验证',
  `email_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱状态 0：带验证; 1：正常',
  `lng` varchar(10) DEFAULT NULL COMMENT '语言',
  `interest` tinyint(1) DEFAULT '0' COMMENT '兴趣爱好',
  `lock_status` tinyint(1) DEFAULT '0' COMMENT '锁仓状态：0没有锁仓 1锁仓',
  `address` varchar(255) DEFAULT '''''' COMMENT '以太坊钱包地址',
  `realname` varchar(20) DEFAULT '''''' COMMENT '真实姓名',
  `idcard` varchar(32) DEFAULT '''''' COMMENT '身份证号码',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `uniq_number` (`number`) USING BTREE,
  KEY `idx_username` (`username`) USING BTREE,
  KEY `idx_email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户表';

-- ----------------------------
-- Records of eacoo_users
-- ----------------------------
INSERT INTO `eacoo_users` VALUES ('1', 'admin', '', '031c9ffc4b280d3e78c750163d07d275', '创始人', '846852421@qq.com', '', 'f4c32b66093465603f2d0b10223dd9babfd22fa3', '15013695114', '/static/assets/img/avatar-man.png', '0', '0000-00-00', '', '', '0', '113.116.114.123', '1542001928', '6fb948d4e599f5f556e1638c057f95d08273c643', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '1', '1537424284', '2', '1', 'cn', '0', '1', '111', '郑创城', '2222');
INSERT INTO `eacoo_users` VALUES ('3', 'U1471610993', '9948511005', '031c9ffc4b280d3e78c750163d07d275', '陈婧', '', '', '', '', '/static/assets/img/avatar-woman.png', '2', null, '', null, '0', null, '1473755335', 'a525c9259ff2e51af1b6e629dd47766f99f26c69', null, '0', '2.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('4', 'U1472438063', '9752985498', '031c9ffc4b280d3e78c750163d07d275', '妍冰', '', '', '', '', '/static/assets/img/avatar-woman.png', '2', null, '承接大型商业演出和传统文化学习班', null, '0', null, '1472438634', 'ed587cf103c3f100be20f7b8fdc7b5a8e2fda264', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('5', 'U1472522409', '9849571025', '031c9ffc4b280d3e78c750163d07d275', '久柳', '', '', '', '', '/static/assets/img/avatar-man.png', '1', null, '', null, '0', null, '1472522621', '5e542dc0c77b3749f2270cb3ec1d91acc895edc8', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '2', '0', 'en', '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('6', 'U1472739566', '5051101100', '031c9ffc4b280d3e78c750163d07d275', 'Ray', '', '', '', '', '/uploads/avatar/6/5a8ada8f72ac0.jpg', '1', null, '', null, '0', null, '1472739567', '6321b4d8ecb1ce1049eab2be70c44335856c840d', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '1', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('8', 'U1472877421', '5497481009', '031c9ffc4b280d3e78c750163d07d275', '印文博律师', '', '', '', '', '/static/assets/img/avatar-man.png', '1', null, '', null, '0', null, '1473494692', 'e99521af40a282e84718f759ab6b1b4a989d8eb1', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('9', 'U1472966655', '1004810149', '031c9ffc4b280d3e78c750163d07d275', '嘉伟', '', '', '', '', '/static/assets/img/avatar-man.png', '1', null, '', null, '0', null, '1473397571', 'f1075223be5f53b9c2c1abea8288258545365d96', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('10', 'U1473304718', '9852101101', '031c9ffc4b280d3e78c750163d07d275', '鬼谷学猛虎流', '', '', '', '15801182191', '/static/assets/img/avatar-man.png', '1', null, '', null, '0', null, '1473399843', '039fc7a3f9366adf55ee9e707c371a2459c17bd7', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('11', 'U1473391063', '1004810150', '031c9ffc4b280d3e78c750163d07d275', '@Gyb.', '', '', '', '', '/uploads/avatar/11/59e32aa3a75a2.jpg', '1', null, '', null, '0', null, '1473391063', '70d80a9f7599c81270a986abaea73e63101b3ecb', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('12', 'U1473396778', '5310148501', '031c9ffc4b280d3e78c750163d07d275', '董超楠', '', '', '', '', '/static/assets/img/avatar-woman.png', '2', null, '', null, '0', null, '1473396778', '8bbf5242300e5e8e4917b287a31efcb0c9feedfd', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('14', 'U1473396839', '4853979757', '031c9ffc4b280d3e78c750163d07d275', '求真实者', '', '', '', '', '/static/assets/img/default-avatar.png', '0', null, '', null, '0', null, '1473396839', '8f7579a85981e1c1f726704b0865320dfadbef2e', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('15', 'U1473397391', '9810148101', '031c9ffc4b280d3e78c750163d07d275', 'peter', '', '', '', '', '/uploads/avatar/15/5a9d1473d4c91.png', '2', null, '', null, '0', null, '1473397391', 'c66d3a0e16a81a13173756a2832ba424b34a095c', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('16', 'U1473397426', '1015057995', '031c9ffc4b280d3e78c750163d07d275', '随风而去的心情', '', '', '', '15801182190', '/static/assets/img/avatar-man.png', '1', null, '大师傅', null, '0', null, '1473397426', '14855b00775de46b451c8255e6a73a5c044fc188', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('17', 'U1474181145', '5551564851', '031c9ffc4b280d3e78c750163d07d275', '班鱼先生', '', '', '', '', '/static/assets/img/avatar-man.png', '1', null, '', null, '0', null, '1474181146', '86d19a7b1f15db4fd25e0b64bfc17870a70f67e2', null, '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1518696015', '1', '0', null, '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('60', 'suannai123', '1029998505', '031c9ffc4b280d3e78c750163d07d275', '1234', '846952421@qq.com', '', '4b9584aecff39cc966ce88d622da0ec66040cb83', '', '', '0', '0000-00-00', '', '116.25.96.26', '0', '116.25.96.26', '1540805999', 'a28cc727e8d99cd67c275c5ec59e7a4b5b2ce843', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1540805999', '2', '0', 'en', '2', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('93', 'liukai', '1025455101', '6b438622d475b03086a530439f559d9b', 'aaaa', '790369221@qq.com', '', '90407e56b72bd1141826396c719d696f76ccbfcc', '', '', '0', '0000-00-00', '', '116.25.96.26', '0', null, '1540889135', '9f7da8fd30da833e5321db98e8fe8f367521fbb8', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1540889135', '2', '0', 'en', '1', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('96', 'liudehua', '9753505710', '031c9ffc4b280d3e78c750163d07d275', '刘德华', '2562526879@qq.com', '', '1be05c642443906bba39a0920b6b592c8275317a', '', '', '0', '0000-00-00', '', '116.25.96.26', '0', '116.25.96.26', '1540891354', 'b9f4e1c325dd8f8d011bb748e961e7ce8eb667d9', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1540891354', '2', '0', 'cn', '2', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('113', '惠鹏曦', '9749101575', '031c9ffc4b280d3e78c750163d07d275', '陈俊鹏', '1659253001@qq.com', '', 'b4626dd35092eedabbc8f69acae6e4d9024d4bd6', '13543986022', '', '0', '0000-00-00', '', '113.116.113.148', '0', '116.25.98.9', '1542333119', '20763cd8ed8d3ee204111052633e34b05f4ecc6a', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1541040778', '2', '1', 'en', '0', '1', 'asdasdasdassxasx1321321321', 'cjp', '44522419916033132');
INSERT INTO `eacoo_users` VALUES ('115', '惠鹏曦', '4810148485', '031c9ffc4b280d3e78c750163d07d275', '123456', '1659253001@qq.com', '', 'ae92105e3f5672ae92d3085557a5f98fb83db829', '', '', '0', null, '', '116.25.97.88', '0', '116.25.97.88', '1541130769', 'd12af98f65a1c96a5b606526eb80ec43d1262fa4', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1541130768', '1', '1', 'en', '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('116', 'Roger', '1005555545', 'e5e0eb77dfe15cbb21013089f9e8ad0b', 'ZhangQi', '644915228@qq.com', '', 'c1c9288ee633a8e66599ff8e59e7647ef7d80ade', '', '', '0', null, '', '42.200.172.158', '0', '42.200.172.158', '1541419878', '17185422f564a6619068bc3968e03636b523a623', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1541419629', '2', '1', 'cn', '0', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('117', '创城', '9849974810', '031c9ffc4b280d3e78c750163d07d275', '郑创城', '15013695114@163.com', '', '94b3d41a2d5178402b7e7958d63130727178b04c', '13750467531', '', '0', null, '', '116.25.99.101', '0', '42.200.104.153', '1541485086', 'e60c99944533f2a7fa39376447f3f040dd435d28', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1541420523', '2', '1', 'cn', '0', '1', 'sadasdasd asdasd as', '郑传承', '4555421564879831321');
INSERT INTO `eacoo_users` VALUES ('128', 'HAO', '1019852551', '005d9956b0ad6eaaeb5b902a8dc8f4a9', 'pop3213', 'sam771195@yahoo.com.tw', '', '49af784b412a4ec9be8136c08d54235ce2367213', '', '', '0', null, '', '36.238.90.118', '0', '36.238.90.118', '1541528656', '45fed9e24176f859ed58976182419d21e376c20e', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1541528542', '2', '0', 'cn', '3', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('129', 'kk0820', '5098525257', '10d62083b1d7bb1d124418e470daf64b', 'jamie', '3550433496@qq.com', '', '3831feacd9b3dc0fbd1abc9530e92f371957a04f', '', '', '0', null, '', '183.11.203.155', '0', '113.116.114.123', '1542010519', 'c42d67f751c574c9038fc6b063ff25d71750a87e', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1541554402', '2', '1', 'cn', '4', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('131', '15575117391', '9710055544', '1c465657e9a23f7c370ee48740b52d7a', '谭祥永', '348273997@qq.com', '', '77eb497475ddddbea3cdda136e8c445f2c43c8e4', '', '', '0', null, '', '175.10.36.18', '0', '220.202.232.189', '1542467457', '5b2e8a33d9b636b5ef3f9ef723392e1d9b1ef12d', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1541584170', '2', '1', 'cn', '3', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('132', '630014047', '1005498565', '1a83a82e51e1d989846292d36cd0cdcf', '陈俊兆', '630014047@qq.com', '', '5294fc23c38d2dcf07a4dea493afabfb4602b1a4', '', '', '0', null, '', '121.31.246.103', '0', '121.31.246.103', '1541639716', 'ba89ee59a198f59931827b20e46849cc7693332b', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1541639613', '2', '1', 'cn', '4', '0', '\'\'', '\'\'', '\'\'');
INSERT INTO `eacoo_users` VALUES ('133', '13577705372', '9798100102', '4006b8e03ed16ee0ae7bcf07feed7cdb', '胡万权', '836907835@qq.com', '', '095ad485c5b43c076c0ef2317a8fbf8f5de1e063', '13602594636', '', '0', null, '', '182.246.167.94', '0', '182.246.167.94', '1541641384', '6895b6741929836e64f5a7f1501e556abee4cfd7', '', '0', '0.00', '0.00', '', '0', '', '0', '0', '0', '1541641002', '2', '1', 'cn', '3', '1', '0xA13FEDE3DdbB23623F9AA6E3d72Cd445755C3958', '胡万权', '530402199611140678');

-- ----------------------------
-- Table structure for website_admin
-- ----------------------------
DROP TABLE IF EXISTS `website_admin`;
CREATE TABLE `website_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) DEFAULT '' COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `mobile` varchar(11) NOT NULL COMMENT '移动电话',
  `state` int(1) NOT NULL DEFAULT '1' COMMENT '启用:1，禁用:0',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台管理账户';

-- ----------------------------
-- Records of website_admin
-- ----------------------------
INSERT INTO `website_admin` VALUES ('11', 'zhanglixiang', 'e10adc3949ba59abbe56e057f20f883e', '13317071015', '1', '2018-10-29 16:36:00');
INSERT INTO `website_admin` VALUES ('12', 'wchm', '6b6108df345c69c198df0603aabc023a', '15648754451', '1', '2018-10-19 16:14:43');
INSERT INTO `website_admin` VALUES ('13', 'jiangwenjian', '96e79218965eb72c92a549dd5a330112', '13537559068', '1', '2018-10-31 09:52:36');
INSERT INTO `website_admin` VALUES ('14', '1111', '96e79218965eb72c92a549dd5a330112', '15111111111', '0', '2018-11-01 14:28:43');

-- ----------------------------
-- Table structure for website_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `website_admin_role`;
CREATE TABLE `website_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT 'website_admin表id',
  `rid` int(11) NOT NULL COMMENT 'website_role表id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户-角色表';

-- ----------------------------
-- Records of website_admin_role
-- ----------------------------
INSERT INTO `website_admin_role` VALUES ('1', '12', '1');
INSERT INTO `website_admin_role` VALUES ('2', '12', '2');
INSERT INTO `website_admin_role` VALUES ('12', '11', '2');
INSERT INTO `website_admin_role` VALUES ('13', '13', '3');
INSERT INTO `website_admin_role` VALUES ('14', '14', '3');

-- ----------------------------
-- Table structure for website_advance_booking
-- ----------------------------
DROP TABLE IF EXISTS `website_advance_booking`;
CREATE TABLE `website_advance_booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(50) NOT NULL COMMENT '名字',
  `sur_name` varchar(50) DEFAULT NULL COMMENT '姓氏',
  `mobile` varchar(20) NOT NULL COMMENT '手机号码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `address` varchar(100) NOT NULL COMMENT '钱包地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `investment` varchar(200) DEFAULT NULL COMMENT '1.个人投资/2.基金投资',
  `dollar` varchar(500) DEFAULT NULL COMMENT '预售投资金额',
  `currency` varchar(200) DEFAULT NULL COMMENT '投资货币(1.BTC 2.ETH 3.TUSD)',
  `account` varchar(255) DEFAULT NULL COMMENT '电脑账号',
  `country` varchar(255) DEFAULT NULL COMMENT '所在国家',
  `park_eco` varchar(200) DEFAULT NULL COMMENT 'parkEco(1.口口相传2.电报 3.媒体出版物 4.互联网 5.一次会议 6.我们目前投资者之一 7.其他) ',
  `feedback` varchar(500) DEFAULT NULL COMMENT '反馈意见',
  `state` int(1) DEFAULT '1' COMMENT '是否有效（1有效，0无效）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='预售信息表';

-- ----------------------------
-- Records of website_advance_booking
-- ----------------------------
INSERT INTO `website_advance_booking` VALUES ('1', '小白', '张', '13317071014', 'zlx_ooo@126.com', '0x5A0b54D5dc17e0AadC383d2db43B0a0D3E029c4c', '2018-10-10 15:07:12', '2', '1000000', '1', 'administrator', '中国', '4', '没有可反馈的意见', '1');
INSERT INTO `website_advance_booking` VALUES ('2', '子龙', '赵', '0755', '1185223710@qq.com', '深圳', '2018-10-19 06:00:48', '1', '1000000', '1', '112', '中国', '6', '投资有风险,入市需谨慎！', '1');
INSERT INTO `website_advance_booking` VALUES ('3', '1', '2', '2', '2', '2', '2018-09-25 00:00:00', '2', '2', '2', '2', '2', '2', '2', '1');
INSERT INTO `website_advance_booking` VALUES ('4', 'a', 'a', 'a', 'zlx_ooo@126.com', 'sdfsafasdfsafsdfsdfasf', '2018-09-25 00:00:00', '2', 'sadfas', '2', 'asfd', 'sadf', '1', 'asdf', '1');
INSERT INTO `website_advance_booking` VALUES ('5', '阿斯蒂芬', 'sfd', 'sf', 'wchm@wchm88.com', 'adsgrhgfgdfdfsdf', '2018-09-25 00:00:00', '1', '23412', '2', 'zhanglixiang', 'wfsd', '6', 'sdf', null);
INSERT INTO `website_advance_booking` VALUES ('6', '冯', '提莫', '0755', '7220354', '深圳', '2018-10-26 16:58:47', '1', '10000', '1', '112', '中国', '6', '投资有风险,入市需谨慎！', '1');
INSERT INTO `website_advance_booking` VALUES ('7', '测试', '测试', '13537550000', '测试@qq.com', '513', '2018-11-01 16:21:59', 'Individual', '1000005', 'ETH', '1', 'CN', 'Media publication', 'W', '1');
INSERT INTO `website_advance_booking` VALUES ('8', '测试', '测试', '13537550000', '测试@qq.com', '513', '2018-11-01 16:22:52', 'Individual', '1000005', 'ETH', '1', 'CN', 'Media publication', 'W', '1');
INSERT INTO `website_advance_booking` VALUES ('9', '测试', '测试', '13537550000', '测试@qq.com', '513', '2018-11-01 16:29:15', 'Fund', '1000005', 'ETH', '1', 'CN', 'word of mouth', 'W', '1');
INSERT INTO `website_advance_booking` VALUES ('10', '测试', '测试', '13537550000', '测试@qq.com', '513', '2018-11-01 16:30:05', 'Fund', '1000005', 'ETH', '1', 'CN', 'Telegram', 'W', '1');
INSERT INTO `website_advance_booking` VALUES ('11', '测试', '测试', '13537550000', '测试@qq.com', '513', '2018-11-01 16:30:08', 'Fund', '1000005', 'ETH', '1', 'CN', 'Internet', 'W', '1');
INSERT INTO `website_advance_booking` VALUES ('12', '测试', '测试', '13537550000', '测试@qq.com', '513', '2018-11-01 16:30:11', 'Fund', '1000005', 'ETH', '1', 'CN', 'A conference', 'W', '1');
INSERT INTO `website_advance_booking` VALUES ('13', '测试', '测试', '13537550000', '测试@qq.com', '513', '2018-11-01 16:30:13', 'Fund', '1000005', 'ETH', '1', 'CN', 'One of current investors', 'W', '1');
INSERT INTO `website_advance_booking` VALUES ('14', '测试', '测试', '13537550000', '测试@qq.com', '513', '2018-11-01 16:30:15', 'Fund', '1000005', 'ETH', '1', 'CN', 'others', 'W', '1');
INSERT INTO `website_advance_booking` VALUES ('15', '陈', '123', '13543986022', '1659253001', '12123123', '2018-11-01 18:11:34', 'Fund', '100000', 'BTC', '', '', '', '阿萨德', '1');
INSERT INTO `website_advance_booking` VALUES ('16', '陈', '123', '13543986022', '1659253001', '12123123', '2018-11-01 18:13:25', 'Fund', '100000', '', '', '', '', '阿萨德', '1');
INSERT INTO `website_advance_booking` VALUES ('17', '123 ', '123', '13549836554', '1659253001', '123131', '2018-11-01 18:15:00', 'Individual', '123123', 'BTC', '', '', '', '', '1');
INSERT INTO `website_advance_booking` VALUES ('18', '1', '1', '1', '1', '1', '2018-11-01 19:06:42', 'Individual', '1', 'BTC', '1', '1', 'others', '1', '1');
INSERT INTO `website_advance_booking` VALUES ('19', '1', '1', '1', '1', '1', '2018-11-01 19:17:18', 'Individual', '1', 'BTC', '1', '1', 'One of current investors', '1', '1');
INSERT INTO `website_advance_booking` VALUES ('20', '1', '1', '1', '1', '1', '2018-11-01 19:17:32', 'Fund', '1', 'BTC', '1', '1', 'One of current investors', '1', '1');
INSERT INTO `website_advance_booking` VALUES ('21', '111', '111', '11', '111', '111', '2018-11-01 19:47:39', 'Fund', '111', 'BTC', '11', '111', 'One of current investors', null, '1');

-- ----------------------------
-- Table structure for website_community_follow_count
-- ----------------------------
DROP TABLE IF EXISTS `website_community_follow_count`;
CREATE TABLE `website_community_follow_count` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `english_name` varchar(255) DEFAULT '0' COMMENT '英文名',
  `description` varchar(500) DEFAULT NULL COMMENT '中文描述',
  `link` varchar(500) DEFAULT NULL COMMENT '链接',
  `follow_number` int(20) DEFAULT NULL COMMENT '关注数量',
  `state` int(255) DEFAULT NULL COMMENT '是否展示(1.展示 2.隐藏)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='官网展示社区关注人数';

-- ----------------------------
-- Records of website_community_follow_count
-- ----------------------------
INSERT INTO `website_community_follow_count` VALUES ('1', '101', '22', '33', '44', '1');
INSERT INTO `website_community_follow_count` VALUES ('28', '6849', '546', '69469', '9846', '1');

-- ----------------------------
-- Table structure for website_currency_pool
-- ----------------------------
DROP TABLE IF EXISTS `website_currency_pool`;
CREATE TABLE `website_currency_pool` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(255) NOT NULL COMMENT '姓名',
  `mobile` varchar(255) NOT NULL COMMENT '客户手机号码',
  `address` varchar(255) DEFAULT NULL COMMENT '用户钱包地址',
  `count` decimal(20,4) DEFAULT NULL COMMENT '用户代币总额',
  `currency` decimal(20,4) DEFAULT NULL COMMENT '代币总额减去剩余总额',
  `surplus` decimal(20,4) DEFAULT NULL COMMENT '用户剩余代币总额',
  `lock_describe` varchar(1000) DEFAULT NULL COMMENT '锁仓描述',
  `lock_describe_en` varchar(255) DEFAULT NULL COMMENT '锁仓描述英文',
  `proportion` int(3) DEFAULT '100' COMMENT '每期解仓比例如: 20就是代表20%',
  `lock_begin_time` datetime DEFAULT NULL COMMENT '锁仓开始时间',
  `lock_end_time` datetime DEFAULT NULL COMMENT '锁仓结束时间',
  `last_unlock_time` datetime DEFAULT NULL COMMENT '上一次解仓时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '用户代币备注',
  `state` int(1) DEFAULT '1' COMMENT '是否有效 1有效 0无效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `type` int(2) DEFAULT '1' COMMENT '1:基石轮，2:A轮',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=446 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户代币池表，记录了用户的账户有多少代币，用户通过钱包地址关联';

-- ----------------------------
-- Records of website_currency_pool
-- ----------------------------
INSERT INTO `website_currency_pool` VALUES ('419', '林莉', '15857131221', '', '99034.9750', '99034.9750', '0.0000', '私募完成后，A 轮用户解锁锁钩 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('420', '宁琼', '13556045327', '', '18455.5000', '18455.5000', '0.0000', '私募完成后，A 轮用户解锁锁钩 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('421', '彭永取', '13712128938', '', '352962.5000', '352962.5000', '0.0000', '私募完成后，A 轮用户解锁锁钩 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('422', '徐建平', '13750876845', '', '149242.1050', '149242.1050', '0.0000', '私募完成后，A 轮用户解锁锁钩 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('423', '张长青', '18240932899', '', '43143.0000', '43143.0000', '0.0000', '私募完成后，A 轮用户解锁锁钩 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('424', '王治斌', '13509200906', '', '4211.6200', '4211.6200', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('425', '罗巧玲', '13686671388', '', '10371.0750', '10371.0750', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('426', '黎高学', '13568532222', '', '256644.5000', '256644.5000', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('427', '陈树桥', '15344235554', '', '233277.0000', '233277.0000', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('428', '金志明', '15057981749', '', '70047.8750', '70047.8750', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('429', '周芳芳', '13867426736', '', '117869.0570', '117869.0570', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('430', '张铁英', '13867446436', '', '353626.7857', '353626.7857', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:26', '2');
INSERT INTO `website_currency_pool` VALUES ('431', '张兰英', '13805745617', '', '285570.6000', '285570.6000', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('432', '张克群', '13606643846', '', '239215.5500', '239215.5500', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('433', '吴传玲', '18697940681', '', '46841.6900', '46841.6900', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('434', '罗国忠', '13926848668', '', '25000.0000', '25000.0000', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '私募客户', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('435', '周肖杰', '13925544253', '', '17698.0000', '17698.0000', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('436', '兰媛媛', '13574106417', '', '2222.7300', '2222.7300', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('437', '王国栋', '13418450285', '', '2250.0000', '2250.0000', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('438', '张立享', '13317071014', '', '1500.0000', '1500.0000', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('439', '麦健添', '13030211870', '', '3409.0900', '3409.0900', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('440', '郭海蛟', '15588765398', '', '3181.8200', '3181.8200', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('441', '任雪', '17620494928', '', '1909.0900', '1909.0900', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('442', '罗礼旺', '13129524650', '', '1181.8200', '1181.8200', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('443', '张琪', '15989409982', '', '3130.4348', '3130.4348', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('444', '田军文', '13268122469', '', '1630.4348', '1630.4348', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2019-05-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');
INSERT INTO `website_currency_pool` VALUES ('445', '郭思思', '13602594636', '', '30000.0000', '30000.0000', '0.0000', '私募完成后，A 轮用户解锁所购 PCT 的 50%，剩余部分在 PCT 上线交易所后 6个月解锁。', 'Private clients lock up their positions for six months ', '100', '2018-11-18 00:00:00', '2018-09-17 00:00:00', null, '员工', '1', '2018-11-23 11:13:27', '2');

-- ----------------------------
-- Table structure for website_currency_pool_record
-- ----------------------------
DROP TABLE IF EXISTS `website_currency_pool_record`;
CREATE TABLE `website_currency_pool_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pool_id` bigint(20) NOT NULL COMMENT '带币池表id，关联外键',
  `from` varchar(255) NOT NULL COMMENT '支出账户地址',
  `to` varchar(255) NOT NULL COMMENT '收入账户地址',
  `tx_address` varchar(255) NOT NULL COMMENT '交易地址',
  `currency` decimal(20,5) NOT NULL COMMENT '交易代币金额',
  `periods` int(10) NOT NULL COMMENT '期数，从第1期开始增加',
  `state` int(1) NOT NULL DEFAULT '1' COMMENT '交易状态 1:成功，0:失败',
  `describe` varchar(255) NOT NULL COMMENT '交易描述，如失败写交易失败原因',
  `admin` varchar(255) NOT NULL COMMENT '转账操作人',
  `time` datetime NOT NULL COMMENT '转账时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户代币池表资金记录表，记录了给用户转账代币的信息。';

-- ----------------------------
-- Records of website_currency_pool_record
-- ----------------------------

-- ----------------------------
-- Table structure for website_extract_applyfor
-- ----------------------------
DROP TABLE IF EXISTS `website_extract_applyfor`;
CREATE TABLE `website_extract_applyfor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL COMMENT 'eacoo_users表用户uid',
  `address` varchar(255) NOT NULL COMMENT '提现钱包地址',
  `money` decimal(20,4) DEFAULT NULL COMMENT '提现PCT数额，系统计算出来的提现代币',
  `currency` decimal(20,4) DEFAULT NULL COMMENT '用户剩余代币总额，取currency字段值',
  `confirm_time` datetime DEFAULT NULL COMMENT '管理员确认提现时间',
  `time` datetime NOT NULL COMMENT '提现申请时间',
  `state` int(1) NOT NULL DEFAULT '0' COMMENT '状态：0:申请提现中，1:提现成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of website_extract_applyfor
-- ----------------------------

-- ----------------------------
-- Table structure for website_message
-- ----------------------------
DROP TABLE IF EXISTS `website_message`;
CREATE TABLE `website_message` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `state` varchar(255) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='APP消息中心';

-- ----------------------------
-- Records of website_message
-- ----------------------------
INSERT INTO `website_message` VALUES ('4', '3333', '3333', '2018-10-18 00:00:00', '1');
INSERT INTO `website_message` VALUES ('5', '2223', '2223', '2018-10-24 00:00:00', '1');
INSERT INTO `website_message` VALUES ('6', '998', '9999', '2018-10-25 00:00:00', '1');
INSERT INTO `website_message` VALUES ('7', '46456', '68498', '2018-10-27 00:00:00', '1');

-- ----------------------------
-- Table structure for website_news
-- ----------------------------
DROP TABLE IF EXISTS `website_news`;
CREATE TABLE `website_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(200) DEFAULT NULL COMMENT '新闻标题',
  `content` varchar(500) DEFAULT NULL COMMENT '新闻简要说明',
  `time` datetime DEFAULT NULL COMMENT '新闻时间',
  `icon` varchar(300) DEFAULT NULL COMMENT '新闻icon',
  `url` varchar(300) DEFAULT NULL COMMENT '新闻原文链接',
  `create_time` datetime DEFAULT NULL COMMENT '新闻采集时间',
  `state` int(1) DEFAULT '0' COMMENT '是否有效（1有效，0无效）',
  `lang` int(1) DEFAULT NULL COMMENT '语言（1:英文，0:中文）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='官网新闻表';

-- ----------------------------
-- Records of website_news
-- ----------------------------
INSERT INTO `website_news` VALUES ('51', '全球首例车位链（ParkECO）——引领区块链4.0时代落实到实体经济应用中', '2018年是区块链应用的元年，随着区块链受到市场及投资机构的高度关注，国内第一份官方区块链产业白皮书---《2018中国区块链产业白皮书》在五月由工信部信息中心发布，白皮书重点指出---区块链未来三年将在实体经济广泛落地。\r\n\r\n \r\n\r\n区块链是分布式数据存储、点对点传输、共识机制、加密算法等计算机技术的新型应用模式，从诞生之日起就被很多大机构看好，能在很多领域得到应用。IBM、百度、腾讯、阿里巴巴等巨头公司都在投入研发与应用，然而由于区块链技术在国内起步不久，很多人对区块链不是真正的了解，再加上行业中有一些人急功近利，导致这个行业刚起步就乱象丛生。', '2018-09-07 00:00:00', 'https://mmbiz.qpic.cn/mmbiz_jpg/8TK75T2PI4iaPo7BYibibU3g0XPyxBvlCicDUjvibs5zDIoo2Kia1ib8nqPia6B9jyAQDtKs7UW662SKTUpRM9gG3O8fYw/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1', 'https://mp.weixin.qq.com/s/jl6y3flazOfDv5TQdakv2g', '2018-10-30 00:00:00', '1', '0');
INSERT INTO `website_news` VALUES ('56', '车位链（ParkECO）——应用ERC721标准，引领区块链应用新时代', '去年年末，来自以太坊的加密猫游戏”以太猫”特别火爆，一时间币圈大大小小的人都在撸猫。这是一款基于以太坊智能合约的游戏，需要你领养一只猫，然后进行配种，最后则可以拍卖。\r\n\r\n\r\n\r\n在这个游戏中，每只猫都拥有不一样基因的猫, 归根到底也就是拥有不一样属性的Token。通过智能合约记录一个代币的所有权，然后在新的不可置换代币基础上，添加猫的毛色、眼色、斑纹等属性，最后将以太猫显示在网页上。其中拍卖价值最贵的一只猫，成交价格为246.95个以太币，约合人民币77万元。', '2018-09-26 00:00:00', 'https://mmbiz.qpic.cn/mmbiz_png/8TK75T2PI4hGibcU4zs2hI5EBtQhzn22907icVSvENKIO9zyNzp7Ho0Q2Tj2mMAUhQ4P2n1WUVQ2icnfYA1BILWgw/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1', 'https://mp.weixin.qq.com/s/-FUP_pvVHQwywb-Cz21LWw', '2018-10-30 00:00:00', '1', '0');
INSERT INTO `website_news` VALUES ('68', '解读ParkECO | Token经济模型的设计与资产锚定', '在区块链中，Token通常是指“通证”或“代币”。在以太坊订立ERC20标准之后，Token被人们广泛认识。\r\n\r\n\r\n\r\nToken对于社区而言是一种经济激励的工具，可以促进社区内生态圈的形成。所有区块链项目核心都是有一套能让社区良好运转的Token经济模型。', '2018-09-30 00:00:00', 'https://mmbiz.qpic.cn/mmbiz_jpg/8TK75T2PI4jEfht1H2vqicLMTWp2hNvcAk6Uy3NwGx4ABogibV7ibdiaU4T55kWqJ6PfuwibqgicYQvklqjyIZiavt9cw/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1', 'https://mp.weixin.qq.com/s/W5XoxFN-u3QT4X2tiwbpmA', '2018-10-30 00:00:00', '1', '0');
INSERT INTO `website_news` VALUES ('70', '车位权属难！如何让停车位流通变得更简单？', '现如今，买车容易，买车位难。很多人在购房时也会考虑花高价购买一个停车位，但由于车位产权这块存在一定程度上的法律空白，很多人高价从开发商那里购买的停车位产权却不够清晰明确。一般来说，只有带有产权的车位才能进行交易以及登记，无产权的车位一般只有20年使用权并且无法交易，就算拥有买卖合同也没有办法办理停车位产权登记，只能出让使用权。', '2018-10-10 00:00:00', 'https://mmbiz.qpic.cn/mmbiz_jpg/8TK75T2PI4iaxqiba1FCQIiasWqd6cntdHJuYyDx1iaWC2VNvHLFHN7ibPAMo7L18ya3j1rQhUQsdLjHSLBkucSBY7A/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1', 'https://mp.weixin.qq.com/s/2Sh6IdxV8377KF7ByF0pow', '2018-10-30 00:00:00', '1', '0');

-- ----------------------------
-- Table structure for website_notice
-- ----------------------------
DROP TABLE IF EXISTS `website_notice`;
CREATE TABLE `website_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `description` varchar(500) DEFAULT NULL COMMENT '公告描述',
  `content` text COMMENT '公告内容',
  `time` datetime DEFAULT NULL COMMENT '公告时间',
  `create_time` datetime DEFAULT NULL COMMENT '公告创建时间',
  `state` int(1) DEFAULT '0' COMMENT '是否有效（1有效，0无效）',
  `lang` int(10) DEFAULT NULL COMMENT '语言（1:英文，0:中文）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='官网公告表';

-- ----------------------------
-- Records of website_notice
-- ----------------------------
INSERT INTO `website_notice` VALUES ('54', '89567', '4646', '4646', '2018-10-25 08:00:00', '2018-10-25 16:00:31', '1', '1');
INSERT INTO `website_notice` VALUES ('55', '63456', '54656', '546', '2018-09-29 08:00:00', '2018-10-25 16:01:41', '1', '1');
INSERT INTO `website_notice` VALUES ('56', '测试', '测试', '测试', '2018-10-31 08:00:00', '2018-10-31 10:00:34', '1', '0');
INSERT INTO `website_notice` VALUES ('57', '43', '5643', '3654356', '2018-11-19 08:00:00', '2018-11-19 18:05:23', '1', '1');
INSERT INTO `website_notice` VALUES ('62', '110', '', '110', '2018-11-20 08:00:00', '2018-11-20 09:15:11', '1', '1');
INSERT INTO `website_notice` VALUES ('63', '88888', '', '8888', '2018-11-20 08:00:00', '2018-11-20 09:15:36', '1', '1');

-- ----------------------------
-- Table structure for website_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `website_operation_log`;
CREATE TABLE `website_operation_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT ' 管理员ID',
  `admin_name` varchar(255) DEFAULT NULL COMMENT '管理员名称',
  `operation_type` varchar(255) DEFAULT NULL COMMENT '\r\n操作类型(1登录|2退出|3导入数据|4转账|5确认转账)\r\n\n',
  `money` varchar(255) DEFAULT NULL COMMENT '金额',
  `address` varchar(255) DEFAULT NULL COMMENT '用户钱包地址\r\n\n',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间\n',
  `state` int(10) DEFAULT NULL COMMENT '状态(1.成功|2.失败)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='操作日志表';

-- ----------------------------
-- Records of website_operation_log
-- ----------------------------
INSERT INTO `website_operation_log` VALUES ('1', '马老板', '5', '100000', '深圳', '2018-10-16 10:54:07', '1');
INSERT INTO `website_operation_log` VALUES ('2', '老王', '5', '10000', '上海', '2018-10-16 10:54:07', '1');
INSERT INTO `website_operation_log` VALUES ('6', 'zlx', '3', '889555', null, '2018-10-17 09:05:37', '1');
INSERT INTO `website_operation_log` VALUES ('7', 'zlx', '3', '66456', null, '2018-10-17 09:37:36', '1');
INSERT INTO `website_operation_log` VALUES ('8', 'zlx', '1', '6546', null, '2018-10-17 09:41:39', '1');
INSERT INTO `website_operation_log` VALUES ('9', 'zlx', '1', '343334', null, '2018-10-17 09:50:21', '1');
INSERT INTO `website_operation_log` VALUES ('10', 'zlx', '1', null, null, '2018-10-17 11:03:59', '1');
INSERT INTO `website_operation_log` VALUES ('11', 'zlx', '1', null, null, '2018-10-17 11:04:42', '1');
INSERT INTO `website_operation_log` VALUES ('12', 'zlx', '1', null, null, '2018-10-17 11:05:12', '1');
INSERT INTO `website_operation_log` VALUES ('13', 'zlx', '1', null, null, '2018-10-17 11:19:22', '1');
INSERT INTO `website_operation_log` VALUES ('14', 'zlx', '2', null, null, '2018-10-17 11:19:28', '1');
INSERT INTO `website_operation_log` VALUES ('15', 'zlx', '1', null, null, '2018-10-17 11:19:34', '1');
INSERT INTO `website_operation_log` VALUES ('16', 'zlx', '2', null, '', '2018-10-17 11:25:59', '1');
INSERT INTO `website_operation_log` VALUES ('17', 'zlx', '1', null, '', '2018-10-17 11:26:03', '1');
INSERT INTO `website_operation_log` VALUES ('18', 'zlx', '1', null, null, '2018-10-17 11:39:02', '1');
INSERT INTO `website_operation_log` VALUES ('19', 'zlx', '4', '1', '3', '2018-10-17 11:39:32', '1');
INSERT INTO `website_operation_log` VALUES ('20', 'zlx', '2', '', '', '2018-10-17 11:47:51', '1');
INSERT INTO `website_operation_log` VALUES ('21', 'zlx', '1', '', '', '2018-10-17 11:48:00', '1');
INSERT INTO `website_operation_log` VALUES ('22', 'zlx', '1', '', '', '2018-10-17 11:49:12', '1');
INSERT INTO `website_operation_log` VALUES ('23', 'zlx', '1', '', '', '2018-10-17 11:49:45', '1');
INSERT INTO `website_operation_log` VALUES ('24', 'zlx', '4', '1', '3', '2018-10-17 13:47:38', '1');
INSERT INTO `website_operation_log` VALUES ('25', 'zlx', '4', '0.1', '3', '2018-10-17 13:48:41', '1');
INSERT INTO `website_operation_log` VALUES ('26', 'zlx', '4', '0.01', '3', '2018-10-17 13:53:04', '1');
INSERT INTO `website_operation_log` VALUES ('27', 'zlx', '4', '0.0001', '3', '2018-10-17 14:12:31', '1');
INSERT INTO `website_operation_log` VALUES ('28', 'zlx', '1', null, null, '2018-10-17 14:13:05', '1');
INSERT INTO `website_operation_log` VALUES ('29', 'zlx', '4', '0.01', '3', '2018-10-17 14:13:26', '1');
INSERT INTO `website_operation_log` VALUES ('30', 'zlx', '4', '0.2', '3', '2018-10-17 14:13:44', '1');
INSERT INTO `website_operation_log` VALUES ('31', 'zlx', '4', '0.001', '3', '2018-10-17 14:13:52', '1');
INSERT INTO `website_operation_log` VALUES ('32', 'zlx', '4', '0.003', '3', '2018-10-17 14:14:01', '1');
INSERT INTO `website_operation_log` VALUES ('33', 'zlx', '4', '0.0009', '3', '2018-10-17 14:14:17', '1');
INSERT INTO `website_operation_log` VALUES ('34', 'zlx', '1', '', '', '2018-10-17 15:33:10', '1');
INSERT INTO `website_operation_log` VALUES ('35', 'zlx', '2', '', '', '2018-10-17 16:52:12', '1');
INSERT INTO `website_operation_log` VALUES ('36', 'zlx', '1', '', '', '2018-10-17 16:52:21', '1');
INSERT INTO `website_operation_log` VALUES ('37', 'zlx', '4', '10000', '0x890eea26c6a972360a9c63db6bab7a3240e7fda2', '2018-10-17 17:55:09', '1');
INSERT INTO `website_operation_log` VALUES ('38', 'zlx', '4', '9000', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-17 17:55:30', '1');
INSERT INTO `website_operation_log` VALUES ('39', 'zlx', '1', '', '', '2018-10-18 09:07:18', '1');
INSERT INTO `website_operation_log` VALUES ('40', 'zlx', '1', '', '', '2018-10-18 13:47:53', '1');
INSERT INTO `website_operation_log` VALUES ('41', 'zlx', '1', '', '', '2018-10-18 17:20:19', '1');
INSERT INTO `website_operation_log` VALUES ('42', 'zlx', '1', '', '', '2018-10-19 09:15:25', '1');
INSERT INTO `website_operation_log` VALUES ('43', 'wchm', '1', '', '', '2018-10-19 11:54:48', '1');
INSERT INTO `website_operation_log` VALUES ('44', 'wchm', '1', '', '', '2018-10-19 11:57:38', '1');
INSERT INTO `website_operation_log` VALUES ('45', 'wchm', '1', '', '', '2018-10-19 16:32:18', '1');
INSERT INTO `website_operation_log` VALUES ('46', 'wchm', '1', '', '', '2018-10-20 13:53:51', '1');
INSERT INTO `website_operation_log` VALUES ('47', 'wchm', '1', '', '', '2018-10-20 14:21:43', '1');
INSERT INTO `website_operation_log` VALUES ('48', 'wchm', '1', '', '', '2018-10-20 16:12:08', '1');
INSERT INTO `website_operation_log` VALUES ('49', 'wchm', '1', '', '', '2018-10-20 17:02:40', '1');
INSERT INTO `website_operation_log` VALUES ('50', 'wchm', '1', '', '', '2018-10-20 17:23:59', '1');
INSERT INTO `website_operation_log` VALUES ('51', 'wchm', '1', '', '', '2018-10-20 17:50:16', '1');
INSERT INTO `website_operation_log` VALUES ('52', 'wchm', '1', '', '', '2018-10-22 09:26:06', '1');
INSERT INTO `website_operation_log` VALUES ('53', 'wchm', '1', '', '', '2018-10-22 09:53:31', '1');
INSERT INTO `website_operation_log` VALUES ('54', 'wchm', '1', '', '', '2018-10-22 11:48:45', '1');
INSERT INTO `website_operation_log` VALUES ('55', 'wchm', '1', '', '', '2018-10-22 11:52:11', '1');
INSERT INTO `website_operation_log` VALUES ('56', 'wchm', '1', '', '', '2018-10-22 13:53:52', '1');
INSERT INTO `website_operation_log` VALUES ('57', 'wchm', '1', '', '', '2018-10-22 13:53:52', '1');
INSERT INTO `website_operation_log` VALUES ('58', 'wchm', '1', '', '', '2018-10-22 16:56:03', '1');
INSERT INTO `website_operation_log` VALUES ('59', 'wchm', '1', '', '', '2018-10-22 17:06:56', '1');
INSERT INTO `website_operation_log` VALUES ('60', 'wchm', '1', '', '', '2018-10-23 09:04:56', '1');
INSERT INTO `website_operation_log` VALUES ('61', 'wchm', '1', '', '', '2018-10-23 10:49:30', '1');
INSERT INTO `website_operation_log` VALUES ('62', 'wchm', '1', '', '', '2018-10-23 13:53:02', '1');
INSERT INTO `website_operation_log` VALUES ('63', 'wchm', '1', '', '', '2018-10-23 14:52:03', '1');
INSERT INTO `website_operation_log` VALUES ('64', 'wchm', '4', '10', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:28:47', '0');
INSERT INTO `website_operation_log` VALUES ('65', 'wchm', '4', '10', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:29:06', '0');
INSERT INTO `website_operation_log` VALUES ('66', 'wchm', '4', '10', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:29:08', '0');
INSERT INTO `website_operation_log` VALUES ('67', 'wchm', '4', '0.0001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:34:33', '0');
INSERT INTO `website_operation_log` VALUES ('68', 'wchm', '4', '0.000000', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:35:10', '0');
INSERT INTO `website_operation_log` VALUES ('69', 'wchm', '4', '0.000000', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:35:12', '0');
INSERT INTO `website_operation_log` VALUES ('70', 'wchm', '1', '', '', '2018-10-23 15:41:40', '1');
INSERT INTO `website_operation_log` VALUES ('71', 'wchm', '4', '0.01', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:41:49', '0');
INSERT INTO `website_operation_log` VALUES ('72', 'wchm', '4', '0.01', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:41:57', '0');
INSERT INTO `website_operation_log` VALUES ('73', 'wchm', '4', '0.01', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:41:59', '0');
INSERT INTO `website_operation_log` VALUES ('74', 'wchm', '4', '0.01', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:42:01', '0');
INSERT INTO `website_operation_log` VALUES ('75', 'wchm', '4', '0.01', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:42:03', '0');
INSERT INTO `website_operation_log` VALUES ('76', 'wchm', '4', '0.01', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:42:05', '0');
INSERT INTO `website_operation_log` VALUES ('77', 'wchm', '4', '0.01', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:42:07', '0');
INSERT INTO `website_operation_log` VALUES ('78', 'wchm', '4', '0.01', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:42:08', '0');
INSERT INTO `website_operation_log` VALUES ('79', 'wchm', '4', '0.01', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:42:11', '0');
INSERT INTO `website_operation_log` VALUES ('80', 'wchm', '1', '', '', '2018-10-23 15:45:58', '1');
INSERT INTO `website_operation_log` VALUES ('81', 'wchm', '4', '0.00000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:46:09', '0');
INSERT INTO `website_operation_log` VALUES ('82', 'wchm', '4', '0.00000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:46:17', '0');
INSERT INTO `website_operation_log` VALUES ('83', 'wchm', '4', '0.000000000000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:55:26', '0');
INSERT INTO `website_operation_log` VALUES ('84', 'wchm', '4', '0.000000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 15:59:23', '0');
INSERT INTO `website_operation_log` VALUES ('85', 'wchm', '4', '0.0000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 16:00:12', '0');
INSERT INTO `website_operation_log` VALUES ('86', 'wchm', '4', '0.00001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 16:01:02', '0');
INSERT INTO `website_operation_log` VALUES ('87', 'wchm', '4', '0.000000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 16:25:12', '0');
INSERT INTO `website_operation_log` VALUES ('88', 'wchm', '4', '0.000000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 16:26:44', '0');
INSERT INTO `website_operation_log` VALUES ('89', 'wchm', '4', '0.000000000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 16:35:52', '0');
INSERT INTO `website_operation_log` VALUES ('90', 'wchm', '4', '0.000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 16:51:41', '0');
INSERT INTO `website_operation_log` VALUES ('91', 'wchm', '4', '0.000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 16:59:43', '0');
INSERT INTO `website_operation_log` VALUES ('92', 'wchm', '4', '0.000001', '0x9e50efaf878503797c70eb1c57e28ec2abea2a22', '2018-10-23 17:01:24', '0');
INSERT INTO `website_operation_log` VALUES ('93', 'wchm', '1', '', '', '2018-10-23 17:17:49', '1');
INSERT INTO `website_operation_log` VALUES ('94', 'wchm', '1', '', '', '2018-10-23 17:28:15', '1');
INSERT INTO `website_operation_log` VALUES ('95', 'wchm', '1', '', '', '2018-10-23 18:08:27', '1');
INSERT INTO `website_operation_log` VALUES ('96', 'wchm', '1', '', '', '2018-10-24 09:34:00', '1');
INSERT INTO `website_operation_log` VALUES ('97', 'wchm', '1', '', '', '2018-10-24 09:41:28', '1');
INSERT INTO `website_operation_log` VALUES ('98', 'wchm', '1', '', '', '2018-10-24 13:45:23', '1');
INSERT INTO `website_operation_log` VALUES ('99', 'wchm', '1', '', '', '2018-10-24 14:44:49', '1');
INSERT INTO `website_operation_log` VALUES ('100', 'wchm', '1', '', '', '2018-10-24 16:16:15', '1');
INSERT INTO `website_operation_log` VALUES ('101', 'wchm', '1', '', '', '2018-10-24 16:30:59', '1');
INSERT INTO `website_operation_log` VALUES ('102', 'wchm', '1', '', '', '2018-10-24 16:31:16', '1');
INSERT INTO `website_operation_log` VALUES ('103', 'wchm', '1', '', '', '2018-10-24 16:41:27', '1');
INSERT INTO `website_operation_log` VALUES ('104', 'wchm', '1', '', '', '2018-10-24 16:50:05', '1');
INSERT INTO `website_operation_log` VALUES ('105', 'wchm', '1', '', '', '2018-10-24 16:50:17', '1');
INSERT INTO `website_operation_log` VALUES ('106', 'wchm', '1', '', '', '2018-10-24 17:37:41', '1');
INSERT INTO `website_operation_log` VALUES ('107', 'wchm', '1', '', '', '2018-10-25 09:25:30', '1');
INSERT INTO `website_operation_log` VALUES ('108', 'wchm', '1', '', '', '2018-10-25 13:53:48', '1');
INSERT INTO `website_operation_log` VALUES ('109', 'wchm', '2', '', '', '2018-10-25 14:17:51', '1');
INSERT INTO `website_operation_log` VALUES ('110', 'wchm', '1', '', '', '2018-10-25 14:25:07', '1');
INSERT INTO `website_operation_log` VALUES ('111', 'wchm', '1', '', '', '2018-10-25 14:46:16', '1');
INSERT INTO `website_operation_log` VALUES ('112', 'wchm', '1', '', '', '2018-10-25 14:59:04', '1');
INSERT INTO `website_operation_log` VALUES ('113', 'wchm', '1', '', '', '2018-10-25 15:42:20', '1');
INSERT INTO `website_operation_log` VALUES ('114', 'wchm', '1', '', '', '2018-10-25 15:43:02', '1');
INSERT INTO `website_operation_log` VALUES ('115', 'wchm', '1', '', '', '2018-10-26 09:00:08', '1');
INSERT INTO `website_operation_log` VALUES ('116', 'wchm', '1', '', '', '2018-10-26 09:51:39', '1');
INSERT INTO `website_operation_log` VALUES ('117', 'wchm', '1', '', '', '2018-10-26 10:07:07', '1');
INSERT INTO `website_operation_log` VALUES ('118', 'wchm', '1', '', '', '2018-10-26 10:08:19', '1');
INSERT INTO `website_operation_log` VALUES ('119', 'wchm', '1', '', '', '2018-10-26 15:03:53', '1');
INSERT INTO `website_operation_log` VALUES ('120', 'wchm', '1', '', '', '2018-10-28 21:57:27', '1');
INSERT INTO `website_operation_log` VALUES ('121', 'wchm', '1', '', '', '2018-10-28 22:01:04', '1');
INSERT INTO `website_operation_log` VALUES ('122', 'wchm', '1', '', '', '2018-10-29 09:26:42', '1');
INSERT INTO `website_operation_log` VALUES ('123', 'wchm', '1', '', '', '2018-10-29 09:42:24', '1');
INSERT INTO `website_operation_log` VALUES ('124', 'wchm', '1', '', '', '2018-10-29 10:13:23', '1');
INSERT INTO `website_operation_log` VALUES ('125', 'wchm', '2', '', '', '2018-10-29 10:18:39', '1');
INSERT INTO `website_operation_log` VALUES ('126', 'wchm', '1', '', '', '2018-10-29 10:18:45', '1');
INSERT INTO `website_operation_log` VALUES ('127', 'wchm', '1', '', '', '2018-10-29 10:50:38', '1');
INSERT INTO `website_operation_log` VALUES ('128', 'wchm', '1', '', '', '2018-10-29 10:58:43', '1');
INSERT INTO `website_operation_log` VALUES ('129', 'wchm', '1', '', '', '2018-10-29 11:03:06', '1');
INSERT INTO `website_operation_log` VALUES ('130', 'wchm', '2', '', '', '2018-10-29 11:05:44', '1');
INSERT INTO `website_operation_log` VALUES ('131', 'wchm', '1', '', '', '2018-10-29 11:05:49', '1');
INSERT INTO `website_operation_log` VALUES ('132', 'wchm', '1', '', '', '2018-10-29 11:06:51', '1');
INSERT INTO `website_operation_log` VALUES ('133', 'wchm', '1', '', '', '2018-10-29 11:08:30', '1');
INSERT INTO `website_operation_log` VALUES ('134', 'wchm', '1', '', '', '2018-10-29 11:10:13', '1');
INSERT INTO `website_operation_log` VALUES ('135', 'wchm', '1', '', '', '2018-10-29 11:17:46', '1');
INSERT INTO `website_operation_log` VALUES ('136', 'wchm', '1', '', '', '2018-10-29 11:20:32', '1');
INSERT INTO `website_operation_log` VALUES ('137', 'wchm', '1', '', '', '2018-10-29 11:21:48', '1');
INSERT INTO `website_operation_log` VALUES ('138', 'wchm', '1', '', '', '2018-10-29 11:32:34', '1');
INSERT INTO `website_operation_log` VALUES ('139', 'wchm', '1', '', '', '2018-10-29 12:01:51', '1');
INSERT INTO `website_operation_log` VALUES ('140', 'wchm', '1', '', '', '2018-10-29 12:02:56', '1');
INSERT INTO `website_operation_log` VALUES ('141', 'wchm', '1', '', '', '2018-10-29 12:04:11', '1');
INSERT INTO `website_operation_log` VALUES ('142', 'wchm', '1', '', '', '2018-10-29 12:06:59', '1');
INSERT INTO `website_operation_log` VALUES ('143', 'wchm', '1', '', '', '2018-10-29 14:31:40', '1');
INSERT INTO `website_operation_log` VALUES ('144', 'wchm', '1', '', '', '2018-10-29 14:31:46', '1');
INSERT INTO `website_operation_log` VALUES ('145', 'wchm', '1', '', '', '2018-10-29 14:31:50', '1');
INSERT INTO `website_operation_log` VALUES ('146', 'wchm', '1', '', '', '2018-10-29 14:32:13', '1');
INSERT INTO `website_operation_log` VALUES ('147', 'wchm', '1', '', '', '2018-10-29 14:33:58', '1');
INSERT INTO `website_operation_log` VALUES ('148', 'wchm', '1', '', '', '2018-10-29 14:34:58', '1');
INSERT INTO `website_operation_log` VALUES ('149', 'wchm', '1', '', '', '2018-10-29 15:21:22', '1');
INSERT INTO `website_operation_log` VALUES ('150', 'wchm', '2', '', '', '2018-10-29 17:31:42', '1');
INSERT INTO `website_operation_log` VALUES ('151', 'zhanglixiang', '1', '', '', '2018-10-29 17:31:50', '1');
INSERT INTO `website_operation_log` VALUES ('152', 'wchm', '1', '', '', '2018-10-29 17:38:50', '1');
INSERT INTO `website_operation_log` VALUES ('153', 'wchm', '2', '', '', '2018-10-29 18:13:00', '1');
INSERT INTO `website_operation_log` VALUES ('154', 'zhanglixiang', '1', '', '', '2018-10-29 18:13:11', '1');
INSERT INTO `website_operation_log` VALUES ('155', 'zhanglixiang', '2', '', '', '2018-10-29 18:13:34', '1');
INSERT INTO `website_operation_log` VALUES ('156', 'zhanglixiang', '1', '', '', '2018-10-29 18:13:39', '1');
INSERT INTO `website_operation_log` VALUES ('157', 'zhanglixiang', '2', '', '', '2018-10-29 18:17:23', '1');
INSERT INTO `website_operation_log` VALUES ('158', 'zhanglixiang', '1', '', '', '2018-10-29 18:17:30', '1');
INSERT INTO `website_operation_log` VALUES ('159', 'wchm', '1', '', '', '2018-10-29 18:18:19', '1');
INSERT INTO `website_operation_log` VALUES ('160', 'zhanglixiang', '2', '', '', '2018-10-29 18:20:12', '1');
INSERT INTO `website_operation_log` VALUES ('161', 'zhanglixiang', '1', '', '', '2018-10-29 18:20:17', '1');
INSERT INTO `website_operation_log` VALUES ('162', 'zhanglixiang', '2', '', '', '2018-10-29 18:20:50', '1');
INSERT INTO `website_operation_log` VALUES ('163', 'wchm', '1', '', '', '2018-10-29 18:20:54', '1');
INSERT INTO `website_operation_log` VALUES ('164', 'wchm', '登入', '', '', '2018-10-31 09:37:05', '1');
INSERT INTO `website_operation_log` VALUES ('165', 'wchm', '登入', '', '', '2018-10-31 09:37:22', '1');
INSERT INTO `website_operation_log` VALUES ('166', 'wchm', '退出', '', '', '2018-10-31 09:38:29', '1');
INSERT INTO `website_operation_log` VALUES ('167', 'wchm', '登入', '', '', '2018-10-31 09:38:35', '1');
INSERT INTO `website_operation_log` VALUES ('168', 'wchm', '退出', '', '', '2018-10-31 09:38:41', '1');
INSERT INTO `website_operation_log` VALUES ('169', 'zhanglixiang', '登入', '', '', '2018-10-31 09:38:48', '1');
INSERT INTO `website_operation_log` VALUES ('170', 'zhanglixiang', '退出', '', '', '2018-10-31 09:39:32', '1');
INSERT INTO `website_operation_log` VALUES ('171', 'wchm', '登入', '', '', '2018-10-31 09:39:39', '1');
INSERT INTO `website_operation_log` VALUES ('172', 'wchm', '登入', '', '', '2018-10-31 09:49:16', '1');
INSERT INTO `website_operation_log` VALUES ('173', 'wchm', '登入', '', '', '2018-10-31 10:24:46', '1');
INSERT INTO `website_operation_log` VALUES ('174', 'wchm', '登入', '', '', '2018-10-31 14:19:34', '1');
INSERT INTO `website_operation_log` VALUES ('175', 'wchm', '退出', '', '', '2018-10-31 14:22:50', '1');
INSERT INTO `website_operation_log` VALUES ('176', 'wchm', '登入', '', '', '2018-10-31 14:23:38', '1');
INSERT INTO `website_operation_log` VALUES ('177', 'wchm', '登入', '', '', '2018-10-31 15:44:47', '1');
INSERT INTO `website_operation_log` VALUES ('178', 'wchm', '登入', '', '', '2018-10-31 16:43:29', '1');
INSERT INTO `website_operation_log` VALUES ('179', 'wchm', '登入', '', '', '2018-11-01 10:35:53', '1');
INSERT INTO `website_operation_log` VALUES ('180', 'wchm', '登入', '', '', '2018-11-01 11:43:31', '1');
INSERT INTO `website_operation_log` VALUES ('181', 'jiangwenjian', '登入', '', '', '2018-11-01 14:19:43', '1');
INSERT INTO `website_operation_log` VALUES ('182', 'jiangwenjian', '退出', '', '', '2018-11-01 14:21:19', '1');
INSERT INTO `website_operation_log` VALUES ('183', 'wchm', '登入', '', '', '2018-11-01 14:21:34', '1');
INSERT INTO `website_operation_log` VALUES ('184', 'wchm', '退出', '', '', '2018-11-01 14:29:19', '1');
INSERT INTO `website_operation_log` VALUES ('185', '1111', '登入', '', '', '2018-11-01 14:29:23', '1');
INSERT INTO `website_operation_log` VALUES ('186', '1111', '退出', '', '', '2018-11-01 14:33:27', '1');
INSERT INTO `website_operation_log` VALUES ('187', '1111', '登入', '', '', '2018-11-01 14:33:33', '1');
INSERT INTO `website_operation_log` VALUES ('188', '1111', '退出', '', '', '2018-11-01 14:35:52', '1');
INSERT INTO `website_operation_log` VALUES ('189', 'wchm', '登入', '', '', '2018-11-01 14:36:10', '1');
INSERT INTO `website_operation_log` VALUES ('190', 'wchm', '登入', '', '', '2018-11-01 15:44:54', '1');
INSERT INTO `website_operation_log` VALUES ('191', 'wchm', '登入', '', '', '2018-11-01 16:16:22', '1');
INSERT INTO `website_operation_log` VALUES ('192', 'wchm', '登入', '', '', '2018-11-01 17:10:02', '1');
INSERT INTO `website_operation_log` VALUES ('193', 'wchm', '登入', '', '', '2018-11-01 17:24:50', '1');
INSERT INTO `website_operation_log` VALUES ('194', 'wchm', '登入', '', '', '2018-11-01 18:14:12', '1');
INSERT INTO `website_operation_log` VALUES ('195', 'wchm', '登入', '', '', '2018-11-01 19:06:58', '1');
INSERT INTO `website_operation_log` VALUES ('196', 'wchm', '登入', '', '', '2018-11-02 10:35:32', '1');
INSERT INTO `website_operation_log` VALUES ('197', 'wchm', '登入', '', '', '2018-11-02 11:56:12', '1');
INSERT INTO `website_operation_log` VALUES ('198', 'wchm', '登入', '', '', '2018-11-02 12:45:02', '1');
INSERT INTO `website_operation_log` VALUES ('199', 'wchm', '登入', '', '', '2018-11-13 21:40:34', '1');
INSERT INTO `website_operation_log` VALUES ('200', 'wchm', '登入', '', '', '2018-11-14 15:31:57', '1');
INSERT INTO `website_operation_log` VALUES ('201', 'wchm', '登入', '', '', '2018-11-14 15:37:02', '1');
INSERT INTO `website_operation_log` VALUES ('202', 'wchm', '登入', '', '', '2018-11-14 16:43:50', '1');
INSERT INTO `website_operation_log` VALUES ('203', 'wchm', '登入', '', '', '2018-11-14 17:16:51', '1');
INSERT INTO `website_operation_log` VALUES ('204', 'wchm', '登入', '', '', '2018-11-15 13:46:05', '1');
INSERT INTO `website_operation_log` VALUES ('205', 'wchm', '登入', '', '', '2018-11-15 14:52:43', '1');
INSERT INTO `website_operation_log` VALUES ('206', 'wchm', '登入', '', '', '2018-11-15 16:15:54', '1');
INSERT INTO `website_operation_log` VALUES ('207', 'wchm', '登入', '', '', '2018-11-15 16:48:21', '1');
INSERT INTO `website_operation_log` VALUES ('208', 'wchm', '登入', '', '', '2018-11-15 17:09:03', '1');
INSERT INTO `website_operation_log` VALUES ('209', 'wchm', '登入', '', '', '2018-11-15 17:14:23', '1');
INSERT INTO `website_operation_log` VALUES ('210', 'wchm', '登入', '', '', '2018-11-15 17:16:10', '1');
INSERT INTO `website_operation_log` VALUES ('211', 'wchm', '登入', '', '', '2018-11-15 17:16:31', '1');
INSERT INTO `website_operation_log` VALUES ('212', 'wchm', '登入', '', '', '2018-11-15 17:20:31', '1');
INSERT INTO `website_operation_log` VALUES ('213', 'wchm', '登入', '', '', '2018-11-15 17:25:27', '1');
INSERT INTO `website_operation_log` VALUES ('214', 'wchm', '登入', '', '', '2018-11-15 17:27:01', '1');
INSERT INTO `website_operation_log` VALUES ('215', 'wchm', '登入', '', '', '2018-11-15 17:32:17', '1');
INSERT INTO `website_operation_log` VALUES ('216', 'wchm', '登入', '', '', '2018-11-15 17:36:48', '1');
INSERT INTO `website_operation_log` VALUES ('217', 'wchm', '登入', '', '', '2018-11-15 17:40:42', '1');
INSERT INTO `website_operation_log` VALUES ('218', 'wchm', '登入', '', '', '2018-11-15 17:41:24', '1');
INSERT INTO `website_operation_log` VALUES ('219', 'wchm', '登入', '', '', '2018-11-15 17:43:34', '1');
INSERT INTO `website_operation_log` VALUES ('220', 'wchm', '登入', '', '', '2018-11-15 17:49:40', '1');
INSERT INTO `website_operation_log` VALUES ('221', 'wchm', '登入', '', '', '2018-11-15 17:51:35', '1');
INSERT INTO `website_operation_log` VALUES ('222', 'wchm', '登入', '', '', '2018-11-15 17:52:38', '1');
INSERT INTO `website_operation_log` VALUES ('223', 'wchm', '登入', '', '', '2018-11-15 17:53:28', '1');
INSERT INTO `website_operation_log` VALUES ('224', 'wchm', '登入', '', '', '2018-11-15 17:55:35', '1');
INSERT INTO `website_operation_log` VALUES ('225', 'wchm', '代币池用户导入A轮', '', '', '2018-11-15 17:55:46', '1');
INSERT INTO `website_operation_log` VALUES ('226', 'wchm', '代币池用户导入A轮', '', '', '2018-11-15 17:56:13', '1');
INSERT INTO `website_operation_log` VALUES ('227', 'wchm', '登入', '', '', '2018-11-15 17:57:43', '1');
INSERT INTO `website_operation_log` VALUES ('228', 'wchm', '代币池用户导入A轮', '', '', '2018-11-15 17:57:52', '1');
INSERT INTO `website_operation_log` VALUES ('229', 'wchm', '登入', '', '', '2018-11-15 18:00:15', '1');
INSERT INTO `website_operation_log` VALUES ('230', 'wchm', '登入', '', '', '2018-11-15 18:06:50', '1');
INSERT INTO `website_operation_log` VALUES ('231', 'wchm', '登入', '', '', '2018-11-15 22:21:39', '1');
INSERT INTO `website_operation_log` VALUES ('232', 'wchm', '登入', '', '', '2018-11-15 22:41:34', '1');
INSERT INTO `website_operation_log` VALUES ('233', 'wchm', '登入', '', '', '2018-11-15 22:44:22', '1');
INSERT INTO `website_operation_log` VALUES ('234', 'wchm', '登入', '', '', '2018-11-15 22:59:50', '1');
INSERT INTO `website_operation_log` VALUES ('235', 'wchm', '登入', '', '', '2018-11-16 08:59:14', '1');
INSERT INTO `website_operation_log` VALUES ('236', 'wchm', '登入', '', '', '2018-11-16 10:43:20', '1');
INSERT INTO `website_operation_log` VALUES ('237', 'wchm', '导出预售表单', '', '', '2018-11-16 10:43:27', '1');
INSERT INTO `website_operation_log` VALUES ('238', 'wchm', '登入', '', '', '2018-11-16 11:19:39', '1');
INSERT INTO `website_operation_log` VALUES ('239', 'wchm', '登入', '', '', '2018-11-16 11:29:43', '1');
INSERT INTO `website_operation_log` VALUES ('240', 'wchm', '导出预售表单', '', '', '2018-11-16 11:29:50', '1');
INSERT INTO `website_operation_log` VALUES ('241', 'wchm', '导出预售表单', '', '', '2018-11-16 11:31:17', '1');
INSERT INTO `website_operation_log` VALUES ('242', 'wchm', '导出预售表单', '', '', '2018-11-16 11:31:46', '1');
INSERT INTO `website_operation_log` VALUES ('243', 'wchm', '导出预售表单', '', '', '2018-11-16 11:32:53', '1');
INSERT INTO `website_operation_log` VALUES ('244', 'wchm', '登入', '', '', '2018-11-19 09:17:15', '1');
INSERT INTO `website_operation_log` VALUES ('245', 'wchm', '登入', '', '', '2018-11-19 09:17:22', '1');
INSERT INTO `website_operation_log` VALUES ('246', 'wchm', '登入', '', '', '2018-11-19 09:17:26', '1');
INSERT INTO `website_operation_log` VALUES ('247', 'wchm', '登入', '', '', '2018-11-19 09:17:27', '1');
INSERT INTO `website_operation_log` VALUES ('248', 'wchm', '登入', '', '', '2018-11-19 09:17:28', '1');
INSERT INTO `website_operation_log` VALUES ('249', 'wchm', '登入', '', '', '2018-11-19 09:17:52', '1');
INSERT INTO `website_operation_log` VALUES ('250', 'wchm', '登入', '', '', '2018-11-19 09:19:03', '1');
INSERT INTO `website_operation_log` VALUES ('251', 'wchm', '登入', '', '', '2018-11-19 10:11:27', '1');
INSERT INTO `website_operation_log` VALUES ('252', 'wchm', '登入', '', '', '2018-11-19 16:31:13', '1');
INSERT INTO `website_operation_log` VALUES ('253', 'wchm', '登入', '', '', '2018-11-19 16:31:14', '1');
INSERT INTO `website_operation_log` VALUES ('254', 'wchm', '登入', '', '', '2018-11-19 16:31:30', '1');
INSERT INTO `website_operation_log` VALUES ('255', 'wchm', '登入', '', '', '2018-11-19 18:01:13', '1');
INSERT INTO `website_operation_log` VALUES ('256', 'wchm', '登入', '', '', '2018-11-19 18:02:20', '1');
INSERT INTO `website_operation_log` VALUES ('257', 'wchm', '登入', '', '', '2018-11-19 18:03:50', '1');
INSERT INTO `website_operation_log` VALUES ('258', 'wchm', '添加公告', '', '', '2018-11-19 18:04:00', '1');
INSERT INTO `website_operation_log` VALUES ('259', 'wchm', '添加公告', '', '', '2018-11-19 18:04:02', '1');
INSERT INTO `website_operation_log` VALUES ('260', 'wchm', '添加公告', '', '', '2018-11-19 18:04:04', '1');
INSERT INTO `website_operation_log` VALUES ('261', 'wchm', '登入', '', '', '2018-11-19 18:05:09', '1');
INSERT INTO `website_operation_log` VALUES ('262', 'wchm', '添加公告', '', '', '2018-11-19 18:05:24', '1');
INSERT INTO `website_operation_log` VALUES ('263', 'wchm', '添加公告', '', '', '2018-11-19 18:05:43', '1');
INSERT INTO `website_operation_log` VALUES ('264', 'wchm', '登入', '', '', '2018-11-19 18:08:19', '1');
INSERT INTO `website_operation_log` VALUES ('265', 'wchm', '登入', '', '', '2018-11-19 18:09:27', '1');
INSERT INTO `website_operation_log` VALUES ('266', 'wchm', '添加公告', '', '', '2018-11-19 18:10:34', '1');
INSERT INTO `website_operation_log` VALUES ('267', 'wchm', '登入', '', '', '2018-11-19 18:11:08', '1');
INSERT INTO `website_operation_log` VALUES ('268', 'wchm', '添加公告', '', '', '2018-11-19 18:11:21', '1');
INSERT INTO `website_operation_log` VALUES ('269', 'wchm', '登入', '', '', '2018-11-19 18:13:43', '1');
INSERT INTO `website_operation_log` VALUES ('270', 'wchm', '登入', '', '', '2018-11-19 18:13:43', '1');
INSERT INTO `website_operation_log` VALUES ('271', 'wchm', '登入', '', '', '2018-11-19 18:14:30', '1');
INSERT INTO `website_operation_log` VALUES ('272', 'wchm', '添加公告', '', '', '2018-11-19 18:14:49', '1');
INSERT INTO `website_operation_log` VALUES ('273', 'wchm', '登入', '', '', '2018-11-20 09:13:59', '1');
INSERT INTO `website_operation_log` VALUES ('274', 'wchm', '删除公告', '', '', '2018-11-20 09:14:05', '1');
INSERT INTO `website_operation_log` VALUES ('275', 'wchm', '删除公告', '', '', '2018-11-20 09:14:37', '1');
INSERT INTO `website_operation_log` VALUES ('276', 'wchm', '删除公告', '', '', '2018-11-20 09:14:39', '1');
INSERT INTO `website_operation_log` VALUES ('277', 'wchm', '添加公告', '', '', '2018-11-20 09:14:40', '0');
INSERT INTO `website_operation_log` VALUES ('278', 'wchm', '删除公告', '', '', '2018-11-20 09:14:41', '1');
INSERT INTO `website_operation_log` VALUES ('279', 'wchm', '删除公告', '', '', '2018-11-20 09:14:45', '1');
INSERT INTO `website_operation_log` VALUES ('280', 'wchm', '删除公告', '', '', '2018-11-20 09:14:48', '1');
INSERT INTO `website_operation_log` VALUES ('281', 'wchm', '删除公告', '', '', '2018-11-20 09:14:50', '1');
INSERT INTO `website_operation_log` VALUES ('282', 'wchm', '删除公告', '', '', '2018-11-20 09:14:54', '1');
INSERT INTO `website_operation_log` VALUES ('283', 'wchm', '删除公告', '', '', '2018-11-20 09:14:57', '1');
INSERT INTO `website_operation_log` VALUES ('284', 'wchm', '添加公告', '', '', '2018-11-20 09:15:12', '1');
INSERT INTO `website_operation_log` VALUES ('285', 'wchm', '修改公告', '', '', '2018-11-20 09:15:25', '1');
INSERT INTO `website_operation_log` VALUES ('286', 'wchm', '添加公告', '', '', '2018-11-20 09:15:37', '1');
INSERT INTO `website_operation_log` VALUES ('287', 'wchm', '登入', '', '', '2018-11-20 17:12:19', '1');
INSERT INTO `website_operation_log` VALUES ('288', 'wchm', '登入', '', '', '2018-11-21 10:19:25', '1');
INSERT INTO `website_operation_log` VALUES ('289', 'wchm', '登入', '', '', '2018-11-21 10:26:38', '1');
INSERT INTO `website_operation_log` VALUES ('290', 'wchm', '登入', '', '', '2018-11-21 10:27:48', '1');
INSERT INTO `website_operation_log` VALUES ('291', 'wchm', '登入', '', '', '2018-11-21 10:35:31', '1');
INSERT INTO `website_operation_log` VALUES ('292', 'wchm', '代币池用户导入', '', '', '2018-11-21 10:35:40', '1');
INSERT INTO `website_operation_log` VALUES ('293', 'wchm', '登入', '', '', '2018-11-21 13:39:36', '1');
INSERT INTO `website_operation_log` VALUES ('294', 'wchm', '登入', '', '', '2018-11-21 14:02:15', '1');
INSERT INTO `website_operation_log` VALUES ('295', 'wchm', '登入', '', '', '2018-11-21 14:31:24', '1');
INSERT INTO `website_operation_log` VALUES ('296', 'wchm', '登入', '', '', '2018-11-21 14:45:42', '1');
INSERT INTO `website_operation_log` VALUES ('297', 'wchm', '登入', '', '', '2018-11-21 14:51:45', '1');
INSERT INTO `website_operation_log` VALUES ('298', 'wchm', '登入', '', '', '2018-11-21 14:55:40', '1');
INSERT INTO `website_operation_log` VALUES ('299', 'wchm', '登入', '', '', '2018-11-21 14:56:41', '1');
INSERT INTO `website_operation_log` VALUES ('300', 'wchm', '登入', '', '', '2018-11-21 15:01:51', '1');
INSERT INTO `website_operation_log` VALUES ('301', 'wchm', '登入', '', '', '2018-11-21 15:02:49', '1');
INSERT INTO `website_operation_log` VALUES ('302', 'wchm', '登入', '', '', '2018-11-21 15:33:58', '1');
INSERT INTO `website_operation_log` VALUES ('303', 'wchm', '登入', '', '', '2018-11-21 16:12:31', '1');
INSERT INTO `website_operation_log` VALUES ('304', 'wchm', '代币池用户导入', '', '', '2018-11-21 16:13:10', '1');
INSERT INTO `website_operation_log` VALUES ('305', 'wchm', '登入', '', '', '2018-11-21 16:14:15', '1');
INSERT INTO `website_operation_log` VALUES ('306', 'wchm', '登入', '', '', '2018-11-21 16:16:54', '1');
INSERT INTO `website_operation_log` VALUES ('307', 'wchm', '代币池用户导入', '', '', '2018-11-21 16:20:29', '1');
INSERT INTO `website_operation_log` VALUES ('308', 'wchm', '登入', '', '', '2018-11-21 16:21:23', '1');
INSERT INTO `website_operation_log` VALUES ('309', 'wchm', '登入', '', '', '2018-11-21 16:23:26', '1');
INSERT INTO `website_operation_log` VALUES ('310', 'wchm', '登入', '', '', '2018-11-21 16:26:17', '1');
INSERT INTO `website_operation_log` VALUES ('311', 'wchm', '代币池用户导入', '', '', '2018-11-21 16:27:00', '1');
INSERT INTO `website_operation_log` VALUES ('312', 'wchm', '登入', '', '', '2018-11-21 16:49:58', '1');
INSERT INTO `website_operation_log` VALUES ('313', 'wchm', '代币池用户导入', '', '', '2018-11-21 16:50:23', '1');
INSERT INTO `website_operation_log` VALUES ('314', 'wchm', '登入', '', '', '2018-11-21 16:54:18', '1');
INSERT INTO `website_operation_log` VALUES ('315', 'wchm', '代币池用户导入', '', '', '2018-11-21 16:55:23', '1');
INSERT INTO `website_operation_log` VALUES ('316', 'wchm', '登入', '', '', '2018-11-21 16:59:00', '1');
INSERT INTO `website_operation_log` VALUES ('317', 'wchm', '代币池用户导入', '', '', '2018-11-21 16:59:12', '1');
INSERT INTO `website_operation_log` VALUES ('318', 'wchm', '代币池用户导入', '', '', '2018-11-21 17:00:34', '1');
INSERT INTO `website_operation_log` VALUES ('319', 'wchm', '代币池用户导入', '', '', '2018-11-21 17:00:51', '1');
INSERT INTO `website_operation_log` VALUES ('320', 'wchm', '代币池用户导入', '', '', '2018-11-21 17:09:44', '0');
INSERT INTO `website_operation_log` VALUES ('321', 'wchm', '登入', '', '', '2018-11-21 17:14:25', '1');
INSERT INTO `website_operation_log` VALUES ('322', 'wchm', '登入', '', '', '2018-11-21 17:43:03', '1');
INSERT INTO `website_operation_log` VALUES ('323', 'wchm', '登入', '', '', '2018-11-21 17:44:23', '1');
INSERT INTO `website_operation_log` VALUES ('324', 'wchm', '登入', '', '', '2018-11-21 17:45:06', '1');
INSERT INTO `website_operation_log` VALUES ('325', 'wchm', '登入', '', '', '2018-11-21 17:46:10', '1');
INSERT INTO `website_operation_log` VALUES ('326', 'wchm', '登入', '', '', '2018-11-21 17:48:22', '1');
INSERT INTO `website_operation_log` VALUES ('327', 'wchm', '登入', '', '', '2018-11-21 17:48:58', '1');
INSERT INTO `website_operation_log` VALUES ('328', 'wchm', '登入', '', '', '2018-11-21 17:49:56', '1');
INSERT INTO `website_operation_log` VALUES ('329', 'wchm', '登入', '', '', '2018-11-21 18:04:11', '1');
INSERT INTO `website_operation_log` VALUES ('330', 'wchm', '登入', '', '', '2018-11-22 09:11:36', '1');
INSERT INTO `website_operation_log` VALUES ('331', 'wchm', '登入', '', '', '2018-11-22 09:27:15', '1');
INSERT INTO `website_operation_log` VALUES ('332', 'wchm', '登入', '', '', '2018-11-22 09:34:48', '1');
INSERT INTO `website_operation_log` VALUES ('333', 'wchm', '登入', '', '', '2018-11-22 09:36:54', '1');
INSERT INTO `website_operation_log` VALUES ('334', 'wchm', '登入', '', '', '2018-11-22 09:38:54', '1');
INSERT INTO `website_operation_log` VALUES ('335', 'wchm', '登入', '', '', '2018-11-22 09:41:24', '1');
INSERT INTO `website_operation_log` VALUES ('336', 'wchm', '登入', '', '', '2018-11-22 09:42:23', '1');
INSERT INTO `website_operation_log` VALUES ('337', 'wchm', '登入', '', '', '2018-11-22 09:44:46', '1');
INSERT INTO `website_operation_log` VALUES ('338', 'wchm', '登入', '', '', '2018-11-22 09:45:26', '1');
INSERT INTO `website_operation_log` VALUES ('339', 'wchm', '登入', '', '', '2018-11-22 09:46:23', '1');
INSERT INTO `website_operation_log` VALUES ('340', 'wchm', '登入', '', '', '2018-11-22 09:47:06', '1');
INSERT INTO `website_operation_log` VALUES ('341', 'wchm', '登入', '', '', '2018-11-22 09:47:17', '1');
INSERT INTO `website_operation_log` VALUES ('342', 'wchm', '登入', '', '', '2018-11-22 09:48:24', '1');
INSERT INTO `website_operation_log` VALUES ('343', 'wchm', '登入', '', '', '2018-11-22 09:49:39', '1');
INSERT INTO `website_operation_log` VALUES ('344', 'wchm', '登入', '', '', '2018-11-22 09:52:46', '1');
INSERT INTO `website_operation_log` VALUES ('345', 'wchm', '代币池用户导入', '', '', '2018-11-22 09:54:09', '1');
INSERT INTO `website_operation_log` VALUES ('346', 'wchm', '登入', '', '', '2018-11-22 09:55:17', '1');
INSERT INTO `website_operation_log` VALUES ('347', 'wchm', '代币池用户导入', '', '', '2018-11-22 09:55:28', '1');
INSERT INTO `website_operation_log` VALUES ('348', 'wchm', '代币池用户导入', '', '', '2018-11-22 09:55:51', '1');
INSERT INTO `website_operation_log` VALUES ('349', 'wchm', '登入', '', '', '2018-11-22 10:00:15', '1');
INSERT INTO `website_operation_log` VALUES ('350', 'wchm', '登入', '', '', '2018-11-22 10:02:39', '1');
INSERT INTO `website_operation_log` VALUES ('351', 'wchm', '登入', '', '', '2018-11-22 10:05:25', '1');
INSERT INTO `website_operation_log` VALUES ('352', 'wchm', '登入', '', '', '2018-11-22 10:06:05', '1');
INSERT INTO `website_operation_log` VALUES ('353', 'wchm', '登入', '', '', '2018-11-22 10:07:37', '1');
INSERT INTO `website_operation_log` VALUES ('354', 'wchm', '登入', '', '', '2018-11-22 10:08:45', '1');
INSERT INTO `website_operation_log` VALUES ('355', 'wchm', '登入', '', '', '2018-11-22 10:09:24', '1');
INSERT INTO `website_operation_log` VALUES ('356', 'wchm', '登入', '', '', '2018-11-22 10:10:54', '1');
INSERT INTO `website_operation_log` VALUES ('357', 'wchm', '登入', '', '', '2018-11-22 10:12:27', '1');
INSERT INTO `website_operation_log` VALUES ('358', 'wchm', '登入', '', '', '2018-11-22 10:13:31', '1');
INSERT INTO `website_operation_log` VALUES ('359', 'wchm', '登入', '', '', '2018-11-22 10:16:23', '1');
INSERT INTO `website_operation_log` VALUES ('360', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:31:59', '1');
INSERT INTO `website_operation_log` VALUES ('361', 'wchm', '登入', '', '', '2018-11-22 10:32:41', '1');
INSERT INTO `website_operation_log` VALUES ('362', 'wchm', '登入', '', '', '2018-11-22 10:33:05', '1');
INSERT INTO `website_operation_log` VALUES ('363', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:33:10', '1');
INSERT INTO `website_operation_log` VALUES ('364', 'wchm', '登入', '', '', '2018-11-22 10:34:17', '1');
INSERT INTO `website_operation_log` VALUES ('365', 'wchm', '登入', '', '', '2018-11-22 10:34:48', '1');
INSERT INTO `website_operation_log` VALUES ('366', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:34:52', '1');
INSERT INTO `website_operation_log` VALUES ('367', 'wchm', '登入', '', '', '2018-11-22 10:36:17', '1');
INSERT INTO `website_operation_log` VALUES ('368', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:36:31', '1');
INSERT INTO `website_operation_log` VALUES ('369', 'wchm', '登入', '', '', '2018-11-22 10:39:18', '1');
INSERT INTO `website_operation_log` VALUES ('370', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:41:18', '1');
INSERT INTO `website_operation_log` VALUES ('371', 'wchm', '登入', '', '', '2018-11-22 10:41:53', '1');
INSERT INTO `website_operation_log` VALUES ('372', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:42:17', '1');
INSERT INTO `website_operation_log` VALUES ('373', 'wchm', '登入', '', '', '2018-11-22 10:44:44', '1');
INSERT INTO `website_operation_log` VALUES ('374', 'wchm', '登入', '', '', '2018-11-22 10:45:38', '1');
INSERT INTO `website_operation_log` VALUES ('375', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:46:05', '1');
INSERT INTO `website_operation_log` VALUES ('376', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:46:12', '1');
INSERT INTO `website_operation_log` VALUES ('377', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:46:19', '1');
INSERT INTO `website_operation_log` VALUES ('378', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:46:29', '1');
INSERT INTO `website_operation_log` VALUES ('379', 'wchm', '代币池用户导入', '', '', '2018-11-22 10:54:31', '1');
INSERT INTO `website_operation_log` VALUES ('380', 'wchm', '代币池用户导入', '', '', '2018-11-22 11:16:00', '0');
INSERT INTO `website_operation_log` VALUES ('381', 'wchm', '登入', '', '', '2018-11-22 11:47:53', '1');
INSERT INTO `website_operation_log` VALUES ('382', 'wchm', '代币池用户导入', '', '', '2018-11-22 11:48:35', '1');
INSERT INTO `website_operation_log` VALUES ('383', 'wchm', '登入', '', '', '2018-11-22 11:50:03', '1');
INSERT INTO `website_operation_log` VALUES ('384', 'wchm', '代币池用户导入', '', '', '2018-11-22 11:50:10', '1');
INSERT INTO `website_operation_log` VALUES ('385', 'wchm', '代币池用户导入', '', '', '2018-11-22 11:51:17', '1');
INSERT INTO `website_operation_log` VALUES ('386', 'wchm', '代币池用户导入', '', '', '2018-11-22 11:51:29', '0');
INSERT INTO `website_operation_log` VALUES ('387', 'wchm', '代币池用户导入', '', '', '2018-11-22 11:52:10', '1');
INSERT INTO `website_operation_log` VALUES ('388', 'wchm', '代币池用户导入', '', '', '2018-11-22 11:52:26', '1');
INSERT INTO `website_operation_log` VALUES ('389', 'wchm', '代币池用户导入', '', '', '2018-11-22 11:57:16', '1');
INSERT INTO `website_operation_log` VALUES ('390', 'wchm', '代币池用户导入', '', '', '2018-11-22 11:57:19', '1');
INSERT INTO `website_operation_log` VALUES ('391', 'wchm', '代币池用户导入', '', '', '2018-11-22 11:57:21', '0');
INSERT INTO `website_operation_log` VALUES ('392', 'wchm', '登入', '', '', '2018-11-22 13:57:35', '1');
INSERT INTO `website_operation_log` VALUES ('393', 'wchm', '代币池用户导入', '', '', '2018-11-22 13:57:47', '1');
INSERT INTO `website_operation_log` VALUES ('394', 'wchm', '代币池用户导入', '', '', '2018-11-22 13:58:42', '1');
INSERT INTO `website_operation_log` VALUES ('395', 'wchm', '登入', '', '', '2018-11-22 13:59:45', '1');
INSERT INTO `website_operation_log` VALUES ('396', 'wchm', '代币池用户导入', '', '', '2018-11-22 14:00:00', '1');
INSERT INTO `website_operation_log` VALUES ('397', 'wchm', '登入', '', '', '2018-11-22 14:06:06', '1');
INSERT INTO `website_operation_log` VALUES ('398', 'wchm', '登入', '', '', '2018-11-22 14:06:41', '1');
INSERT INTO `website_operation_log` VALUES ('399', 'wchm', '登入', '', '', '2018-11-22 14:10:15', '1');
INSERT INTO `website_operation_log` VALUES ('400', 'wchm', '登入', '', '', '2018-11-22 14:11:58', '1');
INSERT INTO `website_operation_log` VALUES ('401', 'wchm', '删除新闻', '', '', '2018-11-22 14:30:32', '1');
INSERT INTO `website_operation_log` VALUES ('402', 'wchm', '删除新闻', '', '', '2018-11-22 14:30:34', '1');
INSERT INTO `website_operation_log` VALUES ('403', 'wchm', '删除新闻', '', '', '2018-11-22 14:30:37', '1');
INSERT INTO `website_operation_log` VALUES ('404', 'wchm', '登入', '', '', '2018-11-22 14:44:13', '1');
INSERT INTO `website_operation_log` VALUES ('405', 'wchm', '登入', '', '', '2018-11-23 09:47:15', '1');
INSERT INTO `website_operation_log` VALUES ('406', 'wchm', '导出预售表单', '', '', '2018-11-23 09:47:40', '1');
INSERT INTO `website_operation_log` VALUES ('407', 'wchm', '登入', '', '', '2018-11-23 10:18:44', '1');
INSERT INTO `website_operation_log` VALUES ('408', 'wchm', '代币池用户导入', '', '', '2018-11-23 10:18:57', '1');
INSERT INTO `website_operation_log` VALUES ('409', 'wchm', '代币池用户导入', '', '', '2018-11-23 10:21:00', '1');
INSERT INTO `website_operation_log` VALUES ('410', 'wchm', '登入', '', '', '2018-11-23 10:21:33', '1');
INSERT INTO `website_operation_log` VALUES ('411', 'wchm', '代币池用户导入', '', '', '2018-11-23 10:21:55', '1');
INSERT INTO `website_operation_log` VALUES ('412', 'wchm', '代币池用户导入', '', '', '2018-11-23 10:23:01', '1');
INSERT INTO `website_operation_log` VALUES ('413', 'wchm', '登入', '', '', '2018-11-23 10:24:49', '1');
INSERT INTO `website_operation_log` VALUES ('414', 'wchm', '代币池用户导入', '', '', '2018-11-23 10:25:18', '1');
INSERT INTO `website_operation_log` VALUES ('415', 'wchm', '登入', '', '', '2018-11-23 10:32:59', '1');
INSERT INTO `website_operation_log` VALUES ('416', 'wchm', '登入', '', '', '2018-11-23 10:39:52', '1');
INSERT INTO `website_operation_log` VALUES ('417', 'wchm', '登入', '', '', '2018-11-23 11:03:22', '1');
INSERT INTO `website_operation_log` VALUES ('418', 'wchm', '登入', '', '', '2018-11-23 11:10:01', '1');
INSERT INTO `website_operation_log` VALUES ('419', 'wchm', '代币池用户导入', '', '', '2018-11-23 11:10:18', '1');
INSERT INTO `website_operation_log` VALUES ('420', 'wchm', '登入', '', '', '2018-11-23 11:11:50', '1');
INSERT INTO `website_operation_log` VALUES ('421', 'wchm', '代币池用户导入', '', '', '2018-11-23 11:12:02', '1');
INSERT INTO `website_operation_log` VALUES ('422', 'wchm', '代币池用户导入', '', '', '2018-11-23 11:13:24', '1');
INSERT INTO `website_operation_log` VALUES ('423', 'wchm', '登入', '', '', '2018-11-23 11:17:07', '1');
INSERT INTO `website_operation_log` VALUES ('424', 'wchm', '登入', '', '', '2018-11-26 09:22:13', '1');
INSERT INTO `website_operation_log` VALUES ('425', 'wchm', '登入', '', '', '2018-11-26 09:22:16', '1');
INSERT INTO `website_operation_log` VALUES ('426', 'wchm', '登入', '', '', '2018-11-26 09:22:17', '1');
INSERT INTO `website_operation_log` VALUES ('427', 'wchm', '登入', '', '', '2018-11-26 09:22:20', '1');
INSERT INTO `website_operation_log` VALUES ('428', 'wchm', '登入', '', '', '2018-11-26 09:22:21', '1');
INSERT INTO `website_operation_log` VALUES ('429', 'wchm', '登入', '', '', '2018-11-26 09:22:21', '1');
INSERT INTO `website_operation_log` VALUES ('430', 'wchm', '登入', '', '', '2018-11-26 09:22:23', '1');
INSERT INTO `website_operation_log` VALUES ('431', 'wchm', '登入', '', '', '2018-11-26 09:22:51', '1');
INSERT INTO `website_operation_log` VALUES ('432', 'wchm', '登入', '', '', '2018-12-13 10:30:38', '1');
INSERT INTO `website_operation_log` VALUES ('433', 'wchm', '登入', '', '', '2018-12-14 13:59:05', '1');

-- ----------------------------
-- Table structure for website_partner
-- ----------------------------
DROP TABLE IF EXISTS `website_partner`;
CREATE TABLE `website_partner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `partner_name` varchar(255) DEFAULT NULL COMMENT '合作伙伴名称',
  `number` varchar(255) DEFAULT NULL COMMENT '序号',
  `picture` varchar(500) DEFAULT NULL COMMENT '图片',
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `state` int(255) DEFAULT NULL COMMENT '是否展示(默认展示1、不展示0)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='合作伙伴表';

-- ----------------------------
-- Records of website_partner
-- ----------------------------
INSERT INTO `website_partner` VALUES ('5', '1', '1', '/upload/images/partner/20181031/20181031094639_922.jps', '1', '1', '2018-09-26 00:00:00');

-- ----------------------------
-- Table structure for website_permission
-- ----------------------------
DROP TABLE IF EXISTS `website_permission`;
CREATE TABLE `website_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelname` varchar(20) NOT NULL COMMENT '功能名称',
  `permission` varchar(20) NOT NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限表';

-- ----------------------------
-- Records of website_permission
-- ----------------------------
INSERT INTO `website_permission` VALUES ('1', 'index', 'index:add');
INSERT INTO `website_permission` VALUES ('2', 'index', 'index:update');

-- ----------------------------
-- Table structure for website_role
-- ----------------------------
DROP TABLE IF EXISTS `website_role`;
CREATE TABLE `website_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(20) NOT NULL COMMENT '角色名称',
  `roledesc` varchar(20) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of website_role
-- ----------------------------
INSERT INTO `website_role` VALUES ('1', 'admin', '管理员');
INSERT INTO `website_role` VALUES ('2', 'user', '普通用户');
INSERT INTO `website_role` VALUES ('3', '测试', '测试');

-- ----------------------------
-- Table structure for website_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `website_role_permission`;
CREATE TABLE `website_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL COMMENT 'website_role表id',
  `pid` int(11) NOT NULL COMMENT 'website_permission表id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色-权限关联表';

-- ----------------------------
-- Records of website_role_permission
-- ----------------------------
INSERT INTO `website_role_permission` VALUES ('1', '1', '1');
INSERT INTO `website_role_permission` VALUES ('2', '1', '2');

-- ----------------------------
-- Table structure for website_team
-- ----------------------------
DROP TABLE IF EXISTS `website_team`;
CREATE TABLE `website_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `number` varchar(50) NOT NULL COMMENT '序号',
  `team_name` varchar(255) DEFAULT NULL COMMENT '团队成员名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `head` varchar(255) DEFAULT NULL COMMENT '头像(保存图片路径)',
  `state` int(10) DEFAULT '1' COMMENT '是否展示(默认展示1、不展示0)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='团队成员表';

-- ----------------------------
-- Records of website_team
-- ----------------------------
INSERT INTO `website_team` VALUES ('12', '1', '测试', '测试测试', '/upload/images/team/20181031/20181031094142_51.jps', '1', '2018-10-31 00:00:00');
