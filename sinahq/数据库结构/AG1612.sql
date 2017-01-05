/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-07-19 20:37:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ag1612
-- ----------------------------
DROP TABLE IF EXISTS `ag1612`;
CREATE TABLE `ag1612` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `diff` varchar(255) NOT NULL,
  `diffRate` varchar(255) NOT NULL,
  `jinkai` varchar(255) NOT NULL,
  `zuoshou` varchar(255) NOT NULL,
  `zuidi` varchar(255) NOT NULL,
  `zuigao` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `time` (`time`)
) ENGINE=MyISAM AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8;
