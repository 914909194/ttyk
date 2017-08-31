/*
Navicat MySQL Data Transfer

Source Server         : blog
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : ttyk

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-08-21 09:52:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '呆呆的初学者',
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `beans` int(11) DEFAULT '0',
  `says` varchar(255) COLLATE utf8_unicode_ci DEFAULT '个性签名....',
  `tickets` int(11) DEFAULT '0',
  `attention_num` int(11) DEFAULT '0',
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT '/static/stuImg/s3.jpg',
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT '地球',
  `identify` int(11) DEFAULT '0',
  `skin` varchar(255) COLLATE utf8_unicode_ci DEFAULT '/static/img/skin/换肤1友谊唯美720.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '单老师', 'ss', 'ss', '男', '600', '一蓑烟雨任平生', '6', '1', '/static/stuImg/s1.jpg', '13351784272', '哈尔滨', '0', '/skin/换肤2七色花720.jpg');
INSERT INTO `student` VALUES ('2', '玉罗刹', 'aa', 'aa', '女', '800', '一顾倾人城,再顾倾人国', '6', '5', '/static/stuImg/3.jpg', '13351784272', '哈尔滨', '0', '/static/img/skin/换肤2七色花720.jpg');
INSERT INTO `student` VALUES ('3', '陈江', 'cc', 'cc', '男', '500', '学习使我快乐.', '1', '0', '/static/stuImg/s3.jpg', '13353422342', '四川', '0', '/static/img/skin/换肤1友谊唯美720.jpg');
INSERT INTO `student` VALUES ('4', '流川枫', 'qq', 'qq', '男', '200', '樱木花道是谁?', '1', '4', '/static/stuImg/s3.jpg', '13333333333', '哈尔滨', '0', '/static/img/skin/换肤1友谊唯美720.jpg');
