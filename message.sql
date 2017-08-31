/*
Navicat MySQL Data Transfer

Source Server         : newObj
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ttyk

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-15 19:36:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `student_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', '1', '你好帅啊', '我觉得也是', '2017081511', '201708150345', '该吃药了，小病号', '20170802');
INSERT INTO `message` VALUES ('2', '1', '1', '你这么说不丢人', '还好吧', '2017081512', '201708150335', '来吃药啊，包治百病', '20170803');
INSERT INTO `message` VALUES ('3', '1', '2', '厚颜无耻', '谢谢', '2017081513', '201708150352', '没与协作精神', '20170804');
INSERT INTO `message` VALUES ('4', '1', '2', '明天吃啥', '啥都行', '2017081514', '201708150300', '劳逸结合', '20170805');
INSERT INTO `message` VALUES ('5', '2', '2', '猪肉扒', '好的好的', '2017081522', '201708150333', '出来嗨', '20170806');
INSERT INTO `message` VALUES ('6', '2', '3', '太好了', '嗯嗯', '201708154', '201708150322', '英语要记得背单词哦', '20170807');
INSERT INTO `message` VALUES ('7', '2', '2', '我喜欢吃猪肉', '煮肉好吃啊', '2017081554', '201708150312', '数学题库有更新', '20170808');
INSERT INTO `message` VALUES ('8', '2', '3', '羊肉也好吃', '嗯嗯，羊肉好吃', '2017081554', '201708150357', '物理最近感觉怎么样', '20170809');
INSERT INTO `message` VALUES ('9', '3', '1', '你有女朋友吗', '我没有，你呢', '201708151', '201708150354', '化学难不难啊', '20170811');
INSERT INTO `message` VALUES ('10', '3', '2', '我也没有', '单身狗，不谢', '2017081511', '201708150307', '该吃药了', '20170812');
INSERT INTO `message` VALUES ('11', '1', '1', '你去死吧', '哈哈哈哈', '2017081577', '201708150305', '吃药时间到', '20170815');
