/*
Navicat MySQL Data Transfer

Source Server         : 172.24.0.34
Source Server Version : 50616
Source Host           : 172.24.0.34:3306
Source Database       : fav

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-08-10 21:12:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `collect`
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `charset` varchar(255) DEFAULT NULL,
  `create_time` bigint(20) NOT NULL,
  `description` text,
  `favorites_id` bigint(20) NOT NULL,
  `is_delete` varchar(255) NOT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for `collector_view`
-- ----------------------------
DROP TABLE IF EXISTS `collector_view`;
CREATE TABLE `collector_view` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `counts` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collector_view
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collect_id` bigint(20) NOT NULL,
  `content` text NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `reply_user_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) NOT NULL,
  `default_collect_type` varchar(255) NOT NULL,
  `default_favorties` varchar(255) NOT NULL,
  `default_model` varchar(255) NOT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '1500171328125', '1', '2', '3', '1500171328125', '0');
INSERT INTO `config` VALUES ('2', '1500171328125', '2', '2', '33', '1500171328125', '2');

-- ----------------------------
-- Table structure for `favorites`
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `count` bigint(20) NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorites
-- ----------------------------
INSERT INTO `favorites` VALUES ('1', '1', '1500171328125', '1500171328125', 'ga', '0');
INSERT INTO `favorites` VALUES ('2', '55', '1500171328125', '1500171328125', '收藏的人xx', '3');

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) NOT NULL,
  `feedback_advice` varchar(255) NOT NULL,
  `feedback_name` varchar(255) DEFAULT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `follow`
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) NOT NULL,
  `follow_id` bigint(20) NOT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES ('1', '1500171328125', '3', '1500171328125', 'FOLLOW', '2');

-- ----------------------------
-- Table structure for `letter`
-- ----------------------------
DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `receive_user_id` bigint(20) NOT NULL,
  `send_user_id` bigint(20) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter
-- ----------------------------

-- ----------------------------
-- Table structure for `look_record`
-- ----------------------------
DROP TABLE IF EXISTS `look_record`;
CREATE TABLE `look_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collect_id` bigint(20) NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `last_modify_time` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of look_record
-- ----------------------------

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collect_id` varchar(255) DEFAULT NULL,
  `create_time` bigint(20) NOT NULL,
  `oper_id` varchar(255) DEFAULT NULL,
  `readed` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '1', '1500171328125', '1', 'read', 'at', '2');
INSERT INTO `notice` VALUES ('2', '1', '1500171328125', '1', 'read', 'comment', '2');

-- ----------------------------
-- Table structure for `praise`
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collect_id` bigint(20) NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of praise
-- ----------------------------
INSERT INTO `praise` VALUES ('1', '1', '1500171328125', '2');

-- ----------------------------
-- Table structure for `url_library`
-- ----------------------------
DROP TABLE IF EXISTS `url_library`;
CREATE TABLE `url_library` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT '0',
  `logo_url` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of url_library
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `background_picture` varchar(255) DEFAULT NULL,
  `create_time` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `introduction` text,
  `last_modify_time` bigint(20) NOT NULL,
  `out_date` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `validata_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_lqjrcobrh9jc8wpcar64q1bfh` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0', 'xx', '1500171328125', 'xxx@126.com', '0', '1500171328125', '1500271328125', 'b52e2807fe01b2ceeb9f9a399cad0431', null, 'hui', 'xx');
INSERT INTO `user` VALUES ('2', 'xx2', '1500171328125', '', '1', '1500171328125', '1500271328125', 'b52e2807fe01b2ceeb9f9a399cad0431', 'file/profilepictures/5075dae9-f9ef-456f-8285-6ec4bfa82c03.png', 'peng', 'hui');
INSERT INTO `user` VALUES ('3', 'xx3', '1500171328125', 'xx1@126.com', '1', '1500171328125', '1500271328125', 'b52e2807fe01b2ceeb9f9a399cad0431', null, 'zhang', 'zhang');

-- ----------------------------
-- Table structure for `user_is_follow`
-- ----------------------------
DROP TABLE IF EXISTS `user_is_follow`;
CREATE TABLE `user_is_follow` (
  `id` bigint(20) NOT NULL,
  `is_follow` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_is_follow
-- ----------------------------
