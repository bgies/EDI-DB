/*
Navicat MySQL Data Transfer

Source Server         : MySQL 5.7
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : edi-db

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2021-03-01 01:42:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edi_transaction_sets
-- ----------------------------
DROP TABLE IF EXISTS `edi_transaction_sets`;
CREATE TABLE `edi_transaction_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edi_standard_id` int(11) NOT NULL,
  `ed_version_id` int(11) NOT NULL,
  `edi_transaction_set` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edi_language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edi_option_object` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `edi_transaction_set_object` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
SET FOREIGN_KEY_CHECKS=1;
