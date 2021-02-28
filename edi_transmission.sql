/*
Navicat MySQL Data Transfer

Source Server         : MySQL 5.7
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : edi-db

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2021-03-01 01:42:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edi_transmission
-- ----------------------------
DROP TABLE IF EXISTS `edi_transmission`;
CREATE TABLE `edi_transmission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `edi_transmission_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='Lookup table';

-- ----------------------------
-- Records of edi_transmission
-- ----------------------------
INSERT INTO `edi_transmission` VALUES ('1', 'FTP - Not encrypted');
INSERT INTO `edi_transmission` VALUES ('2', 'FTP - PGP Encrypted');
INSERT INTO `edi_transmission` VALUES ('3', 'FTP - Lexicom');
INSERT INTO `edi_transmission` VALUES ('4', 'FTPS (ssl)');
INSERT INTO `edi_transmission` VALUES ('5', 'FTP Command List');
INSERT INTO `edi_transmission` VALUES ('6', 'FTPS Command List (ssl)');
INSERT INTO `edi_transmission` VALUES ('7', 'SMTP (email()');
INSERT INTO `edi_transmission` VALUES ('8', 'File Drop');
INSERT INTO `edi_transmission` VALUES ('9', 'HTTPS');
INSERT INTO `edi_transmission` VALUES ('10', 'FileFromDirectory');
INSERT INTO `edi_transmission` VALUES ('11', 'Stored Procedure');
SET FOREIGN_KEY_CHECKS=1;
