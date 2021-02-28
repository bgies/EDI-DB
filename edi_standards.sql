/*
Navicat MySQL Data Transfer

Source Server         : MySQL 5.7
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : edi-db

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2021-03-01 01:42:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edi_standards
-- ----------------------------
DROP TABLE IF EXISTS `edi_standards`;
CREATE TABLE `edi_standards` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `edi_standard` varchar(20) NOT NULL COMMENT 'The EDI Standard name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='Lookup table';

-- ----------------------------
-- Records of edi_standards
-- ----------------------------
INSERT INTO `edi_standards` VALUES ('1', 'ASC X12');
INSERT INTO `edi_standards` VALUES ('2', 'EDIFACT');
INSERT INTO `edi_standards` VALUES ('3', 'TRADACOMS');
INSERT INTO `edi_standards` VALUES ('4', 'CUSTOM');
SET FOREIGN_KEY_CHECKS=1;
