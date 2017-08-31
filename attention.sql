/*
Navicat MySQL Data Transfer

Source Server         : blog
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : ttyk

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-08-13 14:00:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `attention`
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `t_id` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES ('1', '2', '1');
INSERT INTO `attention` VALUES ('2', '2', '2');
INSERT INTO `attention` VALUES ('3', '2', '3');
INSERT INTO `attention` VALUES ('4', '2', '4');
INSERT INTO `attention` VALUES ('5', '2', '5');
INSERT INTO `attention` VALUES ('6', '2', '6');
INSERT INTO `attention` VALUES ('7', '4', '1');
INSERT INTO `attention` VALUES ('8', '4', '2');
INSERT INTO `attention` VALUES ('9', '4', '4');
INSERT INTO `attention` VALUES ('10', '4', '5');
