/*
Navicat MySQL Data Transfer

Source Server         : chenjiang
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : ttyk

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-08-15 15:49:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comm_id` int(11) NOT NULL AUTO_INCREMENT,
  `comm_user` int(11) DEFAULT NULL,
  `comm_tea` int(11) DEFAULT NULL,
  `comm_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comm_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comm_good` int(11) DEFAULT NULL,
  PRIMARY KEY (`comm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '2', '1', '你的形象给了你高贵的个性，你的语言给了你敏锐的头脑，你的冷静给了你非凡的气质。', '2017.09.02', '12');
INSERT INTO `comment` VALUES ('2', '1', '1', '你居然处惊不交，了不起。你为什么没有脾气，真奇怪  ', '2017.09.02', '15');
INSERT INTO `comment` VALUES ('3', '3', '2', '你很有气质，有内涵，不爱讲话更显的很文静。你可是大家眼中的才女。', '2017.09.02', '50');
INSERT INTO `comment` VALUES ('4', '4', '2', '确实很牛X', '2017.09.02', '78');
INSERT INTO `comment` VALUES ('5', '1', '3', '如听君一席话，胜读十年书。人和名字一样美。气质非凡，年轻有为„', '2017.09.02', '19');
INSERT INTO `comment` VALUES ('6', '2', '3', '内涵方面：心胸宽阔、乐于助人 身体方面：孔武有力、窈窕淑女', '2017.09.02', '47');
INSERT INTO `comment` VALUES ('7', '3', '4', '有获得成功的坚定决心  举止优雅、性格好。', '2017.09.02', '34');
INSERT INTO `comment` VALUES ('8', '4', '4', '思想成熟、上进心强，并具极丰富的人际关系技巧。精力旺盛、思想新潮思想成熟、上进心强，并具极丰富的人际关系技巧。精力旺盛、思想新潮思想成熟、上进心强，并具极丰富的人际关系技巧。精力旺盛、思想新潮', '2017.09.02', '23');
INSERT INTO `comment` VALUES ('9', '1', '5', '你这种学习精神是可以成为我的榜样。', '2017.09.02', '18');
INSERT INTO `comment` VALUES ('10', '2', '5', '你今天做的菜真香，我本来不想吃饭的，现在胃口大开，你简直是个大厨师', '2017.09.02', '25');
INSERT INTO `comment` VALUES ('11', '3', '6', '如听君一席话，胜读十年书。人和名字一样美。气质非凡，年轻有为', '2017.09.02', '32');
INSERT INTO `comment` VALUES ('12', '4', '6', '你很有品位 你很有天赋 你看上去帅呆了 你穿那种颜色很好看 你真幽默 你的个性很好', '2017.09.02', '38');
