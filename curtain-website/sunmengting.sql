/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : sunmengting

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-07-08 12:07:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(300) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '好的好的');
INSERT INTO `comments` VALUES ('2', '这个窗帘还可以');
INSERT INTO `comments` VALUES ('3', '还行还行');
INSERT INTO `comments` VALUES ('4', '可以');
INSERT INTO `comments` VALUES ('5', 'hhahhha');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `shopping_name` varchar(255) NOT NULL,
  `shopping_money` varchar(255) NOT NULL,
  `shopping_num` int(11) NOT NULL,
  `adress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `birth` varchar(255) NOT NULL,
  `e-mail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` int(11) NOT NULL,
  `user_name` text CHARACTER SET gbk NOT NULL,
  `picture_url` varchar(512) NOT NULL,
  `picture` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES ('1', '热情粉色', 'img/热情粉色1.png', 'thing.html');
INSERT INTO `search` VALUES ('2', '绿色素颜', 'img/绿色素雅1.png', '');
INSERT INTO `search` VALUES ('3', '蓝色经典', 'img/蓝色经典1.png', '');
INSERT INTO `search` VALUES ('4', '日系简约', 'img/日系简约1.png', '');

-- ----------------------------
-- Table structure for select
-- ----------------------------
DROP TABLE IF EXISTS `select`;
CREATE TABLE `select` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopping_price` decimal(10,2) NOT NULL,
  `shoping_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of select
-- ----------------------------

-- ----------------------------
-- Table structure for shopping
-- ----------------------------
DROP TABLE IF EXISTS `shopping`;
CREATE TABLE `shopping` (
  `id` int(11) DEFAULT NULL,
  `shopping_name` varchar(255) DEFAULT NULL,
  `shopping_money` varchar(255) DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping
-- ----------------------------
INSERT INTO `shopping` VALUES ('1', '热情粉色', '¥1600', 'img/热情粉色.jpg');
INSERT INTO `shopping` VALUES ('2', '蓝色经典', '¥1560', 'img/蓝色经典.jpg');
INSERT INTO `shopping` VALUES ('3', '绿色素雅', '¥2300', 'img/绿色素雅.jpg');
INSERT INTO `shopping` VALUES ('4', '日系简约', '¥2332', 'img/日系简约.jpg');
INSERT INTO `shopping` VALUES ('5', '书香典雅', '¥2010', 'img/书香典雅.jpg');
INSERT INTO `shopping` VALUES ('6', '可爱翠花', '¥1320', 'img/可爱翠花.jpg');
INSERT INTO `shopping` VALUES ('7', '高档尼龙', '¥3400', 'img/高档尼龙.jpg');

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `id` int(11) NOT NULL,
  `shopping_name` varchar(255) NOT NULL,
  `shopping_price` varchar(100) NOT NULL,
  `shopping_information` varchar(200) NOT NULL,
  `picture_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES ('1', '热情粉色', '¥1600', '一件', 'img/热情粉色.jpg');

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `picture_url` varchar(512) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of uploads
-- ----------------------------
INSERT INTO `uploads` VALUES ('1', '热情粉色', '¥1600', '\\upload\\upload_7964cfe3ffb52717160aedbdc58ddddb.jpg');
INSERT INTO `uploads` VALUES ('2', '蓝色经典', '¥1560', '\\upload\\upload_2b4158973bfb7f8b9121567c8fb7529a.jpg');
INSERT INTO `uploads` VALUES ('3', '绿色素雅', '¥2300', '\\upload\\upload_81ffc580ebeb17c9a7c30118e3c0bbe7.jpg');
INSERT INTO `uploads` VALUES ('4', '日系简约', '¥2332', '\\upload\\upload_cca97651b9d9d09d7194785f1dfd03e7.jpg');
INSERT INTO `uploads` VALUES ('5', '书香典雅', '¥2010', '\\upload\\upload_3d06c7f496200090bd6723d9c8d32269.jpg');
INSERT INTO `uploads` VALUES ('6', '可爱翠花', '¥1320', '\\upload\\upload_b70998c12ec2eff615080d260fe93166.jpg');
INSERT INTO `uploads` VALUES ('7', '高档尼龙', '¥3400', '\\upload\\upload_bffd854b5be2c76bbd697e83be035d64.jpg');
INSERT INTO `uploads` VALUES ('8', '555', '4444', '\\upload\\upload_8d5777b4e69f5b6e1d0d138a9a2a956d.jpg');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '33', '444');
INSERT INTO `user_info` VALUES ('2', '4444', '5555');
INSERT INTO `user_info` VALUES ('3', '6666', '55555');
INSERT INTO `user_info` VALUES ('4', '6666', '7777');
INSERT INTO `user_info` VALUES ('5', '444', '11');
INSERT INTO `user_info` VALUES ('6', '444', '555');
INSERT INTO `user_info` VALUES ('7', '333', '11');
INSERT INTO `user_info` VALUES ('8', '康梓猪 ', '520');
INSERT INTO `user_info` VALUES ('9', '', '');
INSERT INTO `user_info` VALUES ('10', 'ssss', '123456');
INSERT INTO `user_info` VALUES ('11', 'ssss', '6666');
INSERT INTO `user_info` VALUES ('12', '123', '123');
INSERT INTO `user_info` VALUES ('13', '123', '456');
INSERT INTO `user_info` VALUES ('14', '', '');
INSERT INTO `user_info` VALUES ('15', '666666666', '55555');
INSERT INTO `user_info` VALUES ('16', '5555', '6666');
INSERT INTO `user_info` VALUES ('17', 'ttttt', '123456');
INSERT INTO `user_info` VALUES ('18', '1111', '2222');
INSERT INTO `user_info` VALUES ('19', '5556', '4444');
