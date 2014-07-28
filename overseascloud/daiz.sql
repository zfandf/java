/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50161
Source Host           : localhost:3306
Source Database       : daiz

Target Server Type    : MYSQL
Target Server Version : 50161
File Encoding         : 65001

Date: 2014-07-09 11:19:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yqt_about`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_about`;
CREATE TABLE `yqt_about` (
  `aid` smallint(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `seokeywords` varchar(255) NOT NULL DEFAULT '',
  `seodescription` varchar(255) NOT NULL DEFAULT '',
  `listorder` int(11) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_about
-- ----------------------------
INSERT INTO `yqt_about` VALUES ('1', '联系我们', '联系我们', '联系我们', '50', '联系我们联系我们联系我们联系我们联系我们联系我们');
INSERT INTO `yqt_about` VALUES ('3', '广告合作', '广告合作', '广告合作', '50', '广告合作广告合作广告合作');
INSERT INTO `yqt_about` VALUES ('2', '关于我们', '关于我们', '关于我们', '50', '关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们');

-- ----------------------------
-- Table structure for `yqt_address`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_address`;
CREATE TABLE `yqt_address` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `consignee` varchar(30) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `def` smallint(5) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_address
-- ----------------------------
INSERT INTO `yqt_address` VALUES ('1', '3', 'lss', '李大兵1', '中国', '郑州1', '4500001', '135821245151', '文化路张家村5555', '0');
INSERT INTO `yqt_address` VALUES ('4', '3', 'lss', '测试收货人', '澳大利亚', '利弊和', '48645646', '4864646', '测试详细地址复读生复读生复读生', '1');
INSERT INTO `yqt_address` VALUES ('5', '49', 'xiaozhang123', '小张', '中国', '河南', '475400', '15032145487', '河南省郑州市花园路刘庄', '1');
INSERT INTO `yqt_address` VALUES ('6', '49', 'xiaozhang123', '小张张', '中国', '河南', '475400', '15032145487', '河南郑州市', '0');
INSERT INTO `yqt_address` VALUES ('7', '55', 'hanfei', '123', '巴西', '123', '123', '123', '123', '1');
INSERT INTO `yqt_address` VALUES ('8', '106', 'teamilk', 'teamilk', '巴林', 'dfd', '12', '23', '23233333333', '1');
INSERT INTO `yqt_address` VALUES ('9', '163', 'yitouwushui', 'yitouwushui', '巴西', '巴西', '11111', '1111', '白皙', '1');
INSERT INTO `yqt_address` VALUES ('10', '164', 'nihao', '塩本', '日本', '兵庫県', '661-0043', '090-6985-881', '兵庫県尼崎市武庫元町2-17-4ライ', '0');
INSERT INTO `yqt_address` VALUES ('11', '164', 'nihao', '塩本', '日本', '兵庫県', '661-0043', '090-6985-881', '尼崎市武庫元町2-17-4ライ', '1');
INSERT INTO `yqt_address` VALUES ('12', '175', 'ceshi', 'test', '安圭拉', 'test', '456561', '4687245', '71321afwef', '0');
INSERT INTO `yqt_address` VALUES ('13', '184', 'dj1jj', '测试', '中国', '荆州', '434200', '1324567245', '湖北省荆州市啊啊', '0');

-- ----------------------------
-- Table structure for `yqt_admin`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_admin`;
CREATE TABLE `yqt_admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(30) DEFAULT NULL,
  `adminpwd` varchar(32) DEFAULT NULL,
  `adminpurview` text,
  `adminmid` varchar(500) DEFAULT NULL,
  `lastlogin` int(11) DEFAULT NULL,
  `logincount` int(11) DEFAULT '0',
  `state` smallint(5) DEFAULT '1',
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_admin
-- ----------------------------
INSERT INTO `yqt_admin` VALUES ('1', 'admin', '7fef6171469e80d32c0559f88b377245', 'songli_state_1,ordermange,ordermange_,order_state_1,order_state_2,sendordermange,sendordermange_,sendorder_state_1,sendorder_state_2,order_state_3,order_state_4,order_state_5,order_state_6,order_state_,sendorder_state_3,sendorder_state_4,sendorder_state_,usermange,usermange_,user_list,user_recharge,logrecord,logrecord_,record_type_,record_type_1,record_type_2,rechargerecord_type_,user_favorite,pmmange,pmmange_,pm_list,pm_in,pm_send,articlemange,articlemange_,article_list,article_add,shopmange,guestbookmange_,guestbook_list,sysmange,bankaccountmange,bankaccount_list,bankaccount_add,dictionarymaintenance,area_list,payid_list,delivery_list,adminmange,admin_list,mangemange,articletypemange,atype_list_,sysconfigmange,sys_info,shopsite_list,scorerecord_list,smtp_list,goodsmange,goods_list,goods_add,gtype_list,otype_list,specialmange,special_list,special_add,newsmange,news_list,news_add,goodsimgmange,goodsimg_list,goodsimg_get,discountmange,discount_list,discount_add,shopmange_,shop_goods_list,shop_goods_add,shop_gtype_list,refund_mange,refundrecord_list,ipfilter,FS,fs_list,aboutmange_,about_list,about_add,taobao_,taobao_gtype_list,guoneisongli_,songli_state_2,songli_state_3,songli_state_4,songli_state_5,songli_stete_,guoneisongli,lang_list,lang_list', '1,2,3,4,10,11,12,13,14,70,71,72,5,6,7,8,15,16,17,18,19,20,21,28,82,80,81,22,23,24,25,26,27,57,84,85,29,30,31,32,33,39,40,34,35,36,37,52,53,59,60,61,62,64,65,66,67,68,69,73,74,75,38,76,77,78,79,90,91,41,42,43,44,45,46,47,48,63,49,50,51,54,55,56,58,101,87,88,89,100,99,92,93,94,95,96,97,98', '1404793290', '1178', '1');

-- ----------------------------
-- Table structure for `yqt_adminmange`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_adminmange`;
CREATE TABLE `yqt_adminmange` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(30) NOT NULL,
  `murl` varchar(50) NOT NULL,
  `mcode` varchar(30) NOT NULL,
  `type` char(10) DEFAULT 'zone' COMMENT 'zone/group/item',
  `target` varchar(10) DEFAULT '',
  `listorder` int(10) DEFAULT '50',
  `node` int(10) DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_adminmange
-- ----------------------------
INSERT INTO `yqt_adminmange` VALUES ('1', '订单管理', '', 'ordermange', 'zone', '', '50', '0');
INSERT INTO `yqt_adminmange` VALUES ('2', '订单处理', '', 'ordermange_', 'group', '', '50', '1');
INSERT INTO `yqt_adminmange` VALUES ('3', '未处理订单', 'order_list.php?state=1', 'order_state_1', 'item', '', '50', '2');
INSERT INTO `yqt_adminmange` VALUES ('4', '已确认订单', 'order_list.php?state=2', 'order_state_2', 'item', '', '50', '2');
INSERT INTO `yqt_adminmange` VALUES ('5', '运单管理', '', 'sendordermange', 'zone', '', '50', '0');
INSERT INTO `yqt_adminmange` VALUES ('6', '管理运单', '', 'sendordermange_', 'group', '', '50', '5');
INSERT INTO `yqt_adminmange` VALUES ('7', '已支付运单', 'sendorder_list.php?state=1', 'sendorder_state_1', 'item', '', '50', '6');
INSERT INTO `yqt_adminmange` VALUES ('8', '已邮寄运单', 'sendorder_list.php?state=2', 'sendorder_state_2', 'item', '', '50', '6');
INSERT INTO `yqt_adminmange` VALUES ('10', '在途订单', 'order_list.php?state=3', 'order_state_3', 'item', '', '50', '2');
INSERT INTO `yqt_adminmange` VALUES ('11', '已到仓库', 'order_list.php?state=4', 'order_state_4', 'item', '', '50', '2');
INSERT INTO `yqt_adminmange` VALUES ('12', '已提交货运订单', 'order_list.php?state=5', 'order_state_5', 'item', '', '50', '2');
INSERT INTO `yqt_adminmange` VALUES ('13', '无效订单', 'order_list.php?state=6', 'order_state_6', 'item', '', '50', '2');
INSERT INTO `yqt_adminmange` VALUES ('14', '订单搜索', 'order_list.php', 'order_state_', 'item', '', '50', '2');
INSERT INTO `yqt_adminmange` VALUES ('15', '已成功运单', 'sendorder_list.php?state=3', 'sendorder_state_3', 'item', '', '50', '6');
INSERT INTO `yqt_adminmange` VALUES ('16', '无效运单', 'sendorder_list.php?state=4', 'sendorder_state_4', 'item', '', '50', '6');
INSERT INTO `yqt_adminmange` VALUES ('17', '运单搜索', 'sendorder_list.php', 'sendorder_state_', 'item', '', '50', '6');
INSERT INTO `yqt_adminmange` VALUES ('18', '用户管理', '', 'usermange', 'zone', '', '50', '0');
INSERT INTO `yqt_adminmange` VALUES ('19', '管理用户', '', 'usermange_', 'group', '', '50', '18');
INSERT INTO `yqt_adminmange` VALUES ('20', '用户列表', 'user_list.php', 'user_list', 'item', '', '50', '19');
INSERT INTO `yqt_adminmange` VALUES ('21', '转账充值', 'userrecharge.php', 'user_recharge', 'item', '', '50', '19');
INSERT INTO `yqt_adminmange` VALUES ('22', '日志记录', '', 'logrecord', 'zone', '', '50', '0');
INSERT INTO `yqt_adminmange` VALUES ('23', '记录日志', '', 'logrecord_', 'group', '', '50', '22');
INSERT INTO `yqt_adminmange` VALUES ('24', '消费记录', 'record_list.php', 'record_type_', 'item', '', '50', '23');
INSERT INTO `yqt_adminmange` VALUES ('25', '支出记录', 'record_list.php?type=1', 'record_type_1', 'item', '', '50', '23');
INSERT INTO `yqt_adminmange` VALUES ('26', '收入记录', 'record_list.php?type=2', 'record_type_2', 'item', '', '50', '23');
INSERT INTO `yqt_adminmange` VALUES ('27', '充值记录', 'rechargerecord_list.php', 'rechargerecord_type_', 'item', '', '50', '23');
INSERT INTO `yqt_adminmange` VALUES ('28', '用户收藏', 'favorite_list.php', 'user_favorite', 'item', '', '50', '19');
INSERT INTO `yqt_adminmange` VALUES ('29', '互动管理', '', 'pmmange', 'zone', '', '50', '0');
INSERT INTO `yqt_adminmange` VALUES ('30', '短信管理', '', 'pmmange_', 'group', '', '50', '29');
INSERT INTO `yqt_adminmange` VALUES ('31', '短信列表', 'pm_list.php', 'pm_list', 'item', '', '50', '30');
INSERT INTO `yqt_adminmange` VALUES ('32', '我的收件箱', 'pm_in.php', 'pm_in', 'item', '', '50', '30');
INSERT INTO `yqt_adminmange` VALUES ('33', '发送短信', 'pm_send.php', 'pm_send', 'item', '', '50', '30');
INSERT INTO `yqt_adminmange` VALUES ('34', '宣传管理', '', 'articlemange', 'zone', '', '50', '0');
INSERT INTO `yqt_adminmange` VALUES ('35', '管理文章', '', 'articlemange_', 'group', '', '50', '34');
INSERT INTO `yqt_adminmange` VALUES ('36', '文章列表', 'article_list.php', 'article_list', 'item', '', '50', '35');
INSERT INTO `yqt_adminmange` VALUES ('37', '添加文章', 'article_add.php', 'article_add', 'item', '', '50', '35');
INSERT INTO `yqt_adminmange` VALUES ('38', '商城管理', '', 'shopmange', 'zone', '', '50', '0');
INSERT INTO `yqt_adminmange` VALUES ('39', '留言咨询', '', 'guestbookmange_', 'group', '', '50', '29');
INSERT INTO `yqt_adminmange` VALUES ('40', '留言列表', 'guestbook_list.php', 'guestbook_list', 'item', '', '50', '39');
INSERT INTO `yqt_adminmange` VALUES ('41', '系统设置', '', 'sysmange', 'zone', '', '50', '0');
INSERT INTO `yqt_adminmange` VALUES ('42', '银行帐号', '', 'bankaccountmange', 'group', '', '50', '41');
INSERT INTO `yqt_adminmange` VALUES ('43', '银行账户列表', 'bankaccount_list.php', 'bankaccount_list', 'item', '', '50', '42');
INSERT INTO `yqt_adminmange` VALUES ('44', '增加银行帐号', 'bankaccount_add.php', 'bankaccount_add', 'item', '', '50', '42');
INSERT INTO `yqt_adminmange` VALUES ('45', '字典维护', '', 'dictionarymaintenance', 'group', '', '50', '41');
INSERT INTO `yqt_adminmange` VALUES ('46', '国家维护', 'area_list.php', 'area_list', 'item', '', '50', '45');
INSERT INTO `yqt_adminmange` VALUES ('47', '拍货帐号', 'payid_list.php', 'payid_list', 'item', '', '50', '45');
INSERT INTO `yqt_adminmange` VALUES ('48', '配送维护', 'delivery_list.php', 'delivery_list', 'item', '', '50', '45');
INSERT INTO `yqt_adminmange` VALUES ('49', '后台管理', '', 'adminmange', 'group', '', '50', '41');
INSERT INTO `yqt_adminmange` VALUES ('50', '后台管理员', 'admin_list.php', 'admin_list', 'item', '', '50', '49');
INSERT INTO `yqt_adminmange` VALUES ('51', '后台管理项', 'mange.php', 'mangemange', 'item', '', '50', '49');
INSERT INTO `yqt_adminmange` VALUES ('52', '管理分类', '', 'articletypemange', 'group', '', '50', '34');
INSERT INTO `yqt_adminmange` VALUES ('53', '文章分类', 'atype_list.php', 'atype_list_', 'item', '', '50', '52');
INSERT INTO `yqt_adminmange` VALUES ('54', '参数设置', '', 'sysconfigmange', 'group', '', '50', '41');
INSERT INTO `yqt_adminmange` VALUES ('55', '基本设置', 'sys_info.php', 'sys_info', 'item', '', '50', '54');
INSERT INTO `yqt_adminmange` VALUES ('56', '抓取设置', 'shopsite_list.php', 'shopsite_list', 'item', '', '50', '54');
INSERT INTO `yqt_adminmange` VALUES ('57', '积分日志', 'scorerecord_list.php', 'scorerecord_list', 'item', '', '50', '23');
INSERT INTO `yqt_adminmange` VALUES ('58', '发信邮箱', 'smtp_list.php', 'smtp_list', 'item', '', '50', '54');
INSERT INTO `yqt_adminmange` VALUES ('59', '分享商品', '', 'goodsmange', 'group', '', '50', '34');
INSERT INTO `yqt_adminmange` VALUES ('60', '分享商品列表', 'goods_list.php', 'goods_list', 'item', '', '50', '59');
INSERT INTO `yqt_adminmange` VALUES ('61', '添加分享商品', 'goods_add.php', 'goods_add', 'item', '', '50', '59');
INSERT INTO `yqt_adminmange` VALUES ('62', '分享商品分类', 'gtype_list.php', 'gtype_list', 'item', '', '50', '59');
INSERT INTO `yqt_adminmange` VALUES ('63', '订单分类', 'otype_list.php', 'otype_list', 'item', '', '50', '45');
INSERT INTO `yqt_adminmange` VALUES ('64', '专题活动', '', 'specialmange', 'group', '', '50', '34');
INSERT INTO `yqt_adminmange` VALUES ('65', '专题列表', 'special_list.php', 'special_list', 'item', '', '50', '64');
INSERT INTO `yqt_adminmange` VALUES ('66', '添加专题', 'special_add.php', 'special_add', 'item', '', '50', '64');
INSERT INTO `yqt_adminmange` VALUES ('67', '网站公告', '', 'newsmange', 'group', '', '50', '34');
INSERT INTO `yqt_adminmange` VALUES ('68', '公告列表', 'news_list.php', 'news_list', 'item', '', '50', '67');
INSERT INTO `yqt_adminmange` VALUES ('69', '添加公告', 'news_add.php', 'news_add', 'item', '', '50', '67');
INSERT INTO `yqt_adminmange` VALUES ('70', '图片处理', '', 'goodsimgmange', 'group', '', '50', '1');
INSERT INTO `yqt_adminmange` VALUES ('71', '图片状态', 'goodsimg_list.php', 'goodsimg_list', 'item', '', '50', '70');
INSERT INTO `yqt_adminmange` VALUES ('72', '抓取图片', 'goodsimg_get.php', 'goodsimg_get', 'item', '', '50', '70');
INSERT INTO `yqt_adminmange` VALUES ('73', '折扣管理', '', 'discountmange', 'group', '', '50', '34');
INSERT INTO `yqt_adminmange` VALUES ('74', '折扣列表', 'discount_list.php', 'discount_list', 'item', '', '50', '73');
INSERT INTO `yqt_adminmange` VALUES ('75', '折扣添加', 'discount_add.php', 'discount_add', 'item', '', '50', '73');
INSERT INTO `yqt_adminmange` VALUES ('76', '管理商城', '', 'shopmange_', 'group', '', '50', '38');
INSERT INTO `yqt_adminmange` VALUES ('77', '商品列表', 'shop_goods_list.php', 'shop_goods_list', 'item', '', '50', '76');
INSERT INTO `yqt_adminmange` VALUES ('78', '添加商品', 'shop_goods_add.php', 'shop_goods_add', 'item', '', '50', '76');
INSERT INTO `yqt_adminmange` VALUES ('79', '商品分类', 'shop_gtype_list.php', 'shop_gtype_list', 'item', '', '50', '76');
INSERT INTO `yqt_adminmange` VALUES ('80', '退款管理', '', 'refund_mange', 'group', '', '50', '18');
INSERT INTO `yqt_adminmange` VALUES ('81', '管理退款', 'refundrecord_list.php', 'refundrecord_list', 'item', '', '50', '80');
INSERT INTO `yqt_adminmange` VALUES ('82', '恶意用户IP限制', 'ipfilter.php', 'ipfilter', 'item', '', '50', '19');
INSERT INTO `yqt_adminmange` VALUES ('84', '财务统计管理', '', 'FS', 'group', '', '50', '22');
INSERT INTO `yqt_adminmange` VALUES ('85', '财务统计', 'fs_list.php', 'fs_list', 'item', '', '50', '84');
INSERT INTO `yqt_adminmange` VALUES ('87', '单页管理', '', 'aboutmange_', 'group', '', '50', '41');
INSERT INTO `yqt_adminmange` VALUES ('88', '单页列表', 'about_list.php', 'about_list', 'item', '', '50', '87');
INSERT INTO `yqt_adminmange` VALUES ('89', '添加单页', 'about_add.php', 'about_add', 'item', '', '50', '87');
INSERT INTO `yqt_adminmange` VALUES ('90', '淘宝管理', '', 'taobao_', 'group', '', '50', '38');
INSERT INTO `yqt_adminmange` VALUES ('91', '分类管理', 'taobao_gtype_list.php', 'taobao_gtype_list', 'item', '', '50', '90');
INSERT INTO `yqt_adminmange` VALUES ('92', '国内送礼', '', 'guoneisongli_', 'group', '', '50', '99');
INSERT INTO `yqt_adminmange` VALUES ('93', '未处理礼单', 'songli_list.php?state=1', 'songli_state_1', 'item', '', '0', '92');
INSERT INTO `yqt_adminmange` VALUES ('94', '已确认礼单', 'songli_list.php?state=2', 'songli_state_2', 'item', '', '50', '92');
INSERT INTO `yqt_adminmange` VALUES ('96', '已到货礼单', 'songli_list.php?state=4', 'songli_state_4', 'item', '', '50', '92');
INSERT INTO `yqt_adminmange` VALUES ('97', '无效礼单', 'songli_list.php?state=5', 'songli_state_5', 'item', '', '50', '92');
INSERT INTO `yqt_adminmange` VALUES ('98', '礼单搜索', 'songli_list.php', 'songli_stete_', 'item', '', '50', '92');
INSERT INTO `yqt_adminmange` VALUES ('95', '在途中礼单', 'songli_list.php?state=3', 'songli_state_3', 'item', '', '50', '92');
INSERT INTO `yqt_adminmange` VALUES ('99', '礼单管理', '', 'guoneisongli', 'zone', '', '50', '0');
INSERT INTO `yqt_adminmange` VALUES ('100', '语言管理', 'lang_list.php', 'lang_list', 'item', '', '50', '41');
INSERT INTO `yqt_adminmange` VALUES ('101', '语言管理', 'lang_list.php', 'lang_list', 'item', '', '50', '54');

-- ----------------------------
-- Table structure for `yqt_area`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_area`;
CREATE TABLE `yqt_area` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `name_cn` varchar(50) DEFAULT NULL,
  `name_en` varchar(50) DEFAULT NULL,
  `serverfeepct` float(10,2) DEFAULT NULL,
  `serverfee` float(10,2) DEFAULT NULL,
  `def` smallint(5) DEFAULT '0',
  `listorder` int(10) DEFAULT '50',
  `state` smallint(5) DEFAULT '1',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_area
-- ----------------------------
INSERT INTO `yqt_area` VALUES ('22', '中国', 'chain', '10.00', '0.00', '1', '1', '1');
INSERT INTO `yqt_area` VALUES ('23', '新加坡', 'Singapore', '5.00', '0.00', '0', '2', '1');
INSERT INTO `yqt_area` VALUES ('24', '美国', 'America', '2.00', '5.00', '0', '0', '1');

-- ----------------------------
-- Table structure for `yqt_article`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_article`;
CREATE TABLE `yqt_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `listorder` smallint(5) DEFAULT NULL,
  `seokeywords` varchar(255) DEFAULT NULL,
  `seodescription` varchar(255) DEFAULT NULL,
  `body` mediumtext,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_article
-- ----------------------------
INSERT INTO `yqt_article` VALUES ('1', '1', '什么是代购', '1', '什么是代购', '什么是代购', '<div>　 &nbsp;代购，通俗一点来说就是找人帮忙购买你需要的商品，可能是因为你在当地买不到这件商品，又或者是当地这件商品的价格比其他地区的贵。帮人从中国购买商品，然后通过快递发货至国外，就是常见的代购形式。</div> <div>　　通过代购网，您可以在中国任意一家购物网站搜索商品，并且无需人民币，直接用外汇付款就能实现购物，全国商品皆在您的指间，绝对快捷便利！查看具体说明&gt;&gt;</div> <div>　　使用代购代购的好处</div> <div>　　A.您可以无限选择、购买中国大陆网上商品；</div> <div>　　B.您可以使用美元、欧元以及各种流通货币购物；</div> <div>　　C.您最快可以在10个工作日内收到您代购的海外商品；</div> <div>　　D.您可以获得完善的退换货体系保障；</div> <div>　　E.您可以得到代购网客服团队的专业服务，为您解答中国大陆购物过程中遇到的任何问题。</div> <div>　　什么情况下，他们选择代购？</div> <div>　　A.习惯使用中国大陆的产品、服务，或偏爱某个特定品牌的商品，在国外无法购买的情况下委托我们购买。</div> <div>　　B.专业资料、书籍(特别是中文版的)或器材。比如，大学或者科研机构需要买一些非常专业的书籍或软件，在国外没有渠道购买，但可以在中国大陆网站搜索到商品销售信息的。</div> <div>　　C.时尚新锐：中国大陆的流行随时把握，瑞丽服饰、流行音乐、明星海报等。</div> <div>　　D.发现价格优势：因为中国大陆劳动力低廉，生产成本要低，所以大部分商品售价就低很多；同时，代购网为客户设计了独特的省钱购物模式。</div> <div>　　E.服装尺码优势：国外服装尺码普遍较大，也不符合东方人的体型，但在中国大陆网站能够买到喜欢的款式或者合适自己尺寸的服装。</div> <div>　　F.委托在中国大陆拍卖网站上购买拍卖品，比如淘宝、易趣商品的代拍代购。</div> <div>　　G.委托购买礼物送给中国大陆亲友：只需要将收货人和地址写上亲友的姓名和地址，代购网将直接将货物送到中国大陆亲友的手中。这个服务也适用于送往海外的亲友处，但在运送价格方面需要个别确认。</div>');
INSERT INTO `yqt_article` VALUES ('2', '1', '代购流程', '2', '代购流程', '代购流程', '<div>　　第一步、挑选商品</div> <div>　　到中国大陆任意购物网站挑选心仪的商品。</div> <div>　　第二步、提交代购单</div> <div>　　进入“我要代购”页面，只要粘贴商品详细页网址，使用“快速代购”可以自动填写代购单。您只需手动填写商品备注，详细说明您代购的细节要求，然后提交代购，商品将自动进入您的购物车。</div> <div>　　第三步、支付货款</div> <div>　　进入“我的购物车”页面，选择此次要代购的商品，提交代购后，代购系统将自动扣除商品费用和中国大陆运费。待您成功支付了货款，代购将开始为您代购。</div> <div>　　第四步、代购代购商品</div> <div>　　代购代购商品的过程是：代购采购员接单 &gt; 采购员向卖家购买商品 &gt; 商品到代购 &gt; 采购员验货</div> <div>　　提示：代购采购员代购商品过程中，您可以在“我的送货车”查询商品状态，当商品状态显示“已到代购”，您就可以“提交运送”了。</div> <div>　　第五步、货到支付运费</div> <div>　　进入“我的送货车”页面，选择“已到代购”的商品提交运送，选择合适的送货方式，然后正确填写您收货的详细信息，最后提交结算，就等代购给您的商品包装发货了。</div> <div>　　第六步、提交运送后准备发货</div> <div>　　在等待代购处理运单的过程中，您可以在“我的运单”查看运单状态，当运单状态显示为“已发货”，您还可以在“包裹跟踪查询”自行查询。</div> <div>　　第七步、确认收货</div> <div>　　收到包裹后，尽快到“我的运单”页面“确认收货”并评价代购体验，这时代购将给您送出相应的积分，结束了此次完美的代购。</div>');
INSERT INTO `yqt_article` VALUES ('3', '1', '新用户注册', '3', '新用户注册', '新用户注册', '<div>　　注册分为“提交信息”和“激活用户名”两个步骤，整个过程只需2分钟。</div> <div>　　1.点击位于代购首页上方的“免费注册”链接或者图片中的“立即免费注册”按钮。</div> <div>　　</div> <div>　　2.进入注册页面，首先输入一个您常用的电子邮件地址，用于激活账户。</div> <div>　　</div> <div>　　3.设置昵称和密码。</div> <div>　　</div> <div>　　4.将验证码填入验证码框中。如果看不清楚验证码，请点击“看不清？换张图”。</div> <div>　　</div> <div>　　5.仔细阅读“代购注册协议”，同意条款后，点击“提交注册” 按钮。</div> <div>　　</div> <div>　　6.然后页面会提示您，系统已将一封验证邮件发送到刚才您所填写的电子邮件信箱中。</div> <div>　　</div> <div>　　7.请登录该电子邮件地址收取验证邮件，然后点击信件中的“激活”链接，完成您的注册。</div> <div>　　8.完成注册。</div>');

-- ----------------------------
-- Table structure for `yqt_atype`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_atype`;
CREATE TABLE `yqt_atype` (
  `typeid` smallint(5) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT '',
  `node` smallint(5) DEFAULT NULL,
  `listorder` int(10) DEFAULT '50',
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_atype
-- ----------------------------
INSERT INTO `yqt_atype` VALUES ('1', '新手上路', '0', '50');
INSERT INTO `yqt_atype` VALUES ('2', '购物指南', '0', '50');
INSERT INTO `yqt_atype` VALUES ('3', '支付说明', '0', '50');
INSERT INTO `yqt_atype` VALUES ('4', '配送说明', '0', '50');
INSERT INTO `yqt_atype` VALUES ('5', '售后服务', '0', '50');
INSERT INTO `yqt_atype` VALUES ('6', '用户须知', '0', '50');
INSERT INTO `yqt_atype` VALUES ('7', '常见问题', '0', '50');
INSERT INTO `yqt_atype` VALUES ('8', '新手常见问题', '7', '50');
INSERT INTO `yqt_atype` VALUES ('9', '售后常见问题', '7', '50');
INSERT INTO `yqt_atype` VALUES ('10', '充值和退款常见问题', '7', '50');
INSERT INTO `yqt_atype` VALUES ('11', '关于会员等级和积分规则', '7', '50');
INSERT INTO `yqt_atype` VALUES ('12', '拼单购中常见问题', '7', '50');

-- ----------------------------
-- Table structure for `yqt_bankaccount`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_bankaccount`;
CREATE TABLE `yqt_bankaccount` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `currency` char(5) NOT NULL,
  `account` varchar(200) NOT NULL,
  `accountname` varchar(50) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `bankname` varchar(200) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_bankaccount
-- ----------------------------

-- ----------------------------
-- Table structure for `yqt_cart`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_cart`;
CREATE TABLE `yqt_cart` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `anonymous` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `uname` varchar(50) DEFAULT NULL,
  `goodsurl` varchar(255) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsprice` float(10,2) NOT NULL DEFAULT '0.00',
  `sendprice` float(10,2) NOT NULL DEFAULT '0.00',
  `goodsnum` int(10) NOT NULL DEFAULT '1',
  `goodsimg` varchar(255) DEFAULT NULL,
  `goodssize` varchar(20) DEFAULT NULL,
  `goodscolor` varchar(20) DEFAULT NULL,
  `goodsseller` varchar(50) NOT NULL DEFAULT '',
  `sellerurl` varchar(255) DEFAULT '',
  `goodssite` varchar(50) DEFAULT '淘宝网',
  `siteurl` varchar(255) DEFAULT 'http://www.taobao.com',
  `expressno` varchar(50) DEFAULT '' COMMENT '快递单号',
  `type` smallint(5) DEFAULT '1' COMMENT '1代购2代发货',
  `goodsremark` varchar(255) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=668 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_cart
-- ----------------------------
INSERT INTO `yqt_cart` VALUES ('36', '', '7', 'ceshi', 'http://item.taobao.com/auction/item_detail-0db1-56378df44b600b2602b9cb3bbde110dc.jhtml?is_b=1', '珍爱梦幻七彩幸运星发光抱枕WQ10 韩国设计/超炫视频展示生日礼物', '158.00', '0.00', '12', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1V5BsXfBzXXbrLafb_122742.jpg_310x310.jpg', '', '', '珍爱家居旗舰店', 'http://rate.taobao.com/user-rate-745020bbf7dfda089c2e6f9456954267--receivedOrPosted|0--buyerOrSeller|1.htm', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1283243819');
INSERT INTO `yqt_cart` VALUES ('30', 'GXXlLCNAWmnuCYe3urKP32JBp_BDTH-H6QN0Jg..', '0', '', 'http://item.taobao.com/item.htm?id=4770192509', 'A3002 好评 回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', '16.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mu4HXg8qXXc4MOI3_050416.jpg_310x310.jpg', '', '', '美然阁', 'http://meirange.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1282551858');
INSERT INTO `yqt_cart` VALUES ('74', 'B4MiZHb70NKH7CRT_sfHZcyXKvrVaHfn', '0', null, 'http://item.taobao.com/item.htm?id=6847336085', '淘品牌白领丽人 牛巴戈牛皮羊毛皮毛一体平跟雪地短靴BL7719', '498.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1SiJWXlNcXXaAySPb_095241.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1295075496');
INSERT INTO `yqt_cart` VALUES ('73', '4w71AkRaIcL3xgr9KCVcazHQhssKLEtP', '3', 'lss', 'http://item.taobao.com/item.htm?id=8155369085&cm_cat=50015929', '千足金转运珠红水晶本命年红绳开运手链新年情人节女友生日礼物C', '136.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13fVRXkVkXXcBC9M8_101617.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1295065798');
INSERT INTO `yqt_cart` VALUES ('72', '4w71AkRaIcL3xgr9KCVcazHQhssKLEtP', '3', 'lss', 'http://item.taobao.com/item.htm?id=8155369085&cm_cat=50015929', '千足金转运珠红水晶本命年红绳开运手链新年情人节女友生日礼物C', '136.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13fVRXkVkXXcBC9M8_101617.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1295065783');
INSERT INTO `yqt_cart` VALUES ('76', 'IVix7rP3jDo3NOgBTFnaRpgZSAJ-PrpJ', '49', 'xiaozhang123', 'http://item.taobao.com/item.htm?id=9977243366&prc=1&source=dou&cm_cat=30', 'JeanJack新款春装2011品质男装立领休闲薄外套夹克K001', '278.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1x988XdFgXXXJ_DoU_015820.jpg_310x310.jpg', '25', '灰色', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '灰色衣服', '1305887543');
INSERT INTO `yqt_cart` VALUES ('77', 'IVix7rP3jDo3NOgBTFnaRpgZSAJ-PrpJ', '49', 'xiaozhang123', 'http://item.taobao.com/item.htm?id=9977243366&prc=1&source=dou&cm_cat=30', 'JeanJack新款春装2011品质男装立领休闲薄外套夹克K001', '278.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1x988XdFgXXXJ_DoU_015820.jpg_310x310.jpg', '25', '灰色', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1305887562');
INSERT INTO `yqt_cart` VALUES ('78', '7CpinSbXSIOlZuZHgxtmd8g6QX_Qzwwb', '0', null, 'http://item.taobao.com/item.htm?id=5634556187&source=dou&prc=2&cm_cat=50010218', '三乐豪华婴儿推车/童车/手推车/可平躺/超宽婴儿车406 打折中', '230.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1cEKXXeBqXXbV47s2_044707.jpg_310x310.jpg', '45', '灰色', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '灰色', '1305967078');
INSERT INTO `yqt_cart` VALUES ('79', '7CpinSbXSIOlZuZHgxtmd8g6QX_Qzwwb', '0', null, 'http://item.taobao.com/item.htm?id=5634556187&source=dou&prc=2&cm_cat=50010218', '三乐豪华婴儿推车/童车/手推车/可平躺/超宽婴儿车406 打折中', '230.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1cEKXXeBqXXbV47s2_044707.jpg_310x310.jpg', '45', '灰色', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '灰色', '1305967162');
INSERT INTO `yqt_cart` VALUES ('82', '43SefZA-1wsz4KrzpsCAqBG_LKAMsYEC8g6_TQ..', '0', null, 'http://item.taobao.com/item.htm?id=9483882358&cm_cat=50015928&pm2=1', '【淘金币】保平安玉佛 假一罚十 配证书 翡翠玉器玉佩玉吊坠', '399.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T15TuXXoVqXXc1PeIV_020340.jpg_310x310.jpg', '', '', '香港比西商城', 'http://bxicom.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1306834013');
INSERT INTO `yqt_cart` VALUES ('83', 'SE7mU8B4t0DQhvpwNVpFIoSMWjcpX6ggzDerdg..', '0', null, 'http://item.taobao.com/item.htm?id=9321871401&prc=1', '2011新款商城正品kakatree LB029 蝴蝶结圆点女童单鞋凉鞋', '99.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1YXKaXfpxXXXP_p3W_022400.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1306834209');
INSERT INTO `yqt_cart` VALUES ('89', 'kX2MUoNS1A-ULJE4tmXyh-mxHBkz4KS3', '0', null, 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正的酸角美食20克 店庆促销10送1 ', '0.99', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T171dHXettXXbJZ7za_092025.jpg_310x310.jpg', '', '', 'yemmey', 'http://rate.taobao.com/user-rate-121f75bdd2dad582a3568a37d35dcc89.htm', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1308215021');
INSERT INTO `yqt_cart` VALUES ('93', '', '50', 'aaa', 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正的酸角美食20克 店庆促销10送1 ', '0.99', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T171dHXettXXbJZ7za_092025.jpg_310x310.jpg', '', '', 'yemmey', 'http://rate.taobao.com/user-rate-121f75bdd2dad582a3568a37d35dcc89.htm', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1308796583');
INSERT INTO `yqt_cart` VALUES ('94', 'Fw3p5KqyuyNwuYkIIHtys3HFjy-KwjDMOEkOGA..', '50', 'aaa', 'http://item.taobao.com/item.htm?id=10493161261', '兰博基尼 蝙蝠Murcielago 汽车 9.9成新 不支持货到付款 非诚勿扰', '100000000.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1aqydXi0hXXbJTeQ9_103237.jpg_310x310.jpg', '', '', 'xuduo456', 'http://shop61203347.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1308986848');
INSERT INTO `yqt_cart` VALUES ('95', '', '50', 'aaa', 'http://item.taobao.com/item.htm?id=10493161261', '兰博基尼 蝙蝠Murcielago 汽车 9.9成新 不支持货到付款 非诚勿扰', '100000000.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1aqydXi0hXXbJTeQ9_103237.jpg_310x310.jpg', '', '', 'xuduo456', 'http://shop61203347.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1308987228');
INSERT INTO `yqt_cart` VALUES ('96', '', '50', 'aaa', 'http://item.taobao.com/item.htm?id=10493161261', '兰博基尼 蝙蝠Murcielago 汽车 9.9成新 不支持货到付款 非诚勿扰', '100000000.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1aqydXi0hXXbJTeQ9_103237.jpg_310x310.jpg', '', '', 'xuduo456', 'http://shop61203347.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1308987269');
INSERT INTO `yqt_cart` VALUES ('98', '_NEseIBZTsWcRhMHbUhZv48K8LwMyjGHcus-hw..', '0', null, 'http://item.taobao.com/item.htm?id=10722453526&', '【淘金币】缪诗 正品 恋爱季节 棉质舒适聚拢文胸 买衣送裤', '79.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1VfegXcxvXXbdSITa_120441.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309021705');
INSERT INTO `yqt_cart` VALUES ('99', 'uuUQWpIuU11J1gxWka_KqhmaDF1RRvR1EyWAw-wAW0c.', '0', null, 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正的酸角美食20克 店庆促销10送1', '0.99', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T171dHXettXXbJZ7za_092025.jpg_310x310.jpg', '', '', 'yemmey', 'http://shop36255505.taobao.com ', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309093291');
INSERT INTO `yqt_cart` VALUES ('100', 'uuUQWpIuU11J1gxWka_KqhmaDF1RRvR1EyWAw-wAW0c.', '0', null, 'http://item.taobao.com/item.htm?id=4770192509', '好评+回头客=推荐 碳香烤章鱼足片（特级） 海鲜鱿鱼足片', '16.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mu4HXg8qXXc4MOI3_050416.jpg_310x310.jpg', '', '', '美然阁', 'http://meirange.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309093314');
INSERT INTO `yqt_cart` VALUES ('125', '017kSXTqCXc2pYCPuAC6uSV37y6UhkOkbz7ONQ..', '0', null, 'http://www.amazon.cn/gp/product/B003ZYE3C4/ref=s9_simh_gw_p107_d0_i2?pf_rd_m=A1AJ19PSB66TGU&pf_rd_s=center-1&pf_rd_r=0DE1V7H37PW8Z5JG29C7&pf_rd_t=101&pf_rd_p=58840952&pf_rd_i=899254051', '123', '123123.00', '10.00', '1', '', '', '', 'www.amazon.cn', 'http://www.amazon.cn', '卓越', 'www.amazon.cn', '', '1', '请选填颜色、尺寸等要求！', '1309421098');
INSERT INTO `yqt_cart` VALUES ('116', 'wUrcqMzGygMhpkaNxtKEGrrf76ucOMyB_GWAj1jIXjw.', '0', null, 'http://item.taobao.com/item.htm?id=10567928147&ad_id=&am_id=&cm_id=&pm_id=', 'Ochirly欧时力2011夏季新彩蓝色碎花圆领拼撞连衣裙1112082730', '769.00', '20.00', '60', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1xAudXf0uXXcQf1kT_011418.jpg_310x310.jpg', '23', 'Blue', 'null', '', '淘宝网', 'www.taobao.com', '', '1', 'aa', '1309322745');
INSERT INTO `yqt_cart` VALUES ('124', '017kSXTqCXc2pYCPuAC6uSV37y6UhkOkbz7ONQ..', '0', null, 'http://item.taobao.com/item.htm?id=9468688846&ali_refid=a3_620362_1007:1103206163:7:46702465U84y78608587678s868v3I:f6f7f15ed0598fa154c415f74332c972&ali_trackid=1_f6f7f15ed0598fa154c415f74332c972', '2011夏季3折新款CBT户外鞋四季旅游徒步鞋真皮休闲鞋透气鞋男包邮', '700.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1ROGfXXltXXbQSDzb_095340.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309419718');
INSERT INTO `yqt_cart` VALUES ('122', '017kSXTqCXc2pYCPuAC6uSV37y6UhkOkbz7ONQ..', '0', null, 'http://item.taobao.com/item.htm?id=8944635077&prc=1&is_b=1', '楼上楼 典雅 天然蓝宝石1.970克拉梨形镶嵌吊坠00192699', '1790.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1rNucXdxeXXaRqMM4_052810.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309414973');
INSERT INTO `yqt_cart` VALUES ('123', '017kSXTqCXc2pYCPuAC6uSV37y6UhkOkbz7ONQ..', '0', null, 'http://item.taobao.com/item.htm?id=9468688846&ali_refid=a3_620362_1007:1103206163:7:46702465U84y78608587678s868v3I:59e5148912270f5d0e5f52597d8a1136&ali_trackid=1_59e5148912270f5d0e5f52597d8a1136', '2011夏季3折新款CBT户外鞋四季旅游徒步鞋真皮休闲鞋透气鞋男包邮', '700.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1ROGfXXltXXbQSDzb_095340.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309415060');
INSERT INTO `yqt_cart` VALUES ('126', '', '58', 'fffggg', 'http://item.taobao.com/item.htm?id=10722453526&', '【淘金币】缪诗 正品 恋爱季节 棉质舒适聚拢文胸 买衣送裤', '79.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1VfegXcxvXXbdSITa_120441.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', 'cvvvvvvvvvvvv', '2', '请选填颜色、尺寸等要求！', '1309432043');
INSERT INTO `yqt_cart` VALUES ('141', '', '60', 'ceshi1', 'http://item.taobao.com/item.htm?id=9854411763', '买5送1大牌原单复古袜彩色堆堆袜全棉短袜/中筒女袜子vivi推荐', '5.60', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1dHX7XXpbXXXroysZ_032627.jpg_310x310.jpg', '', '', 'bluefish323', 'http://bluefish323.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309619186');
INSERT INTO `yqt_cart` VALUES ('173', '', '65', 'wanglijun', 'http://item.taobao.com/item.htm?id=9789957352&ali_refid=a3_420434_1006:1102233588:6:%CB%AE%BE%A7+%CA%D6%C1%B4:b970a3226568d5f4924e1a073fe66321&ali_trackid=1_b970a3226568d5f4924e1a073fe66321', '五冠慈风阁风水 开光招财旺运纳福绿幽灵聚宝盆水晶吉祥手珠/手链', '358.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1oXScXoNnXXXEMJo5_055315.jpg_310x310.jpg', '', '', '慈善基金会之一风水', 'http://shop33769088.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309936169');
INSERT INTO `yqt_cart` VALUES ('136', '40sl_fvUsa1QgobUfZuKLBOn6MOgNdYfZQ9fW78sAdE.', '0', null, 'http://item.taobao.com/item.htm?id=6985102347&', '盘发必备U型夹 专业固定 盘发叉 盘发梳 适用前刘海盘发 2个装', '2.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T1d0XIXltkXXXXmjE8_100920.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309578778');
INSERT INTO `yqt_cart` VALUES ('137', 'Lhc845xltxyfMMc3PGtWuC2owLUbEH_W4wbhDA..', '0', null, 'http://item.taobao.com/item.htm?id=10866546971', '创意极品★爱情滋味烟灰缸', '15.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T1hJSiXdhrXXbT1HYa_120326.jpg_310x310.jpg', '', '', '小魔法精灵', 'http://mmmppp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309582009');
INSERT INTO `yqt_cart` VALUES ('134', 'I2QG0_ec5wTqjBw8hBVsrOBZeaPBGTtfKCj68v0k_w4.', '0', null, 'http://item.taobao.com/item.htm?id=6985031503&', '女人我最大推荐 瘦大腿瘦小腿刺激按摩滾輪器 瘦腿器 瘦腿滚轮', '4.00', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T18adEXeNgXXavRj_X_115728.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309577790');
INSERT INTO `yqt_cart` VALUES ('178', 'ZmARHFuE9VxEKY4vFzpQe_mj6tTjN2gJ6dfPhgKr0Dk.', '69', 'myoutman', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', '98.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1310054963');
INSERT INTO `yqt_cart` VALUES ('309', 'EXs74EtU2jIQIHQzW6YaTm1o_PsKAZA9PM0xJRyx86M.', '112', 'yylee1', 'http://item.taobao.com/item.htm?id=10759995600&', '淘金币 缪诗正品 豹纹部落 豹纹印花系带绕脖调整型聚拢女士文胸', '168.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1_FCiXhpXXXXy99E3_051218.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318871223');
INSERT INTO `yqt_cart` VALUES ('144', 'mPygeUQINe6Mv46pl23aDil-anFvqbMmL5Rrjw..', '0', null, 'http://item.taobao.com/item.htm?id=10589134796&', '调整型文胸 聚拢缪诗蝴蝶兰蕾丝刺绣超聚拢调整型文胸 性感胸罩', '69.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1rXqhXapjXXaRJWAZ_031327.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309664744');
INSERT INTO `yqt_cart` VALUES ('145', 'BoEYTpxbmG54U8R4-mfQx1RwRtFGsihxNllRQA_RNNI.', '0', null, 'http://item.taobao.com/item.htm?id=10022658980&', '缪诗 专柜正品 郁金香刺绣玫瑰精油按摩聚拢调整型光面无痕文胸', '0.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1lGtQXkNXXXa6LfM9_073352.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309676085');
INSERT INTO `yqt_cart` VALUES ('146', '', '62', 'abcdef', 'http://item.taobao.com/item.htm?id=9579257035&prc=1&source=dou&cm_cat=50019372&_u=37nb30o335b', '衣品天成 清凉汗衫 数字T 字母t 休闲短袖T恤 男 1104156', '88.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mIp3XoJBXXcFv6IW_024220.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', 'asdf', '1309691783');
INSERT INTO `yqt_cart` VALUES ('148', 'DxpSBE6QqzGuxErbgDsXFHL-feU3BmTXZlhvoQ..', '0', null, 'http://item.taobao.com/item.htm?id=9680356919&cm_cat=50019372', '2011夏装新款 男士男装韩版修身百搭撞色拼接短袖t恤 Y35', '39.00', '10.00', '2', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1PsefXiFqXXaqZlZ1_042245.jpg_310x310.jpg', '10', 'hei', 'yemaomao198', 'http://549710.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309749134');
INSERT INTO `yqt_cart` VALUES ('149', '7O0dxjcNZ0_PpiBsNZ2PbpENpUJ5aGrBRzgTrfZgMwY.', '0', null, 'http://item.taobao.com/item.htm?id=10022686104&', '缪诗星语心愿超聚拢收副乳型调整文胸AB杯', '69.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1f7ugXh0lXXXxdCk3_050856.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309749145');
INSERT INTO `yqt_cart` VALUES ('150', '', '63', 'itosb', 'http://item.taobao.com/item.htm?id=9680356919&cm_cat=50019372', '2011夏装新款 男士男装韩版修身百搭撞色拼接短袖t恤 Y35', '39.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1PsefXiFqXXaqZlZ1_042245.jpg_310x310.jpg', '', '', 'yemaomao198', 'http://549710.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309749863');
INSERT INTO `yqt_cart` VALUES ('151', '', '63', 'itosb', 'http://item.taobao.com/item.htm?id=10722453526&', '【淘金币】缪诗 正品 恋爱季节 棉质舒适聚拢文胸 买衣送裤', '79.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1VfegXcxvXXbdSITa_120441.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309754091');
INSERT INTO `yqt_cart` VALUES ('152', 'gVwaRMR3hfOV-d_A8mFxBlJMkzihcJn1BHnTZg..', '0', null, 'http://item.taobao.com/item.htm?id=9579257035&cm_cat=50019372&source=dou', '[商城夏季大促]特价39包邮 衣品天成休闲短袖T恤 男 1104156', '88.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mIp3XoJBXXcFv6IW_024220.jpg_310x310.jpg', '', 'blue', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309759461');
INSERT INTO `yqt_cart` VALUES ('153', '', '64', 'cyj211314', 'http://item.taobao.com/item.htm?id=1071264425', '包邮双冠施华洛世奇专柜正品SWAROVSKI泰迪熊项链水晶小熊878446', '338.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1rBdZXmRyXXcAs3fa_121157.jpg_310x310.jpg', '', '', '山子小屋', 'http://shanzixiaowu.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '0', '1309760584');
INSERT INTO `yqt_cart` VALUES ('154', 'hz-XW3UgeocgepKYO-7dg_KeyGtDBDzDlD365bKOLtM.', '0', null, 'http://item.taobao.com/item.htm?id=9788618754&cm_cat=50019370', '男士polo衫 2011新款夏季休闲双珠地纯棉男士短袖POLO衫 男装纯色', '99.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1V85cXmppXXc5mswW_023006.jpg_310x310.jpg', '', '', 'cmc99330', 'http://cmc99330.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309764446');
INSERT INTO `yqt_cart` VALUES ('165', 'VNFdpusZNww0ILlSd8W7CSI_tMjOMQbDJeD77pPsk0E.', '0', null, 'http://item.taobao.com/item.htm?id=3397472098', '淘宝网 ', '0.00', '10.00', '1', 'null', '34', '2', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309825913');
INSERT INTO `yqt_cart` VALUES ('164', 'VNFdpusZNww0ILlSd8W7CSI_tMjOMQbDJeD77pPsk0E.', '0', null, 'http://item.taobao.com/item.htm?id=10767240434&', '缪诗 正品 亮彩红蕴 时尚民族风分体式泳衣两件套', '129.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1JmKfXd8vXXc_Sq79_102454.jpg_310x310.jpg', 'a', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '10', '2', '请选填颜色、尺寸等要求！', '1309825067');
INSERT INTO `yqt_cart` VALUES ('168', 'JHfRC117VCoXmubf2fo-chRJQJeenqXtHtyGgezXztY.', '0', null, 'http://item.taobao.com/item.htm?id=10759995600&', '缪诗 正品 豹纹部落 豹纹印花系带绕脖调整型超聚拢文胸 买上送下', '168.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1_FCiXhpXXXXy99E3_051218.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309857705');
INSERT INTO `yqt_cart` VALUES ('159', 'gVwaRMR3hfOV-d_A8mFxBlJMkzihcJn1BHnTZg..', '0', null, 'http://item.taobao.com/item.htm?id=9477042236&cm_cat=50006843&pm2=1', '2010秋冬Crocs经典款 Lydia 莉迪亚 显瘦高跟鞋坡跟凉鞋 四季可穿', '95.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1.IaiXbBhXXa9C02X_114643.jpg_310x310.jpg', '30', 'pink ', 'tj2597758', 'http://ai503.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309774777');
INSERT INTO `yqt_cart` VALUES ('219', 'Y6SNbeuTPGfe-2y_QImIviYAqbgtEBFan8wq9g..', '0', null, 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', '27.80', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '', '', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311780621');
INSERT INTO `yqt_cart` VALUES ('175', 'GjcHHABlAKQU1qmTPBlNyn39WHaj5cP_tsGimQ..', '0', null, 'http://item.taobao.com/item.htm?id=10022686104&', '缪诗星语心愿超聚拢收副乳型调整文胸AB杯', '69.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1f7ugXh0lXXXxdCk3_050856.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1309941368');
INSERT INTO `yqt_cart` VALUES ('177', 'sa4HuJ2QTn8g4GAqUFWZQuQPnV4jmFaeU2un7lJ39ss.', '0', null, 'http://item.taobao.com/item.htm?id=8650747427&', '【冲冠促销】火爆热销夏日最新款蓬发造型道具5件套', '3.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T17xlTXglkXXcKxrjX_114313.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1310039435');
INSERT INTO `yqt_cart` VALUES ('179', 'tWt-OWhGFi9TM_eH4adU3tt5YBrCsJihvjVYFQ..', '0', null, 'http://configure.us.dell.com/dellstore/config.aspx?oc=DKMAMT1&c=us&l=en&s=dhs&cs=19&ACD=10550055-1260291-d2b.Y6B5EMKD77KZ8YXCNXZU22WYVS&AID=1260291', 'degg', '4140.00', '10.00', '1', '', '', '', 'configure.us.dell.com', 'http://configure.us.dell.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1310101928');
INSERT INTO `yqt_cart` VALUES ('180', 'ywnC6VRBE25zrCnkF6s47KRpx9RBcfT_GP3vQQ..', '0', null, 'http://item.taobao.com/item.htm?id=9815523028&ali_refid=a3_420630_1006:1102610855:6:%C4%DA%D2%C2:c79f0ab1c5fff972890b80e818cff9e0&ali_trackid=1_c79f0ab1c5fff972890b80e818cff9e0', 'null', '0.00', '0.00', '1', 'null', '70c薄杯', '粉色', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '1310183658');
INSERT INTO `yqt_cart` VALUES ('181', 'hz-XW3UgeocgepKYO-7dg_KeyGtDBDzDlD365bKOLtM.', '0', null, 'http://item.taobao.com/item.htm?id=9446729764&ali_refid=a3_619362_1007:1102176260:7:46702465U84y78608587678s868v3I:86b943341260abc51a8c5853c0f14255&ali_trackid=1_86b943341260abc51a8c5853c0f14255', 'null', '0.00', '0.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1310205015');
INSERT INTO `yqt_cart` VALUES ('213', 'A719EGBYCYIk0WELh6PptaEIZgz4WbODv9eJdrYg2wQ.', '0', null, 'http://item.taobao.com/item.htm?id=7768492676&cm_cat=50018909', '原装 苹果耳机 正品 mp3 mp4 mp5  电脑 iPod 通用 耳塞式 耳机', '25.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1LVqhXfBoXXceCwLb_123858.jpg_310x310.jpg', '', '', 'emily百宝袋', 'http://00010.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311403800');
INSERT INTO `yqt_cart` VALUES ('184', '7sddzjDIVQddp3ClZLR--4dRaqrBaxCV91_0mQ..', '0', null, 'http://item.taobao.com/item.htm?id=8650747427&', 'null', '0.00', '0.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1310304555');
INSERT INTO `yqt_cart` VALUES ('185', '', '70', 'sbby545', 'http://item.taobao.com/item.htm?id=4140582806', 'null', '0.00', '0.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1310357476');
INSERT INTO `yqt_cart` VALUES ('192', 'pES5L3-caKAbcIdlhE2Ut5H0EqwW66xgoOIiNQ..', '0', null, 'http://item.taobao.com/item.htm?id=10057330273&cm_cat=50011123', '2U良品 夏季新款全棉时尚短袖格子衬衫短袖衬衫男衬衫8082151505 ', '48.00', '12.00', '1', '', 'm', '', 'item.taobao.com', 'http://item.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1310489750');
INSERT INTO `yqt_cart` VALUES ('191', 'pES5L3-caKAbcIdlhE2Ut5H0EqwW66xgoOIiNQ..', '0', null, 'http://item.taobao.com/item.htm?id=10057330273&cm_cat=50011123', '2U良品 夏季新款全棉时尚短袖格子衬衫短袖衬衫男衬衫8082151505 ', '48.00', '12.00', '1', '', 'm', '', 'item.taobao.com', 'http://item.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1310489746');
INSERT INTO `yqt_cart` VALUES ('193', 'cDpP9NvkkPOdNRBhQtJHdNXB5AM3Gg9TEViGX9JLm6k.', '0', null, 'http://item.taobao.com/item.htm?id=10613256520&', 'null', '0.00', '0.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1310523404');
INSERT INTO `yqt_cart` VALUES ('194', 'D_F7o_hltIufccdsuPopPjXCU2kuSaj-05NU9w..', '0', null, 'http://item.taobao.com/item.htm?id=10008349082&', 'null', '0.00', '0.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1310615876');
INSERT INTO `yqt_cart` VALUES ('199', '', '77', '入土核桃肉g', 'http://item.taobao.com/item.htm?id=10759995600&', 'null', '0.00', '1.11', '11', 'null', '1111111111111', '111111111111111', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1310798071');
INSERT INTO `yqt_cart` VALUES ('198', '', '77', '入土核桃肉g', 'http://item.taobao.com/item.htm?id=10759995600&', 'null', '0.00', '11111.00', '111', 'null', '11', '1', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '1', '1310798051');
INSERT INTO `yqt_cart` VALUES ('200', 'GfSn9Y5gQGQlM8ncx3FedLu2qhRToMad0ovxyQ..', '0', null, 'http://www.3dbuy.com.cn/shop_detail.php?aid=133875', 'wy', '122.00', '10.00', '1', '', 'y', 'wy', 'www.3dbuy.com.cn', 'http://www.3dbuy.com.cn', '其他网站', '###', '', '1', 'wy', '1311043855');
INSERT INTO `yqt_cart` VALUES ('201', '5IWFMRfXf2fgmfzJi8XVkGuDIlDrCwyvUcsxYI2zwlc.', '0', null, 'http://item.taobao.com/item.htm?id=10767240434&', 'null', '0.00', '0.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311144615');
INSERT INTO `yqt_cart` VALUES ('202', 'pzcbJCYipgGQppPOR1L8KsG0vgQ9Ie9uZOKzmkAoC-I.', '80', 'brantx', 'http://daigou.dayusheji.com/recommend.php?action=view&gid=68', 'asdfasd', '100.00', '10.00', '10', '', '12', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1311254417');
INSERT INTO `yqt_cart` VALUES ('203', 'crV9zIkxKoZdeYio9w_DR8Lu15i8-YG6JTzfWA..', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=26', '【稀奇】百度上查不到的特产藤蔑果野生果子回甘爽口180g', '6.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1311303754');
INSERT INTO `yqt_cart` VALUES ('204', 'AYVXxDBvbROOpU-yp0eBZSsMm-OBB19LsPSd_AfBg-c.', '81', 'harryQ', 'http://item.taobao.com/item.htm?id=3293412392', '低价 日本原装 参天制药santen', '29.50', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T12ApyXg0aXXXE1hsU_015050.jpg_310x310.jpg', '', '', '9星商城', 'http://shop59101799.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311307417');
INSERT INTO `yqt_cart` VALUES ('207', '', '69', 'myoutman', 'http://item.taobao.com/item.htm?id=10489701717', '夏季新款九牧王JOEONE专柜正品 2款男裤时尚商务无褶休闲西裤', '379.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1etujXX8uXXaie.o4_054356.jpg_310x310.jpg', '', '', '九牧王官方旗舰', '', '淘宝网', 'www.taobao.com', '', '1', 'gfdg', '1311325841');
INSERT INTO `yqt_cart` VALUES ('208', 'wbmYJ0Hs6YCUANIN8UEdqhpwzD1vTu5nmhmgGw..', '0', null, 'http://item.taobao.com/item.htm?id=9921403307&ali_refid=a3_419252_1006:1102682080:6:%C1%B9%D0%AC:baee34a140cea37808715b51c745b49b&ali_trackid=1_baee34a140cea37808715b51c745b49b', '特价！CAMEL骆驼 凉鞋 男鞋 沙滩鞋拖鞋 正品2011新款 1290475', '248.00', '12.00', '3', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1.jJ5XkVjXXaaewYa_121247.jpg_310x310.jpg', '1', 'red', '骆驼服饰旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311336381');
INSERT INTO `yqt_cart` VALUES ('209', 'wbmYJ0Hs6YCUANIN8UEdqhpwzD1vTu5nmhmgGw..', '0', null, 'http://item.taobao.com/item.htm?id=9921403307&ali_refid=a3_419252_1006:1102682080:6:%C1%B9%D0%AC:baee34a140cea37808715b51c745b49b&ali_trackid=1_baee34a140cea37808715b51c745b49b', '特价！CAMEL骆驼 凉鞋 男鞋 沙滩鞋拖鞋 正品2011新款 1290475', '248.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1.jJ5XkVjXXaaewYa_121247.jpg_310x310.jpg', '', '', '骆驼服饰旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311336584');
INSERT INTO `yqt_cart` VALUES ('210', 'smOkEK1xkkfLLkBeZeWLzI0oVllT9XstR6HcOw..', '0', null, 'http://item.taobao.com/item.htm?id=5928756477', '美国zippo打火机133ml中文包装原装正品zippo油 买一赠三', '9.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1kG1eXalbXXcXMO2b_094452.jpg_310x310.jpg', '', '', 'xiaoshiliang2020', 'http://lovedmr.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311388296');
INSERT INTO `yqt_cart` VALUES ('211', 'smOkEK1xkkfLLkBeZeWLzI0oVllT9XstR6HcOw..', '0', null, 'http://item.taobao.com/item.htm?id=10625251199', 'SOLING 八合一 8合1车载手机万能充电器 USB伸缩线 可充Iphone', '88.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1S0eiXi0aXXbLmE32_045559.jpg_310x310.jpg', '', '', '起点汽车用品专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311388307');
INSERT INTO `yqt_cart` VALUES ('212', 'smOkEK1xkkfLLkBeZeWLzI0oVllT9XstR6HcOw..', '0', null, 'http://item.taobao.com/item.htm?id=10435698091', '魔术道具 Arcane Card Clip 神秘镂空牌夹 Joe Porper签名版 黑色', '16.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T17tCcXnhmXXXK7oc6_063226.jpg_310x310.jpg', '', '', 'benjia44119', 'http://magic8000.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311388323');
INSERT INTO `yqt_cart` VALUES ('214', '', '69', 'myoutman', 'http://gfgrher.com', 'rttrhyrt', '0.10', '0.00', '1', '', '', '', 'gfgrher.com', 'http://gfgrher.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1311506263');
INSERT INTO `yqt_cart` VALUES ('215', 'Gm0pqOKgqCwUSh0kBxUZIFSA50y-TTFbLojt2VZSPfo.', '0', null, 'http://item.taobao.com/item.htm?id=9407175977', '◥◣新桌游◢◤ 纸牌版狼人村  便携版', '13.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1ZAN1XiFqXXXs_io8_100749.jpg_310x310.jpg', '', '', '新思维玩意', 'http://newgame.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311515065');
INSERT INTO `yqt_cart` VALUES ('220', '9EjUsJPBzUYuC1zENzgSpnKLr5QBbiXHq4TLeA..', '0', null, 'http://item.taobao.com/item.htm?id=9745317693&cm_cat=50019372&source=douE907C35DDE-1897.html', '【EBG男装】精梭棉韩潮流时尚休闲印花圆领短袖T恤[1410304]', '118.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1HE9aXcxzXXaQr_o._113512.jpg_310x310.jpg', 'good', 'good', 'ebg旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311825290');
INSERT INTO `yqt_cart` VALUES ('218', 'sNLuYTav53mnYV_a90NW4AqKtC6OMNJ7S8tZTw..', '0', null, 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', '98.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '11', '11', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311769261');
INSERT INTO `yqt_cart` VALUES ('221', '', '95', 'lhd1982', 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', '27.80', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '', '', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311860951');
INSERT INTO `yqt_cart` VALUES ('222', '', '95', 'lhd1982', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', '98.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311861015');
INSERT INTO `yqt_cart` VALUES ('223', '', '95', 'lhd1982', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', '98.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311861026');
INSERT INTO `yqt_cart` VALUES ('224', '953KUxuC2cg1YozzLVbpBnyAKKryLCuBmL4zbja8c0w.', '0', null, 'http://item.taobao.com/item.htm?id=10008349082&', '缪诗 正品 娇鹿迷情系带挂脖超聚拢文胸', '89.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1nCueXipuXXaVD33._112404.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1311935952');
INSERT INTO `yqt_cart` VALUES ('227', '0dgkXVU685M0t1RzzDcpNU-tNBMBhCQoar_YiMfa0pQ.', '0', null, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸', '79.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1312293801');
INSERT INTO `yqt_cart` VALUES ('230', 'rl15MDtBD1AgP1odqTVdpD8qeZ5GjO49_FV_mA..', '0', null, 'http://item.taobao.com/item.htm?id=10478438213&prc=1', '刘谦版 磁戒指 双圈磁力戒指 双圈白色 魔术道具0.008', '18.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1hTWcXj0tXXX0XhsV_020701.jpg_310x310.jpg', '', '白', '魔术8000旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1312515571');
INSERT INTO `yqt_cart` VALUES ('272', 'rh98qPmroSdEFN1JBwXDBcoOSYRkmNx_9mW0bg..', '0', null, 'http://item.taobao.com/item.htm?id=8114116802&ad_id=&am_id=&cm_id=&pm_id=', '电器城Lenovo/联想 3GW101 W101 乐Phone LEPHONE+ 安卓2.2系统', '1680.00', '10.00', '3', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1eLmdXmVbXXcckGI._111301.jpg_310x310.jpg', '', '', '天人数码专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1313376806');
INSERT INTO `yqt_cart` VALUES ('250', 'qu7VKq-wT1jEQEKfQXsD9nvTEXWwrt6ruycPSA..', '0', null, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸', '79.00', '10.00', '4', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1312725826');
INSERT INTO `yqt_cart` VALUES ('274', 'BjB31PrTyYrCRzQykV7EhF9tJSNMxcfPwHOuNQ..', '0', null, 'http://item.taobao.com/item.htm?id=8114116802&ad_id=&am_id=&cm_id=&pm_id=', '电器城Lenovo/联想 3GW101 W101 乐Phone LEPHONE+ 安卓2.2系统', '1670.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1eLmdXmVbXXcckGI._111301.jpg_310x310.jpg', '', '', '天人数码专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1313386535');
INSERT INTO `yqt_cart` VALUES ('245', '-NRr_0GNmv0k3pDDllwW6GhYZl0WZP4n3VBxXHrdUTw.', '0', null, 'http://item.taobao.com/item.htm?id=5156685789', '水星 MERCURY S108M 8口 10/100M 以太网交换机', '55.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1SgFxXf4kXXa_4U38_101912.jpg_310x310.jpg', '', '', '忠昌电脑配件专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1312687191');
INSERT INTO `yqt_cart` VALUES ('242', 'F8zKI1fVWv97C8ZPWtiE7j7Eh0Q56WxFakFb6w..', '0', null, 'http://item.taobao.com/item.htm?id=4572444020&prc=1&source=dou&cm_cat=50070151', '商城夏季大促 5万条mrrksaar 长裤 男士休闲裤 男裤子 直筒裤', '39.80', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1MeejXjtoXXc1alLa_122156.jpg_310x310.jpg', '', '', 'mrrksaar旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1312624059');
INSERT INTO `yqt_cart` VALUES ('243', 'WjPc9cE9B8kCZPCQFAuTFeZ93habi-C6de3IAg..', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=1', '测试产品', '50.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1312633405');
INSERT INTO `yqt_cart` VALUES ('244', 'WjPc9cE9B8kCZPCQFAuTFeZ93habi-C6de3IAg..', '0', null, 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', '98.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1312633523');
INSERT INTO `yqt_cart` VALUES ('249', 'ahS3H6FScLpSYH_stIsYtfJB7Rr1GA6Yg0dDL387Gwg.', '0', null, 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', '98.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1312714193');
INSERT INTO `yqt_cart` VALUES ('265', 'RtoT3K9A0mFZbIA1wXEc5X-BX4H7euZqXjYzrX2xXP4.', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=1', '测试产品', '50.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1313217809');
INSERT INTO `yqt_cart` VALUES ('263', 'tM_TMpbstScYTQJ-G8wvjJEy8s57xKIDRCo5Bw..', '0', null, 'http://item.taobao.com/item.htm?spm=541.83317.124612.16&id=12576208970', '日の長いセーターのカーディガンのセーターにカジュアルまだ甘い2011年新品種のファッション', '55.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1bpN6XdNqXXc4EXg0_033806.jpg_310x310.jpg', '', '', '心情日记zl', 'http://spstar.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'オプションのカラー、サイズその他の要件をしてください！', '1312860356');
INSERT INTO `yqt_cart` VALUES ('261', 'TYBbykNXLKtndJQGQH9syaUTwYycMCPDSOiYj1p9924.', '100', 'badxiaofei', 'http://item.taobao.com/item.htm?id=10160125632', '张芸京 京迷 个性拨片项链 可定制 黄铜 牛皮绳', '45.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1dQF.Xh8EXXc4yNU1_041432.jpg_310x310.jpg', '', '', 'susie05750575', 'http://yaogunshougong.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1312764863');
INSERT INTO `yqt_cart` VALUES ('260', 'TYBbykNXLKtndJQGQH9syaUTwYycMCPDSOiYj1p9924.', '100', 'badxiaofei', 'http://item.taobao.com/item.htm?id=10690638773 ', '【皇冠】明星周边粘贴纸', '3.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T1pN9fXgpjXXb8Nlc3_051031.jpg_310x310.jpg', '', '', 'moonwen98', 'http://star268.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1312764856');
INSERT INTO `yqt_cart` VALUES ('259', 'TYBbykNXLKtndJQGQH9syaUTwYycMCPDSOiYj1p9924.', '100', 'badxiaofei', 'http://item.taobao.com/item.htm?id=10690823159', '【皇冠】明星周边粘贴纸', '3.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1oxifXkllXXXuw8c3_051027.jpg_310x310.jpg', '', '', 'moonwen98', 'http://star268.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1312764849');
INSERT INTO `yqt_cart` VALUES ('273', 'iwGEeO2GYGUYgjIkcSlvbkF5o6ijHTXVycD4Lg..', '0', null, 'http://www.360buy.com/product/364474.html', '华为（HUAWEI）U8800 3G手机（黑色）WCDMA/GSM 联通定制', '1559.00', '15.00', '1', 'http://img14.360buyimg.com/n1/1616/e25ab750-c703-4f57-ac1e-f4efd8590aae.jpg', '', '', '京东商城', 'http://www.360buy.com/product/', '京东商城', 'www.360buy.com', '', '1', '请选填颜色、尺寸等要求！', '1313377544');
INSERT INTO `yqt_cart` VALUES ('280', 'xnWAo_1ScjDfxgRo2e_ReTOFQMe7oDYHiaOqoQBV2ag.', '0', null, 'http://item.taobao.com/item.htm?id=8205340680&cm_cat=26&_u=umqdvv844fb#', '正品7寸E路航X10 双核高清 旅游汽车车载GPS导航仪 一体机 包邮', '327.00', '12.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1EmCrXXNBXXcbqJAZ_031714.jpg_310x310.jpg', '', '', 'bb_wamg', 'http://bbwamg.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318300354');
INSERT INTO `yqt_cart` VALUES ('281', 'xnWAo_1ScjDfxgRo2e_ReTOFQMe7oDYHiaOqoQBV2ag.', '0', null, 'http://item.taobao.com/item.htm?id=8205340680&cm_cat=26&_u=umqdvv844fb#', '正品7寸E路航X10 双核高清 旅游汽车车载GPS导航仪 一体机 包邮', '327.00', '12.00', '5', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1EmCrXXNBXXcbqJAZ_031714.jpg_310x310.jpg', '', '', 'bb_wamg', 'http://bbwamg.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318300418');
INSERT INTO `yqt_cart` VALUES ('282', 'ki-wHnxQqUPploXbHB35W1Wv6yxlDQhugrmBzA..', '0', null, 'http://item.taobao.com/item.htm?id=8205340680&cm_cat=26&_u=umqdvv844fb#', '正品7寸E路航X10 双核高清 旅游汽车车载GPS导航仪 一体机 包邮', '327.00', '12.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1EmCrXXNBXXcbqJAZ_031714.jpg_310x310.jpg', '', '', 'bb_wamg', 'http://bbwamg.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '111', '1318305728');
INSERT INTO `yqt_cart` VALUES ('283', '', '105', 'bernice', 'http://product.m18.com/k-E113716.htm', '百搭渐变色围巾', '25.00', '10.00', '2', '', '均码', '粉红，浅蓝', 'product.m18.com', 'http://product.m18.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1318336641');
INSERT INTO `yqt_cart` VALUES ('284', 'aA2HpIT9gg-fHv4uLZVIK1PezWZELYHXC3ks_t8pPsA.', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=24', 'H&M正品 摩洛哥风情手链', '22.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1318347278');
INSERT INTO `yqt_cart` VALUES ('285', 'rOyVqH-SwAj6M6Br0M7eLvivdRAsKo6u__zujA..', '0', null, 'http://list.3c.tmall.com/s1pu-13542803-1.htm?prc=1', '范德萨范德萨发打算', '11.00', '10.00', '1', '', '', '', 'list.3c.tmall.com', 'http://list.3c.tmall.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1318391743');
INSERT INTO `yqt_cart` VALUES ('422', '', '48', '小张', 'http://item.taobao.com/item.htm?id=13121219189', '买二送一正品贝令妃小样benefit贝玲妃终极丰润唇膏口红1.2G4色选', '16.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1unWxXi4zXXXTnIo9_102627.jpg_310x310.jpg', '', '', '陈小丽19861006', 'http://chaoliouguan.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320976029');
INSERT INTO `yqt_cart` VALUES ('418', 'Yz4fA8a-TrCUgcahicfi6D3a_a-32Z4aGE1EP_EVXLM.', '0', null, 'http://item.taobao.com/item.htm?id=10293116084', '奢恋之名红粉香香  ', '7350.00', '20.00', '6', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1S3OcXnXiXXc9.nQ._113554.jpg_310x310.jpg', '', '', '红粉香香', 'http://hongfenxiangxiang.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320833258');
INSERT INTO `yqt_cart` VALUES ('289', 'p0VyT986dkaDl4MwISFXRe22gJZ6G99BMxDuh19a-M8.', '0', null, 'http://list.3c.taobao.com/spu-13542803-1.htm?prc=1', '飞科 FS711 剃须刀 ', '38.00', '12.00', '1', 'null', '', '', '佳涵家居专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318408657');
INSERT INTO `yqt_cart` VALUES ('290', 'p0VyT986dkaDl4MwISFXRe22gJZ6G99BMxDuh19a-M8.', '0', null, 'http://list.3c.taobao.com/spu-13542803-1.htm?prc=1', '飞科 FS711 剃须刀 ', '38.00', '12.00', '1', 'null', '', '', '佳涵家居专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318408685');
INSERT INTO `yqt_cart` VALUES ('291', 'Scgml0BIfC6vA_Hpqv2L0DpmoGiJ1j-6Mo5Pnk8Odmg.', '0', null, 'http://item.taobao.com/item.htm?id=8722297721&_u=c21cbi2bcae', '◆冲三冠名店◆松下剃须刀ES', '355.00', '12.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1OJidXj8fXXXX5VLb_122700.jpg_310x310.jpg', '', '', '顺德来', 'http://sdlwg.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318408913');
INSERT INTO `yqt_cart` VALUES ('292', 'qmrDhQ8ywjGpAiQl5U7us-nLGZEhY0bU5nB74nkmuKs.', '0', null, 'http://www.amazon.com/HP-TouchPad-Tablet-camera-Bluetooth/dp/B005FXNIWY/ref=sr_1_cc_2?s=videogames&ie=UTF8&qid=1318422188&sr=1-2-catcorr', 'HP TouchPad - Tablet - webOS 3.0 - 32 GB - 9.7&quot IPS 1024 x 768 - front camera - Wi-Fi, Bluetooth - HP gloss black - Smart Buy', '1872.50', '10.00', '1', '', '9.7寸', '黑色', 'www.amazon.com', 'http://www.amazon.com', '卓越', 'www.amazon.cn', '', '1', '惠普touchpad 32gb版', '1318422419');
INSERT INTO `yqt_cart` VALUES ('293', 'rOyVqH-SwAj6M6Br0M7eLvivdRAsKo6u__zujA..', '0', null, 'http://item.taobao.com/item.htm?spm=569.135065.160851.16&id=12659541260&_u=81pur9k16ee&ali_trackid=4_5707_8-1', '朗逸/空调旋钮/新宝来/速腾/明锐/迈腾/途安/改装专用第三代超亮', '45.00', '12.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1MIGmXa8VXXXsBcET_011212.jpg_310x310.jpg', '', '', 'marisaa', 'http://29net.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318476661');
INSERT INTO `yqt_cart` VALUES ('294', 'rOyVqH-SwAj6M6Br0M7eLvivdRAsKo6u__zujA..', '0', null, 'http://www.baidu.com/', '啊啊啊', '222.00', '10.00', '1', '', '', '', 'www.baidu.com', 'http://www.baidu.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1318476731');
INSERT INTO `yqt_cart` VALUES ('295', 'ed1yCPcyulNZ3g2ADQimdy2J59BbNr44of20ClS771g.', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=9', '两件包邮  韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', '68.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1318491288');
INSERT INTO `yqt_cart` VALUES ('296', '6lUg34R3uAhBZf2dHBYW9b5CvKMrxsEmgOQR93ib1z4.', '0', null, 'http://item.taobao.com/item.htm?id=12224681317&ad_id=&am_id=&cm_id=&pm_id=', 'OSA2011秋装新款女装秋冬韩版大码长款低领打底衫长袖T恤女T11024', '98.00', '12.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1Tz9pXlJTXXaIZdQ5_055355.jpg_310x310.jpg', '', '', 'osa品牌服饰旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318528517');
INSERT INTO `yqt_cart` VALUES ('302', '_cyzY_mx_L0XaQ0E782kY1WjsV2MQXHgKfhxww..', '0', null, 'http://www.360buy.com/product/347277.html', '三星（SAMSUNG）S5830 3G手机（黑色）WCDMA/GSM', '1899.00', '0.00', '1', 'http://img12.360buyimg.com/n1/1822/e7371683-365d-4594-b2c5-054ae8e33164.jpg', '', '', '京东商城', 'http://www.360buy.com/product/', '京东商城', 'www.360buy.com', '', '1', '请选填颜色、尺寸等要求！', '1318689952');
INSERT INTO `yqt_cart` VALUES ('301', '_cyzY_mx_L0XaQ0E782kY1WjsV2MQXHgKfhxww..', '0', null, 'http://item.taobao.com/item.htm?id=10613256520&', '泳衣 女 分体缪诗雅典娜专柜正品缤纷糖果色分体式泳衣两件套装', '98.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318689865');
INSERT INTO `yqt_cart` VALUES ('300', 'LM9b7dT4SDQMq9OnFyqNtCP_1zC6moOU-2UgBw..', '0', null, 'http://item.taobao.com/item.htm?id=8205340680&cm_cat=26&_u=umqdvv844fb#', '正品7寸E路航X10 双核高清 旅游汽车车载GPS导航仪 一体机 包邮', '320.00', '12.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1EmCrXXNBXXcbqJAZ_031714.jpg_310x310.jpg', '1', '1', 'bb_wamg', 'http://bbwamg.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '1', '1318660854');
INSERT INTO `yqt_cart` VALUES ('303', 'ZDK8K3o152nQQhzFOxH44pePXAefIGiXLAw1mHkqBx0.', '0', null, 'http://detail.taobao.com/venus/spu_detail.htm?rn=5bf2797ad4615df3e693fc90d22d636d&entryNum=0&spm=141.107588.139290.5&mallstItemId=5778420391&spu_id=126315885&prc=2&q=%C6%B7%CA%A4+%D2%C6%B6%AF%B5%E7%D4%B4&userBucket=0', 'null', '120.00', '10.00', '1', 'null', '', '', '长弓数码专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318729946');
INSERT INTO `yqt_cart` VALUES ('304', 'UMZhRrp-zQk1bCP5diqrKQO7c4s7_78hgOdfrg..', '0', null, 'http://item.taobao.com/item.htm?id=10613256520&', '泳衣 女 分体缪诗雅典娜专柜正品缤纷糖果色分体式泳衣两件套装', '98.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318742970');
INSERT INTO `yqt_cart` VALUES ('307', 'QsdUfDjrFBnJkUPXzj8jrFGFiPTEWmtsewHxOwn6IGc.', '0', null, 'http://auction1.paipai.com/F24AF632000000000401000002BF68E6', '优恩 胶原蛋白粉100克 美白淡斑 保湿防皱 抗衰老 正品包邮 ', '33.00', '0.00', '1', 'null', '', '', '855001842', '', '拍拍1', 'www.paipai.com', '', '1', '请选填颜色、尺寸等要求！', '1318844609');
INSERT INTO `yqt_cart` VALUES ('310', '', '113', 'liaoliao', 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 女士内衣', '79.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', 'qq', 'qq', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318949505');
INSERT INTO `yqt_cart` VALUES ('311', 'PqJSGh9zBLxM-WigNr8wilf634H_pCseiLfeGw..', '0', null, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 女士内衣', '79.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1318999689');
INSERT INTO `yqt_cart` VALUES ('312', 'QRZFWYYlWjxJ7kkr24IFYptl3BfJeK3xrqTWyg..', '0', null, 'http://item.taobao.com/item.htm?id=10022325378&', '无痕文胸 聚拢缪诗野性能量专柜 正品无痕U型调整型内衣 聚拢文胸', '99.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1MAVIXa4bXXbh0.39_074836.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319009968');
INSERT INTO `yqt_cart` VALUES ('313', 'ieYvQ7vcjPCaWhsC4fJNAt8zTmwAv8nmwBhuew..', '0', null, 'http://www.55tuan.com/tuan-6668518756de6e2e', '仅49.9元，享原价131元四季回转火锅2~3人火锅套餐，拥有独特的电动传菜形式，鲜美丰富的火锅，约上家人，叫上好友，推杯盏酒间尽享美食诱惑！', '49.90', '0.00', '1', '', '', '', 'www.55tuan.com', 'http://www.55tuan.com', '其他网站', '###', '', '1', '火锅', '1319016273');
INSERT INTO `yqt_cart` VALUES ('314', 'Bb_c0hXLvasNnZnPG12_3TYmIMgZYUgjkU_a1amhGds.', '0', null, 'http://item.taobao.com/item.htm?id=7014926351&prt=1319017882700&prc=2', '特价58元 雪俐睡衣秋冬季女士可爱长袖纯棉加厚家居服三件套2115', '116.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1Bwt9XlXBXXcUwu2X_085059.jpg_310x310.jpg', '', '', '雪俐旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', 'fsdafsafasd\nfsdafasd', '1319017945');
INSERT INTO `yqt_cart` VALUES ('315', '-Coxz_iIi-KeIuz3RxSw2SGlh5RlrVMl9R3CsgpZono.', '0', null, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 女士内衣', '79.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '36', '黑', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319018085');
INSERT INTO `yqt_cart` VALUES ('320', 'IJhjVm2E7xjWUZeR57tC0w_3NXtNZg8mzsf6fA..', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=31', 'dd', '434.00', '0.00', '1', '', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1319082202');
INSERT INTO `yqt_cart` VALUES ('321', 'WC2qnKXqsn5-QKh-ywL2PYx9XomlY8SO30wA6A..', '0', null, 'http://item.taobao.com/item.htm?id=1234709371', '◆皇冠特价◆C 内裤', '9.90', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1UI4OXnpfXXaLcuZU_014429.jpg_310x310.jpg', '', '', '妞妞美馆', 'http://shop33639325.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319097350');
INSERT INTO `yqt_cart` VALUES ('322', 'HAxDapmeuinescXnCchn2lae0ungfZLPAQYk0wQELAY.', '115', 'lj9001', 'http://daigou.dayusheji.com/shop.php?action=view&gid=1', '测试产品', '50.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1319111864');
INSERT INTO `yqt_cart` VALUES ('323', '', '116', 'lj9002', 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 女士内衣', '79.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319112007');
INSERT INTO `yqt_cart` VALUES ('324', 'fWvyGquw14ALRUfb5dFT17kH4xZYjvudAUzqlQ..', '0', null, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 女士内衣', '79.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319123044');
INSERT INTO `yqt_cart` VALUES ('325', 'sybXPyhCPCTkM_fhWlDQ43eeY1A_i_riT2vioA..', '117', 'chenliangayy', 'http://item.taobao.com/item.htm?id=13128419895', 'adidas 阿迪达斯 三叶草 女 adicolor 棉服 黑 O58610', '980.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i7/T1it9sXaFJXXc2vpnX_114051.jpg_310x310.jpg', '', '', 'adidas官方旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319134845');
INSERT INTO `yqt_cart` VALUES ('326', 'kq3cndtsexnadYc25Qr6YNbJ_nXplRbsKlQfOAMSFAU.', '118', 'alfredlsc', 'http://item.taobao.com/item.htm?id=10970464992&ref=&ali_trackid=2:mm_14507416_2297358_8935934,0:1319142475_4z5_1914203004', '仿86daigou.com/代购系统/华人代购/Asp.Net代购网站程序', '1500.00', '10.00', '19', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1iu1nXaJVXXczzvTa_120825.jpg_310x310.jpg', '', '', 'majoron', 'http://wzjs.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319143170');
INSERT INTO `yqt_cart` VALUES ('327', 'zQNq25iWGrRGoHR80vEGEJk43LyLHlpeAy1OBw..', '0', null, 'http://item.taobao.com/item.htm?id=10022686104&', '小胸mm 文胸 聚拢缪诗星语心愿专柜 正品收副乳超聚拢调整型文胸', '89.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1f7ugXh0lXXXxdCk3_050856.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319171066');
INSERT INTO `yqt_cart` VALUES ('328', 'UGCZUrrlTTleHbSWBlkqr-PKcw65PRHEkoDO_Q9EyD0.', '0', null, 'http://item.taobao.com/item.htm?id=10759995600&', '淘金币 缪诗正品 豹纹部落 豹纹印花系带绕脖调整型聚拢女士文胸', '168.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1_FCiXhpXXXXy99E3_051218.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319172128');
INSERT INTO `yqt_cart` VALUES ('329', 'NSLEHB_Sb2XVEjWMCtQp1gDNsy6o-8JQSNPhHg..', '0', null, 'http://item.taobao.com/item.htm?id=10613256520&', '泳衣 女 分体缪诗雅典娜专柜正品缤纷糖果色分体式泳衣两件套装', '98.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319211909');
INSERT INTO `yqt_cart` VALUES ('330', 'H2WInV7-Fu5uyNAbM8yuPWPbkjVMUXDkr45yAxWaagA.', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=19', '女士时尚居家拖鞋 情侣拖鞋 小碎花室内拖鞋 特价拖鞋', '9.20', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1319416553');
INSERT INTO `yqt_cart` VALUES ('331', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200&ali_refid=a3_420521_1006:1102492268:6:ipad:2a9f1f87302f4b605c04586c96ff4881&ali_trackid=1_2a9f1f87302f4b605c04586c96ff4881', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319434966');
INSERT INTO `yqt_cart` VALUES ('332', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200&ali_refid=a3_420521_1006:1102492268:6:ipad:2a9f1f87302f4b605c04586c96ff4881&ali_trackid=1_2a9f1f87302f4b605c04586c96ff4881', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319434969');
INSERT INTO `yqt_cart` VALUES ('333', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200&ali_refid=a3_420521_1006:1102492268:6:ipad:2a9f1f87302f4b605c04586c96ff4881&ali_trackid=1_2a9f1f87302f4b605c04586c96ff4881', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319434970');
INSERT INTO `yqt_cart` VALUES ('334', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200&ali_refid=a3_420521_1006:1102492268:6:ipad:2a9f1f87302f4b605c04586c96ff4881&ali_trackid=1_2a9f1f87302f4b605c04586c96ff4881', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319434970');
INSERT INTO `yqt_cart` VALUES ('335', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200&ali_refid=a3_420521_1006:1102492268:6:ipad:2a9f1f87302f4b605c04586c96ff4881&ali_trackid=1_2a9f1f87302f4b605c04586c96ff4881', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319434971');
INSERT INTO `yqt_cart` VALUES ('336', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200&ali_refid=a3_420521_1006:1102492268:6:ipad:2a9f1f87302f4b605c04586c96ff4881&ali_trackid=1_2a9f1f87302f4b605c04586c96ff4881', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319434971');
INSERT INTO `yqt_cart` VALUES ('337', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200&ali_refid=a3_420521_1006:1102492268:6:ipad:2a9f1f87302f4b605c04586c96ff4881&ali_trackid=1_2a9f1f87302f4b605c04586c96ff4881', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319434971');
INSERT INTO `yqt_cart` VALUES ('338', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319435124');
INSERT INTO `yqt_cart` VALUES ('339', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319435126');
INSERT INTO `yqt_cart` VALUES ('340', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319435392');
INSERT INTO `yqt_cart` VALUES ('341', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319435395');
INSERT INTO `yqt_cart` VALUES ('342', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319435396');
INSERT INTO `yqt_cart` VALUES ('343', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319435746');
INSERT INTO `yqt_cart` VALUES ('344', 'ZczsFn7mdyeR4v7m3C8QLGmwngnDFLAqdiR-HQ..', '0', null, 'http://item.taobao.com/item.htm?id=12445704200', '包邮 苹果wifi版ipad216G二代平板电脑 送大礼 完美越狱 装软件', '3400.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T13AejXdBuXXXIgGMU_013607.jpg_310x310.jpg', '', '', 'weiiverson', 'http://shop58919063.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319436707');
INSERT INTO `yqt_cart` VALUES ('345', 'jIvR-huELxeL9yiz9QPXN6sIP_BTRSAZVxNg5Q..', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=28', 'A3002 好评+回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', '16.00', '0.00', '1', 'attachment/order/201009/20100901154844_640.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1319476830');
INSERT INTO `yqt_cart` VALUES ('346', 'jIvR-huELxeL9yiz9QPXN6sIP_BTRSAZVxNg5Q..', '0', null, 'http://item.taobao.com/item.htm?id=12536174460&_u=pkf51160f69', '老北京布鞋 男鞋 软底休闲男款 单鞋黑/棕/咖色 商务上班鞋 Y5108', '79.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i7/T1h_1tXlxGXXbDaQs8_071321.jpg_310x310.jpg', '42', '咖啡', '伊耐服饰专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319477246');
INSERT INTO `yqt_cart` VALUES ('347', 'spbKdR1-JOEGrsukSzOXQObnoL9gX8p3eEHmHKv9OXY.', '0', null, 'http://item.taobao.com/item.htm?id=10022325378&', '无痕文胸 聚拢缪诗野性能量专柜 正品无痕U型调整型内衣 聚拢文胸', '99.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T16EWuXn0fXXbD5aZ5_054711.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319523363');
INSERT INTO `yqt_cart` VALUES ('388', 'PASgMF1FiCKDQ0VWZuuMhzQuVp00Zl-T-pigVg..', '0', null, 'http://item.taobao.com/item.htm?id=8908577502', '华为E5 E5s二代 e5832 E5832S 3G 无线路由器 LOED屏 IPAD专用', '535.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1504WXiVjXXc4ip_X_113845.jpg_310x310.jpg', '', '', '六月飘钱', 'http://szedup.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320307281');
INSERT INTO `yqt_cart` VALUES ('349', 'k4yqWB5xoCMgNr96m3NTqpRIb6z_qKMU5n7svg..', '0', null, 'http://item.taobao.com/item.htm?id=10008349082&', '挂脖式文胸 内衣缪诗娇鹿迷情系带诱惑款豹纹聚拢 胸罩 性感内衣', '89.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1YzF_XaBEXXbcFQjX_115745.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319554662');
INSERT INTO `yqt_cart` VALUES ('350', 'H8VOML81Q9zjAbz7bjW5UXzz3AGHLHiNg6u8vw..', '0', null, 'http://item.taobao.com/item.htm?id=5056231822&cm_cat=50010368&source=dou&prt=1319594153819&prc=1', '包邮活动 赛猫男士太阳镜蛤蟆镜 女太阳眼镜 正品偏光镜潮人墨镜', '35.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1HsB_XotpXXcK7ZUV_020117.jpg_310x310.jpg', '', '', '晟赫户外专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319594162');
INSERT INTO `yqt_cart` VALUES ('351', '4oMq3BuA1j60XywvDctsnW7ubqtMoEtcQmSXPSIPktM.', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=9', '两件包邮  韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', '68.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1319614955');
INSERT INTO `yqt_cart` VALUES ('352', 'H8VOML81Q9zjAbz7bjW5UXzz3AGHLHiNg6u8vw..', '0', null, 'http://item.taobao.com/item.htm?id=5056231822&cm_cat=50010368&source=dou&prt=1319594153819&prc=1', '包邮活动 赛猫男士太阳镜蛤蟆镜 女太阳眼镜 正品偏光镜潮人墨镜', '35.00', '20.00', '3', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1HsB_XotpXXcK7ZUV_020117.jpg_310x310.jpg', '', '', '晟赫户外专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319618342');
INSERT INTO `yqt_cart` VALUES ('353', 'H8VOML81Q9zjAbz7bjW5UXzz3AGHLHiNg6u8vw..', '0', null, 'http://item.taobao.com/item.htm?id=5056231822&cm_cat=50010368&source=dou&prt=1319594153819&prc=1', '包邮活动 赛猫男士太阳镜蛤蟆镜 女太阳眼镜 正品偏光镜潮人墨镜', '35.00', '20.00', '5', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1HsB_XotpXXcK7ZUV_020117.jpg_310x310.jpg', '', '', '晟赫户外专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319618362');
INSERT INTO `yqt_cart` VALUES ('354', 'H8VOML81Q9zjAbz7bjW5UXzz3AGHLHiNg6u8vw..', '0', null, 'http://item.taobao.com/item.htm?id=5056231822&cm_cat=50010368&source=dou&prt=1319594153819&prc=1', '包邮活动 赛猫男士太阳镜蛤蟆镜 女太阳眼镜 正品偏光镜潮人墨镜', '35.00', '20.00', '5', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1HsB_XotpXXcK7ZUV_020117.jpg_310x310.jpg', '', '', '晟赫户外专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319618363');
INSERT INTO `yqt_cart` VALUES ('355', 'H8VOML81Q9zjAbz7bjW5UXzz3AGHLHiNg6u8vw..', '0', null, 'http://item.taobao.com/item.htm?id=10573621319&cm_cat=50047310', '三星 Galaxy Tab P1000专柜正品 送千元话费+送蓝牙键盘/迷你音箱', '2690.00', '20.00', '3', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1AP9vXb0RXXX7FQQY_030305.jpg_310x310.jpg', '', '', '特色自然', 'http://shop59591281.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319618399');
INSERT INTO `yqt_cart` VALUES ('356', 'H8VOML81Q9zjAbz7bjW5UXzz3AGHLHiNg6u8vw..', '0', null, 'http://item.taobao.com/item.htm?id=10573621319&cm_cat=50047310', '三星 Galaxy Tab P1000专柜正品 送千元话费+送蓝牙键盘/迷你音箱', '2690.00', '20.00', '111', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1AP9vXb0RXXX7FQQY_030305.jpg_310x310.jpg', '', '', '特色自然', 'http://shop59591281.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319618399');
INSERT INTO `yqt_cart` VALUES ('357', '6vIWpxjCyrdmZ0h2nqEaW7RKw-aWluuwQjdU6_tUE9o.', '0', null, 'http://item.taobao.com/item.htm?id=10022680596&', '缪诗 专柜正品 香榭丽蕾丝刺绣聚拢调整型文胸（A杯、B杯', '69.00', '20.00', '2', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1hwedXfVwXXa.p1LX_114737.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319620131');
INSERT INTO `yqt_cart` VALUES ('358', 'GJaJhvkhrlc0K7BLH4gV7jTRvqAZ-t0RcREFlApdsDY.', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=1', '测试产品', '50.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1319643998');
INSERT INTO `yqt_cart` VALUES ('359', '4nSGFJt600VQq7zqGSFJJrU8XFDndF8_FNyR6n0VxdU.', '0', null, 'http://item.taobao.com/item.htm?id=9657437020&ref=http%3A%2F%2F59fanli.com%2Fgotourl.php%3Furl%3DaHR0cDovL3MuY2xpY2sudGFvYmFvLmNvbS90Xzg%2FZT03SFo2akhTVFpQOEhadDVrN0I2N3NJcm1pTHFuakV3R1NPVmd6MFNnY2haJTJGZkxSR1A0cTJad0kxM0ZKMzNwa3JuVUxaUUVlU3NjVWMzbHpSNEtP', '专柜正品匡威converse经典款 长青 海军深蓝色高帮 帆布鞋102307', '169.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1ez1rXhlbXXXNy9U__110509.jpg_310x310.jpg', '', '', '陈明忠66', 'http://mxpzpzk.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319649946');
INSERT INTO `yqt_cart` VALUES ('360', 'G_12OJ_0tFVwG9GcLG8NqjKcz1BfkWz9h11eQFgHj-U.', '0', null, 'http://item.taobao.com/item.htm?id=10767240434&', '比基尼 泳衣 套装缪诗亮彩红蕴 时尚民族风分体式泳衣两件套', '129.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1JmKfXd8vXXc_Sq79_102454.jpg_310x310.jpg', '1', 's', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319683269');
INSERT INTO `yqt_cart` VALUES ('361', 'ZbIpOznHgCQVKbMfFwvYSY6pKKbJrscH8d8Lr-19VPk.', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=9', '两件包邮  韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', '68.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1319689666');
INSERT INTO `yqt_cart` VALUES ('362', '0JNzOHER3ad9aY8llr1mfN3bcHykkvVf-iZdag..', '0', null, 'http://item.taobao.com/item.htm?id=12821647150&stp=top.topint.50010158.sellhot.image.7.true', '2011夹克男士休闲夹克外套 时尚夹克 立领夹克 修身夹克 5色', '280.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1QOWpXb0RXXXj7ko1_041746.jpg_310x310.jpg', '', '', '网上零售批发', 'http://mrkyk.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319695453');
INSERT INTO `yqt_cart` VALUES ('363', 'mpNU71RpudcZYw073yU1JExDqB3FJSZ-x9zHtg..', '0', null, 'http://item.taobao.com/item.htm?id=12821647150&stp=top.topint.50010158.sellhot.image.7.true', '2011夹克男士休闲夹克外套 时尚夹克 立领夹克 修身夹克 5色', '280.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1QOWpXb0RXXXj7ko1_041746.jpg_310x310.jpg', '', '', '网上零售批发', 'http://mrkyk.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319708415');
INSERT INTO `yqt_cart` VALUES ('364', 'tb0Y4X1iwzcBhv-PqeF8xOUYxYIBJKEZSB5e3Q_cdFg.', '0', null, 'http://item.taobao.com/item.htm?id=10767240434&', '比基尼 泳衣 套装缪诗亮彩红蕴 时尚民族风分体式泳衣两件套', '129.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1JmKfXd8vXXc_Sq79_102454.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319712975');
INSERT INTO `yqt_cart` VALUES ('365', 'GTBpffdA4t7ToUOdPFGYGqLaYQ-eHUYFdcixgA..', '0', null, 'http://item.taobao.com/item.htm?id=10589134796&', '调整型文胸 聚拢缪诗蝴蝶兰蕾丝刺绣超聚拢调整型文胸 性感胸罩', '89.00', '20.00', '14', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1rXqhXapjXXaRJWAZ_031327.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319779706');
INSERT INTO `yqt_cart` VALUES ('366', '7luLJHKVTCm_Qg8IIx4OWcfFiaTViu_G5gOYRA..', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=6', '夏装新款☆青花瓷之恋☆高档印花棉 超显身材的开叉旗袍 特119！', '119.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1319789135');
INSERT INTO `yqt_cart` VALUES ('367', 'G91QQBrcLWKD5oDsy1aQgnwKkAOLDlXZWmwc9A..', '0', null, 'http://item.taobao.com/item.htm?id=12842624008&ref=http%3A%2F%2Fwww.weibo.com%2Fhuangyi3318%3Fwvr%3D4%26page%3D1%26pre_page%3D2&ali_trackid=2:mm_28926963_0_0:1319775948_3z8_496820866&prt=1319788737925&prc=2', '2011秋装新款 英伦格子男士长袖衬衫 男式亚麻修身衬衣格纹', '158.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1TEX9XftBXXaSywjX_084940.jpg_310x310.jpg', '', '', 'deerejane旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', 'm', '1319792155');
INSERT INTO `yqt_cart` VALUES ('368', 'cCNdK2oGegqxssUbxML7GIaDGtfgl03CCmoxSNh5x_M.', '0', null, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 女士内衣', '79.00', '20.00', '5', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', 'x', 'black', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'black', '1319795525');
INSERT INTO `yqt_cart` VALUES ('369', 'zJANcb97IGALBpDoDXoWRyOHtjYgA6yT49mGKq-5KyQ.', '0', null, 'http://item.taobao.com/item.htm?id=13373716273', 'panli代购程序源码|代购中国程序|开源版', '600.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1keWpXgxjXXa_4U38_071909.jpg_310x310.jpg', '', '', 'yanchunlan88', 'http://shtml.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319885686');
INSERT INTO `yqt_cart` VALUES ('370', 'F40jAQNGtR_XZHkr2Rnqbkpr-AEcLulenSUXavzplHc.', '0', null, 'http://item.taobao.com/item.htm?id=7912706954', '仿panli.com代购网/代购网站/代购商城/网站开发/网站建设', '10000.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1OXpOXfXdXXXA5Lba_121036.jpg_310x310.jpg', '', '', 'majoron', 'http://wzjs.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1319885721');
INSERT INTO `yqt_cart` VALUES ('371', '', '124', 'ryanlee', 'http://item.taobao.com/item.htm?id=13203900301', '2011新款  冬装外套 棉袄男 韩版棉服外套男士短款毛领棉服男棉衣', '99.00', '20.00', '4', 'http://img03.taobaocdn.com/bao/uploaded/i7/T13rixXk4eXXaNjmg1_042301.jpg_310x310.jpg', '1', '1', 'wlovez2009', 'http://shop59749335.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '1', '1319975804');
INSERT INTO `yqt_cart` VALUES ('373', 'hgKLSzRvc0X1OMSZaf7Hjz1bAF4dVgjfloZaNw..', '0', null, 'http://zoewebs.com', 'kdf', '423.00', '10.00', '1', '', '', '', 'zoewebs.com', 'http://zoewebs.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1319993730');
INSERT INTO `yqt_cart` VALUES ('374', 'AgbVMOD3L4uDT3qgD0hJfhQWSGcWNeo84lUFTw..', '125', 'ccccc', 'http://item.taobao.com/item.htm?id=13203900301', '2011新款  冬装外套 棉袄男 韩版棉服外套男士短款毛领棉服男棉衣', '99.00', '20.00', '30', 'http://img03.taobaocdn.com/bao/uploaded/i7/T13rixXk4eXXaNjmg1_042301.jpg_310x310.jpg', '', '', 'wlovez2009', 'http://shop59749335.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320047546');
INSERT INTO `yqt_cart` VALUES ('379', 'HKIezb0gtNYJ1K3Ru2UYGkOwPsk4LM24fktkYQ..', '0', null, 'http://item.taobao.com/item.htm?id=13203900301', '2011新款  冬装外套 棉袄男 韩版棉服外套男士短款毛领棉服男棉衣', '99.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i7/T13rixXk4eXXaNjmg1_042301.jpg_310x310.jpg', '', '', 'wlovez2009', 'http://shop59749335.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320162046');
INSERT INTO `yqt_cart` VALUES ('380', 'HKIezb0gtNYJ1K3Ru2UYGkOwPsk4LM24fktkYQ..', '0', null, 'http://item.taobao.com/item.htm?id=10722453526', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 女士内衣', '79.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320162051');
INSERT INTO `yqt_cart` VALUES ('381', 'HKIezb0gtNYJ1K3Ru2UYGkOwPsk4LM24fktkYQ..', '0', null, 'http://item.taobao.com/item.htm?id=10890644420', '[限量]STAYREAL x Molly时尚巧物包+ ELLE Girl杂志6月号魔力版', '55.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T12xBPXhhBXXcNjzQ__110116.jpg_310x310.jpg', '', '', '最熟悉陌生人皓', 'http://stayreal.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320162058');
INSERT INTO `yqt_cart` VALUES ('382', 'HKIezb0gtNYJ1K3Ru2UYGkOwPsk4LM24fktkYQ..', '0', null, 'http://item.taobao.com/item.htm?id=8205340680&cm_cat=26&_u=umqdvv844fb#', '正品 景扬E路航X10 7寸双核高清 汽车车载GPS导航仪 一体机 包邮', '323.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1SY1xXk0IXXbVaIjX_114428.jpg_310x310.jpg', '', '', 'bb_wamg', 'http://bbwamg.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320162062');
INSERT INTO `yqt_cart` VALUES ('383', 'HKIezb0gtNYJ1K3Ru2UYGkOwPsk4LM24fktkYQ..', '0', null, 'http://item.taobao.com/item.htm?id=3217775862', '可爱公主裙/黑色酷绚裙/DS娃娃动漫表演出场服/AV角色扮演装MZ001', '62.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T143FBXnXgXXbKPNfb_094235.jpg_310x310.jpg', '', '', '美子小铺520', 'http://meizixiaopu520.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320162067');
INSERT INTO `yqt_cart` VALUES ('384', 'HKIezb0gtNYJ1K3Ru2UYGkOwPsk4LM24fktkYQ..', '0', null, 'http://detail.taobao.com/venus/spu_detail.htm?rn=08e17fe8447f1ef697d365846ff629b5&entryNum=0&mallstItemId=3534652013&spu_id=132714710&prc=1&userBucket=4', '5折 NIKE/耐克 10年冬季男子复克鞋386156', '288.00', '20.00', '1', 'null', '', '', 'top运动名品专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320162072');
INSERT INTO `yqt_cart` VALUES ('385', 'HKIezb0gtNYJ1K3Ru2UYGkOwPsk4LM24fktkYQ..', '0', null, 'http://item.taobao.com/item.htm?id=8240363581', '正品秒杀 Moer摩尔烟嘴 CG', '38.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T18KN7XkXGXXbEBJQ._111701.jpg_310x310.jpg', '', '', '艺术馒头2008', 'http://55346699.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320162080');
INSERT INTO `yqt_cart` VALUES ('386', '5oa75ZTJDNGb8GSHDfgmVOOhX0Q6COnkfnO-6g..', '0', null, 'http://item.taobao.com/item.htm?id=10589134796&', '调整型文胸 聚拢缪诗蝴蝶兰蕾丝刺绣超聚拢调整型文胸 性感胸罩', '89.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1rXqhXapjXXaRJWAZ_031327.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320225640');
INSERT INTO `yqt_cart` VALUES ('389', 'PASgMF1FiCKDQ0VWZuuMhzQuVp00Zl-T-pigVg..', '0', null, 'http://taobao.com', '淘宝网 ', '0.00', '20.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320307387');
INSERT INTO `yqt_cart` VALUES ('390', 'WFQG3ADvBn0j5v5gwCFqo1zgKNZNZyKxzBUyrg..', '0', null, 'http://item.taobao.com/item.htm?id=10613256520&', '泳衣 女 分体缪诗雅典娜专柜正品缤纷糖果色分体式泳衣两件套装', '98.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320324359');
INSERT INTO `yqt_cart` VALUES ('391', 'qdo529fQslzL-V1Act3h3la4LFjgaDIrhw16eyqqtZw.', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=26', '【稀奇】百度上查不到的特产藤蔑果野生果子回甘爽口180g', '6.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1320336483');
INSERT INTO `yqt_cart` VALUES ('392', 'qdo529fQslzL-V1Act3h3la4LFjgaDIrhw16eyqqtZw.', '0', null, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 女士内衣', '79.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320336546');
INSERT INTO `yqt_cart` VALUES ('393', 'qdo529fQslzL-V1Act3h3la4LFjgaDIrhw16eyqqtZw.', '0', null, 'http://item.taobao.com/item.htm?id=10613256520&', '泳衣 女 分体缪诗雅典娜专柜正品缤纷糖果色分体式泳衣两件套装', '98.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320336613');
INSERT INTO `yqt_cart` VALUES ('394', 'qdo529fQslzL-V1Act3h3la4LFjgaDIrhw16eyqqtZw.', '0', null, 'http://item.taobao.com/item.htm?id=10022658980&', '精油按摩文胸 缪诗郁金香专柜 正品调整型文胸 聚拢女式内衣', '99.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1lGtQXkNXXXa6LfM9_073352.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320336648');
INSERT INTO `yqt_cart` VALUES ('529', '2uRwCfdGzZJw9BJrQ2m_SVKJkXQTHe-s_nh9pQ..', '178', 'xiaozhang', 'http://item.mbaobao.com/pshow-1204078703.html?l=1f41', '[比比]盛世华章系列手提包 深红 ', '0.00', '15.00', '1', 'null', '', '', '麦包包网', 'item.mbaobao.com', '麦包包网', 'www.mbaobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322468683');
INSERT INTO `yqt_cart` VALUES ('396', 'kXIBl4uVZV3fZAzvyUIKu87ACA8ONOSWJW9TCQ..', '0', null, 'http://item.taobao.com/item.htm?id=5983889044&cm_cat=50015929&pm2=1&source=dou&prt=1320377154205&prc=1', '周生生官方黄金足金小兔头吐气扬眉吊坠 14797P计价', '1610.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1MDl3Xa8yXXXnD1Yb_093640.jpg_310x310.jpg', '', '', '周生生官方旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320378852');
INSERT INTO `yqt_cart` VALUES ('398', 'u1EwN--YVQJCx75YY5AYA66HHxswmK7RKIXwgg..', '0', null, 'http://item.taobao.com/item.htm?id=10722453526&', '缪诗 正品 恋爱季节 棉质舒适聚拢文胸 女士内衣', '79.00', '20.00', '2', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1h8igXidXXXaMqiDa_121458.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320413212');
INSERT INTO `yqt_cart` VALUES ('400', 'BxKctAEfy57aS4HajW-l_0kHU4HIBxKd2W58Cg..', '0', null, 'http://item.taobao.com/item.htm?id=13056034671&cm_cat=50095922', '2011新款翻领毛呢子大衣西装黑色/深灰色（浅驼色暂断）', '370.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1ZMOwXXBDXXauG2g._111857.jpg_310x310.jpg', 'm', 'blak', '天下衣行服饰', 'http://shop58767551.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'sadf', '1320472834');
INSERT INTO `yqt_cart` VALUES ('420', 'z8vtLWnlnfwhUSd3hR2-BxiNWtJg3pihNPKx5A..', '0', null, 'http://weibo.com/viuu', '放大放大', '1100.00', '10.00', '1', '', '33', '24', 'weibo.com', 'http://weibo.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1320913230');
INSERT INTO `yqt_cart` VALUES ('421', 'NaN32al_A5E_GzMG8PVKyo4emi_Q4tCHx6Gjaw..', '48', '小张', 'http://item.taobao.com/item.htm?id=7828257152&ali_trackid=4_6007_3-2&ad_id=&am_id=&cm_id=&pm_id=', '【现货】女款 可爱棉拖鞋 全包跟保暖鞋 冬季棉鞋 立体卡通', '29.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1CuqmXgxtXXXPgwfX_084932.jpg_310x310.jpg', '', '', 'amy_shoes', 'http://7557.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320922862');
INSERT INTO `yqt_cart` VALUES ('403', '', '48', '小张', 'http://item.taobao.com/item.htm?id=8908577502', '华为E5 E5s二代 e5832 E5832S 3G 无线路由器 LOED屏 IPAD专用', '535.00', '20.00', '2', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1504WXiVjXXc4ip_X_113845.jpg_310x310.jpg', '', '', '六月飘钱', 'http://szedup.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320648579');
INSERT INTO `yqt_cart` VALUES ('409', '_FvOI3b2iMSabKjLMd7G3R9CuJCs7bWaPkw849TnFzQ.', '0', null, 'http://item.taobao.com/item.htm?id=1545454113&ref=http%3A%2F%2Fs8.taobao.com%2Fsearch%3Fq%3D%25B9%25B7%25D0%25AC%25D7%25D3%26commend%3Dall%26ssid%3Ds5-e%26pid%3Dmm_14507416_2297358_8935934&ali_trackid=2:mm_14507416_2297358_8935934,0:1320789252_4k2_6504953', '买鞋送袜子了 E030108麂皮宠物漫步鞋 宠物鞋 狗狗鞋子 多买多送', '24.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T156GwXlN8XXbuTuDX_115028.jpg_310x310.jpg', '', '', '格瑞中国', 'http://shop34398405.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320789293');
INSERT INTO `yqt_cart` VALUES ('408', 'dXJaWzDeQLloTDhRLHIs8StZPfZhptbP8jvR5Q..', '0', null, 'http://item.taobao.com/item.htm?id=7446803814', 'jaunce 2011秋装新款 男式时尚立领夹克 男 简洁休闲男式外套', '129.00', '50.00', '3', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1pYWyXilrXXbBYN34_052953.jpg_310x310.jpg', 'm', '黑', 'dashark1989', 'http://dashark1989.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '快点操', '1320752367');
INSERT INTO `yqt_cart` VALUES ('407', '', '123', 'xiaozhang', 'http://item.taobao.com/item.htm?id=3217775862', '可爱公主裙/黑色酷绚裙/DS娃娃动漫表演出场服/AV角色扮演装MZ001', '62.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T143FBXnXgXXbKPNfb_094235.jpg_310x310.jpg', '', '', '美子小铺520', 'http://meizixiaopu520.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320736726');
INSERT INTO `yqt_cart` VALUES ('417', 'hHv6i4o6kwu7mVXqHFBiIwuk8svQbliZMgEiknUNGSg.', '0', null, 'http://daigou.dayusheji.com/shop.php?action=view&gid=9', '两件包邮  韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', '68.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1320830416');
INSERT INTO `yqt_cart` VALUES ('411', 'X6-C9OC074JD-6v9VClQB2jzKNvl0I8Mnu1OeA..', '0', null, 'http://item.taobao.com/item.htm?id=13777704773&is_b=1&spm=1008.1000032.1000012.94', '2011秋冬新款茵佳妮女装长袖双口袋拉链连帽毛领中长款外套卫衣', '179.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1kp5uXa0HXXb8_iIW_024103.jpg_310x310.jpg', '', '', '茵佳妮服饰旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320808979');
INSERT INTO `yqt_cart` VALUES ('412', 'X6-C9OC074JD-6v9VClQB2jzKNvl0I8Mnu1OeA..', '0', null, 'http://item.taobao.com/item.htm?id=13777704773&is_b=1&spm=1008.1000032.1000012.94', '2011秋冬新款茵佳妮女装长袖双口袋拉链连帽毛领中长款外套卫衣', '179.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1kp5uXa0HXXb8_iIW_024103.jpg_310x310.jpg', '', '', '茵佳妮服饰旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320808993');
INSERT INTO `yqt_cart` VALUES ('413', 'X6-C9OC074JD-6v9VClQB2jzKNvl0I8Mnu1OeA..', '0', null, 'http://item.taobao.com/item.htm?id=13777704773&is_b=1&spm=1008.1000032.1000012.94', '2011秋冬新款茵佳妮女装长袖双口袋拉链连帽毛领中长款外套卫衣', '179.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1kp5uXa0HXXb8_iIW_024103.jpg_310x310.jpg', '', '', '茵佳妮服饰旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320812252');
INSERT INTO `yqt_cart` VALUES ('436', 'xl3b2m2ozSyjCgfThrtJt1LDX1GQxAB-0RfNOw..', '0', null, 'http://item.taobao.com/item.htm?id=13402939026&is_b=1&spm=1008.1000032.1000012.1', '预售！淑女屋2011冬季床品冬季新品羊毛被芯EXH01', '199.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T14u9xXcxSXXXJ8uPb_093628.jpg_310x310.jpg', '', '', '淑女屋官方旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1321266812');
INSERT INTO `yqt_cart` VALUES ('415', '_FvOI3b2iMSabKjLMd7G3R9CuJCs7bWaPkw849TnFzQ.', '0', null, 'http://item.taobao.com/item.htm?id=1545454113&ref=http%3A%2F%2Fs8.taobao.com%2Fsearch%3Fq%3D%25B9%25B7%25D0%25AC%25D7%25D3%26commend%3Dall%26ssid%3Ds5-e%26pid%3Dmm_14507416_2297358_8935934&ali_trackid=2:mm_14507416_2297358_8935934,0:1320816441_4z3_8847160', '买鞋送袜子了 E030108麂皮宠物漫步鞋 宠物鞋 狗狗鞋子 多买多送', '24.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T156GwXlN8XXbuTuDX_115028.jpg_310x310.jpg', '', '', '格瑞中国', 'http://shop34398405.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1320816454');
INSERT INTO `yqt_cart` VALUES ('424', 'AheScbm9WJVdjdPYLSKKLH-xzua3R7qlyzt4Bw..', '0', null, 'http://www.afdd.com', 'fdsafdsaffa', '100.00', '10.00', '1', '', '231', '放大', 'www.afdd.com', 'http://www.afdd.com', '其他网站', '###', '', '1', '范德萨', '1321001157');
INSERT INTO `yqt_cart` VALUES ('425', '', '135', 'steven', 'http://www.thenorthface.com/catalog/sc-gear/mens-shirts-sweaters/mens-reaxion-graphic-tee.html?from=subCat&variationId=NC1', '44444', '3.00', '10.00', '1', '', '222', '3333', 'www.thenorthface.com', 'http://www.thenorthface.com', '其他网站', '###', '', '1', '777777', '1321002187');
INSERT INTO `yqt_cart` VALUES ('426', '', '135', 'steven', 'http://item.taobao.com/item.htm?id=13257691981', 'IAB00665ABAA库存现货，专业配单价格以咨询为准', '2.56', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/22663562/T2i8N3XfRaXXXXXXXX_!!22663562.gif_310x310.jpg', '', '', 'alsonchen8281', 'http://wssz.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1321002465');
INSERT INTO `yqt_cart` VALUES ('427', 'ec6DjInV6fTuRNxR7i0Yq19Ad6hqk9oQiY48Bg..', '0', null, 'http://item.taobao.com/item.htm?id=13904400009', '[Tmall狂欢节]PPZ男装 男士细格暗门襟纯棉长袖格子衬衫衣zbcc011', '99.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1Q3qvXjpTXXbDaB72_044910.jpg_310x310.jpg', '', '', 'ppz旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1321024638');
INSERT INTO `yqt_cart` VALUES ('430', 'uBeyUCqEFWT_0zAAfkEvwK5TJnAIx0_U3VVFolev548.', '0', null, 'http://deepsurplus.com/Speaker-Parts-Amplifier-Building-DIY-Audio/Drivers-Speakers/Z50MK-TV-8-Woofer-VIFA?http://www.deepsurplus.com/s.nl/sc.5/category.385/.f?gad=CIuvv4sCEgizZizcupe6dhjD9rb_AyC_gcEQ', 'http://deepsurplus.com/Speaker-Parts-Amplifier-Building-DIY-Audio/Drivers-Speakers/Z50MK-TV-8-Woofer-VIFA?http://www.deepsurplus.com/s.nl/sc.5/category.385/.f?gad=CIuvv4sCEgizZizcupe6dhjD9rb_AyC_gcEQ', '500.00', '10.00', '1', '', '', '', 'deepsurplus.com', 'http://deepsurplus.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1321111809');
INSERT INTO `yqt_cart` VALUES ('431', 'sRX8asS_9JzmeZ0RKwWtnDTEeOsS2FTQl9oPGuivX3s.', '0', null, 'http://item.taobao.com/item.htm?id=13904400009', '[Tmall狂欢节]PPZ男装 男士细格暗门襟纯棉长袖格子衬衫衣zbcc011', '198.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1Q3qvXjpTXXbDaB72_044910.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1321163129');
INSERT INTO `yqt_cart` VALUES ('435', 'xl3b2m2ozSyjCgfThrtJt1LDX1GQxAB-0RfNOw..', '0', null, 'http://item.taobao.com/item.htm?id=13402939026&is_b=1&spm=1008.1000032.1000012.1', '预售！淑女屋2011冬季床品冬季新品羊毛被芯EXH01', '199.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T14u9xXcxSXXXJ8uPb_093628.jpg_310x310.jpg', '', '', '淑女屋官方旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1321266800');
INSERT INTO `yqt_cart` VALUES ('440', '3mu-fHTybUe4L17vEVrcIM4sZRZRaZVdqHpb70rmtZ8.', '0', null, 'http://detail.taobao.com/item.htm?id=2224040115', '多喜爱Dohia 床品 裙角飞扬 全棉斜纹三/四件套', '598.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1275qXcVYXXXJapw1_040053.jpg_310x310.jpg', '', '', '多喜爱旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1321346299');
INSERT INTO `yqt_cart` VALUES ('448', 'YwpBtUzhrpXn11idFCbKgx3ybO7jkQczZDlPQB3UVgY.', '0', null, 'http://item.taobao.com/item.htm?id=12673177548', '淘宝网 ', '0.00', '20.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1321524808');
INSERT INTO `yqt_cart` VALUES ('449', 'YwpBtUzhrpXn11idFCbKgx3ybO7jkQczZDlPQB3UVgY.', '0', null, 'http://item.taobao.com/item.htm?id=12673177548', '淘宝网 ', '0.00', '20.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1321525181');
INSERT INTO `yqt_cart` VALUES ('463', 'fq5IYQ_36r-FWMcgAkLNQTJEqDZQR2tzanpAtRwjn1E.', '0', null, 'http://item.taobao.com/item.htm?id=12284572829&ref=http%3A%2F%2Fwww.yxw365.com%2Fsearch.php%3Fq%3D%25D4%25F6%25B8%25DF%25D2%25A9%26catid%3D&ali_trackid=2:mm_17595526_0_0:1322052248_3z1_756158820', '美国BUOSIKAI骨骼助长素 增高药正品 N倍高', '272.00', '20.00', '2', 'http://img01.taobaocdn.com/bao/uploaded/i1/T13NyiXmldXXXFeqw7_063520.jpg_310x310.jpg', '', '', 'funny5678', 'http://2166033.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322052691');
INSERT INTO `yqt_cart` VALUES ('445', '5ZEfhyjhJgz04VvIVFkpTpmS2HgReze21YuqDWBkxtM.', '0', null, 'http://item.taobao.com/item.htm?id=12938689731&ad_id=&am_id=&cm_id=&pm_id=', '2011秋装新款 秋冬新品 百搭潮流修身韩版男士休闲裤子 男裤 长裤', '35.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1XqmyXoNfXXa6C7I._083153.jpg_310x310.jpg', '', '', '英伦服室', 'http://000110.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1321504397');
INSERT INTO `yqt_cart` VALUES ('450', 'yqawa1md3LSNl8ygQF_YZpi2nM9I9ILtrZwHY-Ouzho.', '0', null, 'http://item.taobao.com/item.htm?id=14008140944&stp=14008140944', '美国代购 Skullcandy G.I. 骷髅头S6GICZ', '568.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1rmewXfJRXXaoviMU_014923.jpg_310x310.jpg', '', '', 'mumu代购', 'http://shop68853011.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1321545766');
INSERT INTO `yqt_cart` VALUES ('451', 'KrsFh7raEXnwKU07assFHXe9NkXPrvRxPlIV1BadMY4.', '0', null, 'http://mymart.asia/index.php?pages=product_view&categories=167&product=1835', 'Jihu', '11.00', '10.00', '3', '', '', '', 'mymart.asia', 'http://mymart.asia', '其他网站', '###', '', '1', 'd32', '1321768137');
INSERT INTO `yqt_cart` VALUES ('452', 'KrsFh7raEXnwKU07assFHXe9NkXPrvRxPlIV1BadMY4.', '0', null, 'http://http://mymart.asia/index.php?pages=product_view&categories=167&product=1836', 'Cute little Angel Bear clay art ring ', '8.00', '10.00', '1', '', '', '', 'http', 'http://http', '其他网站', '###', '', '1', 'd32', '1321768248');
INSERT INTO `yqt_cart` VALUES ('459', 'L__p5rdrdnWWKVldwdvq1uBaA2K29y69g0_RNOl1skw.', '0', null, 'http://www.360buy.com/product/101609.html', '漫步者（Edifier）多媒体音箱 R201T06（黑色）普通型系列', '165.00', '10.00', '2', '', '', '', 'www.360buy.com', 'http://www.360buy.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1321934719');
INSERT INTO `yqt_cart` VALUES ('460', '', '153', 'xihuan', 'http://item.taobao.com/item.htm?id=10002187225', '爱莱亚全场七折 古希腊原装进口 特级初榨橄榄油750ml', '92.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1cO49XdBqXXaSOT71_042524.jpg_310x310.jpg', '', '', '神马小强', 'http://ailaiya.taobao.com ', '淘宝网', 'www.taobao.com', '', '1', '00', '1321938488');
INSERT INTO `yqt_cart` VALUES ('479', 'FHlwZb0a1VDGyd7GMYF9LsDv-_mrPZLTTH7__A..', '0', null, 'http://item.taobao.com/item.htm?id=12888467923&ref=http%3A%2F%2Fwww.weibo.com%2Fhuangyi3318&ali_trackid=2:mm_29169723_0_0:1320519274_3z2_1448013571', '第伍大道 纯正原单进口 超质感有型韩版修身西装 男士 西服 外套', '145.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1Oo1nXh0MXXaK5EoZ_034002.jpg_310x310.jpg', '', '', '第伍大道', 'http://hotdwdd.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322184321');
INSERT INTO `yqt_cart` VALUES ('457', 'QKBy-IBJotHSowK0fU17OHsFPVHF8cxKpPZVcw..', '148', 'test', 'http://lady.moonbasa.com/p-031611302.html', 'chenyi', '120.00', '10.00', '1', '', '', '', 'lady.moonbasa.com', 'http://lady.moonbasa.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1321854854');
INSERT INTO `yqt_cart` VALUES ('549', 'n6o-Dx80wNJTxnzwKLvG0nIQPbMwm98G7CSRhoK0TEg.', '0', null, 'http://item.taobao.com/item.htm?id=6002396712', '包邮酷睿游戏组装电脑主机 H61 i3 2100 4G独显6750 DIY整机行货', '2388.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1IZNRXiVdXXcwcvAU_014516.jpg_310x310.jpg', '', '', 'pc真好', 'http://pczh.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322557569');
INSERT INTO `yqt_cart` VALUES ('524', '', '170', 'pam19941', 'http://item.taobao.com/item.htm?id=13317873142&', '带3D功能 惠普 ENVY 17 金属外壳 四核i7', '6500.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1epaDXaVeXXcV5.kT_013305.jpg_310x310.jpg', '', '', 'hp918', 'http://hp918.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322436429');
INSERT INTO `yqt_cart` VALUES ('469', 'vc2izUyrPVNia28F5G0COyPaJcDkYhowNZxm1w..', '0', null, 'http://item.taobao.com/item.htm?id=12888467923&ref=http%3A%2F%2Fwww.weibo.com%2Fhuangyi3318&ali_trackid=2:mm_29169723_0_0:1320519274_3z2_1448013571', '第伍大道 纯正原单进口 超质感有型韩版修身西装 男士 西服 外套', '145.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1Oo1nXh0MXXaK5EoZ_034002.jpg_310x310.jpg', '', '', '第伍大道', 'http://hotdwdd.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322098741');
INSERT INTO `yqt_cart` VALUES ('475', 'IUK9C_OsxTyq0NTnWjn6tXHNd2fKswbLfsb2pg..', '0', null, 'http://item.taobao.com/item.htm?id=6971575666', '东方神起允在同款银色大小十字架耳环（对）', '30.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mFBIXmJRXXb63FMW_022345.jpg_310x310.jpg', '', '', 'tina_gy', 'http://shop59517950.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322125942');
INSERT INTO `yqt_cart` VALUES ('474', 'NWvGavYUj63oM7szaFIzTOv8e8aQZZePBLb3DjrYYWA.', '0', null, 'http://item.taobao.com/item.htm?id=8549608067&cm_cat=50072687&source=dou&prt=1322120455782&prc=1', '感恩季 波斯丹顿 男包 商务 牛皮 单肩包 男士公文包手提包B10023', '399.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1ph1BXotOXXaiEmk9_104505.jpg_310x310.jpg', '', '黑色', '波斯丹顿旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322120515');
INSERT INTO `yqt_cart` VALUES ('478', 'IUK9C_OsxTyq0NTnWjn6tXHNd2fKswbLfsb2pg..', '0', null, 'http://item.taobao.com/item.htm?id=12669863365', '6730#韩版女装 2011秋冬款 一字领小露性感金色拉链装饰毛料T恤', '28.00', '20.00', '40', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1FO5XXlBuXXc8Mgvb_094140.jpg_310x310.jpg', '', '', '叶落流云', 'http://shop35846045.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322126072');
INSERT INTO `yqt_cart` VALUES ('477', 'IUK9C_OsxTyq0NTnWjn6tXHNd2fKswbLfsb2pg..', '0', null, 'http://item.taobao.com/item.htm?id=9067953536', '东方神起帆布包～tvxq帆布包～豆花允浩在中帆布包~允在帆布包', '25.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T17uNYXfNnXXbmSUPb_125508.jpg_310x310.jpg', '', '', '我的宝宝的网店', 'http://fans-show.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322126004');
INSERT INTO `yqt_cart` VALUES ('521', '91RJYJ1WDXTuRnSPQsimxDXbW2WZcPmQJNC1mQ..', '0', null, 'http://item.taobao.com/item.htm?id=10505983379&prt=1322316463989&prc=1', 'Tmall狂欢节MODEKUU正品修身长款高端女士皮草羽绒服90%白鸭绒', '698.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1gFudXoNsXXcSRqZ4_052053.jpg_310x310.jpg', '', '', 'modekuu旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322370940');
INSERT INTO `yqt_cart` VALUES ('522', 'R1l3wcaVEHwaAqN-0do7u8PM90DvY_s1LJGo2rftQ8s.', '0', null, 'http://item.taobao.com/item.htm?id=13373716273', 'panli代购程序源码|代购中国程序|开源版', '600.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1keWpXgxjXXa_4U38_071909.jpg_310x310.jpg', '', '', 'yanchunlan88', 'http://shtml.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322390617');
INSERT INTO `yqt_cart` VALUES ('498', '', '167', 'mayatwtest', 'http://item.taobao.com/item.htm?id=10788225641&', '皇家十字绣套件 YX4284 待嫁新娘 DMC品质 招代理', '30.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1fX5hXhRcXXc0HYU0_034429.jpg_310x310.jpg', '', '', '北京皇家玉绣坊专卖店', 'http://shop57877627.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322290141');
INSERT INTO `yqt_cart` VALUES ('534', '', '172', 'Quin', 'http://item.taobao.com/item.htm?id=2695138689&ref=http%3A%2F%2Fsearch8.taobao.com%2Fsearch%3Fq%3D%25B1%25B6%25B6%25F7%25C1%25A6%26commend%3Dall%26ssid%3Ds5-e%26pid%3Dmm_14507416_2297358_8935934&ali_trackid=2:mm_14507416_2297358_8935934,0:1320360438_4k1_18', '本期特惠 倍恩力丰之美强效丰满组合丰满素+血红素+胶原蛋白', '68.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i7/T17s8HXl0bXXbRRvja_091046.jpg_310x310.jpg', '', '', '便宜小店_007', 'http://pianyixiaodian-007.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322517242');
INSERT INTO `yqt_cart` VALUES ('484', 'pfFuXDON7jlB8iyiGaVspgpVG4d6_NK8kwIdTg..', '0', null, 'http://item.taobao.com/item.htm?id=10499287453', 'D', '149.00', '20.00', '3', 'http://img01.taobaocdn.com/bao/uploaded/i1/321269862/T2nFtKXjNXXXXXXXXX_!!321269862.jpg_310x310.jpg', '', '', 'kg516铨', 'http://d-luffy.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322189121');
INSERT INTO `yqt_cart` VALUES ('536', '2ss9apGfyhgFtFSdLhFxMjmv0Su0EKYPvT7_Ew..', '173', 'bobotang', 'http://item.taobao.com/item.htm?id=2695138689&ref=http%3A%2F%2Fsearch8.taobao.com%2Fsearch%3Fq%3D%25B1%25B6%25B6%25F7%25C1%25A6%26commend%3Dall%26ssid%3Ds5-e%26pid%3Dmm_14507416_2297358_8935934&ali_trackid=2:mm_14507416_2297358_8935934,0:1320360438_4k1_18', '本期特惠 倍恩力丰之美强效丰满组合丰满素+血红素+胶原蛋白', '68.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i7/T17s8HXl0bXXbRRvja_091046.jpg_310x310.jpg', '', '', '便宜小店_007', 'http://pianyixiaodian-007.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322519741');
INSERT INTO `yqt_cart` VALUES ('516', '', '167', 'mayatwtest', 'http://item.taobao.com/item.htm?id=6729843275&ref=http%3A%2F%2Fsearch8.taobao.com%2Fsearch%3Fq%3D1%253A64%2B%25BE%25A9%25C9%25CC%2B%25DC%2587%25C4%25A3%2BKYOSHO%2B1%252F64%26commend%3Dall%26ssid%3Ds5-e%26pid%3Dmm_14507416_2297358_8935934&ali_trackid=2:mm_', '1:64 京商 车模 KYOSHO 1/64 阿斯顿马丁DBS Aston Martin DBS', '53.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T1JRBGXnhmXXc_X6k9_103815.jpg_310x310.jpg', '', '', '流烟1118', 'http://carmodel.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322316835');
INSERT INTO `yqt_cart` VALUES ('494', 'ix0PZlzmvwL3X_F-E-Wi86wTSqQzQjCxpjjXNw..', '0', null, 'http://item.taobao.com/item.htm?id=4642394277&ad_id=&am_id=&cm_id=&pm_id=', '〖自动充值〗梦幻国度点卡50元直充/梦幻国度50梦幻点券直充', '45.80', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1ixJGXoNDXXcE_Zk0_034503.jpg_310x310.jpg', '', '', '欧飞网游数卡专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322237213');
INSERT INTO `yqt_cart` VALUES ('493', 'U88VRsixljTaMwDuJQgTdQu3yAI3mbNboeVkGrl5_kY.', '0', null, 'http://item.taobao.com/item.htm?id=4642394277&ad_id=&am_id=&cm_id=&pm_id=', '〖自动充值〗梦幻国度点卡50元直充/梦幻国度50梦幻点券直充', '45.80', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1ixJGXoNDXXcE_Zk0_034503.jpg_310x310.jpg', '', '', '欧飞网游数卡专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322235160');
INSERT INTO `yqt_cart` VALUES ('492', '-w1xIRmtwvJtzdrJtn3knvbby9wf_w1PfoR8Kg..', '165', 'luca168', 'http://item.taobao.com/item.htm?id=8234889161&cm_cat=50032079&pm2=1&source=dou&prt=1322208978131&prc=1', '【Tmall狂欢节】no1dara韩版立领修身男装呢大衣男士风衣外套', '258.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T16yWtXnVSXXbj4vU5_055628.jpg_310x310.jpg', '', '', 'no1dara旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322209003');
INSERT INTO `yqt_cart` VALUES ('546', '', '158', 'teamilk', 'http://item.taobao.com/item.htm?id=14362472546&cm_cat=50029582', '年终大促.衣宝贝◆灵动兔绒圆领拼兔毛拼蕾丝蝴蝶结毛呢大衣③', '439.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1D4SBXmVWXXXJQdA1_040600.jpg_310x310.jpg', '', '', 'wencq1210', 'http://ebabyheaven.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322551192');
INSERT INTO `yqt_cart` VALUES ('547', '', '158', 'teamilk', 'http://item.taobao.com/item.htm?id=14362472546&cm_cat=50029582', '年终大促.衣宝贝◆灵动兔绒圆领拼兔毛拼蕾丝蝴蝶结毛呢大衣③', '439.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1D4SBXmVWXXXJQdA1_040600.jpg_310x310.jpg', '', '', 'wencq1210', 'http://ebabyheaven.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322551237');
INSERT INTO `yqt_cart` VALUES ('548', '_l06Wn8tLcQ6i462tobf9aOVC37bZ2M93XK8wI58u3I.', '0', null, 'http://item.taobao.com/item.htm?id=14087772242&ali_refid=a3_420982_1007:1102581346:7:f64303eea9bd2974909956929743f117:a69a77dd8b90879d57e0c3c5de33a606&ali_trackid=1_a69a77dd8b90879d57e0c3c5de33a606', '【天使真爱】2011冬装新款甜美风珍珠装饰毛线+网纱双层短裙 1478', '79.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1KQOxXmFQXXa0Ips9_072250.jpg_310x310.jpg', '', '', '天使真爱77', 'http://tsza77.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322556640');
INSERT INTO `yqt_cart` VALUES ('550', 'n6o-Dx80wNJTxnzwKLvG0nIQPbMwm98G7CSRhoK0TEg.', '0', null, 'http://item.taobao.com/item.htm?id=10807792180', '全新正品iiyama 饭山 E2008HDD 20寸液晶显示器 节能 20寸宽屏', '688.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1QgmgXmFuXXaEToEU_015957.jpg_310x310.jpg', '', '', 'pc真好', 'http://pczh.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322557685');
INSERT INTO `yqt_cart` VALUES ('551', 'n6o-Dx80wNJTxnzwKLvG0nIQPbMwm98G7CSRhoK0TEg.', '0', null, 'http://item.taobao.com/item.htm?id=10884310570', '★PC真好★华硕KM', '65.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1qzihXoBuXXakEsMT_010923.jpg_310x310.jpg', '', '', 'pc真好', 'http://pczh.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322557698');
INSERT INTO `yqt_cart` VALUES ('552', 'wXaQEQD48RrmSKmbDAXOosGF0GcSZFGc6T3aog..', '0', null, 'http://item.taobao.com/item.htm?id=6002396712', '包邮酷睿游戏组装电脑主机 H61 i3 2100 4G独显6750 DIY整机行货', '2388.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1IZNRXiVdXXcwcvAU_014516.jpg_310x310.jpg', '', '', 'pc真好', 'http://pczh.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322565814');
INSERT INTO `yqt_cart` VALUES ('553', 'x64FFBOvo3FTJSFkNll-kdPWefkCATdu4UwUmuFmlmQ.', '0', null, 'http://item.taobao.com/item.htm?id=12706709846', 'JUNJOY怡君 2011甜美淑女牛皮靴子女式百搭兔毛坡跟短靴', '298.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1vzKoXoJ6XXXptmE1_042334.jpg_310x310.jpg', '', '', 'junjoy旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322568295');
INSERT INTO `yqt_cart` VALUES ('555', 'hgsCYEt_V632ux51RF0ROH9ib88As3oce2vy4Ht7y2U.', '0', null, 'http://item.taobao.com/item.htm?id=9733373973', '红酒木瓜靓汤正品官网送丰胸精油 红酒木瓜汤正品 丰胸产品包邮', '50.00', '20.00', '10', 'http://img02.taobaocdn.com/bao/uploaded/i2/T16qasXmptXXXiracW_022412.jpg_310x310.jpg', '', '', '孝先不忘', 'http://amy5.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322615656');
INSERT INTO `yqt_cart` VALUES ('556', 'hgsCYEt_V632ux51RF0ROH9ib88As3oce2vy4Ht7y2U.', '0', null, 'http://item.taobao.com/item.htm?id=13083299569&', '乐妇源缩阴丹 养阴宝缩阴产品效果排行榜缩阴正品排行第一', '16.00', '20.00', '10', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1W4SrXd8FXXXW_fvb_123722.jpg_310x310.jpg', '', '', '孝先不忘', 'http://amy5.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322615688');
INSERT INTO `yqt_cart` VALUES ('558', '', '174', 'z8167075', 'http://item.taobao.com/item.htm?id=12564978805&ali_refid=a3_419252_1006:1103264874:6:%C9%CC%CE%F1:9b50a6f5abee6c7e3e0110ef211b55fd&ali_trackid=1_9b50a6f5abee6c7e3e0110ef211b55fd', '秋冬新款 日常 休闲男鞋 商务正装 真牛皮鞋 潮流大头鞋子男', '178.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1NzalXc8eXXXGrkI1_042102.jpg_310x310.jpg', '', '', 'auxtun旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322633411');
INSERT INTO `yqt_cart` VALUES ('559', '', '174', 'z8167075', 'http://item.taobao.com/item.htm?id=12564978805&ali_refid=a3_419252_1006:1103264874:6:%C9%CC%CE%F1:9b50a6f5abee6c7e3e0110ef211b55fd&ali_trackid=1_9b50a6f5abee6c7e3e0110ef211b55fd', '秋冬新款 日常 休闲男鞋 商务正装 真牛皮鞋 潮流大头鞋子男', '178.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1NzalXc8eXXXGrkI1_042102.jpg_310x310.jpg', '', '', 'auxtun旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322633413');
INSERT INTO `yqt_cart` VALUES ('560', '', '174', 'z8167075', 'http://item.taobao.com/item.htm?id=12564978805&ali_refid=a3_419252_1006:1103264874:6:%C9%CC%CE%F1:9b50a6f5abee6c7e3e0110ef211b55fd&ali_trackid=1_9b50a6f5abee6c7e3e0110ef211b55fd', '秋冬新款 日常 休闲男鞋 商务正装 真牛皮鞋 潮流大头鞋子男', '178.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1NzalXc8eXXXGrkI1_042102.jpg_310x310.jpg', '', '', 'auxtun旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322633477');
INSERT INTO `yqt_cart` VALUES ('561', '', '158', 'teamilk', 'http://item.taobao.com/item.htm?id=12359528950', '手提包韩版2011新款男包包时尚单肩包商务休闲包旅行包斜挎包潮包', '160.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/655785612/T2TFtVXcpaXXXXXXXX_!!655785612.jpg_310x310.jpg', '', '', '家维尚品旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322635700');
INSERT INTO `yqt_cart` VALUES ('564', '91RJYJ1WDXTuRnSPQsimxDXbW2WZcPmQJNC1mQ..', '0', null, 'http://item.taobao.com/item.htm?id=12661884710&profileId=&spm=1007.1.2.3001', '品牌特卖 伊芙丽 【伊分】秋装新品格纹 长袖 风衣1976456', '980.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1A61DXiFqXXbRxb3U_014049.jpg_310x310.jpg', '', '', '伊芙丽旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322650345');
INSERT INTO `yqt_cart` VALUES ('567', 't52uFz4JYuNm29ItGL4gQ2xObNFpT4tUkcEz6g..', '0', null, 'http://item.taobao.com/item.htm?id=10884310570', '★PC真好★华硕KM', '65.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1qzihXoBuXXakEsMT_010923.jpg_310x310.jpg', '', '', 'pc真好', 'http://pczh.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322660086');
INSERT INTO `yqt_cart` VALUES ('565', 'cFAq38yw4CWGQhjbqdvkzZZcKQttIaJQT8yNoQ..', '0', null, 'http://ju.atpanel.com/?url=http://item.taobao.com/item.htm?id=10308821018&ad_id=&am_id=&cm_id=&pm_id=1500206164949e8479ce', 'JF 双人床 床 1.8米 特价 真皮床 皮床 软床 简约 A8099', '3158.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1T5OfXkxiXXbPrubX_084657.jpg_310x310.jpg', '1800mm2000mm', '', 'jf家居旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322659859');
INSERT INTO `yqt_cart` VALUES ('566', 'cFAq38yw4CWGQhjbqdvkzZZcKQttIaJQT8yNoQ..', '0', null, 'http://detail.taobao.com/item.htm?id=10308821018&prt=1322659755829&prc=1', 'JF 双人床 床 1.8米 特价 真皮床 皮床 软床 简约 A8099', '3158.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1T5OfXkxiXXbPrubX_084657.jpg_310x310.jpg', '1800mm2000mm', '', 'jf家居旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322659893');
INSERT INTO `yqt_cart` VALUES ('575', '', '176', 'nihaoma', 'http://www.szzwch.com/Sale/GoodsDes.aspx?GoodsID=579', 'http://www.szzwch.com/Sale/GoodsDes.aspx?GoodsID=579', '8800.00', '10.00', '1', '', '', '', 'www.szzwch.com', 'http://www.szzwch.com', '其他网站', '###', '', '1', '请选填颜色、尺寸等要求！', '1322709449');
INSERT INTO `yqt_cart` VALUES ('576', '', '176', 'nihaoma', 'http://item.taobao.com/item.htm?id=9746169529', '98元包邮/易碎贴/易碎标签/警示标签/易碎品标签/不干胶标签/贴纸', '0.03', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1nIhvXfVGXXcrvT3__080639.jpg_310x310.jpg', '', '', '97兄商行', 'http://wyjd.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1322713152');
INSERT INTO `yqt_cart` VALUES ('579', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?spm=110-18l6-233Vr.5w82-3NP5n.5046926764&id=14267116832&', '圆领开衫泡泡袖长款修身毛呢大衣', '169.50', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T19IyyXnVnXXXSoCg4_054110.jpg_310x310.jpg', '2', '1', '自由飞翔528', 'http://aili365.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '1', '1323418613');
INSERT INTO `yqt_cart` VALUES ('580', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?spm=110-18l6-233Vr.5w82-3NP5n.5046926764&id=13524479622&', '秋冬新款女装 大码 韩版 独特毛织翻领羊毛呢子大衣 保暖帅气', '165.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1BpeAXfdkXXbo7271_041213.jpg_310x310.jpg', '', '', '自由飞翔528', 'http://aili365.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1323418645');
INSERT INTO `yqt_cart` VALUES ('584', 'DB4mBGHo8diu8XoRmMm11_hOEdS7b1RMFGmNAg..', '0', null, 'http://item.taobao.com/item.htm?id=15199648413', 'O.SA春装2012新款品质女装韩版大码小西装春秋装新品短外套W13254', '168.00', '12.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T16JGRXhpvXXbui6A4_053447.jpg', 'L%u73B0%u8D27', '%u7B2C2%u4EE3%u53CC%', 'osa品牌服饰旗舰店', 'http://shop57299937.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'color:%u7B2C2%u4EE3%u53CC%u9762%u7ED2%u5462--%u6DF1%u7070size:L%u73B0%u8D27', '1331716496');
INSERT INTO `yqt_cart` VALUES ('585', 'DB4mBGHo8diu8XoRmMm11_hOEdS7b1RMFGmNAg..', '0', null, 'http://item.taobao.com/item.htm?id=15199648413', 'O.SA春装2012新款品质女装韩版大码小西装春秋装新品短外套W13254', '168.00', '12.00', '2', 'http://img03.taobaocdn.com/bao/uploaded/i3/T16JGRXhpvXXbui6A4_053447.jpg', 'L%u73B0%u8D27', '%u7B2C2%u4EE3%u53CC%', 'osa品牌服饰旗舰店', 'http://shop57299937.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'color:%u7B2C2%u4EE3%u53CC%u9762%u7ED2%u5462--%u6DF1%u7070size:L%u73B0%u8D27', '1331716508');
INSERT INTO `yqt_cart` VALUES ('586', 'DB4mBGHo8diu8XoRmMm11_hOEdS7b1RMFGmNAg..', '0', null, 'http://item.taobao.com/item.htm?id=15199648413', 'O.SA春装2012新款品质女装韩版大码小西装春秋装新品短外套W13254', '168.00', '12.00', '2', 'http://img03.taobaocdn.com/bao/uploaded/i3/T16JGRXhpvXXbui6A4_053447.jpg', 'L%u73B0%u8D27', '%u7B2C2%u4EE3%u53CC%', 'osa品牌服饰旗舰店', 'http://shop57299937.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'color:%u7B2C2%u4EE3%u53CC%u9762%u7ED2%u5462--%u6DF1%u7070size:L%u73B0%u8D27', '1331716542');
INSERT INTO `yqt_cart` VALUES ('587', 'DB4mBGHo8diu8XoRmMm11_hOEdS7b1RMFGmNAg..', '0', null, 'http://item.taobao.com/item.htm?id=15199648413', 'O.SA春装2012新款品质女装韩版大码小西装春秋装新品短外套W13254', '168.00', '12.00', '2', 'http://img03.taobaocdn.com/bao/uploaded/i3/T16JGRXhpvXXbui6A4_053447.jpg', 'L%u73B0%u8D27', '%u7B2C2%u4EE3%u53CC%', 'osa品牌服饰旗舰店', 'http://shop57299937.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'color:%u7B2C2%u4EE3%u53CC%u9762%u7ED2%u5462--%u6DF1%u7070size:L%u73B0%u8D27', '1331716568');
INSERT INTO `yqt_cart` VALUES ('588', 'DB4mBGHo8diu8XoRmMm11_hOEdS7b1RMFGmNAg..', '0', null, 'http://item.taobao.com/item.htm?id=15199648413', 'O.SA春装2012新款品质女装韩版大码小西装春秋装新品短外套W13254', '168.00', '12.00', '2', 'http://img03.taobaocdn.com/bao/uploaded/i3/T16JGRXhpvXXbui6A4_053447.jpg', 'L%u73B0%u8D27', '%u7B2C2%u4EE3%u53CC%', 'osa品牌服饰旗舰店', 'http://shop57299937.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'color:%u7B2C2%u4EE3%u53CC%u9762%u7ED2%u5462--%u6DF1%u7070size:L%u73B0%u8D27', '1331717411');
INSERT INTO `yqt_cart` VALUES ('589', 'DB4mBGHo8diu8XoRmMm11_hOEdS7b1RMFGmNAg..', '0', null, 'http://item.taobao.com/item.htm?id=15199648413', 'O.SA春装2012新款品质女装韩版大码小西装春秋装新品短外套W13254', '168.00', '12.00', '2', 'http://img03.taobaocdn.com/bao/uploaded/i3/T16JGRXhpvXXbui6A4_053447.jpg', 'L%u73B0%u8D27', '%u7B2C2%u4EE3%u53CC%', 'osa品牌服饰旗舰店', 'http://shop57299937.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'color:%u7B2C2%u4EE3%u53CC%u9762%u7ED2%u5462--%u6DF1%u7070size:L%u73B0%u8D27', '1331717522');
INSERT INTO `yqt_cart` VALUES ('590', 'F6x0xFcD9EaY5EkeZV71je-3SXdjNdYzP_Ck7g..', '178', 'xiaozhang', 'http://item.taobao.com/item.htm?id=15199648413', 'O.SA春装2012新款品质女装韩版大码小西装春秋装新品短外套W13254', '9.50', '12.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T16JGRXhpvXXbui6A4_053447.jpg', '%u957F%u6B3E%uFF08%u', '%u6D45%u7D2B%u8272', 'osa品牌服饰旗舰店', 'http://shop57299937.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'color:%u6D45%u7D2B%u8272size:%u957F%u6B3E%uFF08%u8863%u957F%u7EA665cm%uFF09', '1331869134');
INSERT INTO `yqt_cart` VALUES ('591', 'F6x0xFcD9EaY5EkeZV71je-3SXdjNdYzP_Ck7g..', '178', 'xiaozhang', 'http://item.taobao.com/item.htm?id=15199648413', 'O.SA春装2012新款品质女装韩版大码小西装春秋装新品短外套W13254', '39.80', '12.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T16JGRXhpvXXbui6A4_053447.jpg', '', '', 'osa品牌服饰旗舰店', 'http://shop57299937.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'color:size:', '1331869210');
INSERT INTO `yqt_cart` VALUES ('593', '7uydxxBhR5Xyd8OX2I_uNucBgS3UcAR_', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=3019846098', '【满百包邮】幸运星耳钉 放羊的星星纯银耳钻', '21.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1QEJFXh0fXXcrOPsZ_033051.jpg_310x310.jpg', '', '', '清淡到如此', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1334043691');
INSERT INTO `yqt_cart` VALUES ('597', '', '180', 'hihihaha', 'http://item.taobao.com/item.htm?id=14935151937&spm=2014.12585336.0.0', '【天天特价】时尚潮流潮鞋日常休闲鞋韩版男鞋子真皮板鞋透气鞋-3', '248.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1G_S2XjhsXXbMzjcW_024144.jpg_310x310.jpg', '', '', 'lingganxl', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1334823855');
INSERT INTO `yqt_cart` VALUES ('598', '', '180', 'hihihaha', 'http://item.taobao.com/item.htm?id=14935151937&spm=2014.12585336.0.0', '【天天特价】时尚潮流潮鞋日常休闲鞋韩版男鞋子真皮板鞋透气鞋-3', '248.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1G_S2XjhsXXbMzjcW_024144.jpg_310x310.jpg', '', '', 'lingganxl', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1334823880');
INSERT INTO `yqt_cart` VALUES ('599', '', '180', 'hihihaha', 'http://item.taobao.com/item.htm?id=14935151937&spm=2014.12585336.0.0', '【天天特价】时尚潮流潮鞋日常休闲鞋韩版男鞋子真皮板鞋透气鞋-3', '248.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1G_S2XjhsXXbMzjcW_024144.jpg_310x310.jpg', '', '', 'lingganxl', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1334823967');
INSERT INTO `yqt_cart` VALUES ('600', '', '180', 'hihihaha', 'http://item.taobao.com/item.htm?id=14935151937&spm=2014.12585336.0.0', '【天天特价】时尚潮流潮鞋日常休闲鞋韩版男鞋子真皮板鞋透气鞋-3', '248.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1G_S2XjhsXXbMzjcW_024144.jpg_310x310.jpg', '', '', 'lingganxl', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1334824053');
INSERT INTO `yqt_cart` VALUES ('601', '', '180', 'hihihaha', 'http://item.taobao.com/item.htm?id=5080933696&spm=2014.12585336.0.0', '飞利浦 SHE3580/81/82/83/84入耳式耳塞 炫丽色彩 官方授权', '46.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1YSeUXklrXXXOIwET_012020.jpg_310x310.jpg', '', '', '最终幻想d', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '额外', '1334890639');
INSERT INTO `yqt_cart` VALUES ('602', '', '180', 'hihihaha', 'http://item.taobao.com/item.htm?id=5080933696&spm=2014.12585336.0.0', '飞利浦 SHE3580/81/82/83/84入耳式耳塞 炫丽色彩 官方授权', '46.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1YSeUXklrXXXOIwET_012020.jpg_310x310.jpg', '1', '1', '最终幻想d', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '89697987', '1334890663');
INSERT INTO `yqt_cart` VALUES ('603', '', '177', 'liulei634', 'http://auction1.paipai.com/4565f63200000000040100000c97f1f0', '【时尚计划】卡帝乐鳄鱼男士短袖T恤原价599元217C2595 &nbsp;   ', '119.00', '0.00', '1', 'null', '', '', '855008581', '', '拍拍1', 'www.paipai.com', '', '1', '请选填颜色、尺寸等要求！', '1335237052');
INSERT INTO `yqt_cart` VALUES ('604', '', '182', 'test9998', 'http://item.taobao.com/item.htm?id=16733496038&spm=2014.12585336.0.0', '2012新款中老年服装中年女装大码春装七分袖T恤衬衫时尚妈妈装', '68.00', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/116293862/T2I4XXXmFNXXXXXXXX_!!116293862.jpg_310x310.jpg', '', '', 'zxar3666', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '1337095559');
INSERT INTO `yqt_cart` VALUES ('607', 'iQu7znEms5mhZpgkBeICn18vL7WmS_Zz', '0', null, 'http://item.taobao.com/item.htm?id=9995201122&spm=2014.12110377.0.0', '【限时37折】缪诗本色诱惑深V性感豹纹内衣 一片式无痕超聚拢文胸', '158.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T18yjNXmFXXXaRzEza_122531.jpg_310x310.jpg', '', '', '私房小女', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1355994163');
INSERT INTO `yqt_cart` VALUES ('613', '', '186', 'sdjlove', 'http://item.taobao.com/item.htm?id=17489022622&spm=2014.12110377.0.0', '淘宝代购程序 淘宝代购 代购源码 代购系统 全球代购系统', '800.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/10899020238726483/T1G6hEXxpdXXXXXXXX_!!2-item_pic.png_310x310.jpg', '', '', '阿衣莱靓衣坊', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1376973799');
INSERT INTO `yqt_cart` VALUES ('627', '', '194', 'test', 'http://item.taobao.com/item.htm?id=17489022622&spm=2014.21554143.0.0', '淘宝代购程序 淘宝代购 代购源码 代购系统 全球代购系统', '800.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/10899029681131488/T1I8rZFoJaXXXXXXXX_!!2-item_pic.png_310x310.jpg', '', '', '阿衣莱靓衣坊', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1384601437');
INSERT INTO `yqt_cart` VALUES ('628', 'kEfOTxBClGXjVh6GxW1Gi8IF3ABcEgOF23m70Q..', '0', null, 'http://item.taobao.com/item.htm?id=10704659467&spm=2014.21554143.0.0', '正品 爱车安GM901 汽车摩托车GPS定位器跟踪器卫星追踪防盗报警器', '138.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/17825028263727319/T15wS0FgVaXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'liuasz', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1387691771');
INSERT INTO `yqt_cart` VALUES ('637', 'w3Xb8TsyDnmSkrB5gVvjS1-eFKF4O28_GNAyUrGd1G8.', '197', '测试', 'http://item.taobao.com/item.htm?id=18152462522&spm=2014.21554143.0.0', '新款骆驼牌正品男式鞋商务休闲英伦皮鞋男真皮低帮鞋82280600', '191.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/18653027177897418/T1poitFaNgXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '随行201211', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1393320796');
INSERT INTO `yqt_cart` VALUES ('638', '', '197', '测试', 'http://item.taobao.com/item.htm?id=19647090444&spm=2014.21554143.0.0', '2014春季新品男士真皮豆豆鞋 男潮鞋韩版休闲驾车鞋潮流男单鞋子', '128.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1lhV5FuRaXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '淘气衣拉客', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1393320996');
INSERT INTO `yqt_cart` VALUES ('639', 'CO8NvSGfGdtIdW0kaoD9iLFd9Yj8kVtgOrfZnw..', '198', 'lin65487136', 'http://item.taobao.com/item.htm?id=15948162178&spm=2014.21554143.0.0', '磨人精 疯果正品 原创 创意长袖怪兽 可爱 情侣衫卫衣', '168.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/13551019289711155/T1IxAkXdNhXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'lianshengjiupin', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1396269040');
INSERT INTO `yqt_cart` VALUES ('640', '', '198', 'lin65487136', 'http://item.taobao.com/item.htm?id=37879109868&spm=2014.21554143.0.0', '14春夏 欧美外贸原单 高腰裹胸裙连衣裙及踝长裙 海边沙滩度假', '98.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1KaaZFq0aXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'jumpony', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1396269141');
INSERT INTO `yqt_cart` VALUES ('641', 't6tIHWSUnYsN5VacnswGfn0rQ8HoOvUh00M4Gg..', '0', null, 'http://item.taobao.com/item.htm?spm=a230r.1.14.28.KQxN07&id=36091882535&_u=bjhdeee9a9e', 'JCPONY帅t les tt束胸套头短款魔术贴tt加强无绷带运动束胸衣透气', '89.40', '10.00', '1', '', 'S', '白色', 'item.taobao.com', 'http://item.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1399796188');
INSERT INTO `yqt_cart` VALUES ('664', 'ESJT4H32cVB9AOVqi-CoZSiBTBIqpA5t6yKZ-bLE6qE.', '0', null, 'http://item.taobao.com/item.htm?id=39924079303&spm=2014.21554143.0.0', '2014夏装新款 夜店性感 V领露背 雪纺拼接连衣裙', '60.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1RqQ.Ft0dXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '朵曼服饰', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1404616640');
INSERT INTO `yqt_cart` VALUES ('661', 'xvGBATJ5Kh9alngSAOpQpd9bfaEJfUf2FmhmqQ..', '200', 'IMJACKY', 'http://item.taobao.com/item.htm?id=12644026027&spm=2014.21554143.0.0', '艾奔超大容量手提旅行包男女商务出差行李包单肩短途旅行袋旅游包', '278.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/TB1ZGPPXXXXXXaxdpXXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'aspensport旗舰店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1402904445');
INSERT INTO `yqt_cart` VALUES ('662', 'atuebto6_hD4Axan1GQB4MyvV5CLUpUe77L4PR4uWFc.', '0', null, 'http://item.taobao.com/item.htm?id=39251094752&spm=2014.21554143.0.0', '【青集站】简约文艺范透明欧根纱小方领短袖衬衫masu2-017', '139.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1fD64FS0eXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'vivimarsworking', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1404299642');
INSERT INTO `yqt_cart` VALUES ('663', '', '204', 'aaronting87', 'http://item.taobao.com/item.htm?id=37333343329&spm=2014.21554143.0.0', 'PRETTY BALLERINAS漆皮平底麻绳蝴蝶结芭蕾舞女鞋 呛口小辣椒同款', '1173.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1Tvp_Fz0aXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'prettyballerinas旗舰店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1404366204');
INSERT INTO `yqt_cart` VALUES ('667', 'jdHhcR4fkXs9v2cO_HA79p_porYMaByFS4crw09lPlM.', '0', null, 'http://item.taobao.com/item.htm?id=19486451568&spm=2014.21554143.0.0', '淘宝代购系统 俄文代购程序 代购程序 代购网站 代购网站系统', '500.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/10899041856008493/T1jBnTFl8cXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '阿衣莱靓衣坊', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1404799236');

-- ----------------------------
-- Table structure for `yqt_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_coupon`;
CREATE TABLE `yqt_coupon` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(50) NOT NULL,
  `getway` tinyint(3) DEFAULT '1',
  `endtime` int(11) DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  `money` int(5) DEFAULT '0',
  `sellmoney` int(5) DEFAULT NULL,
  `state` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_coupon
-- ----------------------------
INSERT INTO `yqt_coupon` VALUES ('1', '20100813101717512', '1', 'admin', '1', '1284259008', '1281665837', '5', '0', '1');
INSERT INTO `yqt_coupon` VALUES ('2', '20100813103952866', '1', 'admin', '1', '1284259192', '1281667192', '10', '0', '1');
INSERT INTO `yqt_coupon` VALUES ('3', '20100813103954190', '1', 'admin', '1', '1284259194', '1281667194', '10', '0', '1');
INSERT INTO `yqt_coupon` VALUES ('4', '20100813104001547', '1', 'admin', '2', '1285209923', '1281667201', '15', '0', '1');
INSERT INTO `yqt_coupon` VALUES ('5', '20100813104001545', '3', 'lss', '2', '1285209810', '1281667207', '20', '0', '1');
INSERT INTO `yqt_coupon` VALUES ('6', '20100824170632734', '3', 'lss', '1', '1285232792', '1282640792', '5', '0', '3');
INSERT INTO `yqt_coupon` VALUES ('7', '20100824170632186', '3', 'lss', '1', '1285232792', '1282640792', '5', '0', '1');
INSERT INTO `yqt_coupon` VALUES ('8', '20100824170632182', '3', 'lss', '1', '1285232792', '1282640792', '5', '3', '2');
INSERT INTO `yqt_coupon` VALUES ('9', '20100824170905675', '3', 'lss', '1', '1285232945', '1282640945', '5', '3', '2');
INSERT INTO `yqt_coupon` VALUES ('10', '20100824170905902', '3', 'lss', '1', '1285232945', '1282640945', '5', '4', '2');
INSERT INTO `yqt_coupon` VALUES ('11', '20101227150714339', '3', 'lss', '1', '1296025634', '1293433634', '5', null, '3');
INSERT INTO `yqt_coupon` VALUES ('12', '20101227151101303', '3', 'lss', '1', '1296025861', '1293433861', '5', null, '1');
INSERT INTO `yqt_coupon` VALUES ('13', '20101227151101680', '3', 'lss', '1', '1296025861', '1293433861', '5', null, '1');
INSERT INTO `yqt_coupon` VALUES ('14', '20101227151101225', '3', 'lss', '1', '1296025861', '1293433861', '5', null, '3');
INSERT INTO `yqt_coupon` VALUES ('15', '20101227151101230', '3', 'lss', '1', '1296025861', '1293433861', '5', null, '3');
INSERT INTO `yqt_coupon` VALUES ('16', '20110114154750699', '3', 'lss', '1', '1297583270', '1294991270', '20', null, '1');
INSERT INTO `yqt_coupon` VALUES ('17', '20110114154750626', '3', 'lss', '1', '1297583270', '1294991270', '20', null, '1');
INSERT INTO `yqt_coupon` VALUES ('18', '20110114154807647', '3', 'lss', '1', '1297583287', '1294991287', '50', null, '1');
INSERT INTO `yqt_coupon` VALUES ('19', '20110702140430465', '55', 'hanfei', '1', '1312178670', '1309586670', '5', null, '1');
INSERT INTO `yqt_coupon` VALUES ('20', '20111104214941500', '129', 'bobo', '1', '1323006581', '1320414581', '5', null, '1');
INSERT INTO `yqt_coupon` VALUES ('21', '20111128105035756', '164', 'nihao', '1', '1325040635', '1322448635', '50', null, '3');
INSERT INTO `yqt_coupon` VALUES ('22', '20120410095141652', '177', 'liulei634', '1', '1336615694', '1334022701', '5', null, '1');
INSERT INTO `yqt_coupon` VALUES ('23', '20130112182639427', '184', 'dj1jj', '1', '1360578399', '1357986399', '5', '4', '2');
INSERT INTO `yqt_coupon` VALUES ('24', '20130113170730733', '184', 'dj1jj', '1', '1360660050', '1358068050', '10', null, '1');
INSERT INTO `yqt_coupon` VALUES ('25', '20130113170735480', '184', 'dj1jj', '1', '1360660055', '1358068055', '10', null, '1');

-- ----------------------------
-- Table structure for `yqt_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_delivery`;
CREATE TABLE `yqt_delivery` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `areaid` int(11) NOT NULL,
  `areaname` varchar(50) DEFAULT NULL,
  `serverfee` float(10,2) DEFAULT NULL,
  `deliveryname` varchar(50) NOT NULL,
  `senddate` varchar(50) DEFAULT NULL,
  `queryurl` varchar(255) DEFAULT NULL,
  `first_weight` float(10,2) DEFAULT NULL,
  `continue_weight` float(10,2) DEFAULT NULL,
  `first_fee` float(10,2) DEFAULT NULL,
  `continue_fee` float(10,2) DEFAULT NULL,
  `fuel_fee` float(10,2) DEFAULT '0.00',
  `customs_fee` float(10,2) DEFAULT '0.00',
  `state` smallint(5) DEFAULT '1',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_delivery
-- ----------------------------
INSERT INTO `yqt_delivery` VALUES ('11', '22', '中国', '0.00', '韵达快递', '1357990035', 'http://www.yundaex.com/', '10.00', '8.00', '10.00', '8.00', '5.00', '1.00', '1');
INSERT INTO `yqt_delivery` VALUES ('12', '23', '新加坡', '0.00', 'ti', '1389193679', '', '500.00', '500.00', '6.00', '3.00', '0.00', '0.00', '1');
INSERT INTO `yqt_delivery` VALUES ('13', '22', '中国', '0.00', '顺丰', '1402733847', '', '5000.00', '200.00', '15.00', '5.00', '0.00', '0.00', '1');

-- ----------------------------
-- Table structure for `yqt_discount`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_discount`;
CREATE TABLE `yqt_discount` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `flag` char(2) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `seokeywords` varchar(255) DEFAULT NULL,
  `seodescription` varchar(255) DEFAULT NULL,
  `body` text,
  `fromshop` varchar(255) DEFAULT NULL,
  `discounttime` varchar(50) DEFAULT NULL,
  `discounturl` varchar(255) DEFAULT NULL,
  `listorder` smallint(5) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_discount
-- ----------------------------
INSERT INTO `yqt_discount` VALUES ('7', '四叶项链', 'h', '', 'attachment/discount/201111/20111129173056_814.gif', '', '', '丰东股份规范和规范和规划&nbsp;', '', '2012,12,18', '', '0', '1321245344');
INSERT INTO `yqt_discount` VALUES ('8', '大大大大大大大折扣来了！', '', '测试测试简介', 'attachment/discount/201111/20111129172417_130.gif', '', '', '<p>折扣内容</p>', '', '2011.11.15', 'www.xxxxxx.com', '0', '1321348855');

-- ----------------------------
-- Table structure for `yqt_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_favorite`;
CREATE TABLE `yqt_favorite` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `typeid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `goodsurl` varchar(255) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsprice` float(10,2) NOT NULL,
  `goodsimg` varchar(255) DEFAULT NULL,
  `goodsseller` varchar(50) DEFAULT NULL,
  `sellerurl` varchar(255) DEFAULT NULL,
  `goodssite` varchar(50) DEFAULT NULL,
  `siteurl` varchar(255) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_favorite
-- ----------------------------
INSERT INTO `yqt_favorite` VALUES ('119', '184', '0', 'dj1jj', 'http://item.taobao.com/item.htm?id=17592559515&spm=2014.12110377.0.0', '秋冬新款波浪圆领长袖T恤女修身好品质女装打底衫 女 长袖 韩版潮', '19.80', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1.qT4XideXXct_FYb_093015.jpg_310x310.jpg', '大q_小q', 'www.taobao.com', '淘宝网', 'www.taobao.com', '1355207438');
INSERT INTO `yqt_favorite` VALUES ('120', '184', '0', 'dj1jj', 'http://item.taobao.com/item.htm?id=21878624289&spm=2014.12110377.0.0', '预售2012新品韩版修身中长款羽绒服 正品羽绒服女 新款包邮羽绒服', '418.00', 'http://img03.taobaocdn.com/bao/uploaded/i3/17907019096758689/T1gIApXXVdXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '玩家小华', 'www.taobao.com', '淘宝网', 'www.taobao.com', '1357389030');
INSERT INTO `yqt_favorite` VALUES ('121', '184', '0', 'dj1jj', 'http://item.taobao.com/item.htm?id=16171574592&spm=2014.12110377.0.0', '正品 奢华兔毛大毛领 白鸭绒短款羽绒服 女 蕾丝边', '1080.00', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1F4TVXlVdXXbo5U_a_092613.jpg_310x310.jpg', '100e风尚', 'www.taobao.com', '淘宝网', 'www.taobao.com', '1357991204');

-- ----------------------------
-- Table structure for `yqt_goods`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_goods`;
CREATE TABLE `yqt_goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gtypeid` int(11) DEFAULT NULL,
  `usertype` smallint(2) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL COMMENT '当前操作用户',
  `goodsurl` varchar(255) DEFAULT NULL,
  `goodsname` varchar(255) DEFAULT NULL,
  `goodsprice` float(10,2) DEFAULT NULL,
  `goodsseller` varchar(50) DEFAULT NULL,
  `goodsimg` varchar(255) DEFAULT NULL,
  `sellerurl` varchar(255) DEFAULT NULL,
  `shopname` varchar(50) DEFAULT NULL,
  `rindex` tinyint(3) DEFAULT '3',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览数量',
  `buynum` int(11) DEFAULT NULL,
  `why` text,
  `about` text,
  `listorder` int(11) DEFAULT '50',
  `flag` char(2) DEFAULT NULL,
  `Audit` int(2) NOT NULL DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_goods
-- ----------------------------
INSERT INTO `yqt_goods` VALUES ('74', '1', '0', '1', 'admin', 'http://item.taobao.com/item.htm?id=13686819762&cm_cat=50095938', '2011秋冬装新款时尚韩版OL性感呢蕾丝背心裙兔毛肩连身裙连衣裙女', '128.00', '时尚衣橱连锁店', 'attachment/order/201112/20111209160936_890.jpg', 'http://ssyclsd.taobao.com', '淘宝网', '5', '239', '23', '', '', '22', 'c', '1', '1323418176');
INSERT INTO `yqt_goods` VALUES ('73', '1', '0', '1', 'admin', 'http://item.taobao.com/item.htm?id=14690380501&cm_cat=50095938', '1212全民疯抢韩国代购秋冬新款韩版冬季女装玫瑰花蕾丝长袖连衣裙', '199.00', 'lumiaosen', 'attachment/order/201112/20111209160822_998.jpg', 'http://fhrj.taobao.com', '淘宝网', '4', '78', '90', '', '', '11', 'c', '1', '1323418102');
INSERT INTO `yqt_goods` VALUES ('54', '4', '1', '0', 'l8094248', 'http://item.taobao.com/item.htm?id=5057027321', '外出必备 韩版裤脚夹裤夹裤边夹 防裤子过长触地 多色随机', '2.30', 'bigbadbaby', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1zSxyXgXAXXXlgkM0_035848.jpg_310x310.jpg', 'http://yijilai.taobao.com', '淘宝网', '3', '47', '0', '太方便了！', '', '50', 'c', '1', '1294903639');
INSERT INTO `yqt_goods` VALUES ('56', '2', '1', '0', 'l8094248', 'http://item.taobao.com/item.htm?id=3397472098', '热卖秋冬男鞋男士休闲鞋 时尚板鞋37码38码，至45码 偏大一码', '69.00', 'newsmp3', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1mnxMXjxvXXXsP.za_122532.jpg_310x310.jpg', 'http://shop33863738.taobao.com', '淘宝网', '5', '17', '3', '太好了！太好了！太好了！太好了！太好了！太好了！', '', '50', 'c', '1', '1293768562');
INSERT INTO `yqt_goods` VALUES ('50', '2', '1', '0', 'l8094248', 'http://item.taobao.com/item.htm?id=4372352109', '2010冬款 VANS 保暖加厚英伦休闲鞋男鞋子 男士板鞋 火爆热卖', '85.00', '飘渺cheng', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1hONPXeljXXa1n.36_063325.jpg_310x310.jpg', 'http://shop34678553.taobao.com', '淘宝网', '3', '7', '0', '时尚又不是温暖，实在是舒服！', '', '50', 'c', '1', '1293765851');
INSERT INTO `yqt_goods` VALUES ('72', '1', '0', '1', 'admin', 'http://item.taobao.com/item.htm?id=13372021542&cm_cat=50095938', '韩版新品 泡泡袖翻领松紧腰蕾丝花朵棉蕾丝裙Q83', '118.00', '艾薇的衣柜1', 'attachment/order/201112/20111209160737_888.jpg', 'http://hpl888.taobao.com', '淘宝网', '4', '42', '36', '', '', '1', 'c', '1', '1323418057');
INSERT INTO `yqt_goods` VALUES ('58', '10', '0', '1', 'admin', 'http://item.taobao.com/item.htm?id=9995201122&', '一片式文胸 缪诗本色诱惑正品豹纹款性感调整型内衣 无痕文胸', '99.00', '私房小女', 'attachment/order/201106/20110624151243_833.jpg', 'http://mmusestb.taobao.com', '淘宝网', '3', '38', '22', '小M说：\n这款文胸的生产厂家就是为两年前为我们生产一片式文胸的外贸工厂. 这家厂使用专业的进口设备, 专为欧洲大牌定牌生产一片式文胸, 主要出口法国. 欧洲女性崇尚自然胸型', '<p><span style=\"color:#ff3366;font-weight:bold;\">小M说：</span><br /> 这款文胸的生产厂家就是为两年前为我们生产一片式文胸的外贸工厂. 这家厂使用专业的进口设备, 专为欧洲大牌定牌生产一片式文胸, 主要出口法国. 欧洲女性崇尚自然胸型, 很多欧洲一线大牌都使用薄杯, 甚至无模杯蕾丝罩杯, 鸡心位分得比较开. 所以很多MM对我们的老版的一片式文胸的评价是:质量好, 材质一流, 舒服但聚拢效果不明显. 所以这次在设计新款的时候, 小M家设计师特意按亚洲女性的身材重新设计了版型,<strong>在秉承一惯的高级工艺和材质基础上, 新改良的<span style=\"color:#ff3399;\">超强聚拢版</span>一定会给你带来更完美的体验.</strong><br /> <br /> 这是MM对我们老版一片式的评价, 因为大家对我们质量的任可, 小M才下决心推出改良版,毕竟一片式文胸的面料和生产成本很高的, 如今的淘宝低价横行, 没有MM们的好评, 小M还真是不敢轻易下定单呀.<br /> </p> <p><span style=\"color:#333333;font-weight:bold;\">关于面料:</span><br /> 一片式内衣的舒适度是内衣中最好的. 整个文胸 除搭扣处没有一个线头，所有接口都是采用一片式热压技术一次成型压制出来的, 连钢圈处也能做到平滑过渡.<strong>欧洲进口的面料, 如同第二层肌肤般柔滑透气</strong>. 这样质量的文胸在商场里起码是三百多的价格哦.</p> <p><span style=\"color:#333333;font-weight:bold;\">关于效果:</span><br /> 一片式的好处就不多说了, 消除了普通文胸的压力点, 穿起来自然是非常舒服的. 要告诉大家的是这次采用的<strong>掌托式立体模杯, 聚拢效果超强</strong>, 再加上加高土台,<strong>穿上去A杯小胸MM也可以变身“乳沟皇后”</strong>哦. 11CM宽的侧比, 收副乳也不用担心小肉肉勒成一节节的尴尬.到底效果有多好, 大家还是看模特实拍图吧, 我家模特Nana 穿了这款简直是劲爆哦。曼妮芬有款秘密武器聚拢杯型就是和这款一样的。</p> <p>裤子算小平角低腰款，M适合臀围90以内裤子26以内，L适合臀围97以内裤子29以内</p>', '50', 'c', '1', '1308899960');
INSERT INTO `yqt_goods` VALUES ('92', '2', '0', '1', 'admin', 'http://item.taobao.com/item.htm?id=17489022622&spm=2014.21554143.0.0', '淘宝代购程序 淘宝代购 代购源码 代购系统 全球代购系统', '800.00', '阿衣莱靓衣坊', 'attachment/order/201311/20131116195303_900.png', 'www.taobao.com', '淘宝网', '1', '12', '0', '', '', '0', '', '1', '1384602783');
INSERT INTO `yqt_goods` VALUES ('66', '10', '0', '1', 'admin', 'http://item.taobao.com/item.htm?id=10008349082&', '【淘金币】缪诗 正品 娇鹿迷情系带挂脖超聚拢文胸', '89.00', '私房小女', 'attachment/order/201106/20110624153012_132.jpg', 'http://mmusestb.taobao.com', '淘宝网', '1', '64', '22', '【淘金币】缪诗 正品 娇鹿迷情系带挂脖超聚拢文胸 ', '【淘金币】缪诗 正品 娇鹿迷情系带挂脖超聚拢文胸', '1', 'c', '1', '1308900636');
INSERT INTO `yqt_goods` VALUES ('67', '10', '0', '1', 'admin', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', '98.00', '私房小女', 'attachment/order/201106/20110624153121_413.jpg', 'http://mmusestb.taobao.com', '淘宝网', '1', '147', '24', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 ', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套 缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', '1', 'c', '1', '1355661332');
INSERT INTO `yqt_goods` VALUES ('80', '1', '1', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=15464796540', '2012春装新款女装 百搭打底衫 短款 小背心小吊带 韩版 女', '35.00', '小米户旗舰店', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1PwGYXd4sXXc0IEE._083654.jpg_310x310.jpg', '', '淘宝网', '4', '13', null, '很好啊', null, '50', 'h', '1', '1332381129');
INSERT INTO `yqt_goods` VALUES ('78', '4', '1', '177', 'liulei634', 'http://detail.taobao.com/item.htm?id=3012494263', 'T【奥朵】欧式时尚田园吊灯具30024客厅灯餐厅厨房灯卧室书房灯饰', '289.00', '奥朵家饰用品旗舰店', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1SSKOXoXiXXbOOlA1_042212.jpg_310x310.jpg', '', '淘宝网', '5', '32', null, '居家产品真的不错', null, '50', 'h', '1', '1332233557');
INSERT INTO `yqt_goods` VALUES ('79', '1', '1', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=10650675644', '春装新款吊带背心韩版女背心女款蕾丝花边秋装秋宽松吊带衫打底', '18.00', '刘乐初', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1jKWTXaBtXXc1VxbX_115350.jpg_310x310.jpg', '', '淘宝网', '4', '27', null, '很不错的杉杉', null, '50', 'h', '1', '1332381070');
INSERT INTO `yqt_goods` VALUES ('81', '1', '1', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=10355874352', '2012夏装 韩版时尚正品纯棉针织挂脖打底吊带衫 吊带背心 2件包邮', '49.00', 'hao121265', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1hIeRXfFhXXbSwMw5_055713.jpg_310x310.jpg', '', '淘宝网', '4', '11', null, '很不错的衣服啊', null, '50', 'h', '1', '1332381175');
INSERT INTO `yqt_goods` VALUES ('83', '2', '1', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=13041841643', '2012春季新款女包真皮流苏亮片大包黑色时尚链条单肩包斜挎包包邮', '178.00', 'budutu', 'http://img04.taobaocdn.com/bao/uploaded/i8/T1DamlXa8iXXbfrf7Z_032326.jpg_310x310.jpg', '', '淘宝网', '4', '28', null, '不错的漂亮包包', null, '50', 'h', '1', '1332381267');
INSERT INTO `yqt_goods` VALUES ('85', '2', '1', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=14501719672', '2012春季新款中年女包中老年女包妈妈包包女士斜挎包复古小包韩版', '28.00', 'wjmud2', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1Gn1TXc0oXXXcN3c7_064537.jpg_310x310.jpg', '', '淘宝网', '3', '88', null, '不错的包包', null, '50', 'h', '1', '1332381439');
INSERT INTO `yqt_goods` VALUES ('86', '2', '1', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=15972868539', '唯玫雅 2012新款女包 时尚珍珠流苏牛皮韩版链条包真皮女包 包邮', '297.00', 'wanghaijunhw', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1xYqZXcXXXXc4_cZ9_103013.jpg_310x310.jpg', '', '淘宝网', '4', '36', null, '很不错的宝宝', null, '50', 'h', '1', '1332401122');
INSERT INTO `yqt_goods` VALUES ('87', '1', '0', '177', 'liulei634', 'http://item.taobao.com/item.htm?spm=1103Kk9F.1-38ZI.3-5pTYAM&id=15689016307', '韩国进口 糖果色撞色小纽扣不规则下摆宽松斗篷款衬衫 嫩黄/薄荷', '118.00', '菟芭比', 'attachment/order/201203/20120322161214_583.jpg', '', '淘宝网', '1', '41', '0', '呵呵不错啊', '', '0', '', '1', '1332403934');
INSERT INTO `yqt_goods` VALUES ('88', '5', '0', '1', 'admin', 'http://item.taobao.com/item.htm?spm=110-16Vi-21yYc.5p_w-2C148.bTBQ-5qb3ek&id=13839205996&is_start=true', '姐妹良品独家施华洛水晶多色幸福魔方方块字母吊牌水晶戒指 韩版', '19.50', '路过十里铺', 'attachment/order/201203/20120322162304_407.jpg', '', '淘宝网', '3', '31', '0', '呵呵真的很不错啊', '', '0', '', '1', '1332404584');
INSERT INTO `yqt_goods` VALUES ('89', '1', '1', '184', 'dj1jj', 'http://item.taobao.com/item.htm?id=17592559515&spm=2014.12110377.0.0', '秋冬新款波浪圆领长袖T恤女修身好品质女装打底衫 女 长袖 韩版潮', '19.80', '大q_小q', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1.qT4XideXXct_FYb_093015.jpg_310x310.jpg', 'www.taobao.com', '淘宝网', '5', '74', null, '很便宜！', null, '50', 'h', '0', '1355207465');
INSERT INTO `yqt_goods` VALUES ('90', '1', '1', '184', 'dj1jj', 'http://item.taobao.com/item.htm?id=16171574592&spm=2014.12110377.0.0', '正品 奢华兔毛大毛领 白鸭绒短款羽绒服 女 蕾丝边', '398.00', '100e风尚', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1F4TVXlVdXXbo5U_a_092613.jpg_310x310.jpg', 'www.taobao.com', '淘宝网', '5', '37', null, '很有型啊啊！', null, '50', 'h', '0', '1357991230');
INSERT INTO `yqt_goods` VALUES ('91', '2', '0', '1', 'admin', 'http://item.taobao.com/item.htm?id=12644026027&spm=2014.12110377.0.0', '艾奔超大容量手提旅行包男女商务出差行李包单肩短途旅行袋旅游包', '278.00', 'aspensport旗舰店', 'attachment/order/201309/20130916115249_243.jpg', 'www.taobao.com', '淘宝网', '5', '12', '0', '', '', '0', '', '1', '1379303569');
INSERT INTO `yqt_goods` VALUES ('93', '1', '1', '201', 'testtest', 'http://item.taobao.com/item.htm?id=39359588218&spm=2014.21554143.0.0', '丹衣阁 下摆荷叶边雪纺衫后背拉链短袖欧根纱上衣 9号10点', '118.00', 'c_fj820917', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1HRcUFNlXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', 'www.taobao.com', '淘宝网', '5', '8', null, '简约', null, '50', 'h', '0', '1402716716');
INSERT INTO `yqt_goods` VALUES ('94', '1', '1', '201', 'testtest', 'http://item.taobao.com/item.htm?id=39251094752&spm=2014.21554143.0.0', '【青集站】简约文艺范透明欧根纱小方领短袖衬衫masu2-017', '132.00', 'vivimarsworking', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1fD64FS0eXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', 'www.taobao.com', '淘宝网', '5', '7', null, '不错', null, '50', 'h', '0', '1402716752');
INSERT INTO `yqt_goods` VALUES ('95', '5', '1', '201', 'testtest', 'http://item.jd.com/1028178.html', 'HTC Butterfly s 919d 电信3G手机（樱花粉） CDMA2000/GSM 双模双待双通', '1899.00', '京东商城', 'http://img13.360buyimg.com/n1/g13/M03/0B/10/rBEhVFKpf70IAAAAAAGUo-oPswsAAGtygA10D4AAZS7951.jpg', 'http://www.360buy.com/product/', '其他网站', '5', '9', null, '不错', null, '50', 'h', '0', '1402717357');

-- ----------------------------
-- Table structure for `yqt_goodscomment`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_goodscomment`;
CREATE TABLE `yqt_goodscomment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `gid` int(11) NOT NULL COMMENT '分享商品编号',
  `uid` int(11) NOT NULL COMMENT '用户号',
  `uname` varchar(30) NOT NULL COMMENT '用户名称',
  `content` text COMMENT '评论内容',
  `addtime` int(11) DEFAULT NULL COMMENT '添加评论时间',
  `state` smallint(6) NOT NULL DEFAULT '1' COMMENT '是否显示',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_goodscomment
-- ----------------------------
INSERT INTO `yqt_goodscomment` VALUES ('1', '83', '177', 'liulei634', 'ceshi测试信息', '1332754038', '1');
INSERT INTO `yqt_goodscomment` VALUES ('2', '83', '177', 'liulei634', 'ceshi', '1332753965', '1');
INSERT INTO `yqt_goodscomment` VALUES ('3', '66', '177', 'liulei634', '测试下你系[晕了]', '1332753890', '1');
INSERT INTO `yqt_goodscomment` VALUES ('4', '66', '177', 'liulei634', '呵呵不错啊这个[送花]', '1332753849', '1');
INSERT INTO `yqt_goodscomment` VALUES ('6', '0', '177', 'liulei634', '', '1332818406', '1');
INSERT INTO `yqt_goodscomment` VALUES ('7', '85', '177', 'liulei634', '测试评论信息[吃奶][骄傲]', '1332819362', '1');
INSERT INTO `yqt_goodscomment` VALUES ('8', '85', '177', 'liulei634', '最新评论咋样啊[飘过]', '1332819477', '1');
INSERT INTO `yqt_goodscomment` VALUES ('9', '66', '177', 'liulei634', '呵呵成功了[走了][走了]', '1332833170', '1');
INSERT INTO `yqt_goodscomment` VALUES ('10', '83', '177', 'liulei634', '测试最新评论信息', '1332834524', '1');
INSERT INTO `yqt_goodscomment` VALUES ('11', '67', '177', 'liulei634', '[摆谱][骄傲]', '1332834587', '1');
INSERT INTO `yqt_goodscomment` VALUES ('12', '85', '177', 'liulei634', '真的不错啊[骄傲]', '1332836678', '1');
INSERT INTO `yqt_goodscomment` VALUES ('13', '67', '177', 'liulei634', '[不懂][表演]，ll', '1333591885', '1');
INSERT INTO `yqt_goodscomment` VALUES ('14', '67', '184', 'dj1jj', '[不懂]', '1355565571', '1');
INSERT INTO `yqt_goodscomment` VALUES ('15', '67', '184', 'dj1jj', '[不懂][吃饭]', '1355645291', '1');
INSERT INTO `yqt_goodscomment` VALUES ('16', '0', '184', 'dj1jj', '', '1355737625', '1');
INSERT INTO `yqt_goodscomment` VALUES ('17', '68', '184', 'dj1jj', 'fhgh', '1355737674', '1');
INSERT INTO `yqt_goodscomment` VALUES ('18', '0', '184', 'dj1jj', '', '1355743366', '1');
INSERT INTO `yqt_goodscomment` VALUES ('19', '68', '184', 'dj1jj', '[淡定][吃奶][吃饭][不懂]', '1355743415', '1');
INSERT INTO `yqt_goodscomment` VALUES ('20', '68', '184', 'dj1jj', '[晕了][走了][骄傲][冷汗]', '1355743430', '1');
INSERT INTO `yqt_goodscomment` VALUES ('21', '0', '184', 'dj1jj', '', '1355749763', '1');
INSERT INTO `yqt_goodscomment` VALUES ('22', '90', '201', 'testtest', '不错', '1402712442', '1');

-- ----------------------------
-- Table structure for `yqt_goodslike`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_goodslike`;
CREATE TABLE `yqt_goodslike` (
  `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT '喜欢编号',
  `gid` int(11) NOT NULL COMMENT '喜欢的商品编号',
  `uid` int(11) NOT NULL COMMENT '用户号',
  `uname` varchar(30) NOT NULL COMMENT '用户名称',
  `addtime` int(11) DEFAULT NULL COMMENT '添加喜欢时间',
  `state` smallint(6) NOT NULL DEFAULT '1' COMMENT '是否显示',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_goodslike
-- ----------------------------
INSERT INTO `yqt_goodslike` VALUES ('1', '85', '177', 'liulei634', '1332843075', '1');
INSERT INTO `yqt_goodslike` VALUES ('2', '80', '177', 'liulei634', '1332843992', '1');
INSERT INTO `yqt_goodslike` VALUES ('3', '0', '177', 'liulei634', '1333591869', '1');
INSERT INTO `yqt_goodslike` VALUES ('4', '67', '177', 'liulei634', '1333591893', '1');
INSERT INTO `yqt_goodslike` VALUES ('5', '67', '177', 'liulei634', '1333591898', '1');
INSERT INTO `yqt_goodslike` VALUES ('6', '66', '177', 'liulei634', '1333591931', '1');
INSERT INTO `yqt_goodslike` VALUES ('7', '79', '177', 'liulei634', '1333591941', '1');
INSERT INTO `yqt_goodslike` VALUES ('8', '79', '177', 'liulei634', '1333592464', '1');
INSERT INTO `yqt_goodslike` VALUES ('9', '67', '177', 'liulei634', '1333954597', '1');
INSERT INTO `yqt_goodslike` VALUES ('10', '0', '184', 'dj1jj', '1355564154', '1');
INSERT INTO `yqt_goodslike` VALUES ('11', '67', '184', 'dj1jj', '1355564159', '1');
INSERT INTO `yqt_goodslike` VALUES ('12', '0', '184', 'dj1jj', '1355644711', '1');
INSERT INTO `yqt_goodslike` VALUES ('13', '67', '184', 'dj1jj', '1355644718', '1');
INSERT INTO `yqt_goodslike` VALUES ('14', '67', '184', 'dj1jj', '1355644724', '1');
INSERT INTO `yqt_goodslike` VALUES ('15', '88', '184', 'dj1jj', '1355644959', '1');
INSERT INTO `yqt_goodslike` VALUES ('16', '87', '184', 'dj1jj', '1355644977', '1');
INSERT INTO `yqt_goodslike` VALUES ('17', '87', '184', 'dj1jj', '1355645139', '1');
INSERT INTO `yqt_goodslike` VALUES ('18', '72', '184', 'dj1jj', '1355645157', '1');
INSERT INTO `yqt_goodslike` VALUES ('19', '87', '184', 'dj1jj', '1355645194', '1');
INSERT INTO `yqt_goodslike` VALUES ('20', '68', '184', 'dj1jj', '1355645213', '1');
INSERT INTO `yqt_goodslike` VALUES ('21', '67', '184', 'dj1jj', '1355645400', '1');
INSERT INTO `yqt_goodslike` VALUES ('22', '88', '184', 'dj1jj', '1355645841', '1');
INSERT INTO `yqt_goodslike` VALUES ('23', '88', '184', 'dj1jj', '1355723559', '1');
INSERT INTO `yqt_goodslike` VALUES ('24', '88', '184', 'dj1jj', '1355723566', '1');
INSERT INTO `yqt_goodslike` VALUES ('25', '0', '184', 'dj1jj', '1355733971', '1');
INSERT INTO `yqt_goodslike` VALUES ('26', '68', '184', 'dj1jj', '1355738341', '1');
INSERT INTO `yqt_goodslike` VALUES ('27', '68', '184', 'dj1jj', '1355738789', '1');
INSERT INTO `yqt_goodslike` VALUES ('28', '68', '184', 'dj1jj', '1355738793', '1');
INSERT INTO `yqt_goodslike` VALUES ('29', '0', '184', 'dj1jj', '1355834426', '1');
INSERT INTO `yqt_goodslike` VALUES ('30', '0', '184', 'dj1jj', '1355922508', '1');
INSERT INTO `yqt_goodslike` VALUES ('31', '95', '201', 'testtest', '1402717413', '1');

-- ----------------------------
-- Table structure for `yqt_goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_goodstype`;
CREATE TABLE `yqt_goodstype` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  `listorder` smallint(5) DEFAULT '50',
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_goodstype
-- ----------------------------
INSERT INTO `yqt_goodstype` VALUES ('1', '女装', '50');
INSERT INTO `yqt_goodstype` VALUES ('2', '男装', '50');
INSERT INTO `yqt_goodstype` VALUES ('3', '鞋子', '50');
INSERT INTO `yqt_goodstype` VALUES ('4', '箱包', '50');
INSERT INTO `yqt_goodstype` VALUES ('5', '食品保健', '50');
INSERT INTO `yqt_goodstype` VALUES ('6', '图书音像', '50');
INSERT INTO `yqt_goodstype` VALUES ('7', '美容美发', '50');
INSERT INTO `yqt_goodstype` VALUES ('8', '数码通讯', '50');
INSERT INTO `yqt_goodstype` VALUES ('9', '礼品', '50');
INSERT INTO `yqt_goodstype` VALUES ('10', '家居用品', '50');
INSERT INTO `yqt_goodstype` VALUES ('11', '流行饰品', '50');
INSERT INTO `yqt_goodstype` VALUES ('12', '其他', '50');

-- ----------------------------
-- Table structure for `yqt_gtype`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_gtype`;
CREATE TABLE `yqt_gtype` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) DEFAULT NULL,
  `node` int(11) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL,
  `seotitle` varchar(255) DEFAULT NULL,
  `seokeyword` varchar(255) DEFAULT NULL,
  `seocontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_gtype
-- ----------------------------
INSERT INTO `yqt_gtype` VALUES ('1', '服装', '0', '10', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('2', '鞋包', '0', '20', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('3', '美容', '0', '30', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('4', '饰品', '0', '40', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('5', '居家', '0', '50', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('6', '食品', '0', '60', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('8', 'T恤', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('9', '衬衫', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('10', '连衣裙', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('11', '外套', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('12', '毛衣', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('13', '牛仔裤', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('14', '短裤', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('15', '内裤', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('16', '半身裙', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('17', '打底裤', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('18', '打底衫', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('19', '西装', '1', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('20', '帆布鞋', '2', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('21', '运动鞋', '2', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('22', '单鞋', '2', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('23', '凉鞋', '2', '0', '', '', '');
INSERT INTO `yqt_gtype` VALUES ('24', '靴子', '2', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('25', '休闲鞋', '2', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('26', '单肩', '2', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('27', '斜挎', '2', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('28', '双肩', '2', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('29', '钱包', '2', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('30', '拖鞋', '2', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('31', '洗面奶', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('32', '面膜', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('33', '防晒', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('34', '眼影', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('35', '睫毛膏', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('36', 'BB霜', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('37', '粉底', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('38', '遮瑕', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('39', '唇彩', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('40', '指甲油', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('41', '减肥', '3', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('42', '腰带', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('43', '手表', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('44', '手套', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('45', '眼镜', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('46', '披肩', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('47', '帽子', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('48', '领带', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('49', '项链', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('50', '发饰', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('51', '耳饰', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('52', '戒指', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('53', '手链', '4', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('54', '清洁', '5', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('55', '文具', '5', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('56', '靠垫', '5', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('57', '毛巾', '5', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('58', '布艺', '5', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('59', '贴饰', '5', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('60', '巧克力', '6', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('61', '饼干', '6', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('62', '糖果', '6', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('63', '肉脯', '6', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('64', '花草茶', '6', '0', null, null, null);
INSERT INTO `yqt_gtype` VALUES ('65', '冲饮品', '6', '0', null, null, null);

-- ----------------------------
-- Table structure for `yqt_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_guestbook`;
CREATE TABLE `yqt_guestbook` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `uname` varchar(255) DEFAULT '',
  `addtime` int(10) DEFAULT '0',
  `msg` mediumtext,
  `reply` mediumtext,
  `state` smallint(5) DEFAULT '1',
  `hide` smallint(5) DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_guestbook
-- ----------------------------
INSERT INTO `yqt_guestbook` VALUES ('33', '184', 'dj1jj', '1355834542', '请问网站现在运营了啊啊！', '您好感谢您对我们的关注！现在已经运营啦！', '1', '0');
INSERT INTO `yqt_guestbook` VALUES ('34', '191', 'ccfun1127', '1383554966', '測試一下問題諮詢', 'OK', '1', '0');

-- ----------------------------
-- Table structure for `yqt_ipfiltering`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_ipfiltering`;
CREATE TABLE `yqt_ipfiltering` (
  `ipid` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY (`ipid`),
  KEY `uname` (`uname`),
  KEY `uname_2` (`uname`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='恶意IP过滤';

-- ----------------------------
-- Records of yqt_ipfiltering
-- ----------------------------
INSERT INTO `yqt_ipfiltering` VALUES ('7', '192.168.5.68', 'two', '1294395443', '123');
INSERT INTO `yqt_ipfiltering` VALUES ('5', '192.168.5.31', 'oemdend', '1294395252', '0');
INSERT INTO `yqt_ipfiltering` VALUES ('6', '192.168.5.11', 'one', '1294395429', '123');
INSERT INTO `yqt_ipfiltering` VALUES ('8', '192.168.5.11', 'one', '1294395900', '0');

-- ----------------------------
-- Table structure for `yqt_lang`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_lang`;
CREATE TABLE `yqt_lang` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT ' ',
  `apicode` varchar(10) NOT NULL,
  `def` tinyint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) NOT NULL DEFAULT '50',
  `state` tinyint(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_lang
-- ----------------------------
INSERT INTO `yqt_lang` VALUES ('1', 'ewen', ' 俄文', 'ru', '1', '50', '1');
INSERT INTO `yqt_lang` VALUES ('2', 'cn', '中文', 'zh-cn', '0', '50', '1');

-- ----------------------------
-- Table structure for `yqt_news`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_news`;
CREATE TABLE `yqt_news` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `listorder` smallint(5) DEFAULT '50',
  `seokeywords` varchar(255) DEFAULT '',
  `seodescription` varchar(255) DEFAULT '',
  `body` text,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_news
-- ----------------------------
INSERT INTO `yqt_news` VALUES ('12', '最新公告发布测试2012', '50', '', '', '最新公告发布测试2012最新公告发布测试2012', '1330590509');
INSERT INTO `yqt_news` VALUES ('13', '最新公告发布测试2012', '50', '', '', '最新公告发布测试2012最新公告发布测试2012', '1330590515');
INSERT INTO `yqt_news` VALUES ('14', '最新公告发布测试2012', '50', '', '', '最新公告发布测试2012最新公告发布测试2012', '1330590520');
INSERT INTO `yqt_news` VALUES ('15', '淘宝改变了三代人的生活方式', '0', '', '', '<p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;text-align:center;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><img style=\"border-top:0px;border-right:0px;border-bottom:0px;float:none;margin:10px;border-left:0px;\" src=\"http://img04.taobaocdn.com/imgextra/i4/12586042226381597/TB2EnixXVXXXXXLXpXXXXXXXXXX_!!2586-0-martrix_bbs.jpg\" /></p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当网购刚刚兴起的时候，人们很难想象到淘宝会成为人们日常生活密不可分的一部分。“平时给妈妈买东西也在淘宝上买，冬天买羽绒被，夏天买凉席，电风扇等等，享受商品直接快递到家，方便又快捷”，在成都一家公司担任销售经理的李欣表示，由于平时工作太忙，日常生活用品多是通过淘宝购买，小到化妆品、棉签、香皂，大到电冰箱、空调.....如今来自网购的支出已占每月支出的半数以上。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 只有想不到没有买不到</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “男生打游戏，女生在网购”，如今这也成为了城市青年男女最为真实的写照。在李欣看来，从商品的品种和数量上看，这么多网站只有淘宝上的东西更为齐全，想买什么东西都有，只有想不到。因此在淘宝上逛街买东西已经成为了李欣的一种生活习惯，吃喝玩乐，只要想得到的都会通过网络完成。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每天早上来到办公室，李欣在启动办公电脑的同时，她都会打开手机淘宝看看，聚划算的团购今天又有些什么新货。一旦发现有降价商品、限时购的商品，就立马下手。自己抢到了便宜货之后，还会及时地把团购链接分享到自己的微博上，让粉丝好友也可以购买。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李欣的男朋友是位资深的漫画迷，但是在实体店里很难买到想要的原版漫画，而通过淘宝则可以买到多年前便已绝版的漫画，近期更是一口气在淘宝上买到灌篮高手的珍藏版漫画。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 不只是这些小玩意，高大上的收藏也能在淘宝上找到。5月，全世界搜罗艺术品的中国买家在淘宝上看到了毕加索的《脸》和达利的《时间的轮廓》两件作品，两件作品最终以115万和35万元被买家买走。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 丰富的品类，海量的商品，让消费者几乎成为世界上最无所不能的消费者。数据显示，截至2013年年底，淘宝上的800万活跃商家发布了7.96亿件商品，涵盖100个不同的产品类目、2000个子类目。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 带领家人加入淘宝剁手党一族李欣说，发现自己的网购瘾已经无法控制的时候，每天晚上睡觉之前是拿着手机打游戏，现在是打开手机看淘宝，不到12点不睡着。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 然而在李欣的影响下，她的妈妈也学会了在淘宝上买东西，每次回家的时候，妈妈总是坐在电脑前浏览各种商品，大米、油、牛奶统统都是网购。妈妈购物车的东西累计已经好几百件。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 不仅如此，李欣说，每年家里都会组织一到两次的家庭旅行，以前都是自己一个人搞定，由于自己工作繁忙，实在没有时间来做这些，但自妈妈学会淘宝之后，李欣就省事多了，订机票、订酒店在手机淘宝上妈妈就能全部搞定。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 事实上，如今网购早已不是年轻人的专利，很多同事的父母在学会网购后，购物频率和消费能力更是让人吃惊。李欣说，此前更是听说一位同事的母亲一个月网购支出达到两万元，买的东西更是五花八门，小到家里淋浴的喷头，大到空调等家用电器。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 之所以网购被各位中老年人接受，主要还是淘宝较实体店更加优惠的价格，即使加上运费等购物成本，实际到手价格也较实体店要低出许多。自从妈妈看了舌尖上的中国后，更是到淘宝上去搜索各地的特色食材，这让一家人都饱了口服。“可以说淘宝不仅改变了我的生活，更改变了我家的生活习惯”。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 李欣还说，自从今年3月底，淘宝推出“生活家”，10万名家政阿姨实名认证入驻手机淘宝。通过手机淘宝APP下单，就能提供家政上门服务后，外婆也多了很多时间参加社区的文艺活动了。“以前家里的家务都是外婆做，有时候请家政电话打了无数次，也不能准时来服务，非常的麻烦。”李欣说，现在只需要打开手机淘宝中的生活服务，进入生活家平台选择服务城市，如果你在成都，就点击预约，随后在你的收货地址中选择你想要打扫的那一个，确认服务时长、服务时间后完成手机支付，整个过程不会超过30秒，系统会自动匹配推荐商家安排阿姨，并在约定时间到达完成服务。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 事实上，除了对人们的生活影响巨大，移动电子商务的普及对商家的营销方式也会产生极为深远的影响。电商企业明白，互联网最大的优势正是信息不对称的现状。因此，在促成消费者新习惯养成的同时，电商也在试图用大数据剖析当下消费群体之规律，以便有的放矢。</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\">&nbsp;</p> <p style=\"white-space:normal;word-spacing:0px;text-transform:none;color:#4d4d4d;padding-bottom:0px;padding-top:0px;font:14px/21px tahoma, arial, 宋体, sans-serif;padding-left:0px;margin:0px;letter-spacing:normal;padding-right:0px;background-color:#ffffff;text-indent:0px;-webkit-text-stroke-width:0px;\">（来源于天府早报）</p>', '1402731675');

-- ----------------------------
-- Table structure for `yqt_order`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_order`;
CREATE TABLE `yqt_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `sid` varchar(50) DEFAULT NULL COMMENT '货单发ID',
  `typeid` smallint(5) DEFAULT '12',
  `goodsurl` varchar(255) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsprice` float(10,2) NOT NULL DEFAULT '0.00',
  `sendprice` float(10,2) NOT NULL DEFAULT '0.00',
  `goodsnum` int(10) DEFAULT NULL,
  `goodsimg` varchar(255) DEFAULT NULL,
  `goodssize` varchar(20) DEFAULT NULL,
  `goodscolor` varchar(20) DEFAULT NULL,
  `goodsseller` varchar(50) DEFAULT NULL,
  `sellerurl` varchar(255) DEFAULT NULL,
  `goodssite` varchar(50) DEFAULT NULL,
  `siteurl` varchar(255) DEFAULT NULL,
  `expressno` varchar(50) DEFAULT '',
  `type` smallint(5) DEFAULT '0',
  `goodsremark` varchar(255) DEFAULT NULL,
  `orderweight` int(11) DEFAULT '0',
  `orderremark` varchar(255) DEFAULT NULL,
  `orderimg` varchar(255) DEFAULT NULL,
  `payid` varchar(50) DEFAULT NULL,
  `paytime` int(11) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `uptime` int(11) DEFAULT NULL,
  `state` smallint(5) DEFAULT '1',
  `pinoid` varchar(20) NOT NULL DEFAULT '0',
  `pinnum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `uid` (`uid`),
  KEY `uname` (`uname`),
  KEY `state` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=323 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_order
-- ----------------------------
INSERT INTO `yqt_order` VALUES ('71', '48', '小张', '22', '12', 'http://www.taobao.com', '淘宝网 ', '50.00', '20.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '500', '', '', 'paipai0021', null, '1308564370', '1321754642', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('70', '48', '小张', null, '12', 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正的酸角美食20克 店庆促销10送1 ', '0.99', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T171dHXettXXbJZ7za_092025.jpg_310x310.jpg', '', '', 'yemmey', 'http://rate.taobao.com/user-rate-121f75bdd2dad582a3568a37d35dcc89.htm', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '20', '', 'attachment/order/201106/20110623180330_615.jpg', '', null, '1308564370', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('69', '48', '小张', '21', '1', 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正的酸角美食20克 店庆促销10送1 ', '0.99', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T171dHXettXXbJZ7za_092025.jpg_310x310.jpg', '', '', 'yemmey', 'http://rate.taobao.com/user-rate-121f75bdd2dad582a3568a37d35dcc89.htm', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '300', '', 'attachment/order/201106/20110623180333_284.jpg', 'paipai0021', null, '1308361411', '1321754642', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('68', '48', '小张', null, '12', 'http://item.taobao.com/item.htm?id=2921146411', '缅甸酸角片 味道纯正的酸角美食20克 店庆促销10送1 ', '0.99', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T171dHXettXXbJZ7za_092025.jpg_310x310.jpg', '', '', 'yemmey', 'http://rate.taobao.com/user-rate-121f75bdd2dad582a3568a37d35dcc89.htm', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201106/20110623180333_180.jpg', 'paipaipayid', null, '1308361411', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('67', '48', '小张', null, '12', 'http://item.taobao.com/item.htm?id=4770192509', '好评+回头客=推荐 碳香烤章鱼足片（特级） 海鲜鱿鱼足片', '16.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mu4HXg8qXXc4MOI3_050416.jpg_310x310.jpg', '', '', '美然阁', 'http://meirange.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201106/20110623180333_809.jpg', 'paipaipayid', null, '1308361411', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('66', '48', '小张', null, '12', 'http://item.taobao.com/item.htm?id=6057212668', '【清仓39元包邮】麻花舒适莱卡面料修身短袖 灰S/M/L （三色）', '299.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T17QpHXkJqXXcqiLs__105946.jpg_310x310.jpg', '12', '挂号费', '否和日', 'http://shop35164836.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '光放大 ', '12', '', 'attachment/order/201106/20110623180333_477.jpg', '', null, '1307928292', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('64', '48', '小张', '10', '12', 'http://item.taobao.com/item.htm?ID=8430358809', '小八腊子 幼儿园环境布置 彩色挂饰 吊饰品 大礼花 环境装饰', '15.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1jjBRXityXXaUKig5_055928.jpg_310x310.jpg', '121', '红色', 'xiaobalaziwwy', 'http://xblz.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '速度和公司', '500', '', 'attachment/order/201106/20110623180334_410.jpg', '', null, '1307927391', '1312513679', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('65', '48', '小张', null, '12', 'http://item.taobao.com/item.htm?id=6143756507', '淘宝网 ', '0.00', '20.00', '1', 'null', '54', '红色', 'null', '', '淘宝网', 'www.taobao.com', '001', '2', '思考的鼓励扩大', '0', null, '', null, null, '1307927391', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('16', '3', 'lss', '4', '1', 'http://item.taobao.com/item.htm?id=6819170864', '花朵经典款 性感 v领 显瘦 晕染桃色印花  蝴蝶结 裹胸 连衣裙', '128.00', '12.00', '1', 'http://img07.taobaocdn.com/bao/uploaded/i7/T1S7RHXjFzXXco3Vk7_063356.jpg_310x310.jpg', '', '', 'wwwheelscn', 'http://zgys.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '10', '', 'attachment/order/201008/20100821100536_846.jpg', '', '0', '1281426952', '1321754642', '2', '', '0');
INSERT INTO `yqt_order` VALUES ('18', '3', 'lss', '8', '1', 'http://item.taobao.com/item.htm?id=5549623788', '【上上屋】盛夏 限网面透气舒适内地休闲凉鞋s', '88.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1mA8CXhVxXXbp6_QZ_033619.jpg_310x310.jpg', '38', '红色', 'xizier1985', 'http://shangshangwu.taobao.com?DOMAIN=shangshangwu', '淘宝网', 'www.taobao.com', '456456', '1', '请选填颜色、尺寸等要求！', '100', '', 'attachment/order/201008/20100821100536_732.jpg', 'paipaipayid', '0', '1281426952', '1322269864', '4', '', '0');
INSERT INTO `yqt_order` VALUES ('19', '3', 'lss', '3', '1', 'http://item.taobao.com/item.htm?id=5549623788', '【上上屋】盛夏 限网面透气舒适内地休闲凉鞋s', '88.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1mA8CXhVxXXbp6_QZ_033619.jpg_310x310.jpg', '38', '红色', 'xizier1985', 'http://shangshangwu.taobao.com?DOMAIN=shangshangwu', '淘宝网', 'www.taobao.com', '65466546', '1', '请选填颜色、尺寸等要求！', '600', '', 'attachment/order/201008/20100821100535_705.jpg', 'paipaipayid', '0', '1281426952', '1307755035', '6', '', '0');
INSERT INTO `yqt_order` VALUES ('20', '3', 'lss', '3', '1', 'http://item.taobao.com/item.htm?id=6700632118', '【上上屋】甜美气质美丽串珠舒适平跟凉鞋女鞋G', '78.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1hpNHXdxHXXavN6I1_041654.jpg_310x310.jpg', '38', '黑色', 'xizier1985', 'http://shangshangwu.taobao.com?DOMAIN=shangshangwu', '淘宝网', 'www.taobao.com', '65466546', '1', '请选填颜色、尺寸等要求！', '80', '', 'attachment/order/201008/20100821100532_511.jpg', 'paipaipayid', '0', '1281426952', '1322198555', '2', '', '0');
INSERT INTO `yqt_order` VALUES ('42', '1', 'admin', null, '1', 'http://item.taobao.com/item.htm?ID=8430358809', 'ひろしま', '15.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1jjBRXityXXaUKig5_055928.jpg_310x310.jpg', '', '', 'xiaobalaziwwy', 'http://xblz.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', 'paipai0021', 'attachment/order/201106/20110623180334_756.jpg', 'paipai0021', null, '1291883243', '1312686795', '4', '', '1');
INSERT INTO `yqt_order` VALUES ('30', '13', 'hamagawa', null, '12', 'http://item.taobao.com/item.htm?ID=8430358809', '小八腊子 幼儿园环境布置 彩色挂饰 吊饰品 大礼花 环境装饰', '15.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1jjBRXityXXaUKig5_055928.jpg_310x310.jpg', '', '', 'xiaobalaziwwy', 'http://xblz.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '100', '', 'attachment/order/201107/20110723155912_771.jpg', 'paipaipayid', null, '1290508054', '1322269864', '4', '', '0');
INSERT INTO `yqt_order` VALUES ('31', '14', 'yendeshiyo', null, '1', 'http://item.taobao.com/item.htm?id=6057212668', 'only专柜淑女气质修身短袖 粉，灰，黑 三色 9201006', '99.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T17QpHXkJqXXcqiLs__105946.jpg_310x310.jpg', '', '', '否和日', 'http://shop35164836.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 's size', '1', '', 'attachment/order/201107/20110723155912_545.jpg', 'paipaipayid', null, '1290514317', '1322528493', '4', '', '0');
INSERT INTO `yqt_order` VALUES ('32', '14', 'yendeshiyo', null, '12', 'http://item.taobao.com/item.htm?ID=8430358809', '小八腊子 幼儿园环境布置 彩色挂饰 吊饰品 大礼花 环境装饰', '15.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1jjBRXityXXaUKig5_055928.jpg_310x310.jpg', '', '', 'xiaobalaziwwy', 'http://xblz.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'lll', '0', '', 'attachment/order/201107/20110723155912_342.jpg', 'paipai0021', null, '1290514317', '1322659446', '2', '', '0');
INSERT INTO `yqt_order` VALUES ('33', '14', 'yendeshiyo', null, '12', 'http://item.taobao.com/item.htm?ID=8430358809', '小八腊子 幼儿园环境布置 彩色挂饰 吊饰品 大礼花 环境装饰', '15.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1jjBRXityXXaUKig5_055928.jpg_310x310.jpg', '', '', 'xiaobalaziwwy', 'http://xblz.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '10', '', 'attachment/order/201107/20110722110305_229.jpg', '', null, '1290514317', '1290583365', '6', '', '0');
INSERT INTO `yqt_order` VALUES ('41', '1', 'admin', '6', '12', 'http://item.taobao.com/item.htm?ID=8430358809', '小八腊子 幼儿园环境布置 彩色挂饰 吊饰品 大礼花 环境装饰', '15.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1jjBRXityXXaUKig5_055928.jpg_310x310.jpg', '', '', 'xiaobalaziwwy', 'http://xblz.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '200', '', 'attachment/order/201107/20110722110305_434.jpg', '', null, '1291713413', '1321754642', '2', '', '0');
INSERT INTO `yqt_order` VALUES ('43', '1', 'admin', null, '4', 'http://item.taobao.com/item.htm?id=8411265106', '包包 女包 LV 路易威登 N41165 棋盘格手提包 LV男包', '800.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1M3FRXj4iXXcqPHI1_040339.jpg_310x310.jpg', '', '', '晋商付伟', 'http://f429800584.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '11', '无货', 'attachment/order/201106/20110623180334_969.jpg', 'paipai0021', null, '1291883243', '1321754512', '4', '', '1');
INSERT INTO `yqt_order` VALUES ('44', '1', 'admin', null, '12', 'http://item.taobao.com/item.htm?id=6057212668', 'only专柜淑女气质修身短袖 粉，灰，黑 三色 9201006', '99.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T17QpHXkJqXXcqiLs__105946.jpg_310x310.jpg', '', '', '否和日', 'http://shop35164836.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201106/20110613115116_878.jpg', '', null, '1291883243', '1322199653', '4', '', '0');
INSERT INTO `yqt_order` VALUES ('62', '3', 'lss', null, '12', 'http://item.taobao.com/item.htm?ID=8430358809', '小八腊子 幼儿园环境布置 彩色挂饰 吊饰品 大礼花 环境装饰', '15.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1jjBRXityXXaUKig5_055928.jpg_310x310.jpg', '', '', 'xiaobalaziwwy', 'http://xblz.taobao.com', '淘宝网', 'www.taobao.com', '', '2', 'pieceRemark', '0', '', 'attachment/order/201106/20110613115049_292.jpg', '', '0', '1295234988', '1322068436', '4', '42', '0');
INSERT INTO `yqt_order` VALUES ('72', '50', 'aaa', null, '12', 'http://item.taobao.com/item.htm?id=10555771414', '兰博基尼 Gallardo LP570', '4580000.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1t0KdXoXxXXXYWtoY_025744.jpg_310x310.jpg', '', '', '野林mm', 'http://shop66934530.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201107/20110722110305_781.jpg', '', null, '1308989611', '1309101323', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('75', '53', 'xiaotian', null, '12', 'http://www.cc.css', '78', '0.00', '10.00', '1', '', '77', '8', 'www.cc.css', 'http://www.cc.css', '其他网站', '###', '', '1', '我对此商品无任何特殊备注。', '0', '', null, '', null, '1309163977', '1309164236', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('76', '54', '试试', null, '12', 'http://item.taobao.com/item.htm?id=8872511864', '新款秒杀特价 AF男圆领短袖T恤 AF男T恤 AF男短袖afT恤男', '45.00', '15.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1LSGcXmBeXXbZlnEW_024717.jpg_310x310.jpg', '175/95L', '17', '爱上无所谓', 'http://shop33280480.taobao.com', '淘宝网', 'www.taobao.com', '23223', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201107/20110703132218_488.jpg', '', null, '1309175493', '1321754642', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('77', '54', '试试', null, '12', 'http://item.taobao.com/item.htm?id=8872035140', '特价！AF纯棉短袖T恤 AF男款T恤 AF圆领短袖TafT恤男', '38.00', '15.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T1I85cXaXgXXadxnkV_021735.jpg_310x310.jpg', 'L', '14', '爱上无所谓', 'http://shop33280480.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201107/20110703132218_685.jpg', '', null, '1309175493', '1309177176', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('78', '54', '试试', null, '12', 'http://item.taobao.com/item.htm?id=9897877565', '5顔6色♂特价卡通笑脸图案短袖纯棉T恤男士个性时尚', '35.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T16j87XmtlXXXM.bPb_093243.jpg_310x310.jpg', '', '', '', '', '淘宝网', 'www.taobao.com', '', '1', '', '0', '', 'attachment/order/201107/20110703132218_975.jpg', '', null, '1309175493', '1309175998', '0', '0', '0');
INSERT INTO `yqt_order` VALUES ('79', '54', '试试', null, '12', 'http://item.taobao.com/item.htm?id=10548370215', '5顔6色♂特价POLO夏装商务休闲短袖翻领POLO衫男款 男款小马标', '25.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1DCqdXcBXXXXBh1M1_041029.jpg_310x310.jpg', '175/95L', '大红', '5颜6色小白', 'http://5yen6color.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201107/20110703132218_387.jpg', '', null, '1309175493', '1309177121', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('80', '54', '试试', null, '12', 'http://item.taobao.com/item.htm?id=9897877565', '5顔6色♂特价卡通笑脸图案短袖纯棉T恤男士个性时尚', '35.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T16j87XmtlXXXM.bPb_093243.jpg_310x310.jpg', '175L尺寸偏大一码', '巧克力', '5颜6色小白', 'http://5yen6color.taobao.com', '淘宝网', 'www.taobao.com', '6266562', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201107/20110703132217_709.jpg', '', null, '1309175493', '1312722595', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('81', '54', '试试', null, '12', 'http://item.taobao.com/item.htm?id=6228342806', '精品10最新独特力荐 男装直筒休闲裤', '79.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1dLFFXlxuXXc.bh3U_014824.jpg_310x310.jpg', 'L', '浅绿色', '正品折扣名店', 'http://zpzkmd.taobao.com', '淘宝网', 'www.taobao.com', '123456789', '1', '请选填颜色、尺寸等要求！', '500', '', 'attachment/order/201107/20110703132217_493.jpg', '', null, '1309187363', '1309188570', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('82', '54', '试试', null, '12', 'http://item.taobao.com/item.htm?id=7661481864', '奢品享受极致追求精品 男装长袖圆领T恤 咖啡色%', '66.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1hK0MXnxoXXb6JZHb_123347.jpg_310x310.jpg', '175/95L', '黑色', '正品折扣名店', 'http://zpzkmd.taobao.com', '淘宝网', 'www.taobao.com', '123456789', '1', '请选填颜色、尺寸等要求！', '600', '', 'attachment/order/201107/20110703132217_394.jpg', '', null, '1309187363', '1321754642', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('83', '54', '试试', null, '12', 'http://item.taobao.com/item.htm?id=2587099804', '独一无二 夏季清凉休闲独特褶皱设计七分裤 纯棉款 K02', '58.00', '12.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1LRtiXdy3l0PhhiU4_053356.jpg_310x310.jpg', '31（2.39尺）', '米色', '聪明521', 'http://lovemd.taobao.com', '淘宝网', 'www.taobao.com', '987654321', '1', '请选填颜色、尺寸等要求！', '300', '', 'attachment/order/201107/20110703132217_374.jpg', '', null, '1309187363', '1321754843', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('84', '54', '试试', null, '12', 'http://item.taobao.com/item.htm?id=10785563884', '时尚简约条纹风格 假领带设计 高档舒适男士纯棉长袖衬衫', '45.00', '12.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1Djx0XbdGXXXa7osZ_034006.jpg_310x310.jpg', 'L', '蓝条纹', '聪明521', 'http://lovemd.taobao.com', '淘宝网', 'www.taobao.com', '987654321', '1', '请选填颜色、尺寸等要求！', '300', '', 'attachment/order/201107/20110701164056_964.jpg', '', null, '1309187363', '1321754813', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('87', '55', 'hanfei', '13', '12', 'http://item.taobao.com/item.htm?id=8378388984', 'LSM 坐便哆啦A梦叮当 超级可爱 马桶一族 哆啦A梦 4钟表情可选', '11.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1TAh7XbpaXXXM_K72_044021.jpg_310x310.jpg', '1', '1', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '125', '', 'attachment/order/201107/20110701164056_441.jpg', '', null, '1309316981', '1322068436', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('86', '55', 'hanfei', '11', '12', 'http://item.taobao.com/item.htm?id=9804754653', 'panapana 专柜正品钻戒六爪皇冠女款天然钻石戒指', '2848.48', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1q_GeXlVmXXc6WdI9_103107.jpg_310x310.jpg', '10', 'bai', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '50', '', 'attachment/order/201107/20110701164056_709.jpg', '', null, '1309313898', '1322068436', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('91', '55', 'hanfei', '15', '12', 'http://item.taobao.com/item.htm?id=9854411763', '买5送1大牌原单复古袜彩色堆堆袜全棉短袜/中筒女袜子vivi推荐', '5.60', '20.00', '20', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1dHX7XXpbXXXroysZ_032627.jpg_310x310.jpg', '', '', 'bluefish323', 'http://bluefish323.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '121', '', 'attachment/order/201107/20110701164056_477.jpg', 'paipai0021', null, '1309412727', '1321754660', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('89', '55', 'hanfei', '19', '12', 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', '27.80', '10.00', '3', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '1', '1', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '1234', '', 'attachment/order/201107/20110701164056_613.jpg', '', null, '1309327311', '1322068436', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('90', '55', 'hanfei', '0', '12', 'http://item.taobao.com/item.htm?id=9854411763', '买5送1大牌原单复古袜彩色堆堆袜全棉短袜/中筒女袜子vivi推荐', '5.60', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1dHX7XXpbXXXroysZ_032627.jpg_310x310.jpg', '1', '1', 'bluefish323', 'http://bluefish323.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '111', '才v gh', 'attachment/order/201106/20110629142904_671.jpg', '', null, '1309327311', '1322061489', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('92', '59', '搜索', null, '12', 'http://item.taobao.com/item.htm?id=4563899269&', '酒井法子推荐3D成型睡眠 瘦脸带 瘦脸面罩 瓜子脸瘦脸器 瘦脸工具', '12.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1eI8DXdJuXXX8PVI0_034146.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201107/20110701164056_520.jpg', null, null, '1309500174', '1309500448', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('93', '59', '搜索', null, '12', 'http://item.taobao.com/item.htm?id=6985031503&', '女人我最大推荐 瘦大腿瘦小腿刺激按摩滾輪器 瘦腿器 瘦腿滚轮', '4.00', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T18adEXeNgXXavRj_X_115728.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201107/20110701164056_487.jpg', null, null, '1309500174', '1309500448', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('94', '59', '搜索', null, '12', 'http://item.taobao.com/item.htm?id=8650747427&', '【冲冠促销】火爆热销夏日最新款蓬发造型道具5件套', '3.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T17xlTXglkXXcKxrjX_114313.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201107/20110701164056_531.jpg', null, null, '1309500174', '1309500448', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('95', '59', '搜索', null, '12', 'http://item.taobao.com/item.htm?id=6984885545&', '台湾女人我最大 出口日本最新品嘴角唇形提高补助器', '2.80', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1w1dwXeRdXXc8Jes9_073204.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201107/20110701164056_867.jpg', null, null, '1309500174', '1309500448', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('96', '59', '搜索', null, '12', 'http://item.taobao.com/item.htm?id=3808270043&', '挺鼻美鼻组合最新一代美鼻二合一组合套装美鼻按摩实现立体翘翘鼻', '2.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1NUFmXl0HXXcFEVTa_120049.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201107/20110701164056_272.jpg', null, null, '1309500174', '1309500448', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('97', '59', '搜索', null, '12', 'http://item.taobao.com/item.htm?id=6985102347&', '盘发必备U型夹 专业固定 盘发叉 盘发梳 适用前刘海盘发 2个装', '2.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T1d0XIXltkXXXXmjE8_100920.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201107/20110701164031_806.jpg', null, null, '1309500174', '1309500448', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('117', '76', 'baidu', null, '12', 'http://item.taobao.com/item.htm?spm=141.44451.82410.1&id=6853975707', 'null', '0.00', '0.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, '', null, null, '1310627779', '1310627828', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('98', '55', 'hanfei', '15', '12', 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', '27.80', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '', '', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '120', '', 'attachment/order/201107/20110703132217_373.jpg', '', null, '1309596540', '1322068436', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('99', '63', 'itosb', '16', '12', 'http://item.taobao.com/item.htm?id=9579257035&cm_cat=50019372&source=dou', '[商城夏季大促]特价39包邮 衣品天成休闲短袖T恤 男 1104156', '88.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mIp3XoJBXXcFv6IW_024220.jpg_310x310.jpg', 'L', '灰', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1000', '', 'attachment/order/201107/20110722110305_992.jpg', '', null, '1309748416', '1322068436', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('100', '1', 'admin', null, '12', 'http://item.taobao.com/item.htm?spm=3.55234.122307.29&id=9214318218', '【源远商城】新品特价 独立包 蟹黄瓜子仁/葵花籽 香瓜子仁 250G', '8.00', '6.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1gsFRXiRaXXXj40rb_093446.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1000', '', 'attachment/order/201107/20110722110305_262.jpg', '', null, '1309775127', '1309775709', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('101', '1', 'admin', '17', '12', 'http://item.taobao.com/item.htm?id=8650747427&', '【冲冠促销】火爆热销夏日最新款蓬发造型道具5件套', '3.00', '0.00', '2', 'http://img04.taobaocdn.com/bao/uploaded/i4/T17xlTXglkXXcKxrjX_114313.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '500', '', 'attachment/order/201107/20110722110304_596.jpg', '', null, '1309775127', '1322199653', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('102', '1', 'admin', null, '12', 'http://item.taobao.com/item.htm?id=10613256520&', '缪诗 正品 雅典娜 缤纷糖果色分体式泳衣两件套', '98.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1zdieXoJaXXa4y374_053136.jpg_310x310.jpg', '37', '黑色', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '77885444', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201107/20110722110304_335.jpg', '', null, '1309777229', '1310349616', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('103', '1', 'admin', null, '12', 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', '27.80', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '44', '白', 'oinm', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201107/20110723155912_777.jpg', 'taobaopayid002', null, '1309777229', '1321754530', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('104', '1', 'admin', null, '12', 'http://item.taobao.com/item.htm?id=10722453526&', '【淘金币】缪诗 正品 恋爱季节 棉质舒适聚拢文胸 买衣送裤', '79.00', '0.00', '2', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1VfegXcxvXXbdSITa_120441.jpg_310x310.jpg', 'a', '白', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201107/20110723155931_999.jpg', '', null, '1309777229', '1309777328', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('105', '60', 'ceshi1', '18', '12', 'http://item.taobao.com/item.htm?id=10801890882&cm_cat=50074219', '东方神起 JYJ 在中NII同款T恤 现货', '28.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1s6qgXaJcXXa9i.7Z_033757.jpg_310x310.jpg', '', '', 'kjmusicchen', 'http://shop33750538.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '700', '', 'attachment/order/201107/20110723155931_278.jpg', '', null, '1309792423', '1321754642', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('106', '60', 'ceshi1', '18', '12', 'http://item.taobao.com/item.htm?spm=3.71119.121391.3&id=10742465171', '【JECES】商城夏季大促 徐濠萦松糕鞋 排扣微笑弧形船鞋JA03101', '168.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1BzCgXbVBXXbFRp7._081216.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '600', '', 'attachment/order/201107/20110723155931_212.jpg', '', null, '1309792423', '1321754642', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('107', '55', 'hanfei', '0', '12', 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', '27.80', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '', '', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '122', '', 'attachment/order/201107/20110723155907_755.jpg', '', null, '1309837802', '1309930834', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('109', '60', 'ceshi1', null, '12', 'http://item.taobao.com/item.htm?id=10640950964', '苹果数据线 ipad ipod iphone4 3gs touch数据线 USB数据线', '6.50', '6.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1GfGeXmJrXXbZ5qvc_125719.jpg_310x310.jpg', '', '', 'michael_zhao_09', 'http://shop58556295.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '60', '', 'attachment/order/201107/20110722110301_936.jpg', '', null, '1309872424', '1321754806', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('110', '60', 'ceshi1', null, '12', 'http://item.taobao.com/item.htm?id=9268518425&ad_id=&am_id=&cm_id=&pm_id=', 'Baboos正品 iphone 4 3G/3GS iPod Touch nano IPAD IPOD数据线', '19.00', '5.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1pLF7XiNgXXbjUT7U_015907.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '230', '', 'attachment/order/201107/20110722110301_332.jpg', '', null, '1309872424', '1321754801', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('111', '55', 'hanfei', null, '4', 'http://item.taobao.com/item.htm?spm=141.44451.82410.1&id=6853975707', '【厨娘成长记】洛贝 Y50', '465.00', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1vh1hXiVcXXXz9q_b_093152.jpg_310x310.jpg', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '15', '', 'attachment/order/201107/20110722110301_726.jpg', '', null, '1309916433', '1321754512', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('112', '55', 'hanfei', null, '4', 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', '27.80', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '', '', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '広島　なか', '12', '', 'attachment/order/201107/20110722110301_842.jpg', '', null, '1309930792', '1322290541', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('113', '60', 'ceshi1', null, '12', 'http://item.taobao.com/item.htm?id=10956444600', '便携迷你收音机FM/AM 2波段 超薄超小可爱口袋型掌上袖珍式收音机', '25.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1n6puXkXwXXaQjtZ8_100202.jpg_310x310.jpg', '', '', '漂风中的尘埃', 'http://jmcqc.taobao.com', '淘宝网', 'www.taobao.com', '33131', '1', '请选填颜色、尺寸等要求！', '220', '', 'attachment/order/201107/20110722110300_104.jpg', '', null, '1309961038', '1321754795', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('114', '60', 'ceshi1', null, '4', 'http://item.taobao.com/item.htm?id=8650747427&', '【冲冠促销】火爆热销夏日最新款蓬发造型道具5件套', '3.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T17xlTXglkXXcKxrjX_114313.jpg_310x310.jpg', '', '', '飘亮全衣服', 'http://521p.taobao.com', '淘宝网', 'www.taobao.com', '432424324', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201107/20110708000815_729.jpg', '', null, '1309961038', '1321754780', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('115', '74', 'lucas', null, '4', 'http://item.taobao.com/item.htm?id=9579880403&cm_cat=50019372', 'null', '888.00', '10.00', '1', 'null', 'M', '蓝色', 'null', '', '淘宝网', 'www.taobao.com', '56256', '1', '170/90 M, 蓝色', '0', '', '', '', null, '1310386471', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('116', '74', 'lucas', null, '4', 'http://item.taobao.com/item.htm?id=10068993816&prc=1&cm_cat=50011179', 'null', '20.00', '10.00', '1', 'null', '31', '卡其色', 'null', '', '淘宝网', 'www.taobao.com', '5625656', '1', '31-尺码偏小， 卡其色', '0', '', '', '', null, '1310386471', '1321754642', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('118', '77', '入土核桃肉g', null, '12', 'http://item.taobao.com/item.htm?id=10722453526&', 'null', '0.00', '0.00', '1', 'null', '11', '1', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '1', '0', '+2+6+2662', '', 'taobaopayid002', null, '1310797959', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('119', '77', '入土核桃肉g', null, '12', 'http://item.taobao.com/item.htm?id=10767240434&', 'null', '0.00', '0.00', '1', 'null', '43', '435', 'null', '', '淘宝网', 'www.taobao.com', '556556656', '1', '3454', '0', '', '', 'taobaopayid002', null, '1310797959', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('120', '81', 'harryQ', null, '12', 'http://item.taobao.com/item.htm?id=2596915263&', '全球最流行的杀人游戏！狼人精品中文版 包含 新月扩充 杀人牌', '3.50', '0.00', '19', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1HcVWXghvXXXPzF77_063452.jpg_310x310.jpg', '', '', '新思维玩意', 'http://newgame.taobao.com', '淘宝网', 'www.taobao.com', '553322664', '1', '请选填颜色、尺寸等要求！', '0', '操作', 'attachment/order/201107/20110723155907_960.jpg', 'taobaopayid002', null, '1311308387', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('121', '81', 'harryQ', null, '12', 'http://item.taobao.com/item.htm?id=9407175977', '◥◣新桌游◢◤ 纸牌版狼人村  便携版', '13.00', '10.00', '11', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1ZAN1XiFqXXXs_io8_100749.jpg_310x310.jpg', '', '', '新思维玩意', 'http://newgame.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201107/20110723155907_148.jpg', '', null, '1311308387', '1311404928', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('122', '69', 'myoutman', null, '12', 'http://item.taobao.com/item.htm?id=10759995600&', 'null', '0.00', '0.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, '', null, null, '1311399466', '1318660792', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('123', '69', 'myoutman', null, '12', 'http://item.taobao.com/item.htm?id=10759995600&', 'null', '0.00', '0.00', '1', 'null', '', '', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '0', null, '', 'paipaipayid', null, '1311399466', '1322269864', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('124', '66', 'zzqss', null, '4', 'http://item.taobao.com/item.htm?id=10759995600&', '缪诗 正品 豹纹部落 豹纹印花系带绕脖调整型超聚拢文胸 买上送下', '168.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1_FCiXhpXXXXy99E3_051218.jpg_310x310.jpg', '', '', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '262161', '1', '请选填颜色、尺寸等要求！', '0', 'dfbdfbdfbdbdf', 'attachment/order/201108/20110805110934_869.jpg', '', null, '1311661231', '1321754837', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('125', '66', 'zzqss', null, '4', 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', '27.80', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '', '', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201108/20110805110933_443.jpg', '', null, '1311661231', '1321763593', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('126', '85', 'patpat', null, '12', 'http://item.taobao.com/item.htm?id=12364551937&ref=&ali_trackid=2:mm_17142583_0_0,12173575:144076133_39_1717308621', '系比思 2011秋 蝴蝶袖花朵V领多穿法不起毛球纯棉线衫 原价485元', '285.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1W5B2XgpIXXbHYCgZ_033422.jpg_310x310.jpg', '', '', '佑寶寶', 'http://sibeas.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201108/20110805110933_257.jpg', 'paipaipayid', null, '1311822909', '1322269864', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('127', '99', 'senyi168', null, '4', 'http://item.taobao.com/item.htm?id=7335628526', '碎花伞水玉花 进口日本内黑胶 防紫外线伞 遮阳防晒伞/复古蔷薇花', '27.80', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1U0hKXetwXXbC9lg._112935.jpg_310x310.jpg', '', '', 'oinmind', 'http://oinmind.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201110/20111028182710_735.jpg', '', null, '1312533351', '1321763562', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('128', '99', 'senyi168', null, '4', 'http://item.taobao.com/item.htm?id=8872511864', '新款秒杀特价 男圆领短袖T恤 男T恤 男短袖T恤男', '45.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1LSGcXmBeXXbZlnEW_024717.jpg_310x310.jpg', '', '', '爱上无所谓', 'http://shop33280480.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201108/20110805164156_544.jpg', 'paipaipayid', null, '1312533351', '1322269864', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('136', '101', 'ryan', null, '12', 'http://item.taobao.com/item.htm?id=12228422733&ali_refid=a3_420650_1007:1103641931:7::af39befd48594afdaca0c6ff0018e830&ali_trackid=1_af39befd48594afdaca0c6ff0018e830', '全国包邮！华为E5805 HUAWEI 电信EVDO 3G无线路由器', '690.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1AhqjXcFaXXbvtos5_060318.jpg_310x310.jpg', '', '', 'wowx_bj', 'http://wowx.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '100', null, 'attachment/order/201108/20110806221636_400.jpg', 'paipaipayid', null, '1312593231', '1322298207', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('130', '100', 'badxiaofei', null, '12', 'http://item.taobao.com/item.htm?id=5005161552&', '红色 5米 嘉宾题名长卷/商务签到卷轴/圣旨签到簿/特价婚庆签名轴', '27.80', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1WhlxXmXyXXbpVns8_102009.jpg_310x310.jpg', '', '', '51佳缘喜铺', 'http://51xipu.taobao.com', '淘宝网', 'www.taobao.com', '24234324234', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201110/20111028182710_678.jpg', 'paipaipayid', null, '1312591216', '1322298119', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('131', '100', 'badxiaofei', null, '12', 'http://item.taobao.com/item.htm?id=5005161552&', '红色 5米 嘉宾题名长卷/商务签到卷轴/圣旨签到簿/特价婚庆签名轴', '27.80', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1WhlxXmXyXXbpVns8_102009.jpg_310x310.jpg', '', '', '51佳缘喜铺', 'http://51xipu.taobao.com', '淘宝网', 'www.taobao.com', '24234324234', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201110/20111028182710_616.jpg', '', null, '1312591216', '1322297821', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('132', '100', 'badxiaofei', null, '12', 'http://item.taobao.com/item.htm?id=5005161552&', '红色 5米 嘉宾题名长卷/商务签到卷轴/圣旨签到簿/特价婚庆签名轴', '27.80', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1WhlxXmXyXXbpVns8_102009.jpg_310x310.jpg', '', '', '51佳缘喜铺', 'http://51xipu.taobao.com', '淘宝网', 'www.taobao.com', '242343242341', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201108/20110806221643_948.jpg', 'paipai0021', null, '1312591216', '1322572878', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('133', '100', 'badxiaofei', null, '12', 'http://item.taobao.com/item.htm?id=5005161552&', '红色 5米 嘉宾题名长卷/商务签到卷轴/圣旨签到簿/特价婚庆签名轴', '27.80', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1WhlxXmXyXXbpVns8_102009.jpg_310x310.jpg', '', '', '51佳缘喜铺', 'http://51xipu.taobao.com', '淘宝网', 'www.taobao.com', '24234324234', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201110/20111028182710_397.jpg', null, null, '1312591216', '1312591464', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('134', '100', 'badxiaofei', null, '12', 'http://item.taobao.com/item.htm?id=5005161552&', '红色 5米 嘉宾题名长卷/商务签到卷轴/圣旨签到簿/特价婚庆签名轴', '27.80', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1WhlxXmXyXXbpVns8_102009.jpg_310x310.jpg', '', '', '51佳缘喜铺', 'http://51xipu.taobao.com', '淘宝网', 'www.taobao.com', '24234324234', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201108/20110806221641_336.jpg', null, null, '1312591216', '1312591464', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('135', '100', 'badxiaofei', null, '12', 'http://item.taobao.com/item.htm?id=5005161552&', '红色 5米 嘉宾题名长卷/商务签到卷轴/圣旨签到簿/特价婚庆签名轴', '27.80', '10.00', '5', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1WhlxXmXyXXbpVns8_102009.jpg_310x310.jpg', '', '', '51佳缘喜铺', 'http://51xipu.taobao.com', '淘宝网', 'www.taobao.com', '24234324234', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201108/20110806221638_883.jpg', null, null, '1312591216', '1312591464', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('137', '101', 'ryan', null, '12', 'http://item.taobao.com/item.htm?id=12228422733&ali_refid=a3_420650_1007:1103641931:7::af39befd48594afdaca0c6ff0018e830&ali_trackid=1_af39befd48594afdaca0c6ff0018e830', '全国包邮！华为E5805 HUAWEI 电信EVDO 3G无线路由器', '690.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1AhqjXcFaXXbvtos5_060318.jpg_310x310.jpg', 'wes', 'hdf', 'wowx_bj', 'http://wowx.taobao.com', '淘宝网', 'www.taobao.com', '122341234', '1', '请选填颜色、尺寸等要求！', '1000', 'aeftaweawead', 'attachment/order/201108/20110806221633_686.jpg', 'paipaipayid 10 ', null, '1312593231', '1322301827', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('138', '100', 'badxiaofei', null, '12', 'http://item.taobao.com/item.htm?id=5005161552', '红色 5米 嘉宾题名长卷/商务签到卷轴/圣旨签到簿/特价婚庆签名轴', '27.80', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1WhlxXmXyXXbpVns8_102009.jpg_310x310.jpg', '', '', '51佳缘喜铺', 'http://51xipu.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201110/20111028182710_843.jpg', '', null, '1312692861', '1313390282', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('139', '100', 'badxiaofei', null, '12', 'http://item.taobao.com/item.htm?id=10890644420', '[限量]STAYREAL x Molly时尚巧物包+ ELLE Girl杂志6月号魔力版', '55.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T12xBPXhhBXXcNjzQ__110116.jpg_310x310.jpg', '', '', '最熟悉陌生人皓', 'http://stayreal.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201110/20111020010208_143.jpg', null, null, '1312692861', '1318660792', '4', '0', '1');
INSERT INTO `yqt_order` VALUES ('140', '100', 'badxiaofei', null, '12', 'http://item.taobao.com/item.htm?id=10890644420', '[限量]STAYREAL x Molly时尚巧物包+ ELLE Girl杂志6月号魔力版', '55.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T12xBPXhhBXXcNjzQ__110116.jpg_310x310.jpg', 's size', '红色', '最熟悉陌生人皓', 'http://stayreal.taobao.com', '淘宝网', 'www.taobao.com', '2132132132323', '1', '提交吧', '0', '', 'attachment/order/201110/20111020010208_728.jpg', '', null, '1312692861', '1321754512', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('141', '1', 'admin', null, '12', 'http://demo.ebaycms.com/', '请问俄', '12.00', '10.00', '1', '', '1212', '', 'demo.ebaycms.com', 'http://demo.ebaycms.com', '其他网站', '###', '', '1', 'オプションのカラー、サイズその他の要件をしてください！12', '0', null, null, null, null, '1312874365', '1318660792', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('143', '103', 'jianghualove', null, '12', 'http://item.taobao.com/item.htm?id=12493864809&cm_cat=50010850', '2011新款 收腰修身飘逸雪纺连衣裙 淑女高腰V领连衣裙外套', '310.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1Sr45XelzXXcP9Aw__080213.jpg_310x310.jpg', 'M', '绿色', '小宝宝天堂', 'http://xbbtt.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'baibseseessexxxxxxxxlxlllx', '0', null, 'attachment/order/201110/20111020010208_341.jpg', null, null, '1313230649', '1313231947', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('144', '103', 'jianghualove', null, '12', 'http://item.taobao.com/item.htm?id=10944582046&cm_cat=50019372', '国内现货正品AF代购Abercrombie印第安刺绣头像亨利领短T恤补货', '399.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1YZtsXnFtXXbXIuI._082107.jpg_310x310.jpg', '', '', '加州甜甜橙', 'http://shop59962140.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'M', '0', null, 'attachment/order/201110/20111020010208_386.jpg', null, null, '1313230722', '1318660792', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('145', '103', 'jianghualove', null, '12', 'http://item.taobao.com/item.htm?id=8114116802&ad_id=&am_id=&cm_id=&pm_id=', '电器城Lenovo/联想 3GW101 W101 乐Phone LEPHONE+ 安卓2.2系统', '1680.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1eLmdXmVbXXcckGI._111301.jpg_310x310.jpg', '', '黑色', '天人数码专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201110/20111020010208_586.jpg', null, null, '1313303583', '1318660792', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('146', '103', 'jianghualove', null, '12', 'http://item.taobao.com/item.htm?id=8114116802&ad_id=&am_id=&cm_id=&pm_id=', '电器城Lenovo/联想 3GW101 W101 乐Phone LEPHONE+ 安卓2.2系统', '1680.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1eLmdXmVbXXcckGI._111301.jpg_310x310.jpg', '', '', '天人数码专营店', '', '淘宝网', 'www.taobao.com', '', '1', '黑色', '0', null, 'attachment/order/201110/20111015145936_977.jpg', null, null, '1313303583', '1318660792', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('147', '48', '小张', '23', '12', 'http://item.taobao.com/item.htm?id=8114116802&ad_id=&am_id=&cm_id=&pm_id=', '电器城Lenovo/联想 3GW101 W101 乐Phone LEPHONE+ 安卓2.2系统', '1670.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1eLmdXmVbXXcckGI._111301.jpg_310x310.jpg', '从下半场', '不查询', '天人数码专营店', '', '淘宝网', 'www.taobao.com', '', '1', 'cxb程序包', '600', '', 'attachment/order/201110/20111015145936_457.jpg', '', null, '1313391040', '1322068436', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('148', '48', '小张', '24', '12', 'http://item.taobao.com/item.htm?id=12364551937&ref=&ali_trackid=2:mm_17142583_0_0,12173575:144076133_39_1717308621', '系比思 2011秋 蝴蝶袖花朵V领多穿法不起毛球纯棉线衫 原价485元', '285.00', '10.00', '2', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1W5B2XgpIXXbHYCgZ_033422.jpg_310x310.jpg', '', '', '佑寶寶', 'http://sibeas.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '500', '', 'attachment/order/201110/20111015145936_114.jpg', '', null, '1313391040', '1322068436', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('149', '48', '小张', null, '12', 'http://item.taobao.com/item.htm?id=8114116802&ad_id=&am_id=&cm_id=&pm_id=', '电器城Lenovo/联想 3GW101 W101 乐Phone LEPHONE+ 安卓2.2系统', '1670.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1eLmdXmVbXXcckGI._111301.jpg_310x310.jpg', '', '', '天人数码专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201110/20111015145936_869.jpg', null, null, '1313394365', '1318660792', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('150', '48', '小张', null, '12', 'http://item.taobao.com/item.htm?id=10890644420', '[限量]STAYREAL x Molly时尚巧物包+ ELLE Girl杂志6月号魔力版', '55.00', '10.00', '4', 'http://img01.taobaocdn.com/bao/uploaded/i1/T12xBPXhhBXXcNjzQ__110116.jpg_310x310.jpg', '', '', '最熟悉陌生人皓', 'http://stayreal.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '600', '', 'attachment/order/201110/20111015145936_434.jpg', '', null, '1313394365', '1313394416', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('151', '48', '小张', '25', '12', 'http://item.taobao.com/item.htm?id=4770192509', '好评+回头客=推荐 碳香烤章鱼足片（特级） 海鲜鱿鱼足片', '16.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1mu4HXg8qXXc4MOI3_050416.jpg_310x310.jpg', '', '', '美然阁', 'http://meirange.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '500', '', 'attachment/order/201110/20111015145936_895.jpg', '', null, '1313394365', '1322068436', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('152', '48', '小张', null, '12', 'http://item.taobao.com/item.htm?id=8114116802&ad_id=&am_id=&cm_id=&pm_id=', '电器城Lenovo/联想 3GW101 W101 乐Phone LEPHONE+ 安卓2.2系统', '1670.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1eLmdXmVbXXcckGI._111301.jpg_310x310.jpg', '浮动', '', '天人数码专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201110/20111015145936_816.jpg', null, null, '1313396166', '1318660792', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('153', '0', '', null, '12', 'http://item.taobao.com/item.htm?id=10890644420', '[限量]STAYREAL x Molly时尚巧物包+ ELLE Girl杂志6月号魔力版', '55.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T12xBPXhhBXXcNjzQ__110116.jpg_310x310.jpg', '', '', '最熟悉陌生人皓', 'http://stayreal.taobao.com', '淘宝网', 'www.taobao.com', '', '2', 'pieceRemark', '0', '', 'attachment/order/201110/20111014154529_707.jpg', '', '0', '1313396731', '1321754788', '6', '139', '0');
INSERT INTO `yqt_order` VALUES ('154', '104', 'testing', null, '12', 'http://item.taobao.com/item.htm?id=8205340680&cm_cat=26&_u=umqdvv844fb#', '正品7寸E路航X10 双核高清 旅游汽车车载GPS导航仪 一体机 包邮', '327.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1EmCrXXNBXXcbqJAZ_031714.jpg_310x310.jpg', '', '', 'bb_wamg', 'http://bbwamg.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201110/20111015145936_745.jpg', '', null, '1318298814', '1381727577', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('155', '71', 'awenchao', '26', '12', 'http://item.taobao.com/item.htm?id=3217775862', '可爱公主裙/黑色酷绚裙/DS娃娃动漫表演出场服/AV角色扮演装MZ001', '62.00', '12.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T143FBXnXgXXbKPNfb_094235.jpg_310x310.jpg', 'ab', 'fdsf', '美子小铺520', 'http://meizixiaopu520.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '500', '', 'attachment/order/201110/20111014154528_796.jpg', '', null, '1318403849', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('156', '107', 'fccsh', '27', '12', 'http://detail.taobao.com/venus/spu_detail.htm?rn=08e17fe8447f1ef697d365846ff629b5&entryNum=0&mallstItemId=3534652013&spu_id=132714710&prc=1&userBucket=4', '5折 NIKE/耐克 10年冬季男子复克鞋386156', '288.00', '12.00', '1', 'null', '43', '黑', 'top运动名品专营店', '', '淘宝网', 'www.taobao.com', '123456', '1', '要潇洒', '500', '', '', '', null, '1318558804', '1322189164', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('157', '109', 'lili', '28', '12', 'http://item.taobao.com/item.htm?id=8240363581', '正品秒杀 Moer摩尔烟嘴 CG', '38.00', '12.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T18KN7XkXGXXbEBJQ._111701.jpg_310x310.jpg', '', '', '艺术馒头2008', 'http://55346699.taobao.com', '淘宝网', 'www.taobao.com', '9999999', '1', '我对此商品无任何特殊备注。', '90', '', 'attachment/order/201110/20111015145936_163.jpg', '', null, '1318661017', '1322570118', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('158', '109', 'lili', '28', '12', 'http://item.taobao.com/item.htm?id=1234709371', '◆皇冠特价◆C 内裤', '9.90', '12.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1UI4OXnpfXXaLcuZU_014429.jpg_310x310.jpg', 'm', 'grey', '妞妞美馆', 'http://shop33639325.taobao.com', '淘宝网', 'www.taobao.com', '7878788', '1', '我对此商品无任何特殊备注。', '800', '', 'attachment/order/201110/20111015145925_184.jpg', '', null, '1318661017', '1322297821', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('159', '110', 'test123', '29', '12', 'http://item.taobao.com/item.htm?id=12893673880', 'fitflop Dass 专柜正品 塑身瘦身鞋 人字夹脚拖 男士鞋', '130.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1vtWsXktRXXbhLFQ2_043041.jpg_310x310.jpg', '', '', '1124zhen', 'http://shop69091742.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '2', '100', null, 'attachment/order/201110/20111020010208_406.jpg', null, null, '1318779678', '1322068436', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('160', '61', 'test123', '29', '12', 'http://item.taobao.com/item.htm?id=10722453526', '【淘金币】缪诗 正品 恋爱季节 棉质舒适聚拢文胸 买衣送裤', '79.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1VfegXcxvXXbdSITa_120441.jpg_310x310.jpg', 'm', 'm', '私房小女', 'http://mmusestb.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '100', '', 'attachment/order/201110/20111020010208_122.jpg', '', null, '1318779678', '1321754756', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('161', '111', 'daigoutest', '30', '12', 'http://daigou.dayusheji.com/shop.php?action=view&gid=6', '夏装新款☆青花瓷之恋☆高档印花棉 超显身材的开叉旗袍 特119！', '119.00', '0.00', '1', 'templates/default/images/7686.jpg', '', '', 'daigou.dayusheji.com', 'http://daigou.dayusheji.com', '免邮商品', 'daigou.dayusheji.com', '', '1', '请选填颜色、尺寸等要求！', '1200', '', '', '', null, '1318835082', '1322068436', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('162', '124', 'ryanlee', null, '12', 'http://item.taobao.com/item.htm?id=13203900301', '2011新款  冬装外套 棉袄男 韩版棉服外套男士短款毛领棉服男棉衣', '99.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i7/T13rixXk4eXXaNjmg1_042301.jpg_310x310.jpg', '1', '1', 'wlovez2009', 'http://shop59749335.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '1000', null, 'attachment/order/201111/20111101131333_985.jpg', null, null, '1319975841', '1319975861', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('163', '114', 'www', null, '12', 'http://item.taobao.com/item.htm?id=12387951989&ad_id=&am_id=&cm_id=&pm_id=', '山西老陈醋 山西特产 山西陈醋 宁化府山西老陈醋 2400ml', '26.80', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1AUF8XdtpXXcfs179_102957.jpg_310x310.jpg', '', '', '庄稼汉食品专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1', '', 'attachment/order/201111/20111107111829_642.jpg', '', null, '1320248916', '1320249283', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('164', '120', 'test12345', null, '12', 'http://item.taobao.com/item.htm?id=8908577502', '华为E5 E5s二代 e5832 E5832S 3G 无线路由器 LOED屏 IPAD专用', '535.00', '15.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1504WXiVjXXc4ip_X_113845.jpg_310x310.jpg', '1', '1', '六月飘钱', 'http://szedup.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '200', '', 'attachment/order/201111/20111107111829_306.jpg', '', null, '1320297817', '1320297886', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('165', '71', 'awenchao', '31', '12', 'http://item.taobao.com/item.htm?id=10293116084', '奢恋之名红粉香香 欧洲代购', '7350.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1S3OcXnXiXXc9.nQ._113554.jpg_310x310.jpg', 'df', 'dfd', '红粉香香', 'http://hongfenxiangxiang.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '500', '', 'attachment/order/201111/20111107111828_870.jpg', '', null, '1320414228', '1321754642', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('166', '123', 'xiaozhang', null, '12', 'http://item.taobao.com/item.htm?id=3217775862', '可爱公主裙/黑色酷绚裙/DS娃娃动漫表演出场服/AV角色扮演装MZ001', '62.00', '20.00', '3', 'http://img04.taobaocdn.com/bao/uploaded/i8/T143FBXnXgXXbKPNfb_094235.jpg_310x310.jpg', '', '', '美子小铺520', 'http://meizixiaopu520.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201111/20111109135420_481.jpg', '', null, '1320733529', '1321754512', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('167', '123', 'xiaozhang', null, '12', 'http://item.taobao.com/item.htm?id=8240363581', '正品秒杀 Moer摩尔烟嘴 CG', '38.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T18KN7XkXGXXbEBJQ._111701.jpg_310x310.jpg', '', '', '艺术馒头2008', 'http://55346699.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201111/20111109135420_212.jpg', null, null, '1320733529', '1321187380', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('168', '123', 'xiaozhang', null, '12', 'http://item.taobao.com/item.htm?id=10293116084', '奢恋之名红粉香香 欧洲代购', '7350.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1S3OcXnXiXXc9.nQ._113554.jpg_310x310.jpg', '', '', '红粉香香', 'http://hongfenxiangxiang.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201111/20111109135420_261.jpg', null, null, '1320733529', '1320812596', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('173', '106', 'teamilk', null, '12', 'http://item.taobao.com/item.htm?id=13904400009', '[Tmall狂欢节]PPZ男装 男士细格暗门襟纯棉长袖格子衬衫衣zbcc011', '99.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1Q3qvXjpTXXbDaB72_044910.jpg_310x310.jpg', '', '', 'ppz旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201111/20111117130217_619.jpg', 'paipaipayid', null, '1320991131', '1322269864', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('171', '106', 'teamilk', null, '12', 'http://item.taobao.com/item.htm?id=7828257152&ali_trackid=4_6007_3-2&ad_id=&am_id=&cm_id=&pm_id=', '【金牌秒杀】女款 可爱棉拖鞋 全包跟保暖鞋 立体卡通 现货！', '29.00', '12.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1CuqmXgxtXXXPgwfX_084932.jpg_310x310.jpg', '均码', '小免', 'amy_shoes', 'http://7557.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我要小兔子的', '0', '', 'attachment/order/201111/20111109135220_348.jpg', '', null, '1320817687', '1321754642', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('172', '106', 'teamilk', null, '12', 'http://item.taobao.com/item.htm?id=13121219189', '买二送一正品贝令妃小样benefit贝玲妃终极丰润唇膏口红1.2G4色选', '16.00', '20.00', '10', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1unWxXi4zXXXTnIo9_102627.jpg_310x310.jpg', '6', '6', '陈小丽19861006', 'http://chaoliouguan.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '6', '500', '', 'attachment/order/201111/20111109191611_729.jpg', 'paipaipayid', null, '1320821065', '1322269864', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('174', '136', 'cnstorm', null, '12', 'http://item.taobao.com/item.htm?spm=541.148259.178780.15&id=13744316343', '绝美天使2011冬装新款绝美双鹿麻花收腰针织厚长袖连衣裙3103', '258.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1TlCtXgVwXXXM_wIV_020610.jpg_310x310.jpg', '35', 'bl', '绝美天使', 'http://whats-angel.taobao.com', '淘宝网', 'www.taobao.com', '1111', '1', 'test', '0', '', 'attachment/order/201111/20111117130217_134.jpg', '', null, '1321054805', '1321763580', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('175', '136', 'cnstorm', null, '12', 'http://item.taobao.com/item.htm?spm=541.148259.178780.15&id=13744316343', '绝美天使2011冬装新款绝美双鹿麻花收腰针织厚长袖连衣裙3103', '258.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1TlCtXgVwXXXM_wIV_020610.jpg_310x310.jpg', '35', 'bl', '绝美天使', 'http://whats-angel.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'test', '0', '', 'attachment/order/201111/20111117130217_137.jpg', 'paipaipayid', null, '1321196431', '1322269864', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('176', '140', 'pengliubo', null, '12', 'http://item.taobao.com/item.htm?id=9866036686&ad_id=&am_id=&cm_id=&pm_id=', 'Ecshop 二次开发的代购商城系统 代购商城模板', '350.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1O_06Xf4fXXa65bcY_025458.jpg_310x310.jpg', '', '', 'yanchunlan88', 'http://shtml.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201111/20111117130217_575.jpg', '', null, '1321325922', '1321762201', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('177', '140', 'pengliubo', null, '12', 'http://item.taobao.com/item.htm?id=9866036686', 'Ecshop 二次开发的代购商城系统 代购商城模板', '350.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1O_06Xf4fXXa65bcY_025458.jpg_310x310.jpg', '', '', 'yanchunlan88', 'http://shtml.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '0', '', 'attachment/order/201111/20111117130217_241.jpg', '', null, '1321326441', '1321763573', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('178', '139', 'ceshi1234567890', null, '12', 'http://item.taobao.com/item.htm?id=13104021042', '全新PS3正版 使命召唤8 现代战争3 COD8 MWF3 美版 现货即发', '308.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1H_l6XixwXXbtWZc7_064033.jpg_310x310.jpg', '', '', '电玩大批发', 'http://shop36557911.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201111/20111117130217_533.jpg', 'paipaipayid', null, '1321333007', '1322269864', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('179', '139', 'ceshi1234567890', null, '12', 'http://item.taobao.com/item.htm?id=14049368218', 'PS3游戏 神秘海域3 神秘3铁盒港版中文双特典版 现货', '315.00', '5.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1ooitXodTXXXSix.T_012211.jpg_310x310.jpg', '', '', 'chill_welkin', 'http://princessgame.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201111/20111117130216_191.jpg', '', null, '1321355208', '1321754642', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('180', '139', 'ceshi1234567890', null, '12', 'http://item.taobao.com/item.htm?id=3551342655', '护肤正品御泥坊逗逗矿物泥浆面膜300g祛痘收缩毛孔去除粉刺搓暗疮', '268.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1rWNPXdxdXXXC3KI__105854.jpg_310x310.jpg', '', '', '御泥坊旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201111/20111117130216_686.jpg', '', null, '1321355209', '1321765596', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('181', '139', 'ceshi1234567890', null, '12', 'http://item.taobao.com/item.htm?id=12440498978', 'Sony PS3游戏机3.55', '2000.00', '5.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1SnB6XcBvXXXZdbM3_045925.jpg_310x310.jpg', '', '', 'chill_welkin', 'http://princessgame.taobao.com', '淘宝网', 'www.taobao.com', '圆通34578234545', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201111/20111117130216_115.jpg', '', null, '1321355209', '1321765587', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('182', '139', 'ceshi1234567890', null, '12', 'http://item.taobao.com/item.htm?id=4642394277&ad_id=&am_id=&cm_id=&pm_id=', '〖自动充值〗梦幻国度点卡50元直充/梦幻国度50梦幻点券直充', '45.80', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1ixJGXoNDXXcE_Zk0_034503.jpg_310x310.jpg', '', '', '欧飞网游数卡专营店', '', '淘宝网', 'www.taobao.com', '', '1', '', '0', '缺货', 'attachment/order/201111/20111117130216_671.jpg', '', null, '1321356245', '1321356618', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('183', '129', 'bobo', null, '12', 'http://item.taobao.com/item.htm?id=2695138689&ref=http%3A%2F%2Fsearch8.taobao.com%2Fsearch%3Fq%3D%25B1%25B6%25B6%25F7%25C1%25A6%26commend%3Dall%26ssid%3Ds5-e%26pid%3Dmm_14507416_2297358_8935934&ali_trackid=2:mm_14507416_2297358_8935934,0:1320360438_4k1_18', '本期特惠 倍恩力丰之美强效丰满组合丰满素+血红素+胶原蛋白', '68.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i7/T17s8HXl0bXXbRRvja_091046.jpg_310x310.jpg', '5', '33', '便宜小店_007', 'http://pianyixiaodian-007.taobao.com', '淘宝网', 'www.taobao.com', '21432432', '1', '请选填颜色、尺寸等要求！', '344', '', null, 'paipaipayid', null, '1321873723', '1322269864', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('185', '151', 'gingerbread8979', null, '12', 'http://item.taobao.com/item.htm?id=12872238972&', 'rilakkuma 轻松小熊 iphone 4G 3GS ipod touch 手机支架 底座', '12.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1O9yjXlVpXXcLZmk8_071549.jpg_310x310.jpg', '', '', 'fangjunpinguo1', 'http://shop65471660.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1321951352', '1322199653', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('186', '157', 'baobei123', null, '12', 'http://item.taobao.com/item.htm?id=12872238972&', 'rilakkuma 轻松小熊 iphone 4G 3GS ipod touch 手机支架 底座', '12.00', '20.00', '3', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1O9yjXlVpXXcLZmk8_071549.jpg_310x310.jpg', '', '', 'fangjunpinguo1', 'http://shop65471660.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1321983547', '1322041659', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('187', '106', 'teamilk', null, '12', 'http://item.taobao.com/item.htm?id=12532465090', '比伦奴 2011秋装新款韩版双翻领机车短款女皮衣小夹克1H1155P0', '188.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1zIOlXlhaXXbNX9vb_125211.jpg_310x310.jpg', '', '', 'bilunnu旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1322025122', '1322068169', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('188', '157', 'baobei123', null, '12', 'http://item.taobao.com/item.htm?id=12697040467', '欧美秋冬季新款厚底裸色高跟鞋女韩版漆皮单鞋子防水台超高跟鞋', '55.00', '567.00', '9', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1.tuuXa4NXXb3cb35_055131.jpg_310x310.jpg', '39', '黑色123', '笨左手11', 'http://lvss.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1322068589', '1322198856', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('189', '158', 'teamilk', null, '12', 'http://detail.taobao.com/item.htm?spm=3.154691.185816.1&id=6995393036&prt=1322097537346&prc=1', ' haier/海尔 XQG50', '2110.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1W9OBXbleXXcfyQPa_092045.jpg_310x310.jpg', '', '', '海尔官方旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1322097900', '1322296570', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('190', '158', 'teamilk', '53', '12', 'http://item.taobao.com/item.htm?id=12532465090', '比伦奴 2011秋装新款韩版双翻领机车短款女皮衣小夹克1H1155P0', '188.00', '26.00', '2', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1zIOlXlhaXXbNX9vb_125211.jpg_310x310.jpg', '', '黑', 'bilunnu旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '黑', '28', 'EE636222222CN', null, '', null, '1322113924', '1322199653', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('191', '158', 'teamilk', null, '12', 'http://item.taobao.com/item.htm?id=10499287453', 'D', '149.00', '68.00', '8', 'http://img01.taobaocdn.com/bao/uploaded/i1/321269862/T2nFtKXjNXXXXXXXXX_!!321269862.jpg_310x310.jpg', '', '', 'kg516铨', 'http://d-luffy.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1322113924', '1322198483', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('192', '146', 'gangangan', null, '12', 'http://item.taobao.com/item.htm?spm=541.148259.178780.15&id=13744316343', '绝美天使2011冬装新款绝美双鹿麻花收腰针织厚长袖连衣裙3103', '258.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1TlCtXgVwXXXM_wIV_020610.jpg_310x310.jpg', '', '', '绝美天使', 'http://whats-angel.taobao.com', '淘宝网', 'www.taobao.com', '123213123', '1', '请选填颜色、尺寸等要求！', '10', '', null, '', null, '1322127779', '1322130067', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('193', '146', 'gangangan', null, '12', 'http://item.taobao.com/item.htm?id=4642394277&ad_id=&am_id=&cm_id=&pm_id=', '〖自动充值〗梦幻国度点卡50元直充/梦幻国度50梦幻点券直充', '45.80', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1ixJGXoNDXXcE_Zk0_034503.jpg_310x310.jpg', '', '', '欧飞网游数卡专营店', '', '淘宝网', 'www.taobao.com', '121212232', '1', '请选填颜色、尺寸等要求！', '1', '', null, '', null, '1322127779', '1322130077', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('194', '163', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?id=4642394277&ad_id=&am_id=&cm_id=&pm_id=', '〖自动充值〗梦幻国度点卡50元直充/梦幻国度50梦幻点券直充', '45.80', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1ixJGXoNDXXcE_Zk0_034503.jpg_310x310.jpg', '', '', '欧飞网游数卡专营店', '', '淘宝网', 'www.taobao.com', '2222222222', '2', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1322200672', '1322740307', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('195', '163', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?id=4642394277&ad_id=&am_id=&cm_id=&pm_id=', '〖自动充值〗梦幻国度点卡50元直充/梦幻国度50梦幻点券直充', '45.80', '20.00', '6', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1ixJGXoNDXXcE_Zk0_034503.jpg_310x310.jpg', '', '', '欧飞网游数卡专营店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1322200672', '1322560371', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('196', '163', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?spm=3.154686.185768.11&id=13022850479', '维多利亚皇家经典系列 汽车头枕颈枕 车用头枕颈枕 护颈枕 对装', '80.00', '26.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i8/T1bQqvXhBiXXasCJgY_025729.jpg_310x310.jpg', '1', '赤', '世僖汽车用品专营店', '', '淘宝网', 'www.taobao.com', '1111111111', '1', 'ni hao ', '0', '', null, '', null, '1322200672', '1322740307', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('197', '160', 'zzqss', '33', '2', 'http://detail.taobao.com/item.htm?spm=3.154691.185816.1&id=6995393036&prt=1322097537346&prc=1', ' haier/海尔 XQG50', '2110.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1W9OBXbleXXcfyQPa_092045.jpg_310x310.jpg', '', '', '海尔官方旗舰店', '', '淘宝网', 'www.taobao.com', '457345613', '1', '请选填颜色、尺寸等要求！', '2864', '', null, '', null, '1322200914', '1322302811', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('198', '160', 'zzqss', '33', '2', 'http://item.taobao.com/item.htm?id=10499287453', 'D', '149.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/321269862/T2nFtKXjNXXXXXXXXX_!!321269862.jpg_310x310.jpg', '', '', 'kg516铨', 'http://d-luffy.taobao.com', '淘宝网', 'www.taobao.com', '24352345', '1', '请选填颜色、尺寸等要求！', '376', '', null, '', null, '1322200914', '1322302811', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('199', '160', 'zzqss', '33', '12', 'http://item.taobao.com/item.htm?spm=541.148259.178780.15&id=13744316343', '绝美天使2011冬装新款绝美双鹿麻花收腰针织厚长袖连衣裙3103', '258.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1TlCtXgVwXXXM_wIV_020610.jpg_310x310.jpg', '', '', '绝美天使', 'http://whats-angel.taobao.com', '淘宝网', 'www.taobao.com', '34564', '1', '请选填颜色、尺寸等要求！', '500', null, null, null, null, '1322200914', '1322302811', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('200', '160', 'zzqss', '33', '12', 'http://item.taobao.com/item.htm?id=4642394277&ad_id=&am_id=&cm_id=&pm_id=', '〖自动充值〗梦幻国度点卡50元直充/梦幻国度50梦幻点券直充', '45.80', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i5/T1ixJGXoNDXXcE_Zk0_034503.jpg_310x310.jpg', '', '', '欧飞网游数卡专营店', '', '淘宝网', 'www.taobao.com', '12343523452345', '1', '请选填颜色、尺寸等要求！', '5000', null, null, null, null, '1322200914', '1322302811', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('201', '162', 'nihao', '40', '12', 'http://item.taobao.com/item.htm?id=10133789317', '5钻信誉~美国SNAP', '63.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1dAJ.Xj8DXXamAlk3_051038.jpg_310x310.jpg', '', '', '华龙汽摩配', 'http://shop57925095.taobao.com', '淘宝网', 'www.taobao.com', '2351245135', '1', '请选填颜色、尺寸等要求！', '500', '', null, '', null, '1322268064', '1322446405', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('202', '162', 'nihao', '40', '12', 'http://item.taobao.com/item.htm?id=10133789317', '5钻信誉~美国SNAP', '63.00', '20.00', '6', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1dAJ.Xj8DXXamAlk3_051038.jpg_310x310.jpg', '', '', '华龙汽摩配', 'http://shop57925095.taobao.com', '淘宝网', 'www.taobao.com', '2352351235', '1', '请选填颜色、尺寸等要求！', '3000', '', null, '', null, '1322268064', '1322446892', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('203', '162', 'nihao', '40', '12', 'http://item.taobao.com/item.htm?id=3531027570', 'G点潮吹女性自慰器220V直流仙女AV棒按摩棒/苍井空最爱震动棒跳蛋', '38.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T13T9fXilfXXXhOW7__105411.jpg_310x310.jpg', '', '', '志诚轩', 'http://zhichengxuan.taobao.com', '淘宝网', 'www.taobao.com', '2352351235', '1', '请选填颜色、尺寸等要求！', '500', '', null, '', null, '1322268064', '1322446885', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('204', '162', 'nihao', '46', '12', 'http://item.taobao.com/item.htm?id=10133789317', '5钻信誉~美国SNAP', '63.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1dAJ.Xj8DXXamAlk3_051038.jpg_310x310.jpg', '', '', '华龙汽摩配', 'http://shop57925095.taobao.com', '淘宝网', 'www.taobao.com', '2352351235', '1', '请选填颜色、尺寸等要求！', '500', '', null, '', null, '1322268064', '1322453680', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('205', '164', 'nihao', '40', '12', 'http://item.taobao.com/item.htm?id=10133789317', '5钻信誉~美国SNAP', '63.00', '20.00', '20', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1dAJ.Xj8DXXamAlk3_051038.jpg_310x310.jpg', '', '', '华龙汽摩配', 'http://shop57925095.taobao.com', '淘宝网', 'www.taobao.com', '2351235135', '1', '请选填颜色、尺寸等要求！', '3000', '', null, '', null, '1322270013', '1322446405', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('206', '164', 'nihao', '37', '12', 'http://item.taobao.com/item.htm?id=10133789317', '5钻信誉~美国SNAP', '63.00', '20.00', '190', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1dAJ.Xj8DXXamAlk3_051038.jpg_310x310.jpg', '', '', '华龙汽摩配', 'http://shop57925095.taobao.com', '淘宝网', 'www.taobao.com', '2352351235', '1', '请选填颜色、尺寸等要求！', '8000', '', null, '98765', null, '1322270745', '1322446906', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('207', '163', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?id=12532465090', '比伦奴 2011秋装新款韩版双翻领机车短款女皮衣小夹克1H1155P0', '188.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1zIOlXlhaXXbNX9vb_125211.jpg_310x310.jpg', 'M', '黄色', 'bilunnu旗舰店', '', '淘宝网', 'www.taobao.com', '1111111111', '1', '请选填颜色、尺寸等要求！', '1', '', null, '', null, '1322286341', '1322740307', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('208', '163', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?id=12532465090', '比伦奴 2011秋装新款韩版双翻领机车短款女皮衣小夹克1H1155P0', '200.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1zIOlXlhaXXbNX9vb_125211.jpg_310x310.jpg', 'M', '黄色', 'bilunnu旗舰店', '', '淘宝网', 'www.taobao.com', '2222222222', '1', '黑色，L 尺寸', '1', '', null, '', null, '1322286341', '1322740307', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('209', '163', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?id=12532465090', '比伦奴 2011秋装新款韩版双翻领机车短款女皮衣小夹克1H1155P0', '188.00', '40.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1zIOlXlhaXXbNX9vb_125211.jpg_310x310.jpg', 'M', '黄色', 'bilunnu旗舰店', '', '淘宝网', 'www.taobao.com', '1111111111', '1', '棕色，M尺寸', '1', '', null, '', null, '1322286341', '1322740307', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('210', '160', 'zzqss', '33', '12', 'http://item.taobao.com/item.htm?id=12532465090', '比伦奴 2011秋装新款韩版双翻领机车短款女皮衣小夹克1H1155P0', '188.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1zIOlXlhaXXbNX9vb_125211.jpg_310x310.jpg', '', '', 'bilunnu旗舰店', '', '淘宝网', 'www.taobao.com', '32452', '1', '请选填颜色、尺寸等要求！', '1000', 'werqwe', null, null, null, '1322296178', '1322302811', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('211', '160', 'zzqss', '33', '12', 'http://item.taobao.com/item.htm?id=12532465090', '比伦奴 2011秋装新款韩版双翻领机车短款女皮衣小夹克1H1155P0', '188.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1zIOlXlhaXXbNX9vb_125211.jpg_310x310.jpg', '', '', 'bilunnu旗舰店', '', '淘宝网', 'www.taobao.com', '45684568', '1', '请选填颜色、尺寸等要求！', '8848', null, null, null, null, '1322296178', '1322302811', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('212', '163', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?id=12532465090', '比伦奴 2011秋装新款韩版双翻领机车短款女皮衣小夹克1H1155P0', '188.00', '40.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1zIOlXlhaXXbNX9vb_125211.jpg_310x310.jpg', '', '', 'bilunnu旗舰店', '', '淘宝网', 'www.taobao.com', '11223233', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1322297258', '1322740307', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('213', '160', 'zzqss', '33', '12', 'http://item.taobao.com/item.htm?id=13203900301', '2011新款  冬装外套 棉袄男 韩版棉服外套男士短款毛领棉服男棉衣', '99.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i7/T13rixXk4eXXaNjmg1_042301.jpg_310x310.jpg', '', '', 'wlovez2009', 'http://shop59749335.taobao.com', '淘宝网', 'www.taobao.com', '3457457', '1', '请选填颜色、尺寸等要求！', '4097', null, null, null, null, '1322297679', '1322302811', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('214', '160', 'zzqss', '33', '12', 'http://item.taobao.com/item.htm?id=10133789317', '5钻信誉~美国SNAP', '63.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1dAJ.Xj8DXXamAlk3_051038.jpg_310x310.jpg', '', '', '华龙汽摩配', 'http://shop57925095.taobao.com', '淘宝网', 'www.taobao.com', '34563456', '1', '请选填颜色、尺寸等要求！', '555', null, null, null, null, '1322297679', '1322302811', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('215', '163', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?id=3103225172&ali_refid=a3_419252_1006:1102345032:6:%D0%DD%CF%D0:f01e1d95051923f38136a1db50e86b67&ali_trackid=1_f01e1d95051923f38136a1db50e86b67', '冲冠限时让利促销◆简洁舒适◆男潮鞋软皮软底懒人套脚日常休闲鞋', '276.00', '60.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1CuV7XexcXXb8lMk._112309.jpg_310x310.jpg', '', '', '蕙_蕙_2008', 'http://shop35819764.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1322300136', '1322310112', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('216', '163', 'yitouwushui', '0', '12', 'http://item.taobao.com/item.htm?id=8582509421&_u=q1iv6g9acce', '现代战争使命召唤2 TF', '255.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1dUtSXk8fXXaTICQ7_065700.jpg_310x310.jpg', '', '', '汪之襄', 'http://pjx1314520.taobao.com', '淘宝网', 'www.taobao.com', '122341234', '1', '请选填颜色、尺寸等要求！', '3', '', null, '', null, '1322300136', '1322740307', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('217', '163', 'yitouwushui', '58', '12', 'http://item.taobao.com/item.htm?id=3103225172&ali_refid=a3_419252_1006:1102345032:6:%D0%DD%CF%D0:f01e1d95051923f38136a1db50e86b67&ali_trackid=1_f01e1d95051923f38136a1db50e86b67', '冲冠限时让利促销◆简洁舒适◆男潮鞋软皮软底懒人套脚日常休闲鞋', '276.00', '60.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1CuV7XexcXXb8lMk._112309.jpg_310x310.jpg', '', '', '蕙_蕙_2008', 'http://shop35819764.taobao.com', '淘宝网', 'www.taobao.com', '122341234', '1', '请选填颜色、尺寸等要求！', '2', '', null, '', null, '1322300174', '1322740307', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('218', '160', 'zzqss', null, '12', 'http://item.taobao.com/item.htm?id=13203900301', '2011新款  冬装外套 棉袄男 韩版棉服外套男士短款毛领棉服男棉衣', '99.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i7/T13rixXk4eXXaNjmg1_042301.jpg_310x310.jpg', '', '', 'wlovez2009', 'http://shop59749335.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1322300282', '1383554126', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('219', '163', 'yitouwushui', '34', '12', 'http://item.taobao.com/item.htm?id=3103225172&ali_refid=a3_419252_1006:1102345032:6:%D0%DD%CF%D0:f01e1d95051923f38136a1db50e86b67&ali_trackid=1_f01e1d95051923f38136a1db50e86b67', '冲冠限时让利促销◆简洁舒适◆男潮鞋软皮软底懒人套脚日常休闲鞋', '280.00', '60.00', '9', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1CuV7XexcXXb8lMk._112309.jpg_310x310.jpg', '38', '白色', '蕙_蕙_2008', 'http://shop35819764.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '　ｇｆｄｇｈん無ｍｋ。ん。ｍん。･こひそ！', '6', 'こんにちは你好안녕EE111555676787887BNㅅㅅㄷ거ㅡㅡㅇㅍㅊ허ㅕㅏㅕ54ㄷｓｓｖｓｂｖｂGgＤｆｇｂｔ', null, '', null, '1322305048', '1322740307', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('220', '163', 'yitouwushui', '35', '12', 'http://item.taobao.com/item.htm?id=3103225172&ali_refid=a3_419252_1006:1102345032:6:%D0%DD%CF%D0:f01e1d95051923f38136a1db50e86b67&ali_trackid=1_f01e1d95051923f38136a1db50e86b67', '冲冠限时让利促销◆简洁舒适◆男潮鞋软皮软底懒人套脚日常休闲鞋', '276.00', '60.00', '2', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1CuV7XexcXXb8lMk._112309.jpg_310x310.jpg', '32', '白色', '蕙_蕙_2008', 'http://shop35819764.taobao.com', '淘宝网', 'www.taobao.com', '122341234', '1', '请选填颜色、尺寸等要求！', '1', '', null, '', null, '1322305048', '1322309437', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('227', '168', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?id=10505983379&prt=1322316463989&prc=1', 'Tmall狂欢节MODEKUU正品修身长款高端女士皮草羽绒服90%白鸭绒', '698.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1gFudXoNsXXcSRqZ4_052053.jpg_310x310.jpg', '', '', 'modekuu旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1322318801', '1322740307', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('224', '164', 'nihao', '40', '12', 'http://item.taobao.com/item.htm?id=12805757861&ali_refid=a3_419253_1006:1102230841:6::5a33a6aa578aa4499d0d178b26a1ad9e&ali_trackid=1_5a33a6aa578aa4499d0d178b26a1ad9e', '淘金币资生堂水之密语凝润水护洗护套装洗发水 修复损伤头发 包邮', '130.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1zRGuXX0iXXbiK2Z6_061558.jpg_310x310.jpg', '1', '1', 'ljafl888', 'http://fengzimeiye.taobao.com', '淘宝网', 'www.taobao.com', '2352351235', '1', '1套', '1', '', null, '', null, '1322314026', '1322446902', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('225', '168', 'yitouwushui', '38', '12', 'http://item.taobao.com/item.htm?id=10505983379&prt=1322316463989&prc=1', 'Tmall狂欢节MODEKUU正品修身长款高端女士皮草羽绒服90%白鸭绒', '698.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1gFudXoNsXXcSRqZ4_052053.jpg_310x310.jpg', 'M', '白色', 'modekuu旗舰店', '', '淘宝网', 'www.taobao.com', '的低功耗', '1', 'dkd', '1', '', null, '', null, '1322316805', '1322317243', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('226', '168', 'yitouwushui', '39', '12', 'http://item.taobao.com/item.htm?id=10505983379&prt=1322316463989&prc=1', 'Tmall狂欢节MODEKUU正品修身长款高端女士皮草羽绒服90%白鸭绒', '698.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1gFudXoNsXXcSRqZ4_052053.jpg_310x310.jpg', '', '', 'modekuu旗舰店', '', '淘宝网', 'www.taobao.com', '2352351235', '1', '请选填颜色、尺寸等要求！', '1', '', null, '', null, '1322317483', '1355207067', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('228', '168', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?id=10505983379&prt=1322316463989&prc=1', 'Tmall狂欢节MODEKUU正品修身长款高端女士皮草羽绒服90%白鸭绒', '698.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1gFudXoNsXXcSRqZ4_052053.jpg_310x310.jpg', '', '', 'modekuu旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1322318963', '1322740307', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('229', '168', 'yitouwushui', '44', '12', 'http://item.taobao.com/item.htm?id=10505983379&prt=1322316463989&prc=1', 'Tmall狂欢节MODEKUU正品修身长款高端女士皮草羽绒服90%白鸭绒', '698.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1gFudXoNsXXcSRqZ4_052053.jpg_310x310.jpg', '', '', 'modekuu旗舰店', '', '淘宝网', 'www.taobao.com', '2352351235', '1', '请选填颜色、尺寸等要求！', '1', '', null, '', null, '1322319479', '1322464806', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('230', '170', 'pam19941', null, '12', 'http://item.taobao.com/item.htm?id=13317873142&', '带3D功能 惠普 ENVY 17 金属外壳 四核i7', '6500.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1epaDXaVeXXcV5.kT_013305.jpg_310x310.jpg', '', '', 'hp918', 'http://hp918.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1322436505', '1322471744', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('231', '164', 'nihao', '40', '12', 'http://item.taobao.com/item.htm?id=13968428664', '车载负离子空气净化器 汽车氧吧 车载空气清新器 0.2非仿品', '12.00', '20.00', '20', 'http://img.taobaocdn.com/bao/uploaded/http://img01.taobaocdn.com/bao/uploaded/i1/T1UhmtXaJvXXc7cgZV_020625.jpg_310x310.jpg', '', '', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '2352351235', '1', '黑色13 蓝色7', '1000', '', null, '', null, '1322443468', '1322446898', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('232', '164', 'nihao', '40', '12', 'http://item.taobao.com/item.htm?id=10133789317', '5钻信誉~美国SNAP', '63.00', '20.00', '3', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1dAJ.Xj8DXXamAlk3_051038.jpg_310x310.jpg', '', '', '华龙汽摩配', 'http://shop57925095.taobao.com', '淘宝网', 'www.taobao.com', '2352351235', '1', '请选填颜色、尺寸等要求！', '100', '', null, '', null, '1322443469', '1355207052', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('233', '164', 'nihao', '41', '12', 'http://item.taobao.com/item.htm?id=10237882543', '冲钻正品★郎1号康海健力片★快速温补二合一　2盒包邮', '12.00', '50.00', '20', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1W_SXXohkXXXKX03._081714.jpg_310x310.jpg', '', '', '美容天使顾问', 'http://shop61566248.taobao.com ', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '2000', '', null, '', null, '1322452919', '1322453385', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('234', '164', 'nihao', '43', '12', 'http://item.taobao.com/item.htm?id=10237882543', '冲钻正品★郎1号康海健力片★快速温补二合一　2盒包邮', '12.00', '20.00', '100', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1W_SXXohkXXXKX03._081714.jpg_310x310.jpg', '9876', '98765', '美容天使顾问', 'http://shop61566248.taobao.com ', '淘宝网', 'www.taobao.com', '', '1', '9876', '500', '', null, '', null, '1322454062', '1322454417', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('235', '168', 'yitouwushui', '44', '12', 'http://item.taobao.com/item.htm?id=12943175814&profileId=&spm=1007.1.2.2001', '品牌特卖 JNBY江南布衣【官方正品】针织休闲服 针织衫 5816171', '280.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T12q5pXelgXXaKbgg9_103423.jpg_310x310.jpg', 'N', 'V ', '江南布衣官方旗舰店', '', '淘宝网', 'www.taobao.com', '2352351235', '1', '请选填颜色、尺寸等要求！', '1', '', null, '', null, '1322462529', '1355286498', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('236', '164', 'nihao', '45', '12', 'http://item.taobao.com/item.htm?id=13120024562&cm_cat=16', '代购正品Moncler LUCIE女羽绒服范冰冰/童佳倩款 新款 特价包邮', '6800.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T100SmXeRSXXbdffM0_035224.jpg_310x310.jpg', '', '黄色', 'anna_715', 'http://shop63279719.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '2000', '', null, '', null, '1322470093', '1322470708', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('237', '164', 'nihao', '45', '12', 'http://trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=120228685810157', 'http://trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=120228685810157', '12.00', '10.00', '1', '', '', '黑色', 'trade.taobao.com', 'http://trade.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1000', '', null, '', null, '1322470093', '1322470708', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('238', '164', 'nihao', '47', '12', 'http://item.taobao.com/item.htm?id=13968428664', '车载负离子空气净化器 汽车氧吧 车载空气清新器 0.2非仿品', '12.00', '20.00', '5', 'http://img.taobaocdn.com/bao/uploaded/http://img01.taobaocdn.com/bao/uploaded/i1/T1UhmtXaJvXXc7cgZV_020625.jpg_310x310.jpg', '', '', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '4444', '', null, '', null, '1322471699', '1322472713', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('239', '164', 'nihao', '48', '12', 'http://trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=110210690250157', '《淘宝天下》杂志 800积分 第74期 商城积分兑换 包邮', '8.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/287016638/T2JEqaXmdXXXXXXXXX_!!287016638.jpg_310x310.jpg', '', '', '淘宝天下官方旗舰店', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '250', null, null, null, null, '1322473953', '1322474201', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('241', '164', 'nihao', '50', '12', 'http://item.taobao.com/item.htm?id=13968428664', '车载负离子空气净化器 汽车氧吧 车载空气清新器 0.2非仿品', '12.00', '160.00', '1000', 'http://img.taobaocdn.com/bao/uploaded/http://img01.taobaocdn.com/bao/uploaded/i1/T1UhmtXaJvXXc7cgZV_020625.jpg_310x310.jpg', '', '黑色', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '5000', '', null, '', null, '1322528142', '1322529062', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('242', '164', 'nihao', '50', '12', 'http://item.taobao.com/item.htm?id=12916196671&spm=1102bDJD.1-St_1.4-1WbEfQ', '特价热卖蜘蛛防滑垫/汽车用品/止滑垫/超强吸力360车用防滑垫', '1.20', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1j2pEXgFkXXaukPo._083004.jpg_310x310.jpg', '', '', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '5', '', null, '', null, '1322536991', '1322537375', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('243', '164', 'nihao', '50', '12', 'http://item.taobao.com/item.htm?id=13330655497&spm=1102bDJD.1-St_1.4-1WbEfQ', '新款高级钻石汽车用品防滑垫 车用个性止滑垫 车载防滑垫', '8.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T180GwXdJkXXatV.jb_095435.jpg_310x310.jpg', '', '', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '4', '', null, '', null, '1322536991', '1322537375', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('244', '164', 'nihao', '50', '12', 'http://item.taobao.com/item.htm?id=13191308925&spm=1102bDJD.1-St_1.4-1WbEfQ', '汽车防滑垫 卡通防滑垫 3D立体防滑垫 盘子防滑垫 立体KT猫', '3.50', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T16wd3Xg4uXXcGXqHb_122806.jpg_310x310.jpg', '', '', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '2', '', null, '', null, '1322536991', '1322537375', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('245', '164', 'nihao', '52', '12', 'http://item.taobao.com/item.htm?id=13968856517&spm=1102bDJD.1-St_1.4-1WbEfQ', '正品日本快美特 汽车香水座 车载香水 车用香水座 送防滑垫', '12.00', '20.00', '1', 'http://img.taobaocdn.com/bao/uploaded/http://img03.taobaocdn.com/bao/uploaded/i3/T1QdGwXeR1XXb0Ekk8_101309.jpg_310x310.jpg', '', '', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1', '', null, '', null, '1322536991', '1322538915', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('246', '164', 'nihao', '51', '12', 'http://item.taobao.com/item.htm?id=13191308925&spm=1102bDJD.1-St_1.4-1WbEfQ', '汽车防滑垫 卡通防滑垫 3D立体防滑垫 盘子防滑垫 立体KT猫', '3.50', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T16wd3Xg4uXXcGXqHb_122806.jpg_310x310.jpg', '', '', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '2', '', null, '', null, '1322537993', '1322538422', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('247', '164', 'nihao', '51', '12', 'http://item.taobao.com/item.htm?id=13191308925&spm=1102bDJD.1-St_1.4-1WbEfQ', '汽车防滑垫 卡通防滑垫 3D立体防滑垫 盘子防滑垫 立体KT猫', '3.50', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T16wd3Xg4uXXcGXqHb_122806.jpg_310x310.jpg', '', '', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '2', '', null, '', null, '1322537993', '1322538416', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('248', '164', 'nihao', '51', '12', 'http://item.taobao.com/item.htm?id=13191308925&spm=1102bDJD.1-St_1.4-1WbEfQ', '汽车防滑垫 卡通防滑垫 3D立体防滑垫 盘子防滑垫 立体KT猫', '3.50', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T16wd3Xg4uXXcGXqHb_122806.jpg_310x310.jpg', '', '', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '2', '', null, '', null, '1322537993', '1322538405', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('249', '152', 'cnstorm', null, '12', 'http://item.taobao.com/item.htm?id=13191308925&spm=1102bDJD.1-St_1.4-1WbEfQ', '汽车防滑垫 卡通防滑垫 3D立体防滑垫 盘子防滑垫 立体KT猫', '3.50', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T16wd3Xg4uXXcGXqHb_122806.jpg_310x310.jpg', '', '', '绿竹园307', 'http://stxp.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1322580855', '1383554045', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('250', '175', 'ceshi', null, '12', 'http://item.taobao.com/item.htm?id=10884310570', '★PC真好★华硕KM', '65.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1qzihXoBuXXakEsMT_010923.jpg_310x310.jpg', '', '', 'pc真好', 'http://pczh.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1322636717', null, '1', '0', '1');
INSERT INTO `yqt_order` VALUES ('251', '175', 'ceshi', null, '12', 'http://item.taobao.com/item.htm?id=10884310570', '★PC真好★华硕KM', '65.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1qzihXoBuXXakEsMT_010923.jpg_310x310.jpg', '', '', 'pc真好', 'http://pczh.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1322660007', '1355491351', '6', '0', '0');
INSERT INTO `yqt_order` VALUES ('252', '7', 'ceshi', null, '12', 'http://item.taobao.com/item.htm?id=2166417889', 'F4【半价冲四冠】进口银白色超闪眼线眼影液 开亮眼头 超显眼大', '9.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1Vb0HXfRmXXXWOZcV_020025.jpg_310x310.jpg', '', '', '小馨monica的家', 'http://tbxx.taobao.com?DOMAIN=tbxx', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1322660008', '1402733520', '4', '0', '1');
INSERT INTO `yqt_order` VALUES ('253', '164', 'nihao', '54', '12', 'http://item.taobao.com/item.htm?id=12275567739', '芊衣品牌大码女装 秋装新品 淑女气质下摆皱折显瘦连衣裙41288', '82.00', '2000.00', '100000', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1GJ5jXhVdXXXloZA__105602.jpg_310x310.jpg', '', '', 'mooncompetition', 'http://mooncompetition.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '10000', '谢谢谢谢谢谢谢谢谢谢谢谢谢谢谢谢', null, '', null, '1322702304', '1322702814', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('254', '164', 'nihao', '54', '12', 'http://item.taobao.com/item.htm?id=12275567739', '芊衣品牌大码女装 秋装新品 淑女气质下摆皱折显瘦连衣裙41288', '82.00', '2000.00', '10000', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1GJ5jXhVdXXXloZA__105602.jpg_310x310.jpg', '', '', 'mooncompetition', 'http://mooncompetition.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '1999', '大大大大大大大大大大大大大大大大', 'attachment/order/201212/20121211142410_646.jpg', '', null, '1322702431', '1322702814', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('255', '176', 'nihaoma', '55', '12', 'http://item.taobao.com/item.htm?id=8492087506', 'SW【经典长风衣三色新入】1/3LUTS.DOD.AS.DZ.SD娃娃', '76.00', '20.00', '9', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1YatSXllJXXcQC8k._113240.jpg_310x310.jpg', '', '', 'sunny1223', 'http://sunny-world.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '30', '', 'attachment/order/201212/20121211142410_235.jpg', '', null, '1322704057', '1322704214', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('256', '176', 'nihaoma', '55', '12', 'http://item.taobao.com/item.htm?id=13088677760', '优惠价【金属半框眼镜多色】斯文禽兽专用1/3.大叔DOD.DZ.SD娃BJD', '32.00', '20.00', '9', 'http://img02.taobaocdn.com/bao/uploaded/i6/T1DYmxXf8TXXXac3k9_103427.jpg_310x310.jpg', '', '', 'sunny1223', 'http://sunny-world.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '3', '', 'attachment/order/201212/20121211142410_556.jpg', '', null, '1322704057', '1322704190', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('257', '176', 'nihaoma', '57', '12', 'http://item.taobao.com/item.htm?id=12869491369', '二胡双色码 阴阳码 复合码 双材码 二胡码子 二胡马子 二胡琴码', '10.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1S6WnXmhLXXb.aGTc_095751.jpg_310x310.jpg', '', '', 'yebo168', 'http://erhuart.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '3', '', 'attachment/order/201212/20121211142409_859.jpg', '', null, '1322706724', '1322708559', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('258', '176', 'nihaoma', '56', '12', 'http://item.taobao.com/item.htm?id=9202354197', '2011秋装 女 长款包臀纯棉卫衣 可爱俏皮耳朵 连帽大码卫衣', '89.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1piGyXXpKXXa4v13Z_031903.jpg_310x310.jpg', '', '', '自由飞翔528', 'http://aili365.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '2', '', 'attachment/order/201212/20121211142409_102.jpg', '', null, '1322707188', '1322707398', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('259', '176', 'nihaoma', '57', '12', 'http://item.taobao.com/item.htm?id=9202354197', '2011秋装 女 长款包臀纯棉卫衣 可爱俏皮耳朵 连帽大码卫衣', '89.00', '20.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1piGyXXpKXXa4v13Z_031903.jpg_310x310.jpg', '', '', '自由飞翔528', 'http://aili365.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '5', '', 'attachment/order/201212/20121211142409_800.jpg', '', null, '1322708466', '1322708559', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('260', '168', 'yitouwushui', null, '12', 'http://item.taobao.com/item.htm?id=3103225172&ali_refid=a3_419252_1006:1102345032:6:%D0%DD%CF%D0:f01e1d95051923f38136a1db50e86b67&ali_trackid=1_f01e1d95051923f38136a1db50e86b67', '冲冠限时让利促销◆简洁舒适◆男潮鞋软皮软底懒人套脚日常休闲鞋', '276.00', '20.00', '100', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1CuV7XexcXXb8lMk._112309.jpg_310x310.jpg', '', '', '蕙_蕙_2008', 'http://shop35819764.taobao.com', '淘宝网', 'www.taobao.com', '234356789', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201212/20121211142407_580.jpg', '', null, '1322740948', '1334891441', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('261', '177', 'liulei634', '59', '12', 'http://item.taobao.com/item.htm?id=12971593447&tracelog=n_eshop_goods_pop_taobao&templateid=018297717de64e969a1335ee918268e6&numid=12971593447&userid=b626671ae267062630487e22da716bed', 'SW【毛领黑呢短风衣】1/3LUTS.DOD.AS.DZ.SD娃娃', '82.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1B0auXfpHXXaT3dnb_123442.jpg_310x310.jpg', '', '', 'sunny1223', 'http://sunny-world.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '30', null, 'attachment/order/201212/20121211142407_583.jpg', null, null, '1323418756', '1323419978', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('262', '177', 'liulei634', '59', '12', 'http://item.taobao.com/item.htm?spm=110-18l6-233Vr.5w82-3NP5n.5046926764&id=14267116832&', '圆领开衫泡泡袖长款修身毛呢大衣', '169.50', '10.00', '3', 'http://img01.taobaocdn.com/bao/uploaded/i5/T19IyyXnVnXXXSoCg4_054110.jpg_310x310.jpg', '2', '1', '自由飞翔528', 'http://aili365.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '1', '50', null, 'attachment/order/201212/20121211142406_899.jpg', null, null, '1323418756', '1323419978', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('264', '177', 'liulei634', null, '12', 'http://item.taobao.com/item.htm?id=12971593447&tracelog=n_eshop_goods_pop_taobao&templateid=018297717de64e969a1335ee918268e6&numid=12971593447&userid=b626671ae267062630487e22da716bed', 'SW【毛领黑呢短风衣】1/3LUTS.DOD.AS.DZ.SD娃娃', '82.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1B0auXfpHXXaT3dnb_123442.jpg_310x310.jpg', '', '', 'sunny1223', '', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '500', '', 'attachment/order/201212/20121211142406_478.jpg', '', null, '1333963542', '1333963596', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('265', '179', 'jackmic', '60', '12', 'http://item.taobao.com/item.htm?id=13773221472&spm=2014.12585336.0.0', '2012春装夏裙新款 韩版镂空吊带裙大码裙显瘦包臀修身连衣裙 夏季', '96.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1luu_XcddXXbQfoQ7_065934.jpg_310x310.jpg', '', '', '两只猪猪猫', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '500', '', 'attachment/order/201212/20121211142154_679.jpg', '', null, '1334821043', '1335437940', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('266', '180', 'hihihaha', null, '12', 'http://item.taobao.com/item.htm?id=14935151937&spm=2014.12585336.0.0', '【天天特价】时尚潮流潮鞋日常休闲鞋韩版男鞋子真皮板鞋透气鞋-3', '248.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1G_S2XjhsXXbMzjcW_024144.jpg_310x310.jpg', '40', '天蓝', 'lingganxl', 'www.taobao.com', '淘宝网', 'www.taobao.com', '圆通 23弱324324324324324', '1', '请选填颜色、尺寸等要求！', '0', '', 'attachment/order/201212/20121211142131_564.jpg', '', null, '1334823643', '1334891493', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('267', '184', 'dj1jj', null, '12', 'http://item.taobao.com/item.htm?id=14935151937&spm=2014.12110377.0.0', 'Cetrizet男士休闲鞋男鞋时尚潮流潮鞋英伦韩版板鞋男真皮透气鞋3', '256.00', '0.00', '2', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1G_S2XjhsXXbMzjcW_024144.jpg_310x310.jpg', '40', '黑色', 'lingganxl', 'www.taobao.com', '淘宝网', 'www.taobao.com', '45465657567', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1355834751', '1355834971', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('268', '184', 'dj1jj', null, '12', 'http://item.taobao.com/item.htm?id=17592559515&spm=2014.12110377.0.0', '秋冬新款波浪圆领长袖T恤女修身好品质女装打底衫 女 长袖 韩版潮', '9.90', '8.00', '7', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1.qT4XideXXct_FYb_093015.jpg_310x310.jpg', 'm', '白色', '大q_小q', 'www.taobao.com', '淘宝网', 'www.taobao.com', '6557667878', '1', '我对此商品无任何特殊备注。', '0', '', null, '', null, '1355834751', '1355834961', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('269', '184', 'dj1jj', '0', '12', 'http://item.taobao.com/item.htm?id=17159043021&spm=2014.12110377.0.0', '七匹狼棉衣 男士正品外套 男装 冬装新品 獭兔毛领 棉服 02919', '1399.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1K6IoXlddXXbsYDIV_021802.jpg_310x310.jpg', '', '', '七匹狼威派专卖店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '546576576878', '1', '我对此商品无任何特殊备注。', '10', '', null, '', null, '1357303119', '1358068276', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('270', '184', 'dj1jj', '61', '12', 'http://item.taobao.com/item.htm?id=21878624289&spm=2014.12110377.0.0', '预售2012新品韩版修身中长款羽绒服 正品羽绒服女 新款包邮羽绒服', '418.00', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/17907019096758689/T1gIApXXVdXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '玩家小华', 'www.taobao.com', '淘宝网', 'www.taobao.com', '576576886', '1', '请选填颜色、尺寸等要求！', '45', '', null, '', null, '1357389037', '1357992380', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('271', '184', 'dj1jj', null, '12', 'http://item.taobao.com/item.htm?id=16171574592&spm=2014.12110377.0.0', '正品 奢华兔毛大毛领 白鸭绒短款羽绒服 女 蕾丝边', '1080.00', '6.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1F4TVXlVdXXbo5U_a_092613.jpg_310x310.jpg', '170', '黑色', '100e风尚', 'www.taobao.com', '淘宝网', 'www.taobao.com', '110110110', '1', '请选填颜色、尺寸等要求！', '15', '', null, 'taobaopayid001', null, '1357989894', '1357990372', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('272', '184', 'dj1jj', null, '12', 'http://item.taobao.com/item.htm?id=16929426412&spm=2014.12110377.0.0', '2012新品冬装 加厚羽绒服新款 超大毛领羽绒服 女 中长款 修身潮', '1886.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/11247030276416173/T1P8QRXjhXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '168', '黑色', '哈依族服饰', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '0', null, null, null, null, '1358067699', null, '1', '0', '0');
INSERT INTO `yqt_order` VALUES ('273', '184', 'dj1jj', null, '12', 'http://item.taobao.com/item.htm?id=16929426412&spm=2014.12110377.0.0', '2012新品冬装 加厚羽绒服新款 超大毛领羽绒服 女 中长款 修身潮', '1886.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/11247030276416173/T1P8QRXjhXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '168', '黑色', '哈依族服饰', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1358068225', null, '1', '0', '1');
INSERT INTO `yqt_order` VALUES ('274', '0', '', null, '12', 'http://item.taobao.com/item.htm?id=16929426412&spm=2014.12110377.0.0', '2012新品冬装 加厚羽绒服新款 超大毛领羽绒服 女 中长款 修身潮', '1886.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/11247030276416173/T1P8QRXjhXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '168', '黑色', '哈依族服饰', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '2', 'pieceRemark', '0', '', 'attachment/order/201310/20131014125448_631.jpg', '', '0', '1381226913', '1402646725', '5', '273', '0');
INSERT INTO `yqt_order` VALUES ('275', '0', '', null, '12', 'http://item.taobao.com/item.htm?id=10884310570', '★PC真好★华硕KM', '65.00', '20.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1qzihXoBuXXakEsMT_010923.jpg_310x310.jpg', '', '', 'pc真好', 'http://pczh.taobao.com', '淘宝网', 'www.taobao.com', '', '2', 'pieceRemark', '0', '', 'attachment/order/201310/20131014125448_979.jpg', '', '0', '1381227159', '1388948585', '2', '250', '0');
INSERT INTO `yqt_order` VALUES ('276', '0', '', null, '12', 'http://item.taobao.com/item.htm?id=2166417889', 'F4【半价冲四冠】进口银白色超闪眼线眼影液 开亮眼头 超显眼大', '9.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1Vb0HXfRmXXXWOZcV_020025.jpg_310x310.jpg', '', '', '小馨monica的家', 'http://tbxx.taobao.com?DOMAIN=tbxx', '淘宝网', 'www.taobao.com', '', '2', 'pieceRemark', '0', '', 'attachment/order/201310/20131014125448_338.jpg', '', '0', '1381227177', '1384601925', '2', '252', '0');
INSERT INTO `yqt_order` VALUES ('277', '188', 'alexluah', null, '12', 'http://item.taobao.com/item.htm?id=10355874352&spm=2014.12110377.0.0', '2013夏季新款女装韩版女士纯棉针织挂脖吊带衫串珠打底吊带背心女', '69.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/15017037879204446/T1j_xMFedgXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '1', '1', 'hao121265', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1381228475', null, '1', '0', '1');
INSERT INTO `yqt_order` VALUES ('278', '188', 'alexluah', null, '12', 'http://item.taobao.com/item.htm?id=10355874352&spm=2014.12110377.0.0', '2013夏季新款女装韩版女士纯棉针织挂脖吊带衫串珠打底吊带背心女', '69.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/15017037879204446/T1j_xMFedgXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '1', '1', 'hao121265', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1381228475', null, '1', '0', '1');
INSERT INTO `yqt_order` VALUES ('279', '0', '', null, '12', 'http://item.taobao.com/item.htm?id=10355874352&spm=2014.12110377.0.0', '2013夏季新款女装韩版女士纯棉针织挂脖吊带衫串珠打底吊带背心女', '69.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/15017037879204446/T1j_xMFedgXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '1', '1', 'hao121265', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '2', 'pieceRemark', '0', '', 'attachment/order/201310/20131014125448_154.jpg', '', '0', '1381725536', '1381727685', '5', '277', '0');
INSERT INTO `yqt_order` VALUES ('288', '191', 'ccfun1127', null, '12', 'http://item.taobao.com/item.htm?id=18702474875&spm=2014.12110377.0.0', '达利都 新款水钻镶嵌 女士牛皮细腰带 皮带女 韩版时尚带钻 正品', '49.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/12184024109703182/T1hSS4XE0bXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '达利都旗舰店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1383554276', '1383554396', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('281', '189', 'testing', null, '12', 'http://item.taobao.com/item.htm?id=14501719672&spm=2014.12110377.0.0', '2013新款中年女包中老年女包妈妈包包女士斜挎斜跨包复古小包包邮', '35.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/10095034184668228/T13Vl8XqNbXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', 'red', 'red', 'wjmud2', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1381726359', '1381727118', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('287', '189', 'testing', null, '12', 'http://item.taobao.com/item.htm?id=14501719672&spm=2014.12110377.0.0', '2013新款中年女包中老年女包妈妈包包女士斜挎斜跨包复古小包包邮', '35.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/10095034184668228/T13Vl8XqNbXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', 'da', '黑色', 'wjmud2', 'www.taobao.com', '淘宝网', 'www.taobao.com', '4354654656', '1', '请选填颜色、尺寸等要求！', '15', '', null, '56456@qq.com', null, '1381727735', '1381727879', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('283', '189', 'testing', null, '12', 'http://item.taobao.com/item.htm?id=19405050239&spm=2014.12110377.0.0', '2013秋装韩版修身女款长袖T恤 镂空花朵显瘦圆领长t上衣打底衫nv', '69.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/10114026842277741/T1bM1yFkhXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '韩范瑄旗舰店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1381726359', '1381727133', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('284', '189', 'testing', null, '12', 'http://item.taobao.com/item.htm?id=18435299588&spm=2014.12110377.0.0', '热卖包邮 2013秋冬装新款 韩版时尚百搭显瘦高领打底毛衣女针织衫', '98.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/15017019075738248/T1fskLXlXcXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'hao121265', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1381726359', '1381727016', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('285', '189', 'testing', null, '12', 'http://item.taobao.com/item.htm?id=16171574592&spm=2014.12110377.0.0', '2013秋冬新款 正品 奢华兔毛大毛领 白鸭绒短款羽绒服 女 蕾丝边', '480.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1F4TVXlVdXXbo5U_a_092613.jpg_310x310.jpg', '', '', '100e风尚', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '蓝色，红色xl', '0', null, null, null, null, '1381726359', '1381727016', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('286', '189', 'testing', null, '12', 'http://item.taobao.com/item.htm?id=10355874352&spm=2014.12110377.0.0', '2013夏季新款女装韩版女士纯棉针织挂脖吊带衫串珠打底吊带背心女', '49.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/15017037879204446/T1j_xMFedgXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'hao121265', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201310/20131014125448_810.jpg', null, null, '1381726359', '1381727133', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('289', '191', 'ccfun1127', null, '12', 'http://item.taobao.com/item.htm?id=16171574592&spm=2014.12110377.0.0', '2013秋冬新款 正品 奢华兔毛大毛领 白鸭绒短款羽绒服 女 蕾丝边', '298.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1F4TVXlVdXXbo5U_a_092613.jpg_310x310.jpg', '', '', '100e风尚', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1383554276', '1383554384', '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('290', '191', 'ccfun1127', null, '12', 'http://item.taobao.com/item.htm?id=15084995161&spm=2014.12110377.0.0', '正品高档男士真皮钥匙包多功能男女式牛皮锁匙包零钱卡夹男款韩版', '39.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/13647029360256704/T1ZdPWFidcXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '小晖皮具l', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, 'attachment/order/201311/20131116203947_230.jpg', null, null, '1383555099', null, '1', '0', '0');
INSERT INTO `yqt_order` VALUES ('291', '184', 'dj1jj', null, '12', 'http://item.taobao.com/item.htm?id=22068775953&spm=2014.21554143.0.0', '包邮搞怪苦逼屌丝男公仔青年创意超大抱枕男友节生日礼物毛绒玩具', '38.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/12531026705540663/T1palhFcXaXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '萌货小小铺', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1387959823', '1387959897', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('292', '195', 'blar', '63', '12', 'http://item.taobao.com/item.htm?id=10488995478&spm=2014.21554143.0.0', '2013夏装女童装-韩版时尚荷叶边吊带弹力连体衣连体裤E仓', '21.70', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/18568030171220778/T1xuILFkNbXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '水宝贝11', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '2', '', null, '', null, '1388948473', '1388948948', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('293', '195', 'blar', '63', '12', 'http://item.taobao.com/item.htm?id=20600172906&spm=2014.21554143.0.0', '快乐大本营高清懒人眼镜近视卧式眼镜躺着看书看电视折射眼睛正品', '49.17', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/10313027393314839/T1GlmxFXdgXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '浪亚洁眼镜旗舰店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '5', '', null, '', null, '1388948473', '1388949382', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('296', '195', 'blar', '65', '12', 'http://item.taobao.com/item.htm?id=27093640721&spm=2014.21554143.0.0', '出口韩国正品pororo波鲁鲁好友大白熊波比POBY毛绒公仔动漫玩具', '65.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/18461026641485976/T1HCaqFi4eXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '4cm', 'black', '天街小雨8', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', 'haha', '2000', '', null, '', null, '1389192029', '1389192621', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('297', '195', 'blar', '65', '12', 'http://item.taobao.com/item.htm?id=19018550023&spm=2014.21554143.0.0', '西米果 韩国PORORO 可爱小企鹅大冒险 卡通公仔 波鲁鲁', '49.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/19010026128728852/T1bDGaFo0XXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '10cm', 'white', '西米果旗舰店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '500', null, null, null, null, '1389192029', '1389192724', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('298', '195', 'blar', null, '12', 'http://item.taobao.com/item.htm?id=36626849661&spm=2014.21554143.0.0', '包邮 TOFFEE华丽高端狗唐装009款 大狗也有份 过新年宠物狗狗衣服', '68.00', '20.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1haltFqNXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '唬唬猪韩饰', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1389197053', '1389197130', '2', '0', '0');
INSERT INTO `yqt_order` VALUES ('299', '0', '', null, '12', 'http://item.taobao.com/item.htm?id=10355874352&spm=2014.12110377.0.0', '2013夏季新款女装韩版女士纯棉针织挂脖吊带衫串珠打底吊带背心女', '69.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/15017037879204446/T1j_xMFedgXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '1', '1', 'hao121265', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '2', 'pieceRemark', '0', '', '', '', '0', '1389779591', '1402646444', '2', '278', '0');
INSERT INTO `yqt_order` VALUES ('300', '199', 'aaaa', null, '12', 'http://item.taobao.com/item.htm?id=16513992720&spm=2014.21554143.0.0', 'ecshop 为促销 支持某种支付方式 设置折扣的插件', '100.00', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/13401029840899573/T14uK0FhBXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'locapple', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1401615183', null, '1', '0', '1');
INSERT INTO `yqt_order` VALUES ('301', '199', 'aaaa', null, '12', 'http://item.taobao.com/item.htm?id=38194442228&spm=2014.21554143.0.0', '淘宝代购程序 ecshop内核 淘宝代购人士专用 一键填单', '980.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/13401031475507682/T1won3FXlfXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'locapple', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1401615183', null, '1', '0', '1');
INSERT INTO `yqt_order` VALUES ('302', '199', 'aaaa', null, '12', 'http://item.taobao.com/item.htm?id=38194442228&spm=2014.21554143.0.0', '淘宝代购程序 ecshop内核 淘宝代购人士专用 一键填单', '980.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/13401031475507682/T1won3FXlfXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'locapple', 'www.taobao.com', '淘宝网', 'www.taobao.com', '11404120027758', '2', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1401615183', null, '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('303', '199', 'aaaa', null, '12', 'http://item.taobao.com/item.htm?id=39138618536&spm=2014.21554143.0.0', '淘宝 天猫 菜鸟 驿站 代购基础物料及系统技术外包服务费', '2190.00', '30.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1sN7gXkRfXXXXXXXX_!!2-item_pic.png_310x310.jpg', '', '', 'ludongdong11', 'www.taobao.com', '淘宝网', 'www.taobao.com', '11404120027758', '2', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1401615183', null, '3', '0', '0');
INSERT INTO `yqt_order` VALUES ('304', '0', '', null, '12', 'http://item.taobao.com/item.htm?id=38194442228&spm=2014.21554143.0.0', '淘宝代购程序 ecshop内核 淘宝代购人士专用 一键填单', '980.00', '0.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/13401031475507682/T1won3FXlfXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'locapple', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '2', 'pieceRemark', '0', '', '', '', '0', '1402645543', '1402646444', '2', '301', '0');
INSERT INTO `yqt_order` VALUES ('305', '200', 'imjacky', null, '12', 'http://item.taobao.com/item.htm?id=16513992720&spm=2014.21554143.0.0', 'ecshop 为促销 支持某种支付方式 设置折扣的插件', '100.00', '0.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/13401029840899573/T14uK0FhBXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', 'locapple', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '2', 'pieceRemark', '0', '', '', '', '0', '1402646279', '1402646279', '1', '300', '0');
INSERT INTO `yqt_order` VALUES ('306', '200', 'imjacky', null, '12', 'http://item.taobao.com/item.htm?id=17592559515&spm=2014.12110377.0.0', '淘宝网 ', '66.00', '0.00', '1', 'null', '6', '6', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '6', '0', null, null, null, null, '1402646305', null, '1', '0', '0');
INSERT INTO `yqt_order` VALUES ('307', '200', 'imjacky', null, '12', 'http://item.taobao.com/item.htm?id=17592559515&spm=2014.12110377.0.0', '淘宝网 ', '88.00', '0.00', '1', 'null', '8', '8', 'null', '', '淘宝网', 'www.taobao.com', '', '1', '8', '0', null, null, null, null, '1402646305', null, '1', '0', '0');
INSERT INTO `yqt_order` VALUES ('308', '200', 'imjacky', null, '12', 'http://item.taobao.com/item.htm?id=12644026027&spm=2014.21554143.0.0', '艾奔超大容量手提旅行包男女商务出差行李包单肩短途旅行袋旅游包', '278.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/TB1ZGPPXXXXXXaxdpXXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '4', '4', 'aspensport旗舰店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1402646305', null, '1', '0', '0');
INSERT INTO `yqt_order` VALUES ('309', '200', 'imjacky', null, '12', 'http://item.taobao.com/item.htm?id=17489022622&spm=2014.21554143.0.0', '淘宝代购程序 淘宝代购 代购源码 代购系统 全球代购系统', '800.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/10899029681131488/T1I8rZFoJaXXXXXXXX_!!2-item_pic.png_310x310.jpg', '', '', '阿衣莱靓衣坊', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1402646380', null, '1', '0', '0');
INSERT INTO `yqt_order` VALUES ('310', '200', 'imjacky', null, '12', 'http://item.taobao.com/item.htm?id=17617765356&spm=2014.21554143.0.0', '代购程序源码 淘宝代购系统 PHP代购程序 英文代购程序 代购程序', '3000.00', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/10899022535223777/T10PNNXutcXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '88', '8', '阿衣莱靓衣坊', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '我对此商品无任何特殊备注。', '0', '', null, '', null, '1402646821', '1402646870', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('315', '201', 'testtest', null, '12', 'http://item.jd.com/1062248351.html#product-detail', 'NUU NU3 联通3G手机GSM/WCDMA 双卡双待 白', '1190.00', '0.00', '1', 'http://img11.360buyimg.com/n1/g14/M03/11/10/rBEhVlMFxq4IAAAAAAEaGCuqNQAAAI6iQG2lXAAARow453.jpg', '', '白', '京东商城', 'http://www.360buy.com/product/', '其他网站', '###', '', '1', '我对此商品无任何特殊备注。', '0', null, null, null, null, '1402718734', '1402727041', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('317', '201', 'testtest', '67', '12', 'http://item.taobao.com/item.htm?id=16171574592&spm=2014.21554143.0.0', '【淘宝清仓】正品奢华兔毛领白鸭绒羽绒服主打  8款宝贝亏本清仓', '1080.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1smu8Fz8dXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', 'M', '黄', '100e风尚', 'www.taobao.com', '淘宝网', 'www.taobao.com', 'E89612546231', '1', '请选填颜色、尺寸等要求！', '50', '', null, '', null, '1402726762', '1402734537', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('318', '201', 'testtest', null, '12', 'http://item.taobao.com/item.htm?id=39359588218&spm=2014.21554143.0.0', '丹衣阁 下摆荷叶边雪纺衫后背拉链短袖欧根纱上衣 9号10点', '118.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1HRcUFNlXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', 'M', '白', 'c_fj820917', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1402732491', '1402732939', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('319', '202', 'mxjyweb', null, '12', 'http://item.taobao.com/item.htm?id=39359588218&spm=2014.21554143.0.0', '丹衣阁 下摆荷叶边雪纺衫后背拉链短袖欧根纱上衣 9号10点', '118.00', '20.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1HRcUFNlXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', 'M', '雪白', 'c_fj820917', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', '', null, '', null, '1402733495', '1402734059', '5', '0', '0');
INSERT INTO `yqt_order` VALUES ('320', '201', 'testtest', null, '12', 'http://item.taobao.com/item.htm?id=10355874352&spm=2014.21554143.0.0', '2014夏季新款女装韩版女士纯棉针织挂脖吊带衫串珠打底吊带背心女', '49.00', '10.00', '3', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1S7AoFCNcXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', 'S', '黑', 'hao121265', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '0', null, null, null, null, '1402734714', '1402734733', '4', '0', '0');
INSERT INTO `yqt_order` VALUES ('321', '206', 'xuhuachen', null, '12', 'http://item.taobao.com/item.htm?id=6817511075&spm=2014.21554143.0.0', '也买酒 法国红酒原装进口 维莎梅洛干红葡萄酒750ml', '128.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/TB1bLcYFFXXXXXzXXXXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '也买酒官方旗舰店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '300', null, null, null, null, '1404729963', '1404730054', '1', '0', '0');
INSERT INTO `yqt_order` VALUES ('322', '206', 'xuhuachen', null, '12', 'http://item.taobao.com/item.htm?id=39417120321&spm=2014.21554143.0.0', '本来生活 巴西原装进口亚马逊啤酒 4瓶装 355ml/瓶 手工酿造 包邮', '128.00', '0.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/TB1rWXsFFXXXXboaFXXXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '', '', '本来生活旗舰店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '', '1', '请选填颜色、尺寸等要求！', '300', null, null, null, null, '1404729963', '1404730060', '1', '0', '0');

-- ----------------------------
-- Table structure for `yqt_otype`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_otype`;
CREATE TABLE `yqt_otype` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) DEFAULT NULL,
  `node` int(11) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_otype
-- ----------------------------
INSERT INTO `yqt_otype` VALUES ('1', '女装', '0', '0');
INSERT INTO `yqt_otype` VALUES ('2', '男装', '0', '0');
INSERT INTO `yqt_otype` VALUES ('3', '鞋子', '0', '0');
INSERT INTO `yqt_otype` VALUES ('4', '箱包', '0', '0');
INSERT INTO `yqt_otype` VALUES ('5', '食品保健', '0', '0');
INSERT INTO `yqt_otype` VALUES ('6', '图书音像', '0', '0');
INSERT INTO `yqt_otype` VALUES ('7', '美容美发', '0', '0');
INSERT INTO `yqt_otype` VALUES ('8', '数码通信', '0', '0');
INSERT INTO `yqt_otype` VALUES ('9', '礼品', '0', '0');
INSERT INTO `yqt_otype` VALUES ('10', '家居用品', '0', '0');
INSERT INTO `yqt_otype` VALUES ('11', '流行饰品', '0', '0');
INSERT INTO `yqt_otype` VALUES ('12', '其他', '0', '0');
INSERT INTO `yqt_otype` VALUES ('13', '数码', '0', '0');

-- ----------------------------
-- Table structure for `yqt_payid`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_payid`;
CREATE TABLE `yqt_payid` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `payid` varchar(30) NOT NULL,
  `payabout` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_payid
-- ----------------------------
INSERT INTO `yqt_payid` VALUES ('2', 'taobaopayid001', '淘宝拍货账户');
INSERT INTO `yqt_payid` VALUES ('3', 'taobaopayid002', '淘宝拍货账户3');
INSERT INTO `yqt_payid` VALUES ('4', 'paipaipayid', '拍拍拍货账户');
INSERT INTO `yqt_payid` VALUES ('5', 'paipai0021', '拍拍测试1');

-- ----------------------------
-- Table structure for `yqt_pm`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_pm`;
CREATE TABLE `yqt_pm` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `fromuid` int(11) NOT NULL,
  `fromuname` varchar(50) NOT NULL,
  `touid` int(11) NOT NULL,
  `touname` varchar(50) NOT NULL,
  `type` smallint(5) DEFAULT '1',
  `subject` varchar(60) NOT NULL,
  `sendtime` int(11) DEFAULT NULL,
  `writetime` int(11) DEFAULT NULL,
  `hasview` tinyint(1) DEFAULT NULL,
  `isadmin` tinyint(1) DEFAULT '0',
  `message` text,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_pm
-- ----------------------------

-- ----------------------------
-- Table structure for `yqt_rechargerecord`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_rechargerecord`;
CREATE TABLE `yqt_rechargerecord` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `amount` float(10,2) DEFAULT '0.00' COMMENT '充值原始额度',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `money` float(10,2) NOT NULL COMMENT '换算过的额度',
  `paytype` smallint(5) DEFAULT '0' COMMENT '充值方式 0转账1支付宝支付2paypal充值3psi充值4其他',
  `payname` varchar(30) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `successtime` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` smallint(5) DEFAULT '1',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_rechargerecord
-- ----------------------------
INSERT INTO `yqt_rechargerecord` VALUES ('212', '183', 'aaaaaa', '20121107175737709', '10.00', 'USD', '100.00', '2', 'Paypal支付充值', '1352282257', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('213', '183', 'aaaaaa', '20121107182359113', '10.00', 'USD', '100.00', '2', 'Paypal支付充值', '1352283839', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('214', '183', 'aaaaaa', '20121107182552890', '10.00', 'USD', '100.00', '2', 'Paypal支付充值', '1352283952', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('215', '183', 'aaaaaa', '20121107182641670', '10.00', 'USD', '100.00', '2', 'Paypal支付充值', '1352284001', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('216', '183', 'aaaaaa', '20121108115350474', '20.00', 'USD', '105.00', '2', 'Paypal支付充值', '1352346830', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('217', '184', 'dj1jj', '20121211142933615', '50.00', 'CNY', '50.00', '1', '支付宝支付充值', '1355207373', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('218', '184', 'dj1jj', '20121211143010518', '50.00', 'CNY', '50.00', '4', '网银在线支付充值', '1355207410', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('219', '184', 'dj1jj', '20130104212245923', '50.00', 'CNY', '50.00', '4', '网银在线支付充值', '1357305765', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('220', '184', 'dj1jj', '20130104212612076', '100.00', 'CNY', '100.00', '4', '网银在线支付充值', '1357305972', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('221', '184', 'dj1jj', '20130104212650583', '100.00', 'CNY', '100.00', '1', '支付宝支付充值', '1357306010', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('222', '184', 'dj1jj', '20130105123917565', '10.00', 'USD', '61.59', '2', 'Paypal支付充值', '1357360757', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('223', '184', 'dj1jj', '20130105124124112', '20.00', 'USD', '123.18', '2', 'Paypal支付充值', '1357360884', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('224', '184', 'dj1jj', '20130105124205943', '20.00', 'USD', '123.18', '2', 'Paypal支付充值', '1357360925', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('225', '184', 'dj1jj', '20130105124310689', '20.00', 'USD', '123.18', '2', 'Paypal支付充值', '1357360990', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('226', '184', 'dj1jj', '20130105130407714', '20.00', 'USD', '123.18', '2', 'Paypal支付充值', '1357362247', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('227', '184', 'dj1jj', '20130105135848429', '10.00', 'USD', '61.59', '2', 'Paypal支付充值', '1357365528', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('228', '184', 'dj1jj', '20130105150208748', '10.00', 'USD', '61.59', '2', 'Paypal支付充值', '1357369328', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('229', '184', 'dj1jj', '20130105151020469', '10.00', 'SGD', '50.77', '2', 'Paypal支付充值', '1357369820', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('230', '184', 'dj1jj', '20130105161514477', '10.00', 'SGD', '50.77', '2', 'Paypal支付充值', '1357373714', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('231', '184', 'dj1jj', '20130105161537667', '500.00', 'SGD', '2538.50', '2', 'Paypal支付充值', '1357373737', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('232', '184', 'dj1jj', '20130105164928886', '100.00', 'CNY', '100.00', '4', '网银在线支付充值', '1357375768', null, null, '1');
INSERT INTO `yqt_rechargerecord` VALUES ('233', '188', 'alexluah', '20131008183410209', '0.00', null, '1000.00', '0', 'MAYBANK', '1381228464', '1381228464', '', '2');
INSERT INTO `yqt_rechargerecord` VALUES ('234', '189', 'testing', '20131014125156081', '0.00', null, '1000.00', '4', 'test', '1381726335', '1381726335', 'asdf', '2');
INSERT INTO `yqt_rechargerecord` VALUES ('235', '195', 'blar', '20140106030033573', '0.00', null, '1000.00', '0', 'Bank', '1388948454', '1388948454', '', '2');

-- ----------------------------
-- Table structure for `yqt_record`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_record`;
CREATE TABLE `yqt_record` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `type` smallint(2) DEFAULT '1',
  `action` smallint(5) DEFAULT '0',
  `money` float(10,2) DEFAULT NULL,
  `accountmoney` float(10,2) DEFAULT NULL,
  `remark` varchar(800) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `uid` (`uid`),
  KEY `uname` (`uname`)
) ENGINE=MyISAM AUTO_INCREMENT=741 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_record
-- ----------------------------
INSERT INTO `yqt_record` VALUES ('642', '184', 'dj1jj', '1', '1', '-512.00', '19488.00', '买入<a href=\'http://item.taobao.com/item.htm?id=14935151937&spm=2014.12110377.0.0\' target=\'_blank\'>《Cetrizet男士休闲鞋男鞋时尚潮流潮鞋英伦韩版板鞋男真皮透气鞋3》</a> 2件，订单ID:267', '1355834751');
INSERT INTO `yqt_record` VALUES ('643', '184', 'dj1jj', '1', '1', '-69.30', '19418.70', '买入<a href=\'http://item.taobao.com/item.htm?id=17592559515&spm=2014.12110377.0.0\' target=\'_blank\'>《秋冬新款波浪圆领长袖T恤女修身好品质女装打底衫 女 长袖 韩版潮》</a> 7件，订单ID:268', '1355834751');
INSERT INTO `yqt_record` VALUES ('644', '184', 'dj1jj', '1', '2', '-8.00', '19410.70', '卖家[大q_小q]国内运费:8.00', '1355834751');
INSERT INTO `yqt_record` VALUES ('645', '184', 'dj1jj', '1', '1', '-1399.00', '18011.70', '买入<a href=\'http://item.taobao.com/item.htm?id=17159043021&spm=2014.12110377.0.0\' target=\'_blank\'>《七匹狼棉衣 男士正品外套 男装 冬装新品 獭兔毛领 棉服 02919》</a> 1件，订单ID:269', '1357303119');
INSERT INTO `yqt_record` VALUES ('646', '184', 'dj1jj', '1', '1', '-418.00', '17593.70', '买入<a href=\'http://item.taobao.com/item.htm?id=21878624289&spm=2014.12110377.0.0\' target=\'_blank\'>《预售2012新品韩版修身中长款羽绒服 正品羽绒服女 新款包邮羽绒服》</a> 1件，订单ID:270', '1357389037');
INSERT INTO `yqt_record` VALUES ('647', '184', 'dj1jj', '1', '1', '-1080.00', '16513.70', '买入<a href=\'http://item.taobao.com/item.htm?id=16171574592&spm=2014.12110377.0.0\' target=\'_blank\'>《正品 奢华兔毛大毛领 白鸭绒短款羽绒服 女 蕾丝边》</a> 1件，订单ID:271', '1357989894');
INSERT INTO `yqt_record` VALUES ('648', '184', 'dj1jj', '1', '2', '-6.00', '16507.70', '卖家[100e风尚]国内运费:6.00', '1357989894');
INSERT INTO `yqt_record` VALUES ('649', '184', 'dj1jj', '1', '3', '-56.00', '16451.70', '提交运单,运单ID:61', '1357992420');
INSERT INTO `yqt_record` VALUES ('650', '184', 'dj1jj', '1', '1', '-1886.00', '14565.70', '买入<a href=\'http://item.taobao.com/item.htm?id=16929426412&spm=2014.12110377.0.0\' target=\'_blank\'>《2012新品冬装 加厚羽绒服新款 超大毛领羽绒服 女 中长款 修身潮》</a> 1件，订单ID:272', '1358067699');
INSERT INTO `yqt_record` VALUES ('651', '184', 'dj1jj', '1', '2', '-10.00', '14555.70', '卖家[哈依族服饰]国内运费:10.00', '1358067700');
INSERT INTO `yqt_record` VALUES ('652', '184', 'dj1jj', '1', '1', '-1886.00', '12669.70', '买入<a href=\'http://item.taobao.com/item.htm?id=16929426412&spm=2014.12110377.0.0\' target=\'_blank\'>《2012新品冬装 加厚羽绒服新款 超大毛领羽绒服 女 中长款 修身潮》</a> 1件，订单ID:273', '1358068225');
INSERT INTO `yqt_record` VALUES ('653', '184', 'dj1jj', '1', '2', '-10.00', '12659.70', '卖家[哈依族服饰]国内运费:10.00', '1358068225');
INSERT INTO `yqt_record` VALUES ('654', '184', 'dj1jj', '1', '3', '-11.00', '12648.70', '提交运单,运单ID:62', '1358075796');
INSERT INTO `yqt_record` VALUES ('655', '184', 'dj1jj', '2', '3', '11.00', '12659.70', '取消运单操作,运单ID:62', '1358075903');
INSERT INTO `yqt_record` VALUES ('656', '188', 'alexluah', '2', '0', '1000.00', '1000.00', '', '1381228464');
INSERT INTO `yqt_record` VALUES ('657', '188', 'alexluah', '1', '1', '-69.00', '931.00', '买入<a href=\'http://item.taobao.com/item.htm?id=10355874352&spm=2014.12110377.0.0\' target=\'_blank\'>《2013夏季新款女装韩版女士纯棉针织挂脖吊带衫串珠打底吊带背心女》</a> 1件，订单ID:277', '1381228475');
INSERT INTO `yqt_record` VALUES ('658', '188', 'alexluah', '1', '1', '-69.00', '862.00', '买入<a href=\'http://item.taobao.com/item.htm?id=10355874352&spm=2014.12110377.0.0\' target=\'_blank\'>《2013夏季新款女装韩版女士纯棉针织挂脖吊带衫串珠打底吊带背心女》</a> 1件，订单ID:278', '1381228475');
INSERT INTO `yqt_record` VALUES ('659', '188', 'alexluah', '1', '2', '-10.00', '852.00', '卖家[hao121265]国内运费:10.00', '1381228475');
INSERT INTO `yqt_record` VALUES ('660', '189', 'testing', '2', '0', '1000.00', '1000.00', 'asdf', '1381726335');
INSERT INTO `yqt_record` VALUES ('661', '189', 'testing', '1', '1', '-69.00', '931.00', '买入<a href=\'http://item.taobao.com/item.htm?id=19405050239&spm=2014.12110377.0.0\' target=\'_blank\'>《2013秋装韩版修身女款长袖T恤 镂空花朵显瘦圆领长t上衣打底衫nv》</a> 1件，订单ID:280', '1381726359');
INSERT INTO `yqt_record` VALUES ('662', '189', 'testing', '1', '1', '-35.00', '896.00', '买入<a href=\'http://item.taobao.com/item.htm?id=14501719672&spm=2014.12110377.0.0\' target=\'_blank\'>《2013新款中年女包中老年女包妈妈包包女士斜挎斜跨包复古小包包邮》</a> 1件，订单ID:281', '1381726359');
INSERT INTO `yqt_record` VALUES ('663', '189', 'testing', '1', '1', '-35.00', '861.00', '买入<a href=\'http://item.taobao.com/item.htm?id=14501719672&spm=2014.12110377.0.0\' target=\'_blank\'>《2013新款中年女包中老年女包妈妈包包女士斜挎斜跨包复古小包包邮》</a> 1件，订单ID:282', '1381726359');
INSERT INTO `yqt_record` VALUES ('664', '189', 'testing', '1', '1', '-69.00', '792.00', '买入<a href=\'http://item.taobao.com/item.htm?id=19405050239&spm=2014.12110377.0.0\' target=\'_blank\'>《2013秋装韩版修身女款长袖T恤 镂空花朵显瘦圆领长t上衣打底衫nv》</a> 1件，订单ID:283', '1381726359');
INSERT INTO `yqt_record` VALUES ('665', '189', 'testing', '1', '1', '-98.00', '694.00', '买入<a href=\'http://item.taobao.com/item.htm?id=18435299588&spm=2014.12110377.0.0\' target=\'_blank\'>《热卖包邮 2013秋冬装新款 韩版时尚百搭显瘦高领打底毛衣女针织衫》</a> 1件，订单ID:284', '1381726359');
INSERT INTO `yqt_record` VALUES ('666', '189', 'testing', '1', '1', '-480.00', '214.00', '买入<a href=\'http://item.taobao.com/item.htm?id=16171574592&spm=2014.12110377.0.0\' target=\'_blank\'>《2013秋冬新款 正品 奢华兔毛大毛领 白鸭绒短款羽绒服 女 蕾丝边》</a> 1件，订单ID:285', '1381726359');
INSERT INTO `yqt_record` VALUES ('667', '189', 'testing', '1', '1', '-49.00', '165.00', '买入<a href=\'http://item.taobao.com/item.htm?id=10355874352&spm=2014.12110377.0.0\' target=\'_blank\'>《2013夏季新款女装韩版女士纯棉针织挂脖吊带衫串珠打底吊带背心女》</a> 1件，订单ID:286', '1381726359');
INSERT INTO `yqt_record` VALUES ('668', '189', 'testing', '1', '2', '-10.00', '155.00', '卖家[韩范瑄旗舰店]国内运费:10.00', '1381726359');
INSERT INTO `yqt_record` VALUES ('669', '189', 'testing', '1', '2', '-10.00', '145.00', '卖家[wjmud2]国内运费:10.00', '1381726359');
INSERT INTO `yqt_record` VALUES ('670', '189', 'testing', '1', '2', '-10.00', '135.00', '卖家[hao121265]国内运费:10.00', '1381726359');
INSERT INTO `yqt_record` VALUES ('671', '189', 'testing', '2', '4', '35.00', '170.00', '取消订单<a href=\'http://item.taobao.com/item.htm?id=14501719672&spm=2014.12110377.0.0\' target=\'_blank\'>《2013新款中年女包中老年女包妈妈包包女士斜挎斜跨包复古小包包邮》</a>订单ID:282', '1381726658');
INSERT INTO `yqt_record` VALUES ('672', '189', 'testing', '2', '4', '69.00', '239.00', '取消订单<a href=\'http://item.taobao.com/item.htm?id=19405050239&spm=2014.12110377.0.0\' target=\'_blank\'>《2013秋装韩版修身女款长袖T恤 镂空花朵显瘦圆领长t上衣打底衫nv》</a>订单ID:280', '1381726869');
INSERT INTO `yqt_record` VALUES ('673', '189', 'testing', '1', '1', '-35.00', '204.00', '买入<a href=\'http://item.taobao.com/item.htm?id=14501719672&spm=2014.12110377.0.0\' target=\'_blank\'>《2013新款中年女包中老年女包妈妈包包女士斜挎斜跨包复古小包包邮》</a> 1件，订单ID:287', '1381727735');
INSERT INTO `yqt_record` VALUES ('674', '189', 'testing', '1', '2', '-10.00', '194.00', '卖家[wjmud2]国内运费:10.00', '1381727735');
INSERT INTO `yqt_record` VALUES ('675', '191', 'ccfun1127', '1', '1', '-49.00', '451.00', '买入<a href=\'http://item.taobao.com/item.htm?id=18702474875&spm=2014.12110377.0.0\' target=\'_blank\'>《达利都 新款水钻镶嵌 女士牛皮细腰带 皮带女 韩版时尚带钻 正品》</a> 1件，订单ID:288', '1383554276');
INSERT INTO `yqt_record` VALUES ('676', '191', 'ccfun1127', '1', '1', '-298.00', '153.00', '买入<a href=\'http://item.taobao.com/item.htm?id=16171574592&spm=2014.12110377.0.0\' target=\'_blank\'>《2013秋冬新款 正品 奢华兔毛大毛领 白鸭绒短款羽绒服 女 蕾丝边》</a> 1件，订单ID:289', '1383554276');
INSERT INTO `yqt_record` VALUES ('677', '191', 'ccfun1127', '1', '2', '-10.00', '143.00', '卖家[达利都旗舰店]国内运费:10.00', '1383554276');
INSERT INTO `yqt_record` VALUES ('678', '191', 'ccfun1127', '1', '1', '-39.00', '104.00', '买入<a href=\'http://item.taobao.com/item.htm?id=15084995161&spm=2014.12110377.0.0\' target=\'_blank\'>《正品高档男士真皮钥匙包多功能男女式牛皮锁匙包零钱卡夹男款韩版》</a> 1件，订单ID:290', '1383555099');
INSERT INTO `yqt_record` VALUES ('679', '191', 'ccfun1127', '1', '2', '-10.00', '94.00', '卖家[小晖皮具l]国内运费:10.00', '1383555099');
INSERT INTO `yqt_record` VALUES ('680', '184', 'dj1jj', '1', '1', '-38.00', '12621.70', '买入<a href=\'http://item.taobao.com/item.htm?id=22068775953&spm=2014.21554143.0.0\' target=\'_blank\'>《包邮搞怪苦逼屌丝男公仔青年创意超大抱枕男友节生日礼物毛绒玩具》</a> 1件，订单ID:291', '1387959823');
INSERT INTO `yqt_record` VALUES ('681', '195', 'blar', '2', '0', '1000.00', '1000.00', '', '1388948455');
INSERT INTO `yqt_record` VALUES ('682', '195', 'blar', '1', '1', '-21.70', '978.30', '买入<a href=\'http://item.taobao.com/item.htm?id=10488995478&spm=2014.21554143.0.0\' target=\'_blank\'>《2013夏装女童装-韩版时尚荷叶边吊带弹力连体衣连体裤E仓》</a> 1件，订单ID:292', '1388948473');
INSERT INTO `yqt_record` VALUES ('683', '195', 'blar', '1', '1', '-49.17', '929.13', '买入<a href=\'http://item.taobao.com/item.htm?id=20600172906&spm=2014.21554143.0.0\' target=\'_blank\'>《快乐大本营高清懒人眼镜近视卧式眼镜躺着看书看电视折射眼睛正品》</a> 1件，订单ID:293', '1388948473');
INSERT INTO `yqt_record` VALUES ('684', '195', 'blar', '1', '2', '-10.00', '919.13', '卖家[水宝贝11]国内运费:10.00', '1388948473');
INSERT INTO `yqt_record` VALUES ('685', '195', 'blar', '1', '3', '-11.00', '908.13', '提交运单,运单ID:63', '1388949500');
INSERT INTO `yqt_record` VALUES ('686', '195', 'blar', '1', '1', '-19.80', '888.33', '买入<a href=\'http://item.taobao.com/item.htm?id=17592559515&spm=2014.12110377.0.0\' target=\'_blank\'>《淘宝网 》</a> 1件，订单ID:294', '1389191664');
INSERT INTO `yqt_record` VALUES ('687', '195', 'blar', '1', '1', '-297.00', '591.33', '买入<a href=\'http://item.taobao.com/item.htm?id=15972868539\' target=\'_blank\'>《淘宝网 》</a> 1件，订单ID:295', '1389191664');
INSERT INTO `yqt_record` VALUES ('688', '195', 'blar', '1', '2', '-6.00', '585.33', '卖家[null]国内运费:6.00', '1389191664');
INSERT INTO `yqt_record` VALUES ('689', '195', 'blar', '2', '4', '297.00', '882.33', '取消订单<a href=\'http://item.taobao.com/item.htm?id=15972868539\' target=\'_blank\'>《淘宝网 》</a>订单ID:295', '1389191852');
INSERT INTO `yqt_record` VALUES ('690', '195', 'blar', '2', '4', '25.80', '908.13', '取消订单<a href=\'http://item.taobao.com/item.htm?id=17592559515&spm=2014.12110377.0.0\' target=\'_blank\'>《淘宝网 》和运费:6.00</a>订单ID:294', '1389191859');
INSERT INTO `yqt_record` VALUES ('691', '195', 'blar', '1', '1', '-65.00', '843.13', '买入<a href=\'http://item.taobao.com/item.htm?id=27093640721&spm=2014.21554143.0.0\' target=\'_blank\'>《出口韩国正品pororo波鲁鲁好友大白熊波比POBY毛绒公仔动漫玩具》</a> 1件，订单ID:296', '1389192029');
INSERT INTO `yqt_record` VALUES ('692', '195', 'blar', '1', '1', '-49.00', '794.13', '买入<a href=\'http://item.taobao.com/item.htm?id=19018550023&spm=2014.21554143.0.0\' target=\'_blank\'>《西米果 韩国PORORO 可爱小企鹅大冒险 卡通公仔 波鲁鲁》</a> 1件，订单ID:297', '1389192029');
INSERT INTO `yqt_record` VALUES ('693', '195', 'blar', '1', '2', '-10.00', '784.13', '卖家[天街小雨8]国内运费:10.00', '1389192029');
INSERT INTO `yqt_record` VALUES ('694', '195', 'blar', '1', '2', '-10.00', '774.13', '卖家[西米果旗舰店]国内运费:10.00', '1389192029');
INSERT INTO `yqt_record` VALUES ('695', '195', 'blar', '1', '3', '-18.00', '756.13', '提交运单,运单ID:64', '1389194229');
INSERT INTO `yqt_record` VALUES ('696', '195', 'blar', '2', '3', '18.00', '774.13', '取消运单操作,运单ID:64', '1389194519');
INSERT INTO `yqt_record` VALUES ('697', '195', 'blar', '1', '3', '-18.00', '756.13', '提交运单,运单ID:65', '1389194744');
INSERT INTO `yqt_record` VALUES ('698', '195', 'blar', '1', '1', '-68.00', '688.13', '买入<a href=\'http://item.taobao.com/item.htm?id=36626849661&spm=2014.21554143.0.0\' target=\'_blank\'>《包邮 TOFFEE华丽高端狗唐装009款 大狗也有份 过新年宠物狗狗衣服》</a> 1件，订单ID:298', '1389197053');
INSERT INTO `yqt_record` VALUES ('699', '195', 'blar', '1', '2', '-20.00', '668.13', '卖家[唬唬猪韩饰]国内运费:20.00', '1389197053');
INSERT INTO `yqt_record` VALUES ('700', '199', 'aaaa', '1', '1', '-100.00', '323110.00', '买入<a href=\'http://item.taobao.com/item.htm?id=16513992720&spm=2014.21554143.0.0\' target=\'_blank\'>《ecshop 为促销 支持某种支付方式 设置折扣的插件》</a> 1件，订单ID:300', '1401615183');
INSERT INTO `yqt_record` VALUES ('701', '199', 'aaaa', '1', '1', '-980.00', '322130.00', '买入<a href=\'http://item.taobao.com/item.htm?id=38194442228&spm=2014.21554143.0.0\' target=\'_blank\'>《淘宝代购程序 ecshop内核 淘宝代购人士专用 一键填单》</a> 1件，订单ID:301', '1401615183');
INSERT INTO `yqt_record` VALUES ('702', '200', 'imjacky', '1', '1', '-100.00', '4900.00', '买入<a href=\'http://item.taobao.com/item.htm?id=16513992720&spm=2014.21554143.0.0\' target=\'_blank\'>《ecshop 为促销 支持某种支付方式 设置折扣的插件》</a> 1件，订单ID:305', '1402646279');
INSERT INTO `yqt_record` VALUES ('703', '200', 'imjacky', '1', '1', '-66.00', '4834.00', '买入<a href=\'http://item.taobao.com/item.htm?id=17592559515&spm=2014.12110377.0.0\' target=\'_blank\'>《淘宝网 》</a> 1件，订单ID:306', '1402646305');
INSERT INTO `yqt_record` VALUES ('704', '200', 'imjacky', '1', '1', '-88.00', '4746.00', '买入<a href=\'http://item.taobao.com/item.htm?id=17592559515&spm=2014.12110377.0.0\' target=\'_blank\'>《淘宝网 》</a> 1件，订单ID:307', '1402646305');
INSERT INTO `yqt_record` VALUES ('705', '200', 'imjacky', '1', '1', '-278.00', '4468.00', '买入<a href=\'http://item.taobao.com/item.htm?id=12644026027&spm=2014.21554143.0.0\' target=\'_blank\'>《艾奔超大容量手提旅行包男女商务出差行李包单肩短途旅行袋旅游包》</a> 1件，订单ID:308', '1402646305');
INSERT INTO `yqt_record` VALUES ('706', '200', 'imjacky', '1', '2', '-10.00', '4458.00', '卖家[aspensport旗舰店]国内运费:10.00', '1402646305');
INSERT INTO `yqt_record` VALUES ('707', '200', 'imjacky', '1', '1', '-800.00', '3658.00', '买入<a href=\'http://item.taobao.com/item.htm?id=17489022622&spm=2014.21554143.0.0\' target=\'_blank\'>《淘宝代购程序 淘宝代购 代购源码 代购系统 全球代购系统》</a> 1件，订单ID:309', '1402646380');
INSERT INTO `yqt_record` VALUES ('708', '200', 'imjacky', '1', '2', '-10.00', '3648.00', '卖家[阿衣莱靓衣坊]国内运费:10.00', '1402646380');
INSERT INTO `yqt_record` VALUES ('709', '200', 'imjacky', '1', '1', '-3000.00', '648.00', '买入<a href=\'http://item.taobao.com/item.htm?id=17617765356&spm=2014.21554143.0.0\' target=\'_blank\'>《代购程序源码 淘宝代购系统 PHP代购程序 英文代购程序 代购程序》</a> 1件，订单ID:310', '1402646821');
INSERT INTO `yqt_record` VALUES ('710', '200', 'imjacky', '1', '2', '-10.00', '638.00', '卖家[阿衣莱靓衣坊]国内运费:10.00', '1402646821');
INSERT INTO `yqt_record` VALUES ('711', '201', 'testtest', '1', '1', '-800.00', '9200.00', '买入<a href=\'http://item.taobao.com/item.htm?id=17489022622&spm=2014.21554143.0.0\' target=\'_blank\'>《淘宝代购程序 淘宝代购 代购源码 代购系统 全球代购系统》</a> 1件，订单ID:311', '1402655214');
INSERT INTO `yqt_record` VALUES ('712', '201', 'testtest', '1', '2', '-10.00', '9190.00', '卖家[阿衣莱靓衣坊]国内运费:10.00', '1402655214');
INSERT INTO `yqt_record` VALUES ('713', '201', 'testtest', '1', '1', '-1080.00', '8110.00', '买入<a href=\'http://item.taobao.com/item.htm?id=16171574592&spm=2014.21554143.0.0\' target=\'_blank\'>《【淘宝清仓】正品奢华兔毛领白鸭绒羽绒服主打  8款宝贝亏本清仓》</a> 1件，订单ID:312', '1402711306');
INSERT INTO `yqt_record` VALUES ('714', '201', 'testtest', '1', '2', '-30.00', '8080.00', '卖家[100e风尚]国内运费:30.00', '1402711306');
INSERT INTO `yqt_record` VALUES ('715', '201', 'testtest', '2', '5', '30.00', '8110.00', '调整商品<a href=\'http://item.taobao.com/item.htm?id=16171574592&spm=2014.21554143.0.0\' target=\'_blank\'>《【淘宝清仓】正品奢华兔毛领白鸭绒羽绒服主打  8款宝贝亏本清仓》</a>价格：-30订单ID:312', '1402711333');
INSERT INTO `yqt_record` VALUES ('716', '201', 'testtest', '1', '3', '-107.00', '8003.00', '提交运单,运单ID:66', '1402711891');
INSERT INTO `yqt_record` VALUES ('717', '201', 'testtest', '2', '4', '810.00', '8813.00', '取消订单<a href=\'http://item.taobao.com/item.htm?id=17489022622&spm=2014.21554143.0.0\' target=\'_blank\'>《淘宝代购程序 淘宝代购 代购源码 代购系统 全球代购系统》和运费:10.00</a>订单ID:311', '1402712063');
INSERT INTO `yqt_record` VALUES ('718', '201', 'testtest', '1', '1', '-149.40', '8663.60', '买入<a href=\'http://item.taobao.com/item.htm?id=13041841643&spm=2014.21554143.0.0\' target=\'_blank\'>《2014春夏新款皮流苏女包韩版亮片链条女潮包大包黑色单肩斜挎包邮》</a> 1件，订单ID:313', '1402715608');
INSERT INTO `yqt_record` VALUES ('719', '201', 'testtest', '1', '1', '-1190.00', '7473.60', '买入<a href=\'http://dai.yuanmadian.com/shop.php?action=view&gid=36\' target=\'_blank\'>《香港品牌·京东店庆·优惠100元【赠送￥99元蓝牙耳机+￥59元手机套】疯抢！》</a> 1件，订单ID:314', '1402718267');
INSERT INTO `yqt_record` VALUES ('720', '201', 'testtest', '1', '2', '-10.00', '7463.60', '卖家[dai.yuanmadian.com]国内运费:10.00', '1402718267');
INSERT INTO `yqt_record` VALUES ('721', '201', 'testtest', '2', '4', '1080.00', '8543.60', '取消订单<a href=\'http://item.taobao.com/item.htm?id=16171574592&spm=2014.21554143.0.0\' target=\'_blank\'>《【淘宝清仓】正品奢华兔毛领白鸭绒羽绒服主打  8款宝贝亏本清仓》和运费:30.00</a>订单ID:312', '1402718281');
INSERT INTO `yqt_record` VALUES ('722', '201', 'testtest', '2', '4', '149.40', '8693.00', '取消订单<a href=\'http://item.taobao.com/item.htm?id=13041841643&spm=2014.21554143.0.0\' target=\'_blank\'>《2014春夏新款皮流苏女包韩版亮片链条女潮包大包黑色单肩斜挎包邮》和运费:0.00</a>订单ID:313', '1402718285');
INSERT INTO `yqt_record` VALUES ('723', '201', 'testtest', '1', '1', '-1190.00', '7503.00', '买入<a href=\'http://item.jd.com/1062248351.html#product-detail\' target=\'_blank\'>《NUU NU3 联通3G手机GSM/WCDMA 双卡双待 白》</a> 1件，订单ID:315', '1402718734');
INSERT INTO `yqt_record` VALUES ('724', '201', 'testtest', '2', '4', '1200.00', '8703.00', '取消订单<a href=\'http://dai.yuanmadian.com/shop.php?action=view&gid=36\' target=\'_blank\'>《香港品牌·京东店庆·优惠100元【赠送￥99元蓝牙耳机+￥59元手机套】疯抢！》和运费:10.00</a>订单ID:314', '1402726067');
INSERT INTO `yqt_record` VALUES ('725', '201', 'testtest', '1', '1', '-118.00', '8585.00', '买入<a href=\'http://item.taobao.com/item.htm?id=39359588218&spm=2014.21554143.0.0\' target=\'_blank\'>《丹衣阁 下摆荷叶边雪纺衫后背拉链短袖欧根纱上衣 9号10点》</a> 1件，订单ID:316', '1402726260');
INSERT INTO `yqt_record` VALUES ('726', '201', 'testtest', '1', '2', '-10.00', '8575.00', '卖家[c_fj820917]国内运费:10.00', '1402726260');
INSERT INTO `yqt_record` VALUES ('727', '201', 'testtest', '1', '1', '-1080.00', '7495.00', '买入<a href=\'http://item.taobao.com/item.htm?id=16171574592&spm=2014.21554143.0.0\' target=\'_blank\'>《【淘宝清仓】正品奢华兔毛领白鸭绒羽绒服主打  8款宝贝亏本清仓》</a> 1件，订单ID:317', '1402726762');
INSERT INTO `yqt_record` VALUES ('728', '201', 'testtest', '1', '2', '-10.00', '7485.00', '卖家[100e风尚]国内运费:10.00', '1402726762');
INSERT INTO `yqt_record` VALUES ('729', '201', 'testtest', '2', '5', '10.00', '7495.00', '调整商品<a href=\'http://item.taobao.com/item.htm?id=16171574592&spm=2014.21554143.0.0\' target=\'_blank\'>《【淘宝清仓】正品奢华兔毛领白鸭绒羽绒服主打  8款宝贝亏本清仓》</a>运费：-10订单ID:317', '1402726837');
INSERT INTO `yqt_record` VALUES ('730', '201', 'testtest', '1', '1', '-118.00', '17377.00', '买入<a href=\'http://item.taobao.com/item.htm?id=39359588218&spm=2014.21554143.0.0\' target=\'_blank\'>《丹衣阁 下摆荷叶边雪纺衫后背拉链短袖欧根纱上衣 9号10点》</a> 1件，订单ID:318', '1402732491');
INSERT INTO `yqt_record` VALUES ('731', '201', 'testtest', '1', '2', '-10.00', '17367.00', '卖家[c_fj820917]国内运费:10.00', '1402732491');
INSERT INTO `yqt_record` VALUES ('732', '201', 'testtest', '2', '4', '118.00', '17485.00', '取消订单<a href=\'http://item.taobao.com/item.htm?id=39359588218&spm=2014.21554143.0.0\' target=\'_blank\'>《丹衣阁 下摆荷叶边雪纺衫后背拉链短袖欧根纱上衣 9号10点》</a>订单ID:316', '1402732904');
INSERT INTO `yqt_record` VALUES ('733', '202', 'mxjyweb', '1', '1', '-118.00', '9882.00', '买入<a href=\'http://item.taobao.com/item.htm?id=39359588218&spm=2014.21554143.0.0\' target=\'_blank\'>《丹衣阁 下摆荷叶边雪纺衫后背拉链短袖欧根纱上衣 9号10点》</a> 1件，订单ID:319', '1402733495');
INSERT INTO `yqt_record` VALUES ('734', '202', 'mxjyweb', '1', '2', '-20.00', '9862.00', '卖家[c_fj820917]国内运费:20.00', '1402733495');
INSERT INTO `yqt_record` VALUES ('735', '201', 'testtest', '1', '3', '-15.00', '17470.00', '提交运单,运单ID:67', '1402734411');
INSERT INTO `yqt_record` VALUES ('736', '201', 'testtest', '1', '1', '-147.00', '17323.00', '买入<a href=\'http://item.taobao.com/item.htm?id=10355874352&spm=2014.21554143.0.0\' target=\'_blank\'>《2014夏季新款女装韩版女士纯棉针织挂脖吊带衫串珠打底吊带背心女》</a> 3件，订单ID:320', '1402734714');
INSERT INTO `yqt_record` VALUES ('737', '201', 'testtest', '1', '2', '-10.00', '17313.00', '卖家[hao121265]国内运费:10.00', '1402734714');
INSERT INTO `yqt_record` VALUES ('738', '206', 'xuhuachen', '1', '1', '-128.00', '62226.00', '买入<a href=\'http://item.taobao.com/item.htm?id=6817511075&spm=2014.21554143.0.0\' target=\'_blank\'>《也买酒 法国红酒原装进口 维莎梅洛干红葡萄酒750ml》</a> 1件，订单ID:321', '1404729963');
INSERT INTO `yqt_record` VALUES ('739', '206', 'xuhuachen', '1', '1', '-128.00', '62098.00', '买入<a href=\'http://item.taobao.com/item.htm?id=39417120321&spm=2014.21554143.0.0\' target=\'_blank\'>《本来生活 巴西原装进口亚马逊啤酒 4瓶装 355ml/瓶 手工酿造 包邮》</a> 1件，订单ID:322', '1404729963');
INSERT INTO `yqt_record` VALUES ('740', '206', 'xuhuachen', '1', '2', '-10.00', '62088.00', '卖家[也买酒官方旗舰店]国内运费:10.00', '1404729963');

-- ----------------------------
-- Table structure for `yqt_refund`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_refund`;
CREATE TABLE `yqt_refund` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rechargeid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(50) NOT NULL,
  `money` float(10,2) DEFAULT NULL,
  `rechargetime` int(11) DEFAULT NULL,
  `rechargemoney` float(10,2) DEFAULT NULL,
  `rechargesn` varchar(50) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `refundremark` varchar(255) NOT NULL DEFAULT ' ',
  `addtime` int(11) DEFAULT NULL,
  `state` smallint(5) DEFAULT '1',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_refund
-- ----------------------------
INSERT INTO `yqt_refund` VALUES ('1', '1', '3', 'lss', '50.00', '464546', '500.00', '1346546', '我要退款', ' 请稍等两天', '54546546', '2');
INSERT INTO `yqt_refund` VALUES ('2', '6', '3', 'lss', '200.00', '1281426886', '2000.00', '20100810155423366', '我要回国了!', '已经退款给你支付宝', '1281604933', '2');
INSERT INTO `yqt_refund` VALUES ('3', '2', '1', 'admin', '0.00', '1279336320', '1.00', '0', '', ' 好的', '1290578288', '2');
INSERT INTO `yqt_refund` VALUES ('4', '95', '55', 'hanfei', '1000000.00', '1309313122', '100000000.00', '20110629100504267', '', ' 差', '1309319326', '2');
INSERT INTO `yqt_refund` VALUES ('5', '113', '55', 'hanfei', '10000.00', '1311052243', '1000.00', '20110719131028247', '', ' ', '1311052260', '2');
INSERT INTO `yqt_refund` VALUES ('6', '113', '55', 'hanfei', '100000.00', '1311052243', '1000.00', '20110719131028247', '10', ' ', '1311658163', '2');
INSERT INTO `yqt_refund` VALUES ('7', '113', '55', 'hanfei', '100000000.00', '1311052243', '1000.00', '20110719131028247', '10', ' ok', '1311658201', '2');
INSERT INTO `yqt_refund` VALUES ('8', '161', '139', 'ceshi1234567890', '500.00', '1321282415', '500.00', '20111114225134033', '我的天', ' ', '1321355916', '2');
INSERT INTO `yqt_refund` VALUES ('9', '161', '139', 'ceshi1234567890', '90000.00', '1321282415', '500.00', '20111114225134033', '', ' mhm', '1321356050', '2');
INSERT INTO `yqt_refund` VALUES ('10', '183', '170', 'pam19941', '1000000.00', '1322436596', '100000.00', '20111128072933321', '', ' ,,', '1322436625', '2');
INSERT INTO `yqt_refund` VALUES ('11', '176', '164', 'nihao', '19999.00', '1322201060', '10000000.00', '20111125140359253', '', ' ', '1322448203', '2');
INSERT INTO `yqt_refund` VALUES ('12', '176', '164', 'nihao', '10000000.00', '1322201060', '10000000.00', '20111125140359253', '', ' ', '1322448375', '2');
INSERT INTO `yqt_refund` VALUES ('13', '176', '164', 'nihao', '100000000.00', '1322201060', '10000000.00', '20111125140359253', '', ' ', '1322449860', '2');
INSERT INTO `yqt_refund` VALUES ('14', '154', '158', 'teamilk', '200.00', '1320817623', '500.00', '20111109134639693', '试一下', ' ', '1322460969', '2');
INSERT INTO `yqt_refund` VALUES ('15', '154', '158', 'teamilk', '1000.00', '1320817623', '500.00', '20111109134639693', '能不通用', ' ', '1322461141', '2');
INSERT INTO `yqt_refund` VALUES ('16', '172', '158', 'teamilk', '1000.00', '1322025084', '10000.00', '20111123131112041', '', ' ', '1322461216', '2');
INSERT INTO `yqt_refund` VALUES ('17', '181', '168', 'yitouwushui', '10000.00', '1322316788', '10000.00', '20111126221249647', 'bbb', ' ', '1322547748', '2');
INSERT INTO `yqt_refund` VALUES ('18', '197', '176', 'nihaoma', '20.00', '1322706334', '50.00', '20111201102457644', '', ' ', '1322706384', '2');
INSERT INTO `yqt_refund` VALUES ('19', '194', '176', 'nihaoma', '1000.00', '1322703881', '1000.00', '20111201094423212', '', ' ', '1322706960', '2');
INSERT INTO `yqt_refund` VALUES ('20', '199', '176', 'nihaoma', '-345.00', '1322713443', '20.00', '20111201122348568', '', ' ', '1322714279', '2');
INSERT INTO `yqt_refund` VALUES ('21', '200', '176', 'nihaoma', '0.00', '1322714322', '-342.00', '20111201123832425', '', ' ', '1322714361', '1');

-- ----------------------------
-- Table structure for `yqt_scorerecord`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_scorerecord`;
CREATE TABLE `yqt_scorerecord` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  `score` int(11) DEFAULT '0',
  `totalscore` int(11) DEFAULT NULL,
  `type` smallint(5) DEFAULT '1' COMMENT '1获得2消费',
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=272 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_scorerecord
-- ----------------------------
INSERT INTO `yqt_scorerecord` VALUES ('238', '183', 'aaaaaa', '注册送积分:200', '200', '200', '2', '1352282241');
INSERT INTO `yqt_scorerecord` VALUES ('239', '184', 'dj1jj', '注册送积分:200', '200', '200', '2', '1355207253');
INSERT INTO `yqt_scorerecord` VALUES ('240', '185', 'dj2jj', '注册送积分:200', '200', '200', '2', '1355649953');
INSERT INTO `yqt_scorerecord` VALUES ('241', '184', 'dj1jj', '积分兑换5元优惠卷1张', '-500', '199500', '1', '1357986399');
INSERT INTO `yqt_scorerecord` VALUES ('242', '184', 'dj1jj', '金卡会员升级', '-1000', '198500', '1', '1358067933');
INSERT INTO `yqt_scorerecord` VALUES ('243', '184', 'dj1jj', '积分兑换10元优惠卷1张', '-1000', '197500', '1', '1358068050');
INSERT INTO `yqt_scorerecord` VALUES ('244', '184', 'dj1jj', '积分兑换10元优惠卷1张', '-1000', '196500', '1', '1358068055');
INSERT INTO `yqt_scorerecord` VALUES ('245', '186', 'sdjlove', '注册送积分:200', '200', '200', '2', '1376973368');
INSERT INTO `yqt_scorerecord` VALUES ('246', '187', '瓜晓晓', '注册送积分:200', '200', '200', '2', '1381153652');
INSERT INTO `yqt_scorerecord` VALUES ('247', '188', 'alexluah', '注册送积分:200', '200', '200', '2', '1381227207');
INSERT INTO `yqt_scorerecord` VALUES ('248', '189', 'testing', '注册送积分:200', '200', '200', '2', '1381725846');
INSERT INTO `yqt_scorerecord` VALUES ('249', '190', '一一一', '注册送积分:200', '200', '200', '2', '1381821000');
INSERT INTO `yqt_scorerecord` VALUES ('250', '191', 'ccfun1127', '注册送积分:200', '200', '200', '2', '1383552621');
INSERT INTO `yqt_scorerecord` VALUES ('251', '192', 'a123456', '注册送积分:200', '200', '200', '2', '1384601098');
INSERT INTO `yqt_scorerecord` VALUES ('252', '193', 'a1234563', '注册送积分:200', '200', '200', '2', '1384601210');
INSERT INTO `yqt_scorerecord` VALUES ('253', '194', 'test', '注册送积分:200', '200', '200', '2', '1384601296');
INSERT INTO `yqt_scorerecord` VALUES ('254', '195', 'blar', '注册送积分:200', '200', '200', '2', '1388947952');
INSERT INTO `yqt_scorerecord` VALUES ('255', '195', 'blar', '运单完成送积分:70.87,运单ID:63', '71', '271', '2', '1388949615');
INSERT INTO `yqt_scorerecord` VALUES ('256', '195', 'blar', '运单完成送积分:114.00,运单ID:64', '114', '385', '2', '1389194456');
INSERT INTO `yqt_scorerecord` VALUES ('257', '195', 'blar', '金卡会员升级', '-1000', '385', '1', '1389196396');
INSERT INTO `yqt_scorerecord` VALUES ('258', '195', 'blar', '白金卡会员升级', '-2000', '8385', '1', '1389196459');
INSERT INTO `yqt_scorerecord` VALUES ('259', '196', 'erifan', '注册送积分:200', '200', '200', '2', '1389779642');
INSERT INTO `yqt_scorerecord` VALUES ('260', '197', '测试', '注册送积分:200', '200', '200', '2', '1393320951');
INSERT INTO `yqt_scorerecord` VALUES ('261', '198', 'lin65487136', '注册送积分:200', '200', '200', '2', '1396269077');
INSERT INTO `yqt_scorerecord` VALUES ('262', '199', 'aaaa', '注册送积分:200', '200', '200', '2', '1401614880');
INSERT INTO `yqt_scorerecord` VALUES ('263', '200', 'imjacky', '注册送积分:200', '200', '200', '2', '1402645632');
INSERT INTO `yqt_scorerecord` VALUES ('264', '201', 'testtest', '注册送积分:200', '200', '200', '2', '1402655032');
INSERT INTO `yqt_scorerecord` VALUES ('265', '201', 'testtest', '运单完成送积分:1050.00,运单ID:66', '1050', '1250', '2', '1402712295');
INSERT INTO `yqt_scorerecord` VALUES ('266', '202', 'mxjyweb', '注册送积分:200', '200', '200', '2', '1402733214');
INSERT INTO `yqt_scorerecord` VALUES ('267', '201', 'testtest', '运单完成送积分:1080.00,运单ID:67', '1080', '2330', '2', '1402734569');
INSERT INTO `yqt_scorerecord` VALUES ('268', '203', 'igoyi', '注册送积分:200', '200', '200', '2', '1402810361');
INSERT INTO `yqt_scorerecord` VALUES ('269', '204', 'aaronting87', '注册送积分:200', '200', '200', '2', '1403249456');
INSERT INTO `yqt_scorerecord` VALUES ('270', '205', 'zynet', '注册送积分:200', '200', '200', '2', '1404285058');
INSERT INTO `yqt_scorerecord` VALUES ('271', '206', 'xuhuachen', '注册送积分:200', '200', '200', '2', '1404728813');

-- ----------------------------
-- Table structure for `yqt_sendorder`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_sendorder`;
CREATE TABLE `yqt_sendorder` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) DEFAULT NULL,
  `dbid` int(20) NOT NULL DEFAULT '0',
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `oids` varchar(1000) DEFAULT NULL,
  `couponid` int(11) DEFAULT NULL,
  `freight` float(10,2) NOT NULL DEFAULT '0.00',
  `serverfee` float(10,2) DEFAULT '0.00',
  `customsfee` float(10,2) DEFAULT '0.00' COMMENT '报关费',
  `totalfee` float(10,2) DEFAULT '0.00',
  `Insurancefee` float(10,2) NOT NULL DEFAULT '0.00',
  `countmoney` float(10,2) DEFAULT NULL,
  `countweight` float(10,2) DEFAULT NULL,
  `consignee` varchar(30) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `deliveryname` varchar(30) DEFAULT NULL,
  `areaname` varchar(30) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `uptime` int(11) DEFAULT NULL,
  `comment` text,
  `commenttime` int(11) DEFAULT NULL,
  `reply` text,
  `showcomment` smallint(5) DEFAULT '0',
  `state` smallint(5) DEFAULT '1',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_sendorder
-- ----------------------------
INSERT INTO `yqt_sendorder` VALUES ('1', 'ems153456131', '0', '3', 'lss', 'lssbing@163.com', '', '0', '120.00', '50.00', '5.00', '175.00', '0.00', '0.00', '0.00', '大兵', '中国', '郑州', '450000', '13613525254', '郑州市文化路', 'ems153456132111', '1', 'EMS快递', '国内转送', '564645646', '1321754942', '你们服务很好我很满意', '1282962230', '回复测试信息', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('3', 'ems4558555', '0', '3', 'lss', 'lssbing3@163.com', '20,19,9,7,6', '6', '694.00', '24.28', '0.00', '718.28', '0.00', '366.00', '2330.00', '李大兵1', '中国', '郑州1', '4500001', '135821245151', '文化路张家村5555', '', '1', 'EMS国际快递', '美国', '1282895573', '1321754908', '我对服务满意,无任何特殊备注。', '1282962049', '感谢你的支持，祝你代购愉快', '1', '4');
INSERT INTO `yqt_sendorder` VALUES ('4', '1213212', '0', '3', 'lss', 'lssbing3@163.com', '16', '0', '244.00', '9.22', '0.00', '253.22', '0.00', '128.00', '10.00', '测试收货人', '澳大利亚', '利弊和', '48645646', '4864646', '测试详细地址复读生复读生复读生', '今年最流行的裙子', '1', 'EMS国际快递', '美国', '1287719909', '1321754908', '包装有点损坏，送货挺及时的！', null, '感谢你的支持，祝你代购愉快', '1', '4');
INSERT INTO `yqt_sendorder` VALUES ('5', null, '0', '1', 'admin', '592481702@qq.com', '25', '0', '244.00', '49.00', '0.00', '293.00', '0.00', '0.99', '500.00', 'ds', '美国', 'jiaz', '463300', '11111111', '13212123s', 'sd', '1', 'EMS国际快递', '美国', '1290649956', '1290649956', null, null, null, '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('6', '', '0', '1', 'admin', '592481702@qq.com', '41', '0', '244.00', '50.00', '0.00', '294.00', '0.00', '15.00', '200.00', 'dsd', '阿尔及利亚', 'sds', '465555', 'sds', '4545', 'dsd', '1', 'EMS国际快递', '美国', '1291793856', '1321754908', '包装很漂亮，送货也很及时！', '1291883363', '感谢您的支持，欢迎下次光临', '1', '4');
INSERT INTO `yqt_sendorder` VALUES ('7', '', '0', '3', 'lss', 'lssbing3@163.com', '15', '15', '244.00', '30.00', '0.00', '274.00', '20.10', '128.00', '10.00', '测试收货人', '澳大利亚', '利弊和', '48645646', '4864646', '测试详细地址复读生复读生复读生', '', '1', 'EMS国际快递', '美国', '1294643630', '1321754908', '我对服务满意!', '1294643719', '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('8', '', '0', '3', 'lss', 'lssbing3@163.com', '18,10', '14', '244.00', '30.00', '0.00', '274.00', '22.90', '184.00', '200.00', '测试收货人', '澳大利亚', '利弊和', '48645646', '4864646', '测试详细地址复读生复读生复读生', '', '1', 'EMS国际快递', '美国', '1294644186', '1321754908', 'hao', '1294644207', '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('9', '', '0', '3', 'lss', 'lssbing3@163.com', '48', '11', '244.00', '30.00', '0.00', '274.00', '19.95', '155.00', '100.00', '测试收货人', '澳大利亚', '利弊和', '48645646', '4864646', '测试详细地址复读生复读生复读生', '', '1', 'EMS国际快递', '美国', '1294644378', '1321754908', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('10', '', '0', '48', '小张', 'xiaozhang@163.com', '64', '0', '244.00', '50.00', '0.00', '294.00', '0.00', '15.00', '500.00', '小张', '中国', '北京', '000000', '小张啊', '北京市区', '特殊说明的情况', '1', 'EMS国际快递', '美国', '1307930016', '1321754908', '嗯老板服务很好 恭喜发财啊', '1307947211', '谢谢你的评价我们会继续努力！', '1', '4');
INSERT INTO `yqt_sendorder` VALUES ('11', '', '0', '55', 'hanfei', '85708582@qq.com', '86', '0', '244.00', '50.00', '0.00', '294.00', '0.00', '2848.48', '50.00', '123123', '阿鲁巴', '123123', '123123', '21331231', '123123', '', '1', 'EMS国际快递', '美国', '1309316624', '1321754908', '1231231231', '1309319170', '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('12', null, '0', '55', 'hanfei', '85708582@qq.com', '87', '0', '244.00', '50.00', '0.00', '294.00', '0.00', '11.00', '125.00', '123123', '阿塞拜疆', '123123', '123123', '123123', '123123', '', '1', 'EMS国际快递', '美国', '1309318321', '1309318321', null, null, null, '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('13', '123123123123', '0', '55', 'hanfei', '85708582@qq.com', '87', '0', '612.00', '50.00', '0.00', '662.00', '0.00', '11.00', '125.00', 'qewqwe', '巴拿马', 'qweqwe', 'qweqweq', 'qewqwe', 'qweqwe', '', '2', 'poscanada', '加拿大1', '1309319630', '1321754908', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('14', '', '0', '55', 'hanfei', '85708582@qq.com', '89', '0', '7503.00', '10.00', '98589.00', '106102.00', '0.00', '83.40', '1234.00', '123', '巴西', '123', '123', '123', '123', '', '3', '56418951651', '英国', '1309591317', '1321754908', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('15', '', '0', '55', 'hanfei', '85708582@qq.com', '98,91', '0', '244.00', '38.38', '8.00', '290.38', '0.00', '139.80', '241.00', '123', '巴西', '123', '123', '123', '123', '', '1', 'EMS国际快递', '美国', '1309601683', '1321754908', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('16', null, '0', '63', 'itosb', 'itosb@163.com', '99', '0', '379.00', '46.70', '8.00', '433.70', '0.00', '88.00', '1000.00', 'xtdfkdf', '摩纳哥', '摩纳哥', '000001', '1234657890123', '摩纳哥', '', '1', 'EMS国际快递', '美国', '1309752043', '1321754930', null, null, null, '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('17', null, '0', '1', 'admin', 'lss@qq.com', '101', '0', '2487.00', '50.00', '0.00', '2537.00', '0.00', '6.00', '500.00', '11', '加拿大', 'dd', '1233334', '222', '123', '123', '2', 'poscanada', '加拿大1', '1309777528', '1321765561', null, null, null, '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('18', 'ee5677888cn', '0', '60', 'ceshi1', 'p4525@163.com', '106,105', '0', '424.00', '50.00', '8.00', '482.00', '0.00', '196.00', '1300.00', 'nb', '阿根廷', 'bnn', 'bbb', 'nn', 'bbb', '', '1', 'EMS国际快递', '美国', '1309792729', '1321765561', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('19', '123', '0', '55', 'hanfei', '85708582@qq.com', '89', '0', '424.00', '50.00', '8.00', '482.00', '0.00', '83.40', '1234.00', '123', '巴西', '123', '123', '123', '123', '', '1', 'EMS国际快递', '美国', '1309837834', '1321765561', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('20', '', '0', '55', 'hanfei', '85708582@qq.com', '107,90', '0', '244.00', '28.30', '8.00', '280.30', '0.00', '39.00', '233.00', '123', '巴西', '123', '123', '123', '123', '', '1', 'EMS国际快递', '美国', '1309930890', '1321765561', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('21', null, '0', '48', '小张', 'xiaozhang@163.com', '69', '0', '244.00', '22.05', '8.00', '274.05', '0.00', '0.99', '300.00', '张三', '巴勒斯坦', '张守', '4504545', '150904332141', '郑州市花园路10号', '范德萨', '1', 'EMS国际快递', '美国', '1313390005', '1321765561', null, null, null, '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('22', null, '0', '48', '小张', 'xiaozhang@163.com', '71', '0', '244.00', '26.46', '8.00', '278.46', '0.00', '50.00', '500.00', '官方电视', '巴拿马', '范德萨', '156112', '3131313213', '富商大贾洒过的发挥', '', '1', 'EMS国际快递', '美国', '1313390717', '1321765561', null, null, null, '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('23', null, '0', '48', '小张', 'xiaozhang@163.com', '147', '0', '289.00', '45.00', '8.00', '342.00', '0.00', '1670.00', '600.00', '发达省份', '阿鲁巴', '范德萨', '4946545', '范德萨', '范德萨', '范德萨孤独死', '1', 'EMS国际快递', '美国', '1313391719', '1321765561', null, null, null, '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('24', '', '0', '48', '小张', 'xiaozhang@163.com', '148', '0', '244.00', '45.00', '8.00', '297.00', '0.00', '570.00', '500.00', '范德萨', '阿富汗', '斯蒂芬森', '范德萨', '范德萨', '范德萨规范', '范德萨', '1', 'EMS国际快递', '美国', '1313393546', '1322722062', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('25', '', '0', '48', '小张', 'xiaozhang@163.com', '151', '0', '244.00', '24.12', '8.00', '276.12', '0.00', '16.00', '500.00', '古典风格', '阿鲁巴', '官方电视', '475400', '各地发生过', '广泛的好地方', '寡凫单鹄', '1', 'EMS国际快递', '美国', '1313395045', '1321765561', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('26', '', '0', '71', 'awenchao', 'acgoods@gmail.com', '155', '0', '244.00', '31.40', '8.00', '283.40', '0.00', '62.00', '500.00', 'jkjh', '阿根廷', 'fdsafsd', '4324324', '543543', 'fdsafsdf', '', '1', 'EMS国际快递', '美国', '1318403950', '1321765561', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('27', '打算打算打算', '0', '107', 'fccsh', 'fccsh@126.com', '156', '0', '244.00', '50.00', '8.00', '302.00', '0.00', '288.00', '500.00', '阿萨德飞', '阿尔巴尼亚', '', '1051', '123', '12', '', '1', 'EMS国际快递', '美国', '1318559096', '1321765561', 'fuck', '1318559711', '', '1', '4');
INSERT INTO `yqt_sendorder` VALUES ('28', '', '0', '109', 'lili', 'you_you2841@126.com', '158,157', '0', '334.00', '38.99', '8.00', '380.99', '0.00', '47.90', '890.00', 'chi', '巴拿马', 'madrid', '08900', '66788', 'nioo', '', '1', 'EMS国际快递', '美国', '1318663690', '1321765561', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('29', '', '0', '110', 'test123', 'test123@yahoo.com', '160,159', '0', '208.00', '43.00', '13.00', '264.00', '0.00', '209.00', '200.00', 'nn', '阿拉伯联合酋长国', 'nn', 'nn', 'nn', 'nn', '', '4', '13123111111111', '美国', '1318779765', '1321765561', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('30', '876543456', '0', '111', 'daigoutest', 'daigoutest@163.com', '161', '0', '424.00', '50.00', '8.00', '482.00', '0.00', '119.00', '1200.00', 'ef', '英国', 'ferferf', '223434', '333232', 'ferfer', '', '1', 'EMS国际快递', '美国', '1318835460', '1322041206', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('31', '-098765432345678', '0', '71', 'awenchao', 'acgoods@gmail.com', '165', '0', '504.00', '50.00', '12.00', '566.00', '0.00', '7350.00', '500.00', 'fdafsd', '阿尔及利亚', 'ggfg', 'gfdgdfgdfg', 'fdsafsdf', 'fgfdgfd', '', '7', '12', '法国', '1320414378', '1322310385', '', null, '', '0', '2');
INSERT INTO `yqt_sendorder` VALUES ('32', 'EE636117082CN', '0', '164', 'nihao', 'nihao@msn.com', '204,203,202,201', '0', '114.00', '345.00', '12.00', '3456.00', '0.00', '542.00', '4500.00', 'nihao、', '韩国', '首尔', '412344', '14598765456', '那时都会发生打架佛啊就是都放假啊sod甲', '', '8', 'EMS', '北美', '1322268967', '1322310385', '98765', '1322269908', '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('33', '234523462', '0', '160', 'zzqss', 'zzqss@qq.com', '214,213,211,210,200,199,198,197', '0', '25.00', '10.00', '8.00', '43.00', '0.00', '3100.80', '23240.00', 'akjsdf', '美国', 'sdg', '45634', '2352352', 'gjhdfgh', '', '8', 'EMS', '北美', '1322302685', '1322310385', 'good', '1322303079', '', '0', '2');
INSERT INTO `yqt_sendorder` VALUES ('34', '122341234', '0', '163', 'yitouwushui', 'yitouwushui@120.com', '219', '0', '180.00', '0.00', '0.00', '180.00', '0.00', '2760.00', '6.00', 'yitouwushui', '巴西', '巴西', '11111', '1111', '白皙', '', '8', 'EMS', '北美', '1322307899', '1322310385', 'ke', '1322309880', null, '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('35', '', '0', '163', 'yitouwushui', 'yitouwushui@120.com', '220,217,216', '0', '180.00', '0.00', '0.00', '180.00', '0.00', '1083.00', '6.00', 'yitouwushui', '巴西', '巴西', '11111', '1111', '白皙', '바보口仮名トラ名区地理かなトラ名', '8', 'EMS', '北美', '1322309005', '1322310385', '说个', '1322309890', '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('36', null, '0', '163', 'yitouwushui', 'yitouwushui@120.com', '216', '0', '180.00', '0.00', '0.00', '180.00', '0.00', '255.00', '3.00', 'yitouwushui', '白俄罗斯', '巴西', '11111', '1111233333333334', '白皙445  光顾海关他他', '', '8', 'EMS', '北美', '1322309863', '1322309863', null, null, null, '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('37', '', '0', '164', 'nihao', 'nihao@msn.com', '206', '0', '8020.00', '344.00', '12.00', '8020.00', '0.00', '11970.00', '8000.00', 'oiuyt', '巴哈马', 'iuy', '98765', '-098765', 'oiuy', '0987654321234567890-=-098765432456789', '8', 'EMS', '北美', '1322311935', '1322447849', 'ok', '1322447880', '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('38', '', '0', '168', 'yitouwushui', '123@123.com', '225', '0', '180.00', '0.00', '0.00', '180.00', '0.00', '698.00', '1.00', 'yitouwushui', '巴西', '巴西', '11111', '1111', '白皙', '', '8', 'EMS', '北美', '1322317059', '1322318140', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('39', 'kkllll', '0', '168', 'yitouwushui', '123@123.com', '226', '0', '180.00', '0.00', '0.00', '180.00', '0.00', '698.00', '1.00', 'yitouwushui', '巴西', '巴西', '11111', '1111', '白皙', '', '8', 'EMS', '北美', '1322317679', '1322317890', '', null, '', '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('40', '', '0', '164', 'nihao', 'nihao@msn.com', '232,231,224,205,204,203,202,201', '0', '8620.00', '123.00', '123.00', '8620.00', '0.00', '2361.00', '8601.00', '987654', '巴林', '8765', '43', '7654', '654', '', '8', 'EMS', '北美', '1322446652', '1322447648', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('41', '', '0', '164', 'nihao', 'nihao@msn.com', '233', '0', '2020.00', '34.00', '2.00', '2020.00', '0.00', '240.00', '2000.00', 'ert', '阿富汗', '5678', '567', '4567', '678', '', '8', 'EMS', '北美', '1322453489', '1322453522', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('42', '', '0', '164', 'nihao', 'nihao@msn.com', '204', '21', '500.00', '123.00', '11234.00', '500.00', '0.00', '63.00', '500.00', '234', '巴拿马', '23', '23', '234', '23', '2请问', '8', 'EMS', '北美', '1322453728', '1322531637', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('43', '二二二位', '0', '164', 'nihao', 'nihao@msn.com', '234', '21', '500.00', '876.00', '87.00', '500.00', '0.00', '1200.00', '500.00', '微微', '巴林', '我', '儿', '未', '人', '', '8', 'EMS', '北美', '1322454610', '1322473020', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('44', '2352351235', '0', '168', 'yitouwushui', '123@123.com', '235,229', '0', '300.00', '300.00', '0.00', '180.00', '0.00', '956.00', '2.00', 'yitouwushui', '巴西', '巴西', '11111', '1111', '白皙', '', '8', 'EMS', '北美', '1322464274', '1322465300', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('45', '987654', '0', '164', 'nihao', 'nihao@msn.com', '237,236', '0', '3020.00', '599.00', '1.00', '3020.00', '0.00', '6812.00', '3000.00', '234', '巴勒斯坦', '09', '412344', '14598765456', '23', '', '8', 'EMS', '北美', '1322470941', '1322474701', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('46', null, '0', '164', 'nihao', 'nihao@msn.com', '204', '0', '500.00', '0.00', '0.00', '500.00', '0.00', '63.00', '500.00', '234', '巴基斯坦', '09', '412344', '14598765456', '23', '', '8', 'EMS', '北美', '1322472609', '1322474701', null, null, null, '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('47', null, '0', '164', 'nihao', 'nihao@msn.com', '238', '0', '4460.00', '0.00', '0.00', '4460.00', '0.00', '60.00', '4444.00', '87', '玻利维亚', '09', '412344', '14598765456', '23', '23456789uytrewq', '8', 'EMS', '北美', '1322472819', '1322472861', null, null, null, '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('48', null, '0', '164', 'nihao', 'nihao@msn.com', '239', '0', '260.00', '0.00', '0.00', '260.00', '0.00', '8.00', '250.00', '塩本', '日本', '兵庫県', '661-0043', '090-6985-881', '尼崎市武庫元町2-17-4ライ34567', '', '8', 'EMS', '北美', '1322474432', '1322474701', null, null, null, '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('49', '987654321', '0', '164', 'nihao', 'nihao@msn.com', '241', '0', '5020.00', '100.00', '1.00', '5020.00', '0.00', '12000.00', '5000.00', '塩本', '日本', '兵庫県', '661-0043', '090-6985-881', '尼崎市武庫元町2-17-4ライ', '', '8', 'EMS', '北美', '1322529134', '1322531735', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('50', null, '0', '164', 'nihao', 'nihao@msn.com', '244,243,242,241', '0', '5020.00', '0.00', '0.00', '5020.00', '0.00', '12012.70', '5011.00', '塩本', '日本', '兵庫県', '661-0043', '090-6985-881', '尼崎市武庫元町2-17-4ライ', '', '8', 'EMS', '北美', '1322537583', '1322537667', null, null, null, '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('51', '98', '0', '164', 'nihao', 'nihao@msn.com', '248,247,246', '0', '180.00', '0.00', '0.00', '180.00', '0.00', '10.50', '6.00', '塩本', '日本', '兵庫県', '661-0043', '090-6985-881', '尼崎市武庫元町2-17-4ライ', '', '8', 'EMS', '北美', '1322538507', '1322538599', null, null, null, '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('52', null, '0', '164', 'nihao', 'nihao@msn.com', '245', '0', '180.00', '0.00', '0.00', '180.00', '0.00', '12.00', '1.00', '塩本', '日本', '兵庫県', '661-0043', '090-6985-881', '尼崎市武庫元町2-17-4ライ', '', '8', 'EMS', '北美', '1322538956', '1322703013', null, null, null, '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('53', '', '0', '158', 'teamilk', '314446683@qq.com', '190', '0', '180.00', '1999.00', '60.00', '2239.00', '0.00', '376.00', '28.00', 'teamilk', '巴林', 'dfd', '12', '23', '23233333333', '', '10', 'LAINBANG', '日本', '1322638620', '1322639179', '很好', '1322639422', '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('54', null, '0', '164', 'nihao', 'nihao@msn.com', '254,253', '0', '12020.00', '0.00', '0.00', '12020.00', '0.00', '9020000.00', '11999.00', '塩本', '日本', '兵庫県', '661-0043', '090-6985-881', '尼崎市武庫元町2-17-4ライ', '', '8', 'EMS', '北美', '1322702941', '1322703013', null, null, null, '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('55', 'EE636112017CN', '0', '176', 'nihaoma', 'nihaoma@ms.com', '256,255', '0', '180.00', '0.00', '0.00', '180.00', '0.00', '972.00', '33.00', '234', '巴林', '23', '23', '234', '34', '', '8', 'EMS', '北美', '1322704545', '1322708229', null, null, null, '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('56', 'EE636112017CN', '0', '176', 'nihaoma', 'nihaoma@ms.com', '258', '0', '180.00', '0.00', '0.00', '180.00', '0.00', '89.00', '2.00', '2', '巴哈马', '23', '23', '234', '2', '', '8', 'EMS', '北美', '1322708098', '1322708229', null, null, null, '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('57', '', '0', '176', 'nihaoma', 'nihaoma@ms.com', '259,257', '0', '180.00', '20.00', '10.00', '180.00', '0.00', '99.00', '8.00', '234', '日本', '09', '412344', '14598765456', '2', '', '8', 'EMS', '北美', '1322708695', '1322708766', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('58', '21', '0', '168', 'yitouwushui', '123@123.com', '217', '0', '180.00', '0.00', '0.00', '180.00', '0.00', '276.00', '2.00', 'yitouwushui', '巴西', '巴西', '11111', '1111', '白皙', '', '8', 'EMS', '北美', '1322740482', '1385391025', null, null, null, '0', '1');
INSERT INTO `yqt_sendorder` VALUES ('59', '', '22', '177', 'liulei634', '497723945@qq.com', '262,261', '0', '180.00', '1999.00', '60.00', '2239.00', '0.00', '590.50', '80.00', 'adf', '安哥拉', 'asf', 'asdfd', 'asdf', 'asdfa', '', '10', 'LAINBANG', '日本', '1323420407', '1323658769', '货物很好，我已经成功收到。谢谢您们的细心服务！^~^', '1323658710', '嘿嘿，谢谢您的光顾！我们一起成长。', '1', '3');
INSERT INTO `yqt_sendorder` VALUES ('60', 'EW22289823143234', '0', '179', 'jackmic', 'jackmic@163.com', '265', '0', '250.00', '29.60', '0.00', '259.60', '0.00', '96.00', '500.00', 'jackey chen', '中国', 'GuangZhou', '510320', '13763387179', 'Guang Zhou Hai Zhu Qu', '', '8', 'EMS', '北美', '1335438017', '1335438555', '', null, '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('61', 'fsf大温泉11213', '0', '184', 'dj1jj', '262799680@qq.com', '270', '0', '50.00', '5.00', '1.00', '56.00', '0.00', '418.00', '45.00', '测试', '中国', '荆州', '434200', '1324567245', '湖北省荆州市啊啊', '', '11', '韵达快递', '中国', '1357992420', '1385390544', null, null, null, '0', '1');
INSERT INTO `yqt_sendorder` VALUES ('62', null, '0', '184', 'dj1jj', '262799680@qq.com', '269', '24', '10.00', '0.00', '1.00', '11.00', '0.00', '1399.00', '10.00', '测试', '中国', '荆州', '434200', '1324567245', '湖北省荆州市啊啊', '', '11', '韵达快递', '中国', '1358075796', '1358075796', null, null, null, '0', '4');
INSERT INTO `yqt_sendorder` VALUES ('63', '', '0', '195', 'blar', 'blar@haha.com', '293,292', '0', '10.00', '0.00', '1.00', '11.00', '0.00', '70.87', '7.00', 'h', '埃及', '', '564795', '456', 'hgkkluguikuh', '', '11', '韵达快递', '中国', '1388949500', '1389195322', 'very good', '1389194621', 'reply feedback', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('64', '', '0', '195', 'blar', 'blar@haha.com', '297,296', '0', '18.00', '0.00', '0.00', '18.00', '0.00', '114.00', '2500.00', 'jg', '关岛', 'bjk', '768', '75785', 'kjjjhkh', 'haga', '12', 'ti', '新加坡', '1389194229', '1402657137', '', null, '', '0', '1');
INSERT INTO `yqt_sendorder` VALUES ('65', null, '0', '195', 'blar', 'blar@haha.com', '297,296', '0', '18.00', '0.00', '0.00', '18.00', '0.00', '114.00', '2500.00', 'xcv', '巴基斯坦', 'sdfsdfsdfsd', '234234', '345', 'sdfsdf', 'dsvsdvsdf', '12', 'ti', '新加坡', '1389194744', '1389194744', null, null, null, '0', '1');
INSERT INTO `yqt_sendorder` VALUES ('66', '', '0', '201', 'testtest', 'szcentruer@163.com', '312', '0', '106.00', '0.00', '1.00', '107.00', '0.00', '1050.00', '100.00', 'testtest', '中国', 'testtesttesttesttest', '854214', '882156232', 'testtesttesttesttesttest', '', '11', '韵达快递', '中国', '1402711891', '1402712251', '不错，是正品', '1402712330', '', '0', '3');
INSERT INTO `yqt_sendorder` VALUES ('67', '', '0', '201', 'testtest', 'szcentruer@163.com', '317', '0', '15.00', '0.00', '0.00', '15.00', '0.00', '1080.00', '50.00', '公司的防守对方', '阿森松岛', '如违反', '546535', '87786654', '司法所地方速读法', '', '13', '顺丰', '中国', '1402734411', '1402734555', '登丰商店发射点发商讨后', '1402734578', '', '0', '3');

-- ----------------------------
-- Table structure for `yqt_service`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_service`;
CREATE TABLE `yqt_service` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `account` varchar(255) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `price` float(10,2) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `money` float(10,2) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` smallint(5) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `state` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_service
-- ----------------------------
INSERT INTO `yqt_service` VALUES ('1', '3', 'lss', '支付宝充值', 'lssbing@163.com', '500', '0.00', '0', '50.00', '', '0', '0', '2');
INSERT INTO `yqt_service` VALUES ('2', '3', 'lss', '支付宝充值', 'lssbing@163.com', '500', '0.00', '0', '500.00', '', '0', '0', '1');
INSERT INTO `yqt_service` VALUES ('3', '3', 'lss', '完美世界直充>风华MM服', 'lssbing', '传奇外传在线充值', '22.00', '2', '44.00', '', '1', '0', '0');
INSERT INTO `yqt_service` VALUES ('4', '3', 'lss', '完美世界直充>风华MM服', 'lssbing', '10元 只售:', '9.20', '2', '18.40', '', '1', '0', '0');
INSERT INTO `yqt_service` VALUES ('5', '3', 'lss', '金山游戏直充>风华MM服', 'lssbing', '50元 只售:', '46.40', '1', '46.40', '', '1', '0', '0');
INSERT INTO `yqt_service` VALUES ('6', '3', 'lss', 'Q币', '527774557', '50', '50.00', '1', '50.00', '我也要备注下', '2', '0', '0');
INSERT INTO `yqt_service` VALUES ('7', '3', 'lss', '财付通充值', '527774557', '1200', '1200.00', '1', '1200.00', '测试下', '3', '0', '0');
INSERT INTO `yqt_service` VALUES ('8', '3', 'lss', '网站[<a href=\"http://www.baidu.com\" target=\"_blank\">世纪佳缘婚庆网</a>]充值', 'test', '500', '500.00', '1', '500.00', '会员包月', '4', '0', '0');
INSERT INTO `yqt_service` VALUES ('9', '3', 'lss', '工商银行', '45645-546-546', '5000', '5000.00', '1', '5000.00', '不用扣费', '5', '0', '0');
INSERT INTO `yqt_service` VALUES ('10', '3', 'lss', '支付宝充值', 'lssbing@126.com', '500', '0.00', '0', '500.00', '', '0', '1277719878', '0');
INSERT INTO `yqt_service` VALUES ('11', '3', 'lss', '支付宝充值', 'lssbing@163.com', '50', '0.00', '0', '50.00', '', '0', '1277720776', '0');

-- ----------------------------
-- Table structure for `yqt_shopsite`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_shopsite`;
CREATE TABLE `yqt_shopsite` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `shopname` varchar(50) NOT NULL DEFAULT '淘宝网',
  `shopurl` varchar(50) NOT NULL DEFAULT 'www.taobao.com',
  `shopcode` varchar(20) NOT NULL DEFAULT 'taobao',
  `charset` varchar(10) NOT NULL DEFAULT 'gbk',
  `preg_goodsname` varchar(255) DEFAULT NULL,
  `preg_goodsname2` varchar(255) DEFAULT NULL,
  `preg_goodsname3` varchar(255) DEFAULT NULL,
  `preg_goodsprice` varchar(255) DEFAULT NULL,
  `preg_goodsprice2` varchar(255) DEFAULT NULL,
  `preg_goodsprice3` varchar(255) DEFAULT NULL,
  `preg_sendprice` varchar(255) DEFAULT NULL,
  `preg_sendprice2` varchar(255) DEFAULT NULL,
  `preg_sendprice3` varchar(255) DEFAULT NULL,
  `preg_goodsimg` varchar(255) DEFAULT NULL,
  `preg_goodsimg2` varchar(255) DEFAULT NULL,
  `preg_goodsimg3` varchar(255) DEFAULT NULL,
  `preg_goodsseller` varchar(255) DEFAULT NULL,
  `preg_goodsseller2` varchar(255) DEFAULT NULL,
  `preg_goodsseller3` varchar(255) DEFAULT NULL,
  `preg_sellerurl` varchar(255) DEFAULT NULL,
  `preg_sellerurl2` varchar(255) DEFAULT NULL,
  `preg_sellerurl3` varchar(255) DEFAULT NULL,
  `preg_vipprice1` varchar(255) DEFAULT '',
  `preg_vipprice2` varchar(255) DEFAULT '',
  `preg_vipprice3` varchar(255) DEFAULT '',
  `state` smallint(5) DEFAULT '1',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_shopsite
-- ----------------------------
INSERT INTO `yqt_shopsite` VALUES ('1', '淘宝网', 'www.taobao.com', 'taobao', 'gbk', '/<title>(?P<this>.*)-(.*)<\\/title>/U', '', '', '/id=\"J_SpanLimitProm\">(?P<this>.*)<\\/strong>/U', '/<strong id=\\\"J_StrPrice\\\" >(?P<this>.*)<\\/strong>/U', '/<input type=\\\"hidden\\\" name=\\\"current_price\\\" value= \\\"(?P<this>.*)\\\" \\/>/U', '', '', '', '/<img id=\\\"J_ImgBooth\\\" src=\\\"(?P<this>.*)\\\"  data-hasZoom=\"700\" \\/>/U', '/<img id=\\\"ark:mainImage\\\" src=\\\"(?P<this>.*)\\\"\\/>/U', '', '/<a class=\\\"hCard fn\\\"(.*)href=\\\"(.*)\\\">(?P<this>.*)<\\/a>/U', '/<a class=\\\"hCard fn\\\"(.*)href=\\\"(.*)\\\" target=\\\"_blank\\\">(?P<this>.*)<\\/a>/U', '/<input type=\\\"hidden\\\" name=\\\"seller_nickname\\\" value=\\\"(?P<this>.*)\\\" \\/>/U', '/<a class=\\\"hCard fn\\\"(.*)href=\\\"(?P<this>.*)\\\">(.*)<\\/a>/U', '/<a class=\\\"hCard fn\\\"(.*)href=\\\"(?P<this>.*)\\\" target=\\\"_blank\\\">(.*)<\\/a>/U', '/<label>商    家：<\\/label>([\\w\\W]*?)<a href=\\\"(?P<this>.*)\\\">(.*)<\\/a>/', '/\\\'VIP 金　卡\\\': \\\"(?P<this>.*)\\\",/U', '/\\\'VIP 白金卡\\\': \\\"(?P<this>.*)\\\",/U', '/\\\'VIP 钻石卡\\\': \\\"(?P<this>.*)\\\"/U', '1');
INSERT INTO `yqt_shopsite` VALUES ('2', '拍拍1', 'www.paipai.com', 'paipai', 'gbk', '<input type=\\\"hidden\\\" name=\\\"sTitle\\\" value=\\\"(?P<this>.*)\\\" \\/>', '', '', '<input type=\\\"hidden\\\" name=\\\"Price\\\" value=\\\"(?P<this>.*)\\\" />', '', '', '/<li> <a href=\\\"#nolink\\\" info=\\\'河南\\|\\|(?P<this>.*)\\|(.*)\'  > 河南 <\\/a><\\/li>/U', '/<em id=\\\"shipCost\\\">(?P<this>.*)元/U', '', '/picList:\\[\\[(.*)\\],\\[(.*)\\],\\[\\\"(?P<this>.*) \\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\"\\],/U', '', '', '/qqUin:\\\"(?P<this>.*)\\\",/U', '', '', '/<li>店铺信用：<a href=\\\"(?P<this>.*)\\\" target=\\\"_blank\\\">/U', '/<li class=\\\"sellerlink2\\\"><a href=\\\"(?P<this>.*)\\\" title=\\\"信用评价\\\">信用评价<\\/a><\\/li>/U', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('3', '免邮商品', '127.0.0.1', '127.0.0.1', 'utf-8', '/<h1 id=\\\"goodsname\\\">(?P<this>.*)<\\/h1>/U', '', '', '/<span id=\\\"goodsprice\\\">(?P<this>.*)<\\/span>/U', '', '', '', '0', '', '/<img id=\\\"goodsimg\\\" src=\\\"(?P<this>.*)\\\" \\/>/U', '', '', '', 'daigou.dayusheji.com', '', '', 'http://daigou.dayusheji.com', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('4', '百度有啊', 'youa.baidu.com', 'youa', 'gbk', '/<TITLE>(?P<this>.*)_(.*)<\\/TITLE>/U', '/<h1>(?P<this>.*)<\\/h1>/U', '', '/<span class=\\\"price\\\">(?P<this>.*).<small>(.*)<\\/small><\\/span>/U', '', '', '', '20', '', '/<img class=\\\"bigimg\\\" (.*) style=\\\"background-image:url\\((?P<this>.*)\\)\\\">/U', '', '', '', 'youa.baidu.com', '', '', 'http://youa.baidu.com', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('5', '卓越', 'www.amazon.cn', 'amazon', 'utf-8', '/<span id=\\\"btAsinTitle\\\">(?P<this>.*)<\\/span>/U \r\n', '', '', '/<b class=\\\"priceLarge\\\">￥ (?P<this.*>)<\\/b>/U', '', '', '', '20', '', '/<img onload=\\\"\\\" src=\\\"(?P<this.*>)\\\" id=\\\"prodImage\\\" alt=\\\"\\\" onmouseover=\\\"\\\" width=\\\"\\\" border=\\\"0\\\" height=\\\"\\\">/U', '', '', '', 'www.amazon.cn', '', 'http://www.amazon.cn', '', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('6', '当当网', 'www.dangdang.com', 'dangdang', 'gbk', '/<title>(?P<this>.*)<\\/title>/U', '/<h1>(?P<this>.*)<Vh1>/U', '', '/<font id=\\\"originalPriceTag\\\">￥(?P<this>.*)<\\/font>/U', '', '', '', '20', '', '/<img src=\\\"(?P<this>.*)\\\" alt=\"\" id=\\\"largePic\\\"\\/>/U', '', '', '/<span class=\\\"sell\\\">(?P<this>.*)<\\/span>/U', '', '', '/<a href=\\\"(.*)\\\" target=\\\"_blank\\\">(?P<this>.*)<\\/a>/U', '', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('7', '新蛋中国', 'www.newegg.com.cn', 'newegg', 'gbk', '/<title>(?P<this>.*)-(.*)<\\/title>/U', '/<h1>(?P<this>.*)<\\/h1>/U', '', '/<b class=\\\"b_proprice\\\">(?P<this>.*)<\\/b>/U', '', '', '', '20', '', '/<img id=\\\"bigImg\\\" class=\\\"bk_line2\\\" index=\\\"0\\\" alt=\"\" src=\\\"(?P<this>.*)\\\"\\/>/U', '', '', '', '新蛋中国', '', '', 'www.newegg.com.cn', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('8', '易趣', 'www.eachnet.com', 'eachnet', 'utf-8', '/<title>(?P<this>.*)-(.*)<\\/title>/U', '', '', '', '-1', '', '', '15', '', '/<img src=\\\"(?P<this>.*)\\\" id=\\\"itemImage\\\" width=\\\"300px\\\" height=\\\"300px\\\"/U', '', '', '/<a href=\\\"(.*)\\\" target=\\\"_blank\\\">(?P<this>.*)<\\/a> <\\/p>/U', '/webchater = \\\'(?P<this>.*)\\\'/U', '', '/<a href=\\\"(?P<this>.*)\\\" target=\\\"_blank\\\">(.*)<\\/a>/U', '', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('9', '京东商城', 'www.360buy.com', '360buy', 'gbk', '/<h1>(?P<this>.*)<font style=\\\'color:#ff0000\\\' id=\\\'advertiseWord\\\'><\\/font><\\/h1>/U', '', '', '', '-1', '', '', '15', '', '/src=\\\"(?P<this>.*)\\\" width=\\\"350\\\" height=\\\"350\\\" alt=\\\"(.*)\\\"/U', '/<img onerror=\\\"this.src=\'(.*)\'\\\" src=\\\"(?P<this>.*)\\\" width=\\\"50\\\" height=\\\"50\\\"/U', '', '', '京东商城', '', '', 'http://www.360buy.com/product/', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('10', '麦包包网', 'www.mbaobao.com', 'mbaobao', 'utf-8', '/<title>(?P<this>.*)-(.*)<\\/title>/U', '/<h2 class=\\\"h2_prodtitle\\\">(?P<this>.*)<\\/h2>/U', '/id=\\\"js_goods_title\\\">(?P<this>.*)<\\/a>/U', '/<b class=\\\"b_proprice\\\">(?P<this>.*)<\\/b>/U', '', '', '', '15', '', '/<img src=\\\"(?P<this>.*)\\\" width=\\\"420\\\" height=\\\"420\\\" alt=\"\" class=\\\"js_goods_image_url\\\" \\/>/U', '', '', '', '麦包包网', '', '', 'item.mbaobao.com', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('11', '凡客诚品', 'www.vancl.com', 'vancl', 'utf-8', '/id=\\\"styleinfo\\\" name=\\\"(.*)\\\">(?P<this>.*)<\\/span>/U', '', '', '/<span>￥<strong>(?P<this>.*)<\\/strong><\\/span>/U', '', '', '', '15', '', '/<img src=\\\"(?P<this>.*)\\\" alt=\\\"(.*)\\\" \\/><\\/li>/U', '/<img alt=\\\"(.*)\\\" src=\\\"(?P<this>.*)\\\"\\/>/U', '', '', '凡客诚品', '', '', 'item.vancl.com', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('13', '时尚起义', 'www.shishangqiyi.com', 'shishangqiyi', 'utf-8', '/<span class=\\\"style1\\\"><strong>(?P<this>.*)<\\/strong><\\/span>/U', '', '', '/<strong>(?P<this>.*)元<\\/strong>/U', '', '', '', '15', '', '/<img src=\\\"(?P<this>.*)\\\" width=\\\"260\\\" >/U', '', '', '', '时尚起义', '', '', 'www.shishangqiyi.com', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('14', '百联e站', 'www.blemall.com', 'blemall', 'gbk', '/<h1 class=\\\"t_name\\\">(?P<this>.*)<\\/h1>/U', '', '', '', '-1', '', '', '15', '', '/<div class=\\\"picture\\\" style=\\\"background: url((?P<this>.*)) no-repeat;\\\">/U', '', '', '', '百联e站', '', '', 'www.blemall.com', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('15', 'NO5时尚广场', 'www.no5.com.cn', 'no5', 'gbk', '/<title>(?P<this>.*)–(.*)<\\/title>/U', '/<div class=\\\"pro_text\\\" id=\\\"pro_text_pname\\\">(?P<this>.*)<\\/div>/U', '', '/<div class=\\\"pro_text magenta\\\"><span>(?P<this>.*)元<\\/span><\\/div>/U', '', '', '', '15', '', '/<img src=\\\"(?P<this>.*)\\\" width=\\\"250\\\" height=\\\"250\\\" alt=\\\"(.*)\\\" \\/>/U', '', '', '', 'NO5时尚广场', '', '', 'www.no5.com.cn/goods', '', '', '', '', '1');
INSERT INTO `yqt_shopsite` VALUES ('16', 'eBay 网', 'www.ebay.com', 'ebay', 'utf8', '/<h1 class=\\\"vi-is1-titleH1\\\">(?P<this>.*)<\\/h1>/U', '/<img id=\\\"i_vv4-38\\\" alt=\\\"(?P<this>.*)\\\">/U\r\n', '', '/<span class=\\\"vi-is1-prcp\\\" id=\\\"v4-26\\\">(?P<this>.*)<\\/span>/U', '', '', '', '100', '', '/<meta property=\\\"og:image\\\" content=\\\"(?P<this>.*)\\\">/U', '', '', '', '', '', '', '', '', '', '', '', '1');

-- ----------------------------
-- Table structure for `yqt_shop_goods`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_shop_goods`;
CREATE TABLE `yqt_shop_goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gtypeid` int(11) DEFAULT NULL,
  `goodsname` varchar(255) DEFAULT NULL,
  `goodsprice` float(10,2) DEFAULT NULL,
  `goodsimg` varchar(255) DEFAULT NULL,
  `rindex` tinyint(3) DEFAULT '3',
  `views` int(11) DEFAULT NULL,
  `buynum` int(11) DEFAULT NULL,
  `about` text,
  `listorder` int(11) DEFAULT '50',
  `flag` char(2) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_shop_goods
-- ----------------------------
INSERT INTO `yqt_shop_goods` VALUES ('35', '1', '21321', '321.00', '', '4', '24', '21', '321321', '21', null, '1384602543');
INSERT INTO `yqt_shop_goods` VALUES ('3', '1', '回头率外贸SAINT GALANT BOHEMIA防水台坡跟单鞋真皮里076', '49.00', 'templates/default/images/7686.jpg', '3', '27', '1', '111111', '50', 'c', '1309535723');
INSERT INTO `yqt_shop_goods` VALUES ('4', '1', '日单民族T（vans beams stussy zoo york clot remix', '45.00', 'templates/default/images/7686.jpg', '3', '33', '0', '很不好', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('5', '1', '2010夏季韩版新款 拼色5字菱格链条大容量单肩包包 新到西瓜红', '158.00', 'templates/default/images/7686.jpg', '3', '25', '0', '2010夏季韩版新款 拼色5字菱格链条大容量单肩包包 新到西瓜红', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('6', '1', '夏装新款☆青花瓷之恋☆高档印花棉 超显身材的开叉旗袍 特119！', '119.00', 'templates/default/images/7686.jpg', '3', '137', '36', '夏装新款☆青花瓷之恋☆高档印花棉 超显身材的开叉旗袍 特119！', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('7', '1', '100%真丝面料 桑蚕丝  绣花 连衣裙 宽松小A型。单件包邮。', '165.00', 'templates/default/images/7686.jpg', '3', '41', '0', '100%真丝面料', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('8', '1', '韩版碎花绣花真丝拼接OL淑女雪纺腰带荷叶边多层抹胸吊带裙连衣裙', '78.00', 'templates/default/images/7686.jpg', '3', '120', '10', '韩版碎花绣花真丝拼接OL淑女雪纺腰带荷叶边多层抹胸吊带裙连衣裙', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('9', '1', '两件包邮  韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', '68.00', 'templates/default/images/7686.jpg', '3', '186', '31', '两件包邮&nbsp; 韩国超强气场韩版宽松长款条纹短袖T恤 T恤裙 大码T恤', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('10', '2', '09秋冬新款 VIVI推荐款~磨砂兔毛系带粗高跟短靴 踝靴 女靴', '59.00', 'templates/default/images/7686.jpg', '3', '27', '0', '09秋冬新款 VIVI推荐款~磨砂兔毛系带粗高跟短靴 踝靴 女靴', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('11', '2', '2010新款外贸roxy平底夹脚人字拖鞋/凉拖/可爱沙滩拖/凉鞋/后跟', '15.00', 'templates/default/images/7686.jpg', '3', '29', '1', '2010新款外贸roxy平底夹脚人字拖鞋/凉拖/可爱沙滩拖/凉鞋/后跟', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('12', '2', '潮流女鞋|09秋季新款防水台圆头罗马及踝靴短靴2638黑色', '43.00', 'templates/default/images/7686.jpg', '3', '26', '0', '潮流女鞋|09秋季新款防水台圆头罗马及踝靴短靴2638黑色', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('13', '3', '专柜小样 Lancome兰蔻煽色流光炫色口红308# 非常漂亮粉嫩裸妆色', '25.00', 'templates/default/images/7686.jpg', '3', '35', '2', '专柜小样 Lancome兰蔻煽色流光炫色口红308# 非常漂亮粉嫩裸妆色', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('14', '3', 'H61073 SHILLS超炫光BB无瑕霜樱花飞舞限量版50ML 保湿专柜正品', '29.90', 'templates/default/images/7686.jpg', '3', '26', '0', 'H61073 SHILLS超炫光BB无瑕霜(樱花飞舞限量版)50ML 保湿专柜正品', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('15', '3', '日本杂志连续3年评选NO.1资生堂自然之眉墨铅笔眉笔 日本直送', '23.00', 'templates/default/images/7686.jpg', '3', '31', '0', '日本杂志连续3年评选NO.1资生堂自然之眉墨铅笔(眉笔) 日本直送', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('16', '3', 'R 送粉扑【百年宫廷御用】谢馥春胭脂膏珠光桃红礼盒装', '39.90', 'templates/default/images/7686.jpg', '3', '26', '0', 'R 送粉扑【百年宫廷御用】谢馥春胭脂膏珠光(桃红)礼盒装', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('17', '3', '进口银白色超闪眼线眼影液 开亮眼头 超显眼大', '9.00', 'templates/default/images/7686.jpg', '3', '50', '2', 'F4【半价冲四冠】进口银白色超闪眼线眼影液 开亮眼头 超显眼大', '0', 'c', '1355489751');
INSERT INTO `yqt_shop_goods` VALUES ('18', '4', '特 极美推荐 重磅真丝 100%SILK 35姆米 60/米', '15.00', 'templates/default/images/7686.jpg', '3', '34', '0', '特 极美推荐 重磅真丝 100%SILK 35姆米 60/米', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('19', '4', '女士时尚居家拖鞋 情侣拖鞋 小碎花室内拖鞋 特价拖鞋', '9.20', 'templates/default/images/7686.jpg', '3', '43', '1', '女士时尚居家拖鞋 情侣拖鞋 小碎花室内拖鞋 特价拖鞋', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('20', '4', 'E7347 简家 金冠 出口日本原单超柔长毛绒心型靠垫 抱枕 超细纤维', '12.80', 'templates/default/images/7686.jpg', '3', '46', '1', 'E7347 简家 金冠 出口日本原单超柔长毛绒心型靠垫 抱枕 超细纤维', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('21', '4', '珍爱梦幻七彩幸运星发光抱枕WQ10 韩国设计/超炫视频展示生日礼物', '158.00', 'templates/default/images/7686.jpg', '3', '58', '9', '珍爱梦幻七彩幸运星发光抱枕WQ10 韩国设计/超炫视频展示生日礼物', '0', 'c', '1318935713');
INSERT INTO `yqt_shop_goods` VALUES ('22', '5', '包邮啦!七夕情人节礼物 only my love 明星我的唯一爱情侣项链', '55.00', 'templates/default/images/7686.jpg', '3', '45', '0', '包邮啦!七夕情人节礼物 only my love 明星我的唯一爱情侣项链', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('23', '5', '7.21新品入！昕薇推荐 摩洛哥波西米亚风珍珠款发带/发绳', '13.80', 'templates/default/images/7686.jpg', '3', '50', '0', '7.21新品入！昕薇推荐 摩洛哥波西米亚风珍珠款发带/发绳', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('24', '5', 'H&M正品 摩洛哥风情手链', '22.00', 'templates/default/images/7686.jpg', '3', '61', '6', 'H&amp;M正品 摩洛哥风情手链', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('25', '6', '缅甸酸角片 味道纯正 20克 买10送1哦', '0.99', 'templates/default/images/7686.jpg', '3', '66', '5', '缅甸酸角片 味道纯正 20克 买10送1哦', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('26', '6', '【稀奇】百度上查不到的特产藤蔑果野生果子回甘爽口180g', '6.00', 'templates/default/images/7686.jpg', '3', '71', '5', '【稀奇】百度上查不到的特产藤蔑果野生果子回甘爽口180g', '0', 'c', '1281496242');
INSERT INTO `yqt_shop_goods` VALUES ('27', '6', 'A3002 好评+回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', '16.00', 'templates/default/images/7686.jpg', '3', '69', '11', 'A3002 好评+回头客=推荐 碳香烤章鱼足片（特级） 口感绝佳', '0', 'c', '1319529686');
INSERT INTO `yqt_shop_goods` VALUES ('36', '29', '香港品牌·京东店庆·优惠100元【赠送￥99元蓝牙耳机+￥59元手机套】疯抢！', '1190.00', 'attachment/shop/201406/20140614115226_457.jpg', '3', '27', '25', '<div class=\"mc hide\" data-widget=\"tab-content\" id=\"product-detail-2\" style=\"margin:0px;padding:0px;overflow:hidden;zoom:1;clear:both;color:#666666;font-family:Arial, Verdana, 宋体;\"><table cellpadding=\"0\" cellspacing=\"1\" width=\"100%\" border=\"0\" class=\"Ptable ke-zeroborder\" style=\"empty-cells:show;background-color:#cccccc;margin:10px 0px;background-position:initial initial;background-repeat:initial initial;\"><tbody><tr><th class=\"tdTitle\" colspan=\"2\" style=\"background-color:#f5fafe;padding:5px;font-size:12px;text-align:center;width:110px;background-position:initial initial;background-repeat:initial initial;\">主体</th> </tr> <tr></tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">颜色</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">黑色</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">上市年份</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">2013年</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">上市月份</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">12月</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">输入方式</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">触控</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">智能机</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">是</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">3G视频通话</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">操作系统</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">安卓（Android）</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">操作系统版本</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">Android</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">CPU品牌</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">高通（Qualcomm)</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">CPU频率</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">1G-1.2GHz（含）</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">CPU核数</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">四核</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">运营商标志或内容</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">在外包装、在机身、在开机画面、在内置应用</td> </tr> <tr><th class=\"tdTitle\" colspan=\"2\" style=\"background-color:#f5fafe;padding:5px;font-size:12px;text-align:center;width:110px;background-position:initial initial;background-repeat:initial initial;\">网络</th> </tr> <tr></tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">3G网络制式</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">联通3G(WCDMA)</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">2G网络制式</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">移动2G/联通2G(GSM)</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">网络制式</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">联通3G（WCDMA）-移动2G/联通2G（GSM）</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">双卡机类型</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">双卡双待单通</td> </tr> <tr><th class=\"tdTitle\" colspan=\"2\" style=\"background-color:#f5fafe;padding:5px;font-size:12px;text-align:center;width:110px;background-position:initial initial;background-repeat:initial initial;\">存储</th> </tr> <tr></tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">机身内存</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">4GB ROM</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">运行内存</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">1GB RAM</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">储存卡类型</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">MicroSD(TF)</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">最大存储扩展</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">32GB</td> </tr> <tr><th class=\"tdTitle\" colspan=\"2\" style=\"background-color:#f5fafe;padding:5px;font-size:12px;text-align:center;width:110px;background-position:initial initial;background-repeat:initial initial;\">显示</th> </tr> <tr></tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">屏幕尺寸</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">4.7英寸</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">触摸屏</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">电容屏</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">分辨率</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">1280×720(HD,720P)</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">屏幕材质</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">TFT</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">超大字体</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">屏幕色彩</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">1600万色</td> </tr> <tr><th class=\"tdTitle\" colspan=\"2\" style=\"background-color:#f5fafe;padding:5px;font-size:12px;text-align:center;width:110px;background-position:initial initial;background-repeat:initial initial;\">感应器</th> </tr> <tr></tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">GPS模块</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">重力感应</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">光线感应</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">距离感应</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">陀螺仪</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">不支持</td> </tr> <tr><th class=\"tdTitle\" colspan=\"2\" style=\"background-color:#f5fafe;padding:5px;font-size:12px;text-align:center;width:110px;background-position:initial initial;background-repeat:initial initial;\">摄像功能</th> </tr> <tr></tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">摄像头</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">800万像素</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">副摄像头</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">传感器类型</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">CMOS</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">闪光灯</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">LED补光灯</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">变焦模式</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">数码变焦</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">自动对焦</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><th class=\"tdTitle\" colspan=\"2\" style=\"background-color:#f5fafe;padding:5px;font-size:12px;text-align:center;width:110px;background-position:initial initial;background-repeat:initial initial;\">娱乐功能</th> </tr> <tr></tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">收音机</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">音乐播放</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">视频播放</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">电视播放</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">录音</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><th class=\"tdTitle\" colspan=\"2\" style=\"background-color:#f5fafe;padding:5px;font-size:12px;text-align:center;width:110px;background-position:initial initial;background-repeat:initial initial;\">传输功能</th> </tr> <tr></tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">Wi-Fi</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">蓝牙</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">OTG</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">不支持</td> </tr> <tr><th class=\"tdTitle\" colspan=\"2\" style=\"background-color:#f5fafe;padding:5px;font-size:12px;text-align:center;width:110px;background-position:initial initial;background-repeat:initial initial;\">其他</th> </tr> <tr></tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">SIM卡尺寸</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">标准卡</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">电池类型</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">锂电池</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">电池容量（mAh）</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">1600mAh以上</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">电池更换</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">支持</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">数据线</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">Micro USB</td> </tr> <tr><td class=\"tdTitle\" style=\"background-color:#f5fafe;padding:2px 5px;text-align:right;width:110px;\">耳机接口</td> <td style=\"background-color:#ffffff;padding:2px 5px;\">3.5mm</td> </tr> </tbody> </table> </div> <div id=\"promises\" style=\"margin:0px;padding:10px;overflow:hidden;zoom:1;border-top-width:1px;border-top-style:dotted;border-top-color:#dedede;clear:both;color:#666666;font-family:Arial, Verdana, 宋体;\"><strong style=\"margin:0px;padding:0px;\">服务承诺：</strong><br /> 京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和<a href=\"http://www.jd.com/help/kdexpress.aspx\" target=\"_blank\" style=\"margin:0px;padding:0px;color:#005aa0;text-decoration:none;\">运费政策</a>，请您放心购买！&nbsp;<br /> <br /> 注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！</div> <div id=\"state\" style=\"margin:0px;padding:10px;overflow:hidden;zoom:1;border-top-width:1px;border-top-style:dotted;border-top-color:#dedede;color:#666666;font-family:Arial, Verdana, 宋体;\"><strong style=\"margin:0px;padding:0px;color:#e4393c;\">权利声明：</strong><br /> 京东商城上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东商城重要的经营资源，未经许可，禁止非法转载使用。<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;\"><b style=\"margin:0px;padding:0px;\">注：</b>本站商品信息均来自于厂商，其真实性、准确性和合法性由信息拥有者（厂商）负责。本站不提供任何保证，并不承担任何法律责任。</p> <p style=\"margin-top:0px;margin-bottom:0px;padding:0px;\"></p> <div style=\"margin:0px;padding:0px;\"><p style=\"margin-top:0px;margin-bottom:0px;padding:0px;text-align:center;\"><a href=\"http://chat5.jd.com/index.action?pid=1062248350&amp;price=&amp;stock=%25E5%258C%2597%25E4%25BA%25AC%25E6%259C%259D%25E9%2598%25B3%25E5%258C%25BA%25E7%25AE%25A1%25E5%25BA%2584%25EF%25BC%2588%25E6%259C%2589%25E8%25B4%25A7%25EF%25BC%2589&amp;score=5&amp;commentNum=69&amp;imgUrl=g13%252FM0A%252F16%252F08%252FrBEhUlMFxlkIAAAAAAEakLZEJ-UAAIz-wDpqywAARqo310.jpg&amp;wname=NUU%2520NU3%2520%25E8%2581%2594%25E9%2580%259A3G%25E6%2589%258B%25E6%259C%25BAGSM%252FWCDMA%2520%25E5%258F%258C%25E5%258D%25A1%25E5%258F%258C%25E5%25BE%2585%2520%25E9%25BB%2591&amp;advertiseWord=4.7%25E5%2590%258B%25E9%25AB%2598%25E6%25B8%2585%25E5%25B1%258FOGS%25E5%2585%25A8%25E8%25B4%25B4%25E5%2590%2588%25E3%2580%2581%25E9%25AB%2598%25E9%2580%259A%25E5%259B%259B%25E6%25A0%25B81.2G%25E3%2580%2581800%25E4%25B8%2587sony%25E6%2591%2584%25E5%2583%258F%25E3%2580%2581%25E9%25A6%2599%25E6%25B8%25AF%25E5%2593%2581%25E7%2589%258C%25E3%2580%2590%25E6%2599%2592%25E5%258D%2595%25E9%2580%2581%25E8%25AF%259D%25E8%25B4%25B9%25E3%2580%2591&amp;seller=NUU%2520Mobile%25E5%25AE%2598%25E6%2596%25B9%25E6%2597%2597%25E8%2588%25B0%25E5%25BA%2597&amp;evaluationRate=&amp;recent=&amp;code=1&amp;area=%25E5%258C%2597%25E4%25BA%25AC%25E6%259C%259D%25E9%2598%25B3%25E5%258C%25BA%25E7%25AE%25A1%25E5%25BA%2584&amp;size=&amp;services=%25E7%2594%25B1%2520%25E4%25BA%25AC%25E4%25B8%259C%2520%25E5%258F%2591%25E8%25B4%25A7%25E5%25B9%25B6%25E6%258F%2590%25E4%25BE%259B%25E5%2594%25AE%25E5%2590%258E%25E6%259C%258D%25E5%258A%25A1%25E3%2580%2582%253Cspan%2520id%253D%2522promise-ico%2522%253E%25E6%2594%25AF%25E6%258C%2581%25EF%25BC%259A%253Ca%2520href%253D%2522http%253A%252F%252Fhelp.jd.com%252Fhelp%252Fdistribution-768-1-72-4137-0-1394074809472.html%2522%2520target%253D%2522_blank%2522%2520class%253D%2522sendpay_211%2522%2520title%253D%2522%25E4%25B8%258A%25E5%258D%2588%25E4%25B8%258B%25E5%258D%2595%25EF%25BC%258C%25E4%25B8%258B%25E5%258D%2588%25E9%2580%2581%25E8%25BE%25BE%2522%253E%25E3%2580%2580%253C%252Fa%253E%253Ca%2520href%253D%2522http%253A%252F%252Fhelp.jd.com%252Fhelp%252Fdistribution-768-1-72-4137-0-1394074809472.html%2522%2520target%253D%2522_blank%2522%2520class%253D%2522payment_cod%2522%2520title%253D%2522%25E6%2594%25AF%25E6%258C%2581%25E9%2580%2581%25E8%25B4%25A7%25E4%25B8%258A%25E9%2597%25A8%25E5%2590%258E%25E5%2586%258D%25E6%2594%25B6%25E6%25AC%25BE%25EF%25BC%258C%25E6%2594%25AF%25E6%258C%2581%25E7%258E%25B0%25E9%2587%2591%25E3%2580%2581POS%25E6%259C%25BA%25E5%2588%25B7%25E5%258D%25A1%25E7%25AD%2589%25E6%2596%25B9%25E5%25BC%258F%2522%253E%25E3%2580%2580%253C%252Fa%253E%253Ca%2520href%253D%2522http%253A%252F%252Fhelp.jd.com%252Fhelp%252Fdistribution-768-1-72-4137-0-1394074809472.html%2522%2520target%253D%2522_blank%2522%2520class%253D%2522special_ziti%2522%2520title%253D%2522%25E6%2588%2591%25E4%25BB%25AC%25E6%258F%2590%25E4%25BE%259B%25E5%25A4%259A%25E7%25A7%258D%25E8%2587%25AA%25E6%258F%2590%25E6%259C%258D%25E5%258A%25A1%25EF%25BC%258C%25E5%258C%2585%25E6%258B%25AC%25E4%25BA%25AC%25E4%25B8%259C%25E8%2587%25AA%25E6%258F%2590%25E7%2582%25B9%25E3%2580%2581%25E4%25BE%25BF%25E5%2588%25A9%25E5%25BA%2597%25E8%2587%25AA%25E6%258F%2590%25E7%2582%25B9%25E3%2580%2581%25E6%25A0%25A1%25E5%259B%25AD%25E8%2587%25AA%25E6%258F%2590%25E7%2582%25B9%25E7%25AD%2589%2522%253E%25E3%2580%2580%253C%252Fa%253E%253Ca%2520href%253D%2522http%253A%252F%252Fhelp.jd.com%252Fhelp%252Fdistribution-768-1-72-4137-0-1394074809472.html%2522%2520target%253D%2522_blank%2522%2520class%253D%2522free_delivery%2522%2520title%253D%252259%25E5%2585%2583%25E4%25BB%25A5%25E4%25B8%258A%25E8%25AE%25A2%25E5%258D%2595%25E5%2585%258D%25E8%25BF%2590%25E8%25B4%25B9%25EF%25BC%258C%25E9%2592%25BB%25E7%259F%25B3%25E4%25BC%259A%25E5%2591%259839%25E5%2585%2583%25E4%25BB%25A5%25E4%25B8%258A%25E5%2585%258D%25E8%25BF%2590%25E8%25B4%25B9%25EF%25BC%2588%25E5%2581%258F%25E8%25BF%259C%25E5%259C%25B0%25E5%258C%25BA%25E9%2599%25A4%25E5%25A4%2596%25EF%25BC%2589%25E3%2580%2582%2522%253E%25E3%2580%2580%253C%252Fa%253E%253C%252Fspan%253E\" style=\"margin:0px;padding:0px;color:#666666;text-decoration:none;\"><img src=\"http://img30.360buyimg.com/popWareDetail/jfs/t169/69/75319538/74162/41c26d1a/537d944dN236ffffe.jpg\" alt=\"\" id=\"dc1ea4d364a24cac85f970a9a93d433a\" style=\"margin:0px;padding:0px;vertical-align:middle;border:0px;\" /></a></p> </div> <div class=\"detail-content\" style=\"margin:0px;padding:0px;\"><div style=\"margin:0px;padding:0px;text-align:center;\"><img alt=\"\" id=\"d636fa795f7c4ce5bade53740fae7d3e \" src=\"http://img30.360buyimg.com/popWaterMark/g12/M00/03/1C/rBEQYFM5H5YIAAAAAACpxfaOg5MAADlfwNXSuEAAKnd446.jpg\" class=\"err-product\" style=\"margin:0px;padding:0px;vertical-align:middle;background-image:url(http://misc.360buyimg.com/lib/skin/e/i/error-jd.gif);background-position:50% 50%;background-repeat:no-repeat no-repeat;\" /></div> <div style=\"margin:0px;padding:0px;text-align:center;\"><img alt=\"\" id=\"7a16a6dfcab741dfb800d47cb75f9a6a \" src=\"http://img30.360buyimg.com/popWaterMark/g15/M09/11/1F/rBEhWFM5H5cIAAAAAAL6Bk3kFn8AAK-DAHcTNoAAvoe652.jpg\" class=\"err-product\" style=\"margin:0px;padding:0px;vertical-align:middle;background-image:url(http://misc.360buyimg.com/lib/skin/e/i/error-jd.gif);background-position:50% 50%;background-repeat:no-repeat no-repeat;\" /></div> <div style=\"margin:0px;padding:0px;text-align:center;\"><img alt=\"\" id=\"4982188a2915409495e0b876cea082f8 \" src=\"http://img30.360buyimg.com/popWaterMark/g15/M09/11/1F/rBEhWVM5H5kIAAAAAAJejMbd4koAAK-DAIk0vcAAl6k708.jpg\" class=\"err-product\" style=\"margin:0px;padding:0px;vertical-align:middle;background-image:url(http://misc.360buyimg.com/lib/skin/e/i/error-jd.gif);background-position:50% 50%;background-repeat:no-repeat no-repeat;\" /></div> <div style=\"margin:0px;padding:0px;text-align:center;\"><img alt=\"\" id=\"2f8be31748714a409bc6bb7f7ab2d343 \" src=\"http://img30.360buyimg.com/popWaterMark/g15/M09/11/1F/rBEhWlM5H5oIAAAAAAK1diz2XjwAAK-DAJ0Y0UAArWO508.jpg\" class=\"err-product\" style=\"margin:0px;padding:0px;vertical-align:middle;background-image:url(http://misc.360buyimg.com/lib/skin/e/i/error-jd.gif);background-position:50% 50%;background-repeat:no-repeat no-repeat;\" /></div> </div> </div>', '0', null, '1402718172');

-- ----------------------------
-- Table structure for `yqt_shop_gtype`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_shop_gtype`;
CREATE TABLE `yqt_shop_gtype` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) DEFAULT NULL,
  `node` int(11) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL,
  `seotitle` varchar(255) DEFAULT NULL,
  `seokeyword` varchar(255) DEFAULT NULL,
  `seocontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_shop_gtype
-- ----------------------------
INSERT INTO `yqt_shop_gtype` VALUES ('1', '服装', '0', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('2', '鞋包', '0', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('3', '美容', '0', '50', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('4', '居家', '0', '50', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('5', '配饰', '0', '50', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('6', '食品', '0', '50', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('8', '女装', '1', '9', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('9', '男装', '1', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('10', '内衣袜品', '1', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('11', '鞋子', '2', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('12', '箱包', '2', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('13', '彩妆444', '3', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('14', '护肤', '3', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('15', '美容美发用品', '3', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('16', '家纺', '4', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('17', '装饰', '4', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('18', '日用品', '4', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('19', '办公文具', '4', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('20', '礼品', '4', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('21', '服装配饰', '5', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('22', '饰品', '5', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('23', '特产', '6', '0', '', '', '');
INSERT INTO `yqt_shop_gtype` VALUES ('24', '淑女装', '8', '8', null, null, null);
INSERT INTO `yqt_shop_gtype` VALUES ('25', '美女装', '8', '0', null, null, null);
INSERT INTO `yqt_shop_gtype` VALUES ('26', '土豆', '6', '0', null, null, null);
INSERT INTO `yqt_shop_gtype` VALUES ('27', '头花', '5', '0', null, null, null);
INSERT INTO `yqt_shop_gtype` VALUES ('28', '数码', '0', '5', null, null, null);
INSERT INTO `yqt_shop_gtype` VALUES ('29', '手机', '28', '0', null, null, null);
INSERT INTO `yqt_shop_gtype` VALUES ('30', '手机配件', '28', '0', null, null, null);

-- ----------------------------
-- Table structure for `yqt_smtpaccount`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_smtpaccount`;
CREATE TABLE `yqt_smtpaccount` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_server` varchar(50) DEFAULT '' COMMENT '邮件服务器地址',
  `smtp_port` smallint(5) DEFAULT '25' COMMENT '邮件服务器端口号',
  `smtp_email` varchar(50) DEFAULT NULL,
  `smtp_account` varchar(50) DEFAULT '' COMMENT '邮件服务器账户名',
  `smtp_password` varchar(255) DEFAULT '' COMMENT '邮件服务密码',
  `smtp_name` varchar(255) DEFAULT NULL COMMENT '发信人名字',
  `reply_address` varchar(255) DEFAULT '' COMMENT '回复地址',
  `smtp_auth` smallint(5) DEFAULT '1' COMMENT '是否smtp验证',
  `smtp_ssl` smallint(5) DEFAULT '0' COMMENT '否是ssl模式',
  `state` smallint(5) DEFAULT '1' COMMENT '状态1正常0禁用',
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_smtpaccount
-- ----------------------------

-- ----------------------------
-- Table structure for `yqt_songli`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_songli`;
CREATE TABLE `yqt_songli` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `anonymous` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `uname` varchar(50) DEFAULT NULL,
  `goodsurl` varchar(255) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsprice` float(10,2) NOT NULL DEFAULT '0.00',
  `sendprice` float(10,2) NOT NULL DEFAULT '0.00',
  `goodsnum` int(10) NOT NULL DEFAULT '1',
  `goodsimg` varchar(255) DEFAULT NULL,
  `goodssize` varchar(20) DEFAULT NULL,
  `goodscolor` varchar(20) DEFAULT NULL,
  `goodsseller` varchar(50) NOT NULL DEFAULT '',
  `sellerurl` varchar(255) DEFAULT '',
  `goodssite` varchar(50) DEFAULT '淘宝网',
  `siteurl` varchar(255) DEFAULT 'http://www.taobao.com',
  `goodsremark` varchar(255) DEFAULT NULL,
  `goodslianxiren` varchar(50) NOT NULL COMMENT '联系人姓名',
  `goodstel` varchar(50) NOT NULL COMMENT '联系人电话',
  `goodsaddress` varchar(100) NOT NULL COMMENT '联系人地址',
  `postcode` varchar(30) NOT NULL COMMENT '邮政编码',
  `addtime` int(11) DEFAULT NULL,
  `uptime` int(11) DEFAULT NULL,
  `state` smallint(5) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_songli
-- ----------------------------
INSERT INTO `yqt_songli` VALUES ('24', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=5656179305&spm=2014.12379013.0.0', '皇冠特价 免烫棉质中厚牛津纺 商务男士正装长袖衬衫衬衣 多色C', '58.00', '10.00', '1', 'http://img06.taobaocdn.com/bao/uploaded/i6/T12UmfXfXoXXbomhnb_124244.jpg', '20', '皇贵妃', '刺客show', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '发生方法', '15090433731', '似懂非懂', '100000', '1334216277', '0', '1');
INSERT INTO `yqt_songli` VALUES ('17', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=14285649877&spm=2014.12379013.0.0', '2012新款牛皮舒适休闲平跟凉鞋 真皮洞洞镂空女鞋  9119', '55.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1lUm7XhdgXXc0FCA6_063018.jpg', '', '', 'hylxp88', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '范德萨', '15090433731', '大傻瓜', '400000', '1334126836', '0', '1');
INSERT INTO `yqt_songli` VALUES ('18', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=14285649877&spm=2014.12379013.0.0', '2012新款牛皮舒适休闲平跟凉鞋 真皮洞洞镂空女鞋  9119', '55.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1lUm7XhdgXXc0FCA6_063018.jpg', '', '', 'hylxp88', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '范德萨', '15090432541', '发的撒广东省', '100000', '1334131063', '1334136778', '3');
INSERT INTO `yqt_songli` VALUES ('19', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=14285649877&spm=2014.12379013.0.0', '2012新款牛皮舒适休闲平跟凉鞋 真皮洞洞镂空女鞋  9119', '55.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1lUm7XhdgXXc0FCA6_063018.jpg', '', '', 'hylxp88', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '范德萨', '1500000000', '范德萨', '100000', '1334131316', '0', '1');
INSERT INTO `yqt_songli` VALUES ('20', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=14285649877&spm=2014.12379013.0.0', '2012新款牛皮舒适休闲平跟凉鞋 真皮洞洞镂空女鞋  9119', '55.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1lUm7XhdgXXc0FCA6_063018.jpg', '', '', 'hylxp88', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '广泛地', '1500000000', '范德萨更多', '100000', '1334131952', '0', '1');
INSERT INTO `yqt_songli` VALUES ('21', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=14285649877&spm=2014.12379013.0.0', '2012新款牛皮舒适休闲平跟凉鞋 真皮洞洞镂空女鞋  9119', '55.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1lUm7XhdgXXc0FCA6_063018.jpg', '', '', 'hylxp88', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '范德萨', '15616516', '法规的后果', '16515', '1334132617', '0', '1');
INSERT INTO `yqt_songli` VALUES ('22', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=3020887857&spm=2014.12379013.0.0', '韩国 新生活化妆品正品◆新生活美之娇盈润修护底霜 BB霜', '110.00', '10.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1SB1xXg40XXXm4bEW_022603.jpg', '', '', '幸福之家008', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '范德萨', '15090433731', '发的撒个', '160000', '1334197622', '0', '1');
INSERT INTO `yqt_songli` VALUES ('23', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=5656179305&spm=2014.12379013.0.0', '皇冠特价 免烫棉质中厚牛津纺 商务男士正装长袖衬衫衬衣 多色C', '58.00', '10.00', '1', 'http://img06.taobaocdn.com/bao/uploaded/i6/T12UmfXfXoXXbomhnb_124244.jpg', '的萨芬', '发的', '刺客show', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '发的萨芬', '15090433731', '对法萨芬飞', '450000', '1334215291', '0', '1');
INSERT INTO `yqt_songli` VALUES ('25', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=12869491369&spm=2014.12585336.0.0', '二胡双色码 阴阳码 复合码 双材码 二胡码子 二胡马子 二胡琴码', '10.00', '10.00', '1', 'http://img02.taobaocdn.com/bao/uploaded/i2/T1S6WnXmhLXXb.aGTc_095751.jpg', '', '', 'yebo168', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '大师傅', '15090433731', '的撒公司', '500000', '1334284720', '1334286564', '4');
INSERT INTO `yqt_songli` VALUES ('26', '', '180', 'hihihaha', 'http://item.taobao.com/item.htm?id=14935151937&spm=2014.12585336.0.0', '【天天特价】时尚潮流潮鞋日常休闲鞋韩版男鞋子真皮板鞋透气鞋-3', '248.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1G_S2XjhsXXbMzjcW_024144.jpg_310x310.jpg', '', '', 'lingganxl', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '顶替', '1111', '重庆市枯无可奈何枯无可奈何1号', '顶替', '1334823786', '0', '1');
INSERT INTO `yqt_songli` VALUES ('27', '', '180', 'hihihaha', 'http://item.taobao.com/item.htm?id=14935151937&spm=2014.12585336.0.0', '【天天特价】时尚潮流潮鞋日常休闲鞋韩版男鞋子真皮板鞋透气鞋-3', '248.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1G_S2XjhsXXbMzjcW_024144.jpg_310x310.jpg', '', '', 'lingganxl', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '顶替', '1111', '重庆市枯无可奈何枯无可奈何1号', '顶替', '1334823786', '0', '1');
INSERT INTO `yqt_songli` VALUES ('28', '', '180', 'hihihaha', 'http://item.taobao.com/item.htm?id=14935151937&spm=2014.12585336.0.0', '【天天特价】时尚潮流潮鞋日常休闲鞋韩版男鞋子真皮板鞋透气鞋-3', '248.00', '0.00', '1', 'http://img04.taobaocdn.com/bao/uploaded/i4/T1G_S2XjhsXXbMzjcW_024144.jpg_310x310.jpg', '1', '1', 'lingganxl', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我对此商品无任何特殊备注。', '11', '1', '11', '11', '1334823831', '0', '1');
INSERT INTO `yqt_songli` VALUES ('29', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=13773221472&spm=2014.12585336.0.0', '2012春装夏裙新款 韩版镂空吊带裙大码裙显瘦包臀修身连衣裙 夏季', '96.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1luu_XcddXXbQfoQ7_065934.jpg_310x310.jpg', '', '', '两只猪猪猫', 'www.taobao.com', '淘宝网', 'www.taobao.com', '范德萨更多撒谎', '范德萨', '12345678978', '范德萨', '450000', '1335233915', '0', '1');
INSERT INTO `yqt_songli` VALUES ('30', '', '177', 'liulei634', 'http://item.taobao.com/item.htm?id=13773221472&spm=2014.12585336.0.0', '2012春装夏裙新款 韩版镂空吊带裙大码裙显瘦包臀修身连衣裙 夏季', '96.00', '10.00', '1', 'http://img03.taobaocdn.com/bao/uploaded/i3/T1luu_XcddXXbQfoQ7_065934.jpg_310x310.jpg', '', '', '两只猪猪猫', 'www.taobao.com', '淘宝网', 'www.taobao.com', '范德萨更多撒谎', '范德萨', '12345678978', '范德萨', '450000', '1335233917', '1355286505', '1');
INSERT INTO `yqt_songli` VALUES ('31', '', '179', 'jackmic', 'http://item.taobao.com/item.htm?id=14473882054&spm=2014.12585336.0.0', 'VANCL 凡客诚品 T恤 短袖 女 夏季新款纯棉 印花角梳 35194', '29.01', '10.00', '1', 'http://img01.taobaocdn.com/bao/uploaded/i1/T1AMm_Xl4sXXaNCZQ8_100043.jpg_310x310.jpg', '11', '红色', 'vancl凡客诚品旗舰店', 'www.taobao.com', '淘宝网', 'www.taobao.com', '我要红色的！', '陈少明', '123222332', '2343342324', '352354', '1335437814', '1335437877', '4');
INSERT INTO `yqt_songli` VALUES ('32', '', '179', 'jackmic', 'http://product.dangdang.com/product.aspx?product_id=410016597#ref=www-0-h', 'dangdang baby 女童背带牛仔裤 DGBZA9701 80-100码 - 孕婴服饰 - 当当网', '118.00', '15.00', '1', 'http://img37.ddimg.cn/78/24/410016597-1_h.jpg', '1', '', '当当网', '智乐熊', '当当网', 'www.dangdang.com', '我对此商品无任何特殊备注。', '1', '1', '1', '1', '1335907109', '1335907248', '1');

-- ----------------------------
-- Table structure for `yqt_special`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_special`;
CREATE TABLE `yqt_special` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `flag` char(2) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `seokeywords` varchar(255) DEFAULT NULL,
  `seodescription` varchar(255) DEFAULT NULL,
  `body` mediumtext,
  `listorder` smallint(5) DEFAULT '50',
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_special
-- ----------------------------
INSERT INTO `yqt_special` VALUES ('13', '首页幻灯2', 'sy', '代购', 'attachment/special/201106/20110620162248_363.jpg', '范德萨', '但是', '对方是个哈<br />', '40', '1308558168');
INSERT INTO `yqt_special` VALUES ('12', '首页幻灯', 'sy', '倒萨', 'attachment/special/201106/20110620162149_481.jpg', '范德萨', '范德萨', '打工撒第三个<br />', '50', '1308557120');
INSERT INTO `yqt_special` VALUES ('7', 'women', 'sy', 'sdsdsads', 'attachment/special/201011/20101129182413_245.jpg', 'sds', 'ds', 'sdasdasdsadsds', '50', '1291026253');
INSERT INTO `yqt_special` VALUES ('10', '新手常见问题', 'sy', '新手常见问题，为您排忧解答', 'attachment/special/201106/20110611101219_987.jpg', '常见问题', '新手常见问题，为您排忧解答', '新手常见问题，为您排忧解答', '8', '1306913430');
INSERT INTO `yqt_special` VALUES ('11', '什么是代购', 'sy', '什么是代购，玩转网上购物', 'attachment/special/201106/20110611101205_416.jpg', '代购，购物', '什么是代购，玩转网上购物', '什么是代购，玩转网上购物', '9', '1306913486');
INSERT INTO `yqt_special` VALUES ('4', '我们都是大小孩 寻找童梦奇缘', 'tj', '儿童节马上就要到了，让我们纪念属于自己心里那份永远长不大的童真，这一天，有每个人永不凋谢的童梦奇缘', '/templates/default/images/79.jpg', '', '', '儿童节马上就要到了，让我们纪念属于自己心里那份永远长不大的童真，这一天，有每个人永不凋谢的童梦奇缘', '50', '0');
INSERT INTO `yqt_special` VALUES ('3', '浪漫夏日 必备连衣裙单品大网罗', 'hd', '美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味', '/templates/default/images/96.jpg', '', '', '美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味美国设计师说：要感觉像个女人，请穿连衣裙。30年后的今天，连衣裙被时尚大师们赋予了各种语言，唯独不变的是它那浓浓的女人味', '0', '1282534441');
INSERT INTO `yqt_special` VALUES ('8', 'vrldkhfd', 'hd', 'fdsadfgsad', 'attachment/special/201105/20110519164353_467.jpg', '反对撒过的', '反对撒过的', '打工撒个任务额尔和', '30', '1305794633');
INSERT INTO `yqt_special` VALUES ('9', '了解代购中国', 'sy', '了解代购中国，快速成为代购一族', 'attachment/special/201106/20110611101228_813.jpg', '代购', '了解代购中国，快速成为代购一族', '了解代购中国，快速成为代购一族', '5', '1306913363');
INSERT INTO `yqt_special` VALUES ('6', '潮流必备品 美腿丝袜大比拼', 'tj', '丝袜是女人浪漫与性感的最好体现。丝袜是千变万化，宣扬着女性的柔媚与妖娆，表达女人对时尚的追求与生活的品味……', '/templates/default/images/75.jpg', '', '', '丝袜是女人浪漫与性感的最好体现。丝袜是千变万化，宣扬着女性的柔媚与妖娆，表达女人对时尚的追求与生活的品味……', '50', '0');
INSERT INTO `yqt_special` VALUES ('2', '完美鞋包SHOW 演绎夏日别样风情', 'hd', '炎夏即将登场，传统的帆布，皮质，草编等材质的靓包美鞋都开始活跃起来。快来看看小编推荐的本季最新流行鞋包吧！', '/templates/default/images/81.jpg', '关键词2', '描述2', '测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下测试下22', '50', '1282276461');
INSERT INTO `yqt_special` VALUES ('1', '牛仔很忙 我们的最佳搭配拍档', 'tj', '简介测试信息简介测试信息牛仔几乎是必备的服饰，一直长盛不衰。不同款式的牛仔裤，经过不同衣服鞋子配饰的组合，就可诠释出不同的个性色彩！', '/templates/default/images/87.jpg', '', '', '内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试内容测试信息内容测试仔几乎是必备的服饰，一直长盛不衰。不同款式的牛仔裤，经过不同衣服鞋子配饰的组合', '50', '4651631');

-- ----------------------------
-- Table structure for `yqt_sysconfig`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_sysconfig`;
CREATE TABLE `yqt_sysconfig` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `varname` varchar(50) DEFAULT '' COMMENT '变量名',
  `info` varchar(255) DEFAULT '' COMMENT '说明',
  `groupid` smallint(5) DEFAULT '0' COMMENT '分组，备用',
  `type` varchar(20) DEFAULT 'string' COMMENT 'string字符串number数字bool是否',
  `value` mediumtext COMMENT '值',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_sysconfig
-- ----------------------------
INSERT INTO `yqt_sysconfig` VALUES ('1', 'cfg_site_closed', '关闭网站', '0', 'bool', 'N');
INSERT INTO `yqt_sysconfig` VALUES ('3', 'cfg_site_pagenum', '前台分页量', '0', 'number', '10');
INSERT INTO `yqt_sysconfig` VALUES ('2', 'cfg_site_logo', '网站logo', '0', 'string', 'images/logo.gif');
INSERT INTO `yqt_sysconfig` VALUES ('4', 'cfg_site_url', '网站网址', '0', 'string', 'http://dai.jzrmh.com');
INSERT INTO `yqt_sysconfig` VALUES ('5', 'cfg_reg_score', '注册送积分', '0', 'number', '200');
INSERT INTO `yqt_sysconfig` VALUES ('7', 'cfg_dayusheji_api', '启用官方抓取接口', '0', 'bool', 'Y');
INSERT INTO `yqt_sysconfig` VALUES ('8', 'cfg_index_msnlink', 'MSN客服链接', '0', 'string', '1295088959@qq.com');
INSERT INTO `yqt_sysconfig` VALUES ('9', 'cfg_index_qqlink', 'QQ客服链接', '0', 'string', '1295088959');
INSERT INTO `yqt_sysconfig` VALUES ('6', 'cfg_reg_checkemail', '注册邮件验证', '0', 'bool', 'N');
INSERT INTO `yqt_sysconfig` VALUES ('11', 'cfg_site_bottomlogo', '网站底部logo', '0', 'string', 'http://dai.jzrmh.com');
INSERT INTO `yqt_sysconfig` VALUES ('12', 'cfg_water_mark', '是否加水印', '0', 'bool', 'Y');
INSERT INTO `yqt_sysconfig` VALUES ('13', 'cfg_water_img', '水印图片位置', '1', 'string', '1');
INSERT INTO `yqt_sysconfig` VALUES ('14', 'cfg_thumb_width', '缩略图宽度', '0', 'number', '200');
INSERT INTO `yqt_sysconfig` VALUES ('15', 'cfg_thumb_height', '缩略图高度', '0', 'number', '121');
INSERT INTO `yqt_sysconfig` VALUES ('16', 'cfg_site_name', '网站名称', '0', 'string', '影子网络代购网');
INSERT INTO `yqt_sysconfig` VALUES ('17', 'cfg_site_keywords', '网站关键词', '0', 'string', '影子网络代购网，代购源码，代购系统，中国代购，全球代购，代购网站');
INSERT INTO `yqt_sysconfig` VALUES ('18', 'cfg_site_description', '网站描述', '0', 'string', '专业从事代购系统网站系统软件开发');
INSERT INTO `yqt_sysconfig` VALUES ('19', 'cfg_site_bottomtxt', '网站底部版权', '0', 'string', 'http://127.0.0.28:82');
INSERT INTO `yqt_sysconfig` VALUES ('23', 'cfg_page_cache', '是否开启模板缓存', '0', 'bool', 'N');
INSERT INTO `yqt_sysconfig` VALUES ('24', 'cfg_login_time', '登录cookie有效时间', '0', 'number', '3600');
INSERT INTO `yqt_sysconfig` VALUES ('27', 'cfg_templet_name', '模板设置', '0', 'string', 'default');
INSERT INTO `yqt_sysconfig` VALUES ('28', 'cfg_water_imgsrc', '水印图片地址', '0', 'string', 'images/watermark.png');
INSERT INTO `yqt_sysconfig` VALUES ('29', 'cfg_water_text', '文字水印内容', '0', 'string', '');
INSERT INTO `yqt_sysconfig` VALUES ('30', 'cfg_water_text_size', '文字水印字体大小', '0', 'string', '12');
INSERT INTO `yqt_sysconfig` VALUES ('31', 'cfg_water_text_color', '文字水印字体颜色', '0', 'string', '#CCCCCC');
INSERT INTO `yqt_sysconfig` VALUES ('34', 'cfg_sendorder_score', '收货送积分', '0', 'number', '100');
INSERT INTO `yqt_sysconfig` VALUES ('35', 'cfg_vip_score1', '升级金卡会员', '0', 'number', '1000');
INSERT INTO `yqt_sysconfig` VALUES ('36', 'cfg_vip_score2', '升级白金卡会员', '0', 'number', '2000');
INSERT INTO `yqt_sysconfig` VALUES ('37', 'cfg_vip_score3', '升级钻石卡会员', '0', 'number', '3000');
INSERT INTO `yqt_sysconfig` VALUES ('38', 'cfg_vip_sendfee1', '金卡会员服务费折扣', '0', 'number', '0.9');
INSERT INTO `yqt_sysconfig` VALUES ('39', 'cfg_vip_sendfee2', '白金卡会员服务费折扣', '0', 'number', '0.8');
INSERT INTO `yqt_sysconfig` VALUES ('40', 'cfg_vip_sendfee3', '钻石卡会员服务费折扣', '0', 'number', '0.7');
INSERT INTO `yqt_sysconfig` VALUES ('41', 'cfg_vip_validity', '会员有效时间（单位:天）', '0', 'int(2)', '30');
INSERT INTO `yqt_sysconfig` VALUES ('43', 'cfg_site_huilv', '与RMB汇率比', '0', 'string', '5.077');
INSERT INTO `yqt_sysconfig` VALUES ('45', 'cfg_recommend_score', '推荐送积分', '0', 'number', '10');
INSERT INTO `yqt_sysconfig` VALUES ('46', 'cfg_index_tel', '客服电话', '0', 'string', '');
INSERT INTO `yqt_sysconfig` VALUES ('47', 'cfg_weibolink', '新浪微博链接', '0', 'string', 'http://weibo.com');
INSERT INTO `yqt_sysconfig` VALUES ('48', 'cfg_facebooklink', 'Facebook链接', '0', 'string', 'http://www.facebook.com');
INSERT INTO `yqt_sysconfig` VALUES ('49', 'cfg_twitterlink', 'Twitter可爱的小鸟', '0', 'string', 'http://twitter.com/yirod');
INSERT INTO `yqt_sysconfig` VALUES ('42', 'cfg_site_bizhong', '国际币种和符号(大写)', '0', 'string', 'SGD%$');
INSERT INTO `yqt_sysconfig` VALUES ('44', 'cfg_site_paypal', 'paypal手续费', '0', 'string', '0.96+0.3');
INSERT INTO `yqt_sysconfig` VALUES ('50', 'cfg_site_paypal_acc', 'paypal账号', '0', 'string', '1295088959@qq.com');
INSERT INTO `yqt_sysconfig` VALUES ('51', 'cfg_site_alipay_acc', '支付宝账号', '0', 'string', '2222');
INSERT INTO `yqt_sysconfig` VALUES ('52', 'cfg_site_alipay_key', '支付宝Key', '0', 'string', '22221');
INSERT INTO `yqt_sysconfig` VALUES ('53', 'cfg_site_cbpayment_acc', '网银在线账号', '0', 'string', '3333');
INSERT INTO `yqt_sysconfig` VALUES ('59', 'cfg_site_cbpayment_mail', '网银在线账号邮箱', '0', 'string', '33@com.com');
INSERT INTO `yqt_sysconfig` VALUES ('56', 'cfg_site_cbpayment_key', '网银在线账号key', '0', 'string', '33331');
INSERT INTO `yqt_sysconfig` VALUES ('58', 'cfg_site_alipay_mail', '支付宝账号邮箱', '0', 'string', '11@com.com');
INSERT INTO `yqt_sysconfig` VALUES ('60', 'cfg_bing_id', '必应翻译ID', '0', 'string', 'lss');
INSERT INTO `yqt_sysconfig` VALUES ('61', 'cfg_bing_key', '必应翻译KEY', '0', 'string', '1oap6gHELssU/VBcaxVuVA9OykY+hzz39KkXNOLQ9EU=');
INSERT INTO `yqt_sysconfig` VALUES ('62', 'cfg_index_categorynum', '首页商品分类显示数', '0', 'number', '100');
INSERT INTO `yqt_sysconfig` VALUES ('63', 'cfg_taobao_appkey', '淘宝key', '0', 'string', '12636409');
INSERT INTO `yqt_sysconfig` VALUES ('64', 'cfg_taobao_appsecret', '淘宝key的值', '0', 'string', '26084ca0bca8f42c4c9f0d54a8297b88');

-- ----------------------------
-- Table structure for `yqt_sysconfigbak`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_sysconfigbak`;
CREATE TABLE `yqt_sysconfigbak` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `varname` varchar(50) DEFAULT '' COMMENT '变量名',
  `info` varchar(255) DEFAULT '' COMMENT '说明',
  `groupid` smallint(5) DEFAULT '0' COMMENT '分组，备用',
  `type` varchar(20) DEFAULT 'string' COMMENT 'string字符串number数字bool是否',
  `value` mediumtext COMMENT '值',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_sysconfigbak
-- ----------------------------
INSERT INTO `yqt_sysconfigbak` VALUES ('1', 'cfg_site_closed', '关闭网站', '0', 'bool', 'N');
INSERT INTO `yqt_sysconfigbak` VALUES ('3', 'cfg_site_pagenum', '前台分页量', '0', 'number', '10');
INSERT INTO `yqt_sysconfigbak` VALUES ('2', 'cfg_site_logo', '网站logo', '0', 'string', 'images/logo.gif');
INSERT INTO `yqt_sysconfigbak` VALUES ('4', 'cfg_site_url', '网站网址', '0', 'string', 'http://127.0.0.28:82');
INSERT INTO `yqt_sysconfigbak` VALUES ('5', 'cfg_reg_score', '注册送积分', '0', 'number', '200');
INSERT INTO `yqt_sysconfigbak` VALUES ('7', 'cfg_dayusheji_api', '启用官方抓取接口', '0', 'bool', 'Y');
INSERT INTO `yqt_sysconfigbak` VALUES ('8', 'cfg_index_msnlink', 'MSN客服链接', '0', 'string', '997870878');
INSERT INTO `yqt_sysconfigbak` VALUES ('9', 'cfg_index_qqlink', 'QQ客服链接', '0', 'string', '997870878');
INSERT INTO `yqt_sysconfigbak` VALUES ('6', 'cfg_reg_checkemail', '注册邮件验证', '0', 'bool', 'N');
INSERT INTO `yqt_sysconfigbak` VALUES ('11', 'cfg_site_bottomlogo', '网站底部logo', '0', 'string', 'http://127.0.0.28:82');
INSERT INTO `yqt_sysconfigbak` VALUES ('12', 'cfg_water_mark', '是否加水印', '0', 'bool', 'Y');
INSERT INTO `yqt_sysconfigbak` VALUES ('13', 'cfg_water_img', '水印图片位置', '1', 'string', '1');
INSERT INTO `yqt_sysconfigbak` VALUES ('14', 'cfg_thumb_width', '缩略图宽度', '0', 'number', '200');
INSERT INTO `yqt_sysconfigbak` VALUES ('15', 'cfg_thumb_height', '缩略图高度', '0', 'number', '121');
INSERT INTO `yqt_sysconfigbak` VALUES ('16', 'cfg_site_name', '网站名称', '0', 'string', '佳圆代购网');
INSERT INTO `yqt_sysconfigbak` VALUES ('17', 'cfg_site_keywords', '网站关键词', '0', 'string', '佳圆代购网');
INSERT INTO `yqt_sysconfigbak` VALUES ('18', 'cfg_site_description', '网站描述', '0', 'string', '佳圆代购网');
INSERT INTO `yqt_sysconfigbak` VALUES ('19', 'cfg_site_bottomtxt', '网站底部版权', '0', 'string', 'Copyright (c) 2012 佳圆代购网 Inc. All rights reserved. 沪ICP备10014085号-3');
INSERT INTO `yqt_sysconfigbak` VALUES ('23', 'cfg_page_cache', '是否开启模板缓存', '0', 'bool', 'Y');
INSERT INTO `yqt_sysconfigbak` VALUES ('24', 'cfg_login_time', '登录cookie有效时间', '0', 'number', '3600');
INSERT INTO `yqt_sysconfigbak` VALUES ('27', 'cfg_templet_name', '模板设置', '0', 'string', 'default');
INSERT INTO `yqt_sysconfigbak` VALUES ('28', 'cfg_water_imgsrc', '水印图片地址', '0', 'string', 'images/watermark.png');
INSERT INTO `yqt_sysconfigbak` VALUES ('29', 'cfg_water_text', '文字水印内容', '0', 'string', 'http://127.0.0.28:82');
INSERT INTO `yqt_sysconfigbak` VALUES ('30', 'cfg_water_text_size', '文字水印字体大小', '0', 'string', '12');
INSERT INTO `yqt_sysconfigbak` VALUES ('31', 'cfg_water_text_color', '文字水印字体颜色', '0', 'string', '#CCCCCC');
INSERT INTO `yqt_sysconfigbak` VALUES ('34', 'cfg_sendorder_score', '收货送积分', '0', 'number', '100');
INSERT INTO `yqt_sysconfigbak` VALUES ('35', 'cfg_vip_score1', '升级金卡会员', '0', 'number', '1000');
INSERT INTO `yqt_sysconfigbak` VALUES ('36', 'cfg_vip_score2', '升级白金卡会员', '0', 'number', '2000');
INSERT INTO `yqt_sysconfigbak` VALUES ('37', 'cfg_vip_score3', '升级钻石卡会员', '0', 'number', '3000');
INSERT INTO `yqt_sysconfigbak` VALUES ('38', 'cfg_vip_sendfee1', '金卡会员服务费折扣', '0', 'number', '0.9');
INSERT INTO `yqt_sysconfigbak` VALUES ('39', 'cfg_vip_sendfee2', '白金卡会员服务费折扣', '0', 'number', '0.8');
INSERT INTO `yqt_sysconfigbak` VALUES ('40', 'cfg_vip_sendfee3', '钻石卡会员服务费折扣', '0', 'number', '0.7');
INSERT INTO `yqt_sysconfigbak` VALUES ('41', 'cfg_vip_validity', '会员有效时间（单位:天）', '0', 'int(2)', '30');
INSERT INTO `yqt_sysconfigbak` VALUES ('43', 'cfg_site_huilv', '中美汇率比', '0', 'string', '6.25');
INSERT INTO `yqt_sysconfigbak` VALUES ('45', 'cfg_recommend_score', '推荐送积分', '0', 'number', '10');
INSERT INTO `yqt_sysconfigbak` VALUES ('46', 'cfg_index_tel', '客服电话', '0', 'string', '907870878');
INSERT INTO `yqt_sysconfigbak` VALUES ('47', 'cfg_weibolink', '新浪微博链接', '0', 'string', 'http://weibo.com');
INSERT INTO `yqt_sysconfigbak` VALUES ('48', 'cfg_facebooklink', 'Facebook链接', '0', 'string', 'http://www.facebook.com');
INSERT INTO `yqt_sysconfigbak` VALUES ('49', 'cfg_twitterlink', 'Twitter可爱的小鸟', '0', 'string', 'http://twitter.com/');

-- ----------------------------
-- Table structure for `yqt_taobao_gtype`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_taobao_gtype`;
CREATE TABLE `yqt_taobao_gtype` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `catename` varchar(50) DEFAULT '',
  `pid` int(11) DEFAULT '0',
  `listorder` int(11) DEFAULT NULL,
  `cateid` varchar(255) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_taobao_gtype
-- ----------------------------
INSERT INTO `yqt_taobao_gtype` VALUES ('1', 'Women’s Clothing', '0', '50', '16', '1');
INSERT INTO `yqt_taobao_gtype` VALUES ('2', 'Men’ s Clothing', '0', '50', '30', '1');
INSERT INTO `yqt_taobao_gtype` VALUES ('3', 'Shoes', '0', '50', '50011743', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('4', 'Bags Handbags', '0', '50', '50012010', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('5', 'Watches Sunglasses', '0', '50', '50010368', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('6', 'Beauty Accessories', '0', '50', '50011980', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('7', 'Underwear Sleepwear', '0', '50', '50008882', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('8', 'Baby Kids', '0', '50', '211104', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('9', 'Housewares', '0', '50', '50023189', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('10', 'Sport. Outdoor Cars', '0', '50', '50011556', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('11', 'Cell phones Computers', '0', '50', '110203', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('12', 'Digital Electronics', '0', '50', '50024097', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('13', 'Toys Culture', '0', '50', '50012770', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('14', 'Knitwear', '1', '50', '50000697', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('15', 'Hoodies/Fleece', '1', '50', '50008898', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('16', 'Short Jacket', '1', '50', '50011277', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('17', 'Sweater', '1', '50', '162103', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('18', 'Cottonclothes/cottonjacket', '1', '50', '50008900', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('19', 'Woolencoats', '1', '50', '50013194', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('20', 'Windbreaker', '1', '50', '50008901', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('21', 'Fur', '1', '50', '50008905', '0');
INSERT INTO `yqt_taobao_gtype` VALUES ('22', 'Jeans', '1', '50', '162205', '0');

-- ----------------------------
-- Table structure for `yqt_users`
-- ----------------------------
DROP TABLE IF EXISTS `yqt_users`;
CREATE TABLE `yqt_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `email` char(50) DEFAULT NULL,
  `tname` varchar(50) DEFAULT NULL,
  `utype` smallint(5) DEFAULT '0',
  `sex` smallint(5) DEFAULT '0',
  `tel` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `card` varchar(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `qq` varchar(20) DEFAULT '',
  `msn` varchar(50) DEFAULT '',
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `face` varchar(50) DEFAULT NULL,
  `scores` int(11) DEFAULT '0',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '账户余额',
  `regip` char(16) DEFAULT NULL,
  `regtime` int(11) DEFAULT NULL,
  `validity` int(2) NOT NULL,
  `loginip` char(16) DEFAULT NULL,
  `logintime` int(11) DEFAULT NULL,
  `activekey` char(5) DEFAULT NULL,
  `state` smallint(5) DEFAULT '1',
  `memberid` varchar(25) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`uid`),
  KEY `uname` (`uname`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqt_users
-- ----------------------------
INSERT INTO `yqt_users` VALUES ('183', 'aaaaaa', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', 'aaa@qq.com', '', '0', '0', '', '', '', '', '0', '', '', '', null, '200', '0.00', null, '1352282241', '0', null, '1352346814', '6gnn2', '1', '', '');
INSERT INTO `yqt_users` VALUES ('184', 'dj1jj', 'fcea920f7412b5da7be0cf42b8c93759', '262799680@qq.com', '', '0', '0', '0', '', '', '', '0', '', '0', '', 'attachment/avatar/201212/20121218204303_835.jpg', '196500', '12621.70', null, '1355207253', '0', null, '1387959794', '6a9tk', '1', '', '');
INSERT INTO `yqt_users` VALUES ('185', 'dj2jj', 'fcea920f7412b5da7be0cf42b8c93759', '57567657@qq.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1355649953', '0', null, '1355649953', 'h7ngy', '1', null, null);
INSERT INTO `yqt_users` VALUES ('191', 'ccfun1127', '1c63129ae9db9c60c3e8aa94d3e00495', 'ccfun1127@yahoo.com.tw', '', '0', '0', '', '', '', '', '0', '', '', '', null, '200', '94.00', null, '1383552621', '0', null, '1383552621', 'o9bqk', '1', '', '');
INSERT INTO `yqt_users` VALUES ('186', 'sdjlove', '00b7691d86d96aebd21dd9e138f90840', '1192215@qq.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1376973368', '0', null, '1376973368', 'klrhp', '1', null, null);
INSERT INTO `yqt_users` VALUES ('187', '瓜晓晓', '97f0d7a92bdf45bcc5454fee7c3c784a', '32534563@qq.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1381153652', '0', null, '1381153652', 'o82px', '1', null, null);
INSERT INTO `yqt_users` VALUES ('188', 'alexluah', 'e10adc3949ba59abbe56e057f20f883e', 'alexluah@hotmail.com', 'Alex Luah', '0', '1', '0164818993', '11500', '', '1-4-13 Lintang Kampung Melayu 2', '0', 'alexluah@hotmail.com', '马来西亚', 'Air itam', 'attachment/avatar/201310/20131008181458_877.jpg', '200', '852.00', null, '1381227207', '0', null, '1381227207', 'lltos', '1', null, null);
INSERT INTO `yqt_users` VALUES ('189', 'testing', 'fcea920f7412b5da7be0cf42b8c93759', 'adaskdjf@asdf.com', '', '0', '0', '', '', '', '', '0', '', '', '', null, '200', '194.00', null, '1381725846', '0', null, '1382096098', '1oe0k', '1', '', '');
INSERT INTO `yqt_users` VALUES ('190', '一一一', '670b14728ad9902aecba32e22fa4f6bd', '123@qq.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1381821000', '0', null, '1381821000', 'vglhn', '1', null, null);
INSERT INTO `yqt_users` VALUES ('192', 'a123456', 'e10adc3949ba59abbe56e057f20f883e', 'to@tom.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1384601098', '0', null, '1384601098', 'f5i7y', '1', null, null);
INSERT INTO `yqt_users` VALUES ('193', 'a1234563', 'e10adc3949ba59abbe56e057f20f883e', 'to21@tom.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1384601210', '0', null, '1384601210', 'uo6tj', '1', null, null);
INSERT INTO `yqt_users` VALUES ('194', 'test', 'e10adc3949ba59abbe56e057f20f883e', 'callmecutejessie@gmail.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1384601296', '0', null, '1387895731', 'knro6', '1', null, null);
INSERT INTO `yqt_users` VALUES ('195', 'blar', '101a6ec9f938885df0a44f20458d2eb4', 'blar@haha.com', '', '2', '0', '', '', '', '', '0', '', '', '', null, '8385', '668.13', null, '1388947952', '1391788459', null, '1389195345', 'edf14', '1', '', '');
INSERT INTO `yqt_users` VALUES ('196', 'erifan', '1c63129ae9db9c60c3e8aa94d3e00495', 'erifan@live.cn', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1389779642', '0', null, '1389779642', 'kuagl', '1', null, null);
INSERT INTO `yqt_users` VALUES ('197', '测试', '8f76e86c54da27e0abb1a3605fb5d440', '2323@qq.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1393320951', '0', null, '1393320951', 'h8zsk', '1', null, null);
INSERT INTO `yqt_users` VALUES ('198', 'lin65487136', '1904cb3b544f50acf28eab1d1ad59a3d', 'lin910423@me.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1396269077', '0', null, '1396273164', 'jbfl9', '1', null, null);
INSERT INTO `yqt_users` VALUES ('199', 'aaaa', '1d5d86e896b05a4a2fb32b64698c792e', 'asdf@asdf.com', '', '0', '0', '', '', '', '', '0', '', '', '', null, '200', '322130.00', null, '1401614880', '0', null, '1401614880', 's32m1', '1', '', '');
INSERT INTO `yqt_users` VALUES ('200', 'imjacky', '140f34da36c7fb2ac042fa2475d1a1e0', 'imjacky@163.com', '', '0', '0', '', '', '', '', '0', '', '', '', null, '200', '638.00', null, '1402645632', '0', null, '1402904480', '03r3l', '1', '', '');
INSERT INTO `yqt_users` VALUES ('201', 'testtest', '05a671c66aefea124cc08b76ea6d30bb', 'szcentruer@163.com', '发给三个', '0', '1', '846154652', '323233', '', '萨芬一体化突然间缓解高房价', '0', '', '中国', '', '', '2330', '17313.00', null, '1402655032', '0', null, '1402734153', 'pnczy', '1', '', '');
INSERT INTO `yqt_users` VALUES ('202', 'mxjyweb', '048efefca2d1173a281ab895cbbc2ff3', 'mxjyweb@cc.com', '', '0', '0', '', '', '', '', '0', '', '', '', null, '200', '9862.00', null, '1402733214', '0', null, '1402733214', 'zr95w', '1', '', '');
INSERT INTO `yqt_users` VALUES ('203', 'igoyi', '68503a7c20703dafbe992972f3fd2d76', '542081876@qq.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1402810361', '0', null, '1404372700', 't56nf', '1', null, null);
INSERT INTO `yqt_users` VALUES ('204', 'aaronting87', '77351eceac1320f8e734c401ca6a21c0', 'aaron@mcsc.com.my', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1403249456', '0', null, '1404366045', 'sk5cy', '1', null, null);
INSERT INTO `yqt_users` VALUES ('205', 'zynet', 'fcea920f7412b5da7be0cf42b8c93759', '64654564@qq.com', null, '0', '0', '', null, '', null, '', '', null, null, null, '200', '0.00', null, '1404285058', '0', null, '1404285058', 'nxqmp', '1', null, null);
INSERT INTO `yqt_users` VALUES ('206', 'xuhuachen', '39328e050d73724e6003ea4a475d0a22', '609919404@qq.com', '', '0', '0', '', '', '', '', '0', '', '', '', null, '200', '62088.00', null, '1404728813', '0', null, '1404728813', '3dyt1', '1', '', '');
