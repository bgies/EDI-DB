/*
Navicat MySQL Data Transfer

Source Server         : MySQL 5.7
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : edi-db

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2021-03-01 01:42:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edi_status
-- ----------------------------
DROP TABLE IF EXISTS `edi_status`;
CREATE TABLE `edi_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `edi_status_name` varchar(25) NOT NULL COMMENT 'Status',
  `edi_status_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='Lookup table';

-- ----------------------------
-- Records of edi_status
-- ----------------------------
INSERT INTO `edi_status` VALUES ('1', 'File Created', 'The file was created');
INSERT INTO `edi_status` VALUES ('2', 'File Saved', 'the file was saved to long term storage');
INSERT INTO `edi_status` VALUES ('3', 'Transmitted', 'The file was transmitted to the trading partner');
INSERT INTO `edi_status` VALUES ('4', 'Acknowledged', 'The Trading Partner acknowledged receining the file');
INSERT INTO `edi_status` VALUES ('5', 'Rejected', 'The file was rejected by the Trading Partner (usually means ');
INSERT INTO `edi_status` VALUES ('6', 'Partially Accepted', 'The file was partially accepted by the Trading Partner');
INSERT INTO `edi_status` VALUES ('7', 'Accepted', 'The file was accepted by the Trading Partner');
INSERT INTO `edi_status` VALUES ('8', 'Finished', 'We are done with this file');
INSERT INTO `edi_status` VALUES ('9', 'Archived', 'The file has been archived');
SET FOREIGN_KEY_CHECKS=1;
