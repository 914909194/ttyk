/*
Navicat MySQL Data Transfer

Source Server         : chenjiang
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : ttyk

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-08-13 12:47:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `honor`
-- ----------------------------
DROP TABLE IF EXISTS `honor`;
CREATE TABLE `honor` (
  `honor_id` int(11) NOT NULL AUTO_INCREMENT,
  `person` int(11) DEFAULT NULL,
  `honor_time` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `honor_medal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `honor_img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`honor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of honor
-- ----------------------------
INSERT INTO `honor` VALUES ('1', '1', '2016.08.01', '教师资格证书', '/static/honorImg/1.jpg');
INSERT INTO `honor` VALUES ('2', '1', '2016.08.01', '大学英语四级（425分过）', '/static/honorImg/.jpg');
INSERT INTO `honor` VALUES ('3', '2', '2016.08.01', '研究生证书', '/static/honorImg/3.jpg');
INSERT INTO `honor` VALUES ('4', '2', '2016.08.01', '大学英语六级（425分过）', '/static/honorImg/4.jpg');
INSERT INTO `honor` VALUES ('5', '3', '2016.08.01', '普通话证书', '/static/honorImg/1.jpg');
INSERT INTO `honor` VALUES ('6', '3', '2016.08.01', '国家二级计算机', '/static/honorImg/2.jpg');
INSERT INTO `honor` VALUES ('7', '4', '2016.08.01', '牛人证书', '/static/honorImg/3.jpg');
INSERT INTO `honor` VALUES ('8', '4', '2016.08.01', '傻子证书', '/static/honorImg/4.jpg');
INSERT INTO `honor` VALUES ('9', '5', '2016.08.01', '国家一级运动员', '/static/honorImg/1.jpg');
INSERT INTO `honor` VALUES ('10', '5', '2016.08.01', '模特证书', '/static/honorImg/1.jpg');
INSERT INTO `honor` VALUES ('11', '6', '2016.08.01', '旅游证书', '/static/honorImg/2.jpg');
INSERT INTO `honor` VALUES ('12', '6', '2016.08.01', '翻译官', '/static/honorImg/3.jpg');
INSERT INTO `honor` VALUES ('13', '6', '2016.08.01', '建筑师证书', '/static/honorImg/4.jpg');
