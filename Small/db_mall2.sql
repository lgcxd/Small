/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_mall2

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-08-06 20:18:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ad_users_id` int(10) DEFAULT NULL COMMENT '用户id',
  `ad_desc` varchar(25) DEFAULT NULL COMMENT '地址详情',
  `ad_defult` tinyint(5) DEFAULT NULL COMMENT '是否默认地址',
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '河南省安阳市文峰区安阳工学院', '1');
INSERT INTO `address` VALUES ('2', '4', '河南省郑州市金水区河南教育学院（经五路纬五路）', '1');
INSERT INTO `address` VALUES ('3', '1', '河南省民权县顺河乡镇', '0');
INSERT INTO `address` VALUES ('4', '3', '河南省商丘市商丘市区', '1');
INSERT INTO `address` VALUES ('5', '4', '山东省菏泽市菏泽市区税务局', '0');
INSERT INTO `address` VALUES ('6', '5', '河南省商丘市商丘市区火车站18号', '1');
INSERT INTO `address` VALUES ('7', '6', '河南省商丘市商丘市区古龙公安局', '1');
INSERT INTO `address` VALUES ('8', '7', '山东省曹县斜道口村', '1');
INSERT INTO `address` VALUES ('9', '3', '安徽省合肥市区火车站附近', '0');
INSERT INTO `address` VALUES ('10', '8', '江苏省苏州市高新区', '1');
INSERT INTO `address` VALUES ('11', '9', '江苏省杭州市区', '1');
INSERT INTO `address` VALUES ('12', '8', '河南省焦作市河南理工大学', '0');
INSERT INTO `address` VALUES ('13', '9', '河南省开封市开封大学', '0');
INSERT INTO `address` VALUES ('14', '5', '河南省洛阳市洛阳理工', '0');
INSERT INTO `address` VALUES ('15', '6', '河南省洛阳市河南科技大学', '0');
INSERT INTO `address` VALUES ('16', '3', '河南省郑州市郑大新校区', '0');
INSERT INTO `address` VALUES ('17', '2', '山东省山东大学老校区', '1');
INSERT INTO `address` VALUES ('18', '1', '河南省商丘市梁园区', '0');
INSERT INTO `address` VALUES ('19', '10', '河南省周口市', '1');
INSERT INTO `address` VALUES ('20', '10', '河南省驻马店', '0');
INSERT INTO `address` VALUES ('21', '11', '河南省洛阳白马寺', '1');
INSERT INTO `address` VALUES ('22', '1', '南京', '0');

-- ----------------------------
-- Table structure for express
-- ----------------------------
DROP TABLE IF EXISTS `express`;
CREATE TABLE `express` (
  `e_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `e_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of express
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `g_id` varchar(255) NOT NULL COMMENT '商品id',
  `g_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `g_price` float DEFAULT NULL COMMENT '商品价格',
  `g_picture` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `g_salecount` int(10) DEFAULT NULL COMMENT '商品销量',
  `g_count` int(10) DEFAULT NULL COMMENT '商品库存数量',
  `g_desc` text COMMENT '商品详细描述',
  `g_createtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `gt_id` int(10) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('aaaaaaaaaiphone', 'iphone4', '2000', '暂时不能提供图片', '8', '23', '我是苹果，不是能吃的苹果', '2017-08-06 18:14:48', '1');
INSERT INTO `goods` VALUES ('aaaaaaaaaiphone1', 'iphon4s', '2889.9', '暂时不能提供图片', '3', '41', '我是苹果，不是能吃的苹果，我升级了', '2017-08-05 17:00:14', '2');
INSERT INTO `goods` VALUES ('aaaaaaaaaiphone2', 'iphon4c', '999.9', '暂时不能提供图片', '4', '42', '是苹果，不是能吃的苹果，我跟他们是一样的', '2017-08-06 18:14:32', '1');
INSERT INTO `goods` VALUES ('aaaaaaaaaiphone50', 'iphone5', '3199.9', '暂时不能提供图片', '2', '43', '我是苹果，不是能吃的苹果，我升级了.。版本', '2017-08-05 17:00:19', '2');
INSERT INTO `goods` VALUES ('aaaaaaaaaiphone51', 'iphone5s', '3899.9', '暂时不能提供图片', '5', '41', '我是苹果，不是能吃的苹果，我升级了版本也升级', '2017-08-05 17:00:22', '2');
INSERT INTO `goods` VALUES ('aaaaaaaaaiphone52', 'iphone5c', '1999.9', '暂时不能提供图片', '6', '40', '我是苹果，不是能吃的苹果，我跟他们一样', '2017-08-06 18:14:34', '3');
INSERT INTO `goods` VALUES ('aegfdxbgj1212', '华为3.0', '1689.9', '暂时不能提供图片', '4', '45', '我这么棒，不选我选谁？', '2017-08-05 17:00:00', '2');
INSERT INTO `goods` VALUES ('aegfdxbgj1213', '华为3.0升级版', '2199.9', '暂时不能提供图片', '6', '3', '加强版', '2017-08-06 18:14:51', '1');
INSERT INTO `goods` VALUES ('bbbbbbbbbbbbb12', '三星手机', '2599.9', '暂时不能提供图片', '8', '44', '我们是最牛的，专业的', '2017-08-05 17:00:08', '2');
INSERT INTO `goods` VALUES ('bbbbbbbbbbbbb13', '三星手机33', '3199.9', '暂时不能提供图片', '9', '43', '们是最牛的，专业的升级', '2017-08-06 18:14:35', '4');
INSERT INTO `goods` VALUES ('bbbbbbbbbbbbb14', '三星手机44', '3999.9', '暂时不能提供图片', '9', '42', '这是一款非常牛逼的手机，你值得拥有', '2017-08-05 17:00:12', '2');
INSERT INTO `goods` VALUES ('fasbunber1', '小米手机note1', '2000', 'wqqeqrtq', '2', '19', '小米升级版', '2017-08-05 16:59:35', '2');
INSERT INTO `goods` VALUES ('fasdgasdga1243', '小米note2', '1999.9', '暂时不能提供图片', '3', '34', '这是一款非常牛逼的手机，你值得拥有', '2017-08-06 18:14:39', '1');
INSERT INTO `goods` VALUES ('fasdgasdga1244', '小米note3', '23999.9', '暂时不能提供图片', '4', '45', '这是一款非常牛逼的手机，是你选择手机的绝佳品牌', '2017-08-06 18:14:41', '3');
INSERT INTO `goods` VALUES ('fasdgasdga1245', '小米note2', '1999.9', '暂时不能提供图片', '6', '34', '这是一款非常牛逼的手机，你值得拥有', '2017-08-05 16:59:29', '2');
INSERT INTO `goods` VALUES ('fasdgasdgafgadgadfg', '小米手机', '1999', '无图,请自行脑补', '6', '50', '小米,为发烧而生', '2017-08-06 18:14:45', '4');

-- ----------------------------
-- Table structure for goods_copy
-- ----------------------------
DROP TABLE IF EXISTS `goods_copy`;
CREATE TABLE `goods_copy` (
  `g_id` varchar(255) NOT NULL COMMENT '商品id',
  `g_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `g_price` float DEFAULT NULL COMMENT '商品价格',
  `g_picture` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `g_salecount` int(10) DEFAULT NULL COMMENT '商品销量',
  `g_count` int(10) DEFAULT NULL COMMENT '商品库存数量',
  `g_desc` text COMMENT '商品详细描述',
  `g_createtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `gt_id` int(10) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_copy
-- ----------------------------
INSERT INTO `goods_copy` VALUES ('aaaaaaaaaiphone', 'iphone4', '2000', '暂时不能提供图片', '8', '23', '我是苹果，不是能吃的苹果', '2017-08-05 17:00:06', '2');
INSERT INTO `goods_copy` VALUES ('aaaaaaaaaiphone1', 'iphon4s', '2889.9', '暂时不能提供图片', '3', '41', '我是苹果，不是能吃的苹果，我升级了', '2017-08-05 17:00:14', '2');
INSERT INTO `goods_copy` VALUES ('aaaaaaaaaiphone2', 'iphon4c', '999.9', '暂时不能提供图片', '4', '42', '是苹果，不是能吃的苹果，我跟他们是一样的', '2017-08-05 17:00:17', '2');
INSERT INTO `goods_copy` VALUES ('aaaaaaaaaiphone50', 'iphone5', '3199.9', '暂时不能提供图片', '2', '43', '我是苹果，不是能吃的苹果，我升级了.。版本', '2017-08-05 17:00:19', '2');
INSERT INTO `goods_copy` VALUES ('aaaaaaaaaiphone51', 'iphone5s', '3899.9', '暂时不能提供图片', '5', '41', '我是苹果，不是能吃的苹果，我升级了版本也升级', '2017-08-05 17:00:22', '2');
INSERT INTO `goods_copy` VALUES ('aaaaaaaaaiphone52', 'iphone5c', '1999.9', '暂时不能提供图片', '6', '40', '我是苹果，不是能吃的苹果，我跟他们一样', '2017-08-05 17:00:04', '2');
INSERT INTO `goods_copy` VALUES ('aegfdxbgj1212', '华为3.0', '1689.9', '暂时不能提供图片', '4', '45', '我这么棒，不选我选谁？', '2017-08-05 17:00:00', '2');
INSERT INTO `goods_copy` VALUES ('aegfdxbgj1213', '华为3.0升级版', '2199.9', '暂时不能提供图片', '6', '3', '加强版', '2017-08-05 17:00:03', '2');
INSERT INTO `goods_copy` VALUES ('bbbbbbbbbbbbb12', '三星手机', '2599.9', '暂时不能提供图片', '8', '44', '我们是最牛的，专业的', '2017-08-05 17:00:08', '2');
INSERT INTO `goods_copy` VALUES ('bbbbbbbbbbbbb13', '三星手机33', '3199.9', '暂时不能提供图片', '9', '43', '们是最牛的，专业的升级', '2017-08-05 17:00:10', '2');
INSERT INTO `goods_copy` VALUES ('bbbbbbbbbbbbb14', '三星手机44', '3999.9', '暂时不能提供图片', '9', '42', '这是一款非常牛逼的手机，你值得拥有', '2017-08-05 17:00:12', '2');
INSERT INTO `goods_copy` VALUES ('fasbunber1', '小米手机note1', '2000', 'wqqeqrtq', '2', '19', '小米升级版', '2017-08-05 16:59:35', '2');
INSERT INTO `goods_copy` VALUES ('fasdgasdga1243', '小米note2', '1999.9', '暂时不能提供图片', '3', '34', '这是一款非常牛逼的手机，你值得拥有', '2017-08-05 16:59:40', '2');
INSERT INTO `goods_copy` VALUES ('fasdgasdga1244', '小米note3', '23999.9', '暂时不能提供图片', '4', '45', '这是一款非常牛逼的手机，是你选择手机的绝佳品牌', '2017-08-05 16:58:44', '2');
INSERT INTO `goods_copy` VALUES ('fasdgasdga1245', '小米note2', '1999.9', '暂时不能提供图片', '6', '34', '这是一款非常牛逼的手机，你值得拥有', '2017-08-05 16:59:29', '2');
INSERT INTO `goods_copy` VALUES ('fasdgasdgafgadgadfg', '小米手机', '1999', '无图,请自行脑补', '6', '50', '小米,为发烧而生', '2017-08-05 17:00:11', '2');

-- ----------------------------
-- Table structure for good_types
-- ----------------------------
DROP TABLE IF EXISTS `good_types`;
CREATE TABLE `good_types` (
  `gt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gt_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good_types
