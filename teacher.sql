/*
Navicat MySQL Data Transfer

Source Server         : chenjiang
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : ttyk

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-08-13 13:45:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xueli` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dowell` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `major` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jianjie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `years` int(11) DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 DEFAULT '/static/teaImg/t1.jpg',
  `price1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `real_name` int(11) DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `wx_img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `identity` int(11) DEFAULT '1',
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '单伟', '男', '哈佛大学', '博士', '从事IT行业大牛，人人称赞', '道外区', '语文', '说人话', '主攻高中生物，对高中生物教材，习题以及高考串讲相关内容有详细了解，具备丰富的一对一，一对多经验。其次高中物理，对物理学科有独特的教学方法，主讲知识点以及答题技巧，只讲精髓通俗易懂，让学生不再惧怕物理学科，补习学生反馈进步很大。另外英语具备大学四六级考试证书，可以带小学初中的英语教学，并以与相应的普通口语教学。', '8', '/static/teaImg/t1.jpg', '666', '80', '1', '一年级二年级', '/static/wxImg/1.gif', '1', 'sw', 'sw');
INSERT INTO `teacher` VALUES ('2', '刘红玉', '男', '剑桥大学', '博士', '烤串行业一条龙', '道里区', '数学', '计算机', '主攻高中生物，对高中生物教材，习题以及高考串讲相关内容有详细了解，具备丰富的一对一，一对多经验。其次高中物理，对物理学科有独特的教学方法，主讲知识点以及答题技巧，只讲精髓通俗易懂，让学生不再惧怕物理学科，补习学生反馈进步很大。另外英语具备大学四六级考试证书，可以带小学初中的英语教学，并以与相应的普通口语教学', '4', '/static/teaImg/t2.jpg', '77', '70', '1', '三年级四年级', '/static/wxImg/1.gif', '1', 'lhy', 'lhy');
INSERT INTO `teacher` VALUES ('3', '陈大江', '男', '加里敦大学', '本科', '学府四道街扛把子', '南岗区', '英语', '自动化', '主攻高中生物，对高中生物教材，习题以及高考串讲相关内容有详细了解，具备丰富的一对一，一对多经验。其次高中物理，对物理学科有独特的教学方法，主讲知识点以及答题技巧，只讲精髓通俗易懂，让学生不再惧怕物理学科，补习学生反馈进步很大。另外英语具备大学四六级考试证书，可以带小学初中的英语教学，并以与相应的普通口语教学', '3', '/static/teaImg/t3.jpg', '888', '60', '1', '五年级六年级七年级', '/static/wxImg/1.gif', '1', 'cdj', 'cdj');
INSERT INTO `teacher` VALUES ('4', '郑文华', '女', '黑龙江大学', '本科', '学府第一美女', '香坊区', '化学', '会计', '主攻高中生物，对高中生物教材，习题以及高考串讲相关内容有详细了解，具备丰富的一对一，一对多经验。其次高中物理，对物理学科有独特的教学方法，主讲知识点以及答题技巧，只讲精髓通俗易懂，让学生不再惧怕物理学科，补习学生反馈进步很大。另外英语具备大学四六级考试证书，可以带小学初中的英语教学，并以与相应的普通口语教学', '2', '/static/teaImg/t4.jpg', '999', '50', '1', '七年级八年级', '/static/wxImg/1.gif', '1', 'zwh', 'zwh');
INSERT INTO `teacher` VALUES ('5', '田可', '女', '哈理工大学', '本科', '虽面目可憎，但内心龌龊', '平房区', '物理', '软件工程', '主攻高中生物，对高中生物教材，习题以及高考串讲相关内容有详细了解，具备丰富的一对一，一对多经验。其次高中物理，对物理学科有独特的教学方法，主讲知识点以及答题技巧，只讲精髓通俗易懂，让学生不再惧怕物理学科，补习学生反馈进步很大。另外英语具备大学四六级考试证书，可以带小学初中的英语教学，并以与相应的普通口语教学', '2', '/static/teaImg/t5.jpg', '200', '40', '1', '九年级高一', '/static/wxImg/1.gif', '1', 'tk', 'tk');
INSERT INTO `teacher` VALUES ('6', '金三胖', '女', '平壤帝国大学', '大专', '棒子国大王，人称猪三百', '呼兰区', '艺术特长', '核武器', '举头三尺有神明', '10', '/static/teaImg/1.jpg', '200', '40', '1', '高二高三', '/static/wxImg/1.gif', '1', 'jsp', 'jsp');
