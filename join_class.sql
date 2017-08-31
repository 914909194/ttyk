/*
 Navicat Premium Data Transfer

 Source Server         : ttyk
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : localhost
 Source Database       : ttyk

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : utf-8

 Date: 08/19/2017 16:40:14 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `join_class`
-- ----------------------------
DROP TABLE IF EXISTS `join_class`;
CREATE TABLE `join_class` (
  `j_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `c_subject` varchar(255) DEFAULT NULL,
  `join_time` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `t_tel` varchar(255) DEFAULT NULL,
  `j_state` int(11) DEFAULT NULL,
  `j_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`j_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
