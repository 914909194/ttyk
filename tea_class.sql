/*
Navicat MySQL Data Transfer

Source Server         : chenjiang
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : ttyk

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-08-17 01:21:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tea_class`
-- ----------------------------
DROP TABLE IF EXISTS `tea_class`;
CREATE TABLE `tea_class` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_grade` varchar(255) DEFAULT NULL,
  `c_subject` varchar(255) DEFAULT NULL,
  `c_describe` varchar(255) DEFAULT NULL,
  `c_price` int(11) DEFAULT NULL,
  `c_method` varchar(255) DEFAULT NULL,
  `c_try` int(11) DEFAULT NULL,
  `c_time` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `c_num` int(11) DEFAULT '0',
  `t_tel` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tea_class
-- ----------------------------
INSERT INTO `tea_class` VALUES ('1', '1', '单伟', '高一', '前端开发', '黑龙江最牛X的前端课程', '100', '电话预约', '1', '2017.9.9', '2017.9.20', '学府写字楼912室', '0', '13234663826');
INSERT INTO `tea_class` VALUES ('2', '1', '单伟', '高二', '程序算法', '哈尔滨最高端的算法分析', '80', '电话预约', '0', '2017.9.9', '2017.9.20', '学府写字楼912室', '0', '13234663826');
INSERT INTO `tea_class` VALUES ('3', '2', '刘红玉', '初一', '物理', '物理大牛', '50', '电话预约', '1', '2017.9.9', '2017.9.20', '学府写字楼912室', '1', '13234663826');
INSERT INTO `tea_class` VALUES ('4', '2', '刘红玉', '初二', '化学', '带你飞的更高', '40', '电话预约', '0', '2017.9.9', '2017.9.20', '学府写字楼901室', '1', '13234663826');
INSERT INTO `tea_class` VALUES ('5', '3', '陈大江', '初三', '文学', '文艺青年欢乐多', '88', '见面详谈', '1', '2017.9.9', '2017.9.20', '学府写字楼901室', '0', '13234663826');
INSERT INTO `tea_class` VALUES ('6', '3', '陈大江', '高三', '音乐', '说了是文艺青年', '77', '电话预约', '0', '2017.9.9', '2017.9.20', '学府写字楼901室', '0', '13234663826');
INSERT INTO `tea_class` VALUES ('7', '4', '郑文华', '六年级', '语文', '美女一枚', '66', '电话预约', '1', '2017.9.9', '2017.9.20', '学府写字楼901室', '1', '13234663826');
INSERT INTO `tea_class` VALUES ('8', '4', '郑文华', '五年级', '数学', '本来吃亏', '55', '电话预约', '0', '2017.9.9', '2017.9.20', '学府写字楼901室', '0', '13234663826');
INSERT INTO `tea_class` VALUES ('9', '5', '田可', '一年级', '吃牛', '牛仔天上飞', '33', '电话预约', '1', '2017.9.9', '2017.9.20', '学府写字楼901室', '1', '13234663826');
INSERT INTO `tea_class` VALUES ('10', '5', '田可', '二年级', '生物', '牛羊成群', '45', '电话预约', '0', '2017.9.9', '2017.9.20', '学府写字楼901室', '0', '13234663826');
INSERT INTO `tea_class` VALUES ('11', '6', '金三胖', '大一', '核武器', '就问你怕不怕', '999', '见面详谈', '1', '2017.9.9', '2017.9.20', '学府写字楼901室', '0', '13234663826');
INSERT INTO `tea_class` VALUES ('12', '6', '金三胖', '大二', '理发', '看我发型就懂', '555', '见面详谈', '0', '2017.9.9', '2017.9.20', '学府写字楼901室', '1', '13234663826');