-- ----------------------------
INSERT INTO `good_types` VALUES ('1', '大件电器');
INSERT INTO `good_types` VALUES ('2', '手机');
INSERT INTO `good_types` VALUES ('3', '日用品');
INSERT INTO `good_types` VALUES ('4', '衣服');

-- ----------------------------
-- Table structure for good_warning
-- ----------------------------
DROP TABLE IF EXISTS `good_warning`;
CREATE TABLE `good_warning` (
  `g_id` varchar(255) NOT NULL,
  `warn_ty` int(10) unsigned DEFAULT NULL COMMENT '是否预警'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good_warning
-- ----------------------------
INSERT INTO `good_warning` VALUES ('fasdgasdga1243', '1');
INSERT INTO `good_warning` VALUES ('fasdgasdgafgadgadfg', '0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `or_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `or_code` varchar(255) NOT NULL COMMENT '订单编号',
  `or_user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `or_create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `or_send` tinyint(5) DEFAULT NULL COMMENT '配送方式',
  `or_address_id` int(10) DEFAULT NULL COMMENT '收货地址id',
  `or_payment` tinyint(5) DEFAULT NULL COMMENT '付款方式',
  `or_ispay` tinyint(5) DEFAULT NULL COMMENT '是否付款',
  `or_total` float DEFAULT NULL COMMENT '订单总金额',
  `or_status` tinyint(5) DEFAULT NULL COMMENT '订单状态',
  `or_exp_code` varchar(255) DEFAULT NULL COMMENT '物流单号',
  `or_exp_id` varchar(255) DEFAULT NULL COMMENT '物流信息',
  `or_cont_name` varchar(255) DEFAULT NULL COMMENT '操作员',
  `return_time` datetime DEFAULT NULL COMMENT '退单时间',
  `return_status` tinyint(5) DEFAULT NULL COMMENT '退单状态',
  PRIMARY KEY (`or_code`),
  KEY `or_id` (`or_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('5', '1111', '1', '2017-08-01 21:25:46', '1', null, '1', '1', '12', '1', '1', '1', '1', '2017-08-01 21:25:59', '2');
INSERT INTO `orders` VALUES ('4', '1112', '3', '2017-08-01 21:21:34', '1', null, '1', '1', '122', '1', '1', '1', '1', '2017-08-01 21:21:48', '2');
INSERT INTO `orders` VALUES ('3', '12312', '2', '2017-08-01 21:21:11', '1', null, '1', '1', '114', '1', '1', '1', '1', '2017-08-01 21:20:37', '2');
INSERT INTO `orders` VALUES ('1', '123412', '2', '2017-07-04 18:58:52', '1', null, '1', '2', '2121', '1', '1', '1', '1', '2017-07-20 18:59:07', '2');
INSERT INTO `orders` VALUES ('18', '1501846073285', '2', '2017-08-04 19:27:53', '2', null, '2', '1', '26989', '1', null, null, null, null, null);
INSERT INTO `orders` VALUES ('61', '1501936724915', '3', '2017-08-05 20:38:45', '2', null, '2', '1', '3998.9', '1', null, null, null, null, null);
INSERT INTO `orders` VALUES ('62', '1501936875450', '3', '2017-08-05 20:41:15', '2', null, '2', '1', '2199.9', '1', null, null, null, null, null);
INSERT INTO `orders` VALUES ('63', '1501937113422', '3', '2017-08-05 20:45:13', '2', null, '2', '1', '2199.9', '1', null, null, null, null, null);
INSERT INTO `orders` VALUES ('64', '1501937276946', '3', '2017-08-05 20:47:57', '2', null, '2', '1', '2599.9', '1', null, null, null, null, null);
INSERT INTO `orders` VALUES ('65', '1501937852233', '3', '2017-08-05 20:57:32', '2', null, '2', '1', '3199.9', '1', null, null, null, null, null);
INSERT INTO `orders` VALUES ('66', '1501937990716', '3', '2017-08-05 20:59:51', '2', null, '2', '1', '2000', '1', null, null, null, null, null);
INSERT INTO `orders` VALUES ('67', '1501938090968', '3', '2017-08-05 21:01:31', '2', null, '2', '1', '2199.9', '1', null, null, null, null, null);
INSERT INTO `orders` VALUES ('68', '1501939402358', '3', '2017-08-05 21:23:22', '2', null, '2', '1', '1689.9', '1', null, null, null, null, null);
INSERT INTO `orders` VALUES ('69', '1501939570739', '3', '2017-08-05 21:26:11', '2', null, '2', '1', '4599.8', '1', null, null, null, null, null);
INSERT INTO `orders` VALUES ('70', '1501939829003', '3', '2017-08-05 21:30:29', '2', null, '2', '1', '3999.9', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `or_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `or_item_order_id` varchar(255) NOT NULL COMMENT '订单编号',
  `or_item_good_id` varchar(255) NOT NULL COMMENT '商品id',
  `or_item_num` int(10) DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`or_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('57', '1501936724915', 'fasdgasdgafgadgadfg', '1');
INSERT INTO `order_item` VALUES ('58', '1501936724915', 'aaaaaaaaaiphone52', '1');
INSERT INTO `order_item` VALUES ('59', '1501936875450', 'aegfdxbgj1213', '1');
INSERT INTO `order_item` VALUES ('60', '1501937113422', 'aegfdxbgj1213', '1');
INSERT INTO `order_item` VALUES ('61', '1501937276946', 'bbbbbbbbbbbbb12', '1');
INSERT INTO `order_item` VALUES ('62', '1501937852233', 'bbbbbbbbbbbbb13', '1');
INSERT INTO `order_item` VALUES ('63', '1501937990716', 'fasbunber1', '1');
INSERT INTO `order_item` VALUES ('64', '1501938090968', 'aegfdxbgj1213', '1');
INSERT INTO `order_item` VALUES ('65', '1501939402358', 'aegfdxbgj1212', '1');
INSERT INTO `order_item` VALUES ('66', '1501939570739', 'fasdgasdga1243', '1');
INSERT INTO `order_item` VALUES ('67', '1501939570739', 'bbbbbbbbbbbbb12', '1');
INSERT INTO `order_item` VALUES ('68', '1501939829003', 'bbbbbbbbbbbbb14', '1');

-- ----------------------------
-- Table structure for perms
-- ----------------------------
DROP TABLE IF EXISTS `perms`;
CREATE TABLE `perms` (
  `p_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of perms
-- ----------------------------
INSERT INTO `perms` VALUES ('1', 'user:select');
INSERT INTO `perms` VALUES ('2', 'user:update');
INSERT INTO `perms` VALUES ('3', 'user:delete');
INSERT INTO `perms` VALUES ('4', 'user:insert');
INSERT INTO `perms` VALUES ('5', '*:*');

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `res_id` int(10) DEFAULT NULL,
  `res_name` varchar(255) DEFAULT NULL,
  `res_path` varchar(255) DEFAULT NULL,
  `_parentId` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('1', '资源管理', null, null);
INSERT INTO `resources` VALUES ('11', '用户管理', 'user.jsp', '1');
INSERT INTO `resources` VALUES ('12', '角色管理', 'roles.jsp', '1');
INSERT INTO `resources` VALUES ('13', '权限管理', 'qx.jsp', '1');
INSERT INTO `resources` VALUES ('14', '商品管理', null, '1');
INSERT INTO `resources` VALUES ('15', '订单管理', null, '1');
INSERT INTO `resources` VALUES ('16', '备用1', null, '1');
INSERT INTO `resources` VALUES ('17', '备用2', null, '1');
INSERT INTO `resources` VALUES ('141', '商品管理', 'good.jsp', '14');
INSERT INTO `resources` VALUES ('142', '商品预警', 'warning.jsp', '14');
INSERT INTO `resources` VALUES ('143', '商品备用', null, '14');
INSERT INTO `resources` VALUES ('144', '商品备用', null, '14');
INSERT INTO `resources` VALUES ('151', '订单管理', 'order.jsp', '15');
INSERT INTO `resources` VALUES ('152', '发货管理', 'sendgood.jsp', '15');
INSERT INTO `resources` VALUES ('153', '退货管理', null, '15');
INSERT INTO `resources` VALUES ('154', '订单管理备用', null, '15');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `r_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `r_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '普通用户');
INSERT INTO `roles` VALUES ('2', '管理员');
INSERT INTO `roles` VALUES ('3', '订单管理员');
INSERT INTO `roles` VALUES ('4', '商品管理员');

-- ----------------------------
-- Table structure for roles_perms
-- ----------------------------
DROP TABLE IF EXISTS `roles_perms`;
CREATE TABLE `roles_perms` (
  `r_id` int(10) DEFAULT NULL,
  `p_id` int(10) DEFAULT NULL,
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_perms
-- ----------------------------
INSERT INTO `roles_perms` VALUES ('2', '1', '1');

-- ----------------------------
-- Table structure for roles_res
-- ----------------------------
DROP TABLE IF EXISTS `roles_res`;
CREATE TABLE `roles_res` (
  `r_id` int(10) DEFAULT NULL,
  `res_id` int(10) DEFAULT NULL,
  `key_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_res
-- ----------------------------
INSERT INTO `roles_res` VALUES ('2', '1', '12');
INSERT INTO `roles_res` VALUES ('2', '11', '13');
INSERT INTO `roles_res` VALUES ('2', '12', '14');
INSERT INTO `roles_res` VALUES ('2', '13', '15');
INSERT INTO `roles_res` VALUES ('2', '14', '16');
INSERT INTO `roles_res` VALUES ('2', '15', '17');
INSERT INTO `roles_res` VALUES ('2', '16', '18');
INSERT INTO `roles_res` VALUES ('2', '141', '19');
INSERT INTO `roles_res` VALUES ('2', '142', '20');
INSERT INTO `roles_res` VALUES ('2', '143', '21');
INSERT INTO `roles_res` VALUES ('2', '151', '22');
INSERT INTO `roles_res` VALUES ('2', '152', '23');
INSERT INTO `roles_res` VALUES ('2', '153', '24');
INSERT INTO `roles_res` VALUES ('2', '154', '25');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `u_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) DEFAULT NULL,
  `u_pwd` varchar(255) DEFAULT NULL,
  `u_createtime` datetime DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'aa', '4225bd0b9436c380097025bb217b4a13', '2017-07-30 15:46:08', '12306@qq.com');
INSERT INTO `users` VALUES ('2', 'bb', '22ae0cd937ba0e09f5d0650c4d2a8f7d', '2017-07-30 15:46:12', '12307@qq.com');
INSERT INTO `users` VALUES ('3', 'cc', 'e1333b913aaed3988cf6b59651582d7d', '2017-07-30 15:46:23', '12308@qq.com');
INSERT INTO `users` VALUES ('10', 'yang', 'e20bdd3a4abb5aacbf57e158f310893f', '2017-08-05 17:44:49', '1085503600@qq.com');
INSERT INTO `users` VALUES ('11', 'dd', '1bacad6e078ff06b7cae40e051a15dc9', '2017-08-05 17:45:02', 'dd@dd.com');
INSERT INTO `users` VALUES ('12', 'ee', '09a5425f9e5a50fa61040c931e43ba1f', '2017-08-05 17:45:33', 'ee@ee.com');
INSERT INTO `users` VALUES ('13', 'ff', '643ee5b1c24da62fa3442b3d8b5d4d32', '2017-08-05 17:45:44', 'ff@ff.com');
INSERT INTO `users` VALUES ('14', 'uu', '6378e3a845615a995ecabdf1a5ad1b90', '2017-08-05 17:46:03', 'uu@uu.com');
INSERT INTO `users` VALUES ('15', '123', '212dba63ad5a085c974c08162e244c71', '2017-08-05 21:57:58', null);
INSERT INTO `users` VALUES ('16', 'as', 'fa71e3777e0dff76886fa958fa2f329c', '2017-08-05 22:02:17', null);
INSERT INTO `users` VALUES ('17', 'zx', 'e7c861b4226b52c757c6871e73d6c063', '2017-08-05 22:10:38', null);
INSERT INTO `users` VALUES ('18', 'sdf', 'da73a0ec759a2dc4492c360264a2a111', '2017-08-05 22:15:13', null);
INSERT INTO `users` VALUES ('19', 'cv', 'df3fc1ab2335ab1f3fe376bcc816c7ca', '2017-08-05 22:16:11', null);
INSERT INTO `users` VALUES ('20', 'df', 'f0f8d6dca42c4ea42e9b68a61a444e40', '2017-08-06 15:46:46', null);

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `u_id` int(10) DEFAULT NULL,
  `r_id` int(10) DEFAULT NULL,
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES ('1', '1', '1');
INSERT INTO `users_roles` VALUES ('2', '2', '2');
INSERT INTO `users_roles` VALUES ('3', '3', '3');
INSERT INTO `users_roles` VALUES ('4', '4', '4');
INSERT INTO `users_roles` VALUES ('10', '1', '5');
INSERT INTO `users_roles` VALUES ('11', '1', '6');
INSERT INTO `users_roles` VALUES ('12', '1', '7');
INSERT INTO `users_roles` VALUES ('13', '1', '8');
INSERT INTO `users_roles` VALUES ('14', '1', '9');
INSERT INTO `users_roles` VALUES ('17', '1', '10');
INSERT INTO `users_roles` VALUES ('18', '1', '11');
INSERT INTO `users_roles` VALUES ('19', '1', '12');
INSERT INTO `users_roles` VALUES ('20', '1', '13');
