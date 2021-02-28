/*
Navicat MySQL Data Transfer

Source Server         : MySQL 5.7
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : edi-db

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2021-03-01 01:41:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edi_incoming
-- ----------------------------
DROP TABLE IF EXISTS `edi_incoming`;
CREATE TABLE `edi_incoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `einResponseNumber` int(11) NOT NULL,
  `einFileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `einDateTime` datetime NOT NULL,
  `einReadAttempts` tinyint(4) NOT NULL DEFAULT '0',
  `einReadSuccessful` tinyint(4) NOT NULL DEFAULT '0',
  `einReadDateTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of edi_incoming
-- ----------------------------
INSERT INTO `edi_incoming` VALUES ('34', '0', 'Williams210Replies/wa_ballgcc_01feb202111160947.edi', '2021-02-04 00:55:14', '0', '0', null, '2021-02-04 00:55:14', '2021-02-04 00:55:14', null);
INSERT INTO `edi_incoming` VALUES ('35', '0', 'Williams210Replies/wa_ballgcc_04jan202108190306.edi', '2021-02-04 00:55:19', '0', '0', null, '2021-02-04 00:55:19', '2021-02-04 00:55:19', null);
INSERT INTO `edi_incoming` VALUES ('36', '0', 'Williams210Replies/wa_ballgcc_05jan202117162378.edi', '2021-02-04 00:55:24', '0', '0', null, '2021-02-04 00:55:26', '2021-02-04 00:55:26', null);
INSERT INTO `edi_incoming` VALUES ('37', '0', 'Williams210Replies/wa_ballgcc_12jan202117310471.edi', '2021-02-04 00:55:32', '0', '0', null, '2021-02-04 00:55:32', '2021-02-04 00:55:32', null);
INSERT INTO `edi_incoming` VALUES ('38', '0', 'Williams210Replies/wa_ballgcc_15jan202111392473.edi', '2021-02-04 00:55:36', '0', '0', null, '2021-02-04 00:55:36', '2021-02-04 00:55:36', null);
INSERT INTO `edi_incoming` VALUES ('39', '0', 'Williams210Replies/wa_ballgcc_16dec202019061302.edi', '2021-02-04 00:55:41', '0', '0', null, '2021-02-04 00:55:41', '2021-02-04 00:55:41', null);
INSERT INTO `edi_incoming` VALUES ('40', '0', 'Williams210Replies/wa_ballgcc_18jan202111081775.edi', '2021-02-04 00:55:45', '0', '0', null, '2021-02-04 00:55:45', '2021-02-04 00:55:45', null);
INSERT INTO `edi_incoming` VALUES ('41', '0', 'Williams210Replies/wa_ballgcc_21jan202111164015.edi', '2021-02-04 00:55:49', '0', '0', null, '2021-02-04 00:55:49', '2021-02-04 00:55:49', null);
INSERT INTO `edi_incoming` VALUES ('42', '0', 'Williams210Replies/wa_ballgcc_22dec202011163795.edi', '2021-02-04 00:55:53', '0', '0', null, '2021-02-04 00:55:53', '2021-02-04 00:55:53', null);
INSERT INTO `edi_incoming` VALUES ('43', '0', 'Williams210Replies/wa_ballgcc_27jan202117173229.edi', '2021-02-04 00:56:00', '0', '0', null, '2021-02-04 00:56:00', '2021-02-04 00:56:00', null);
INSERT INTO `edi_incoming` VALUES ('44', '0', 'Williams210Replies/wa_ballgcc_29dec202011122551.edi', '2021-02-04 00:56:04', '0', '0', null, '2021-02-04 00:56:04', '2021-02-04 00:56:04', null);
SET FOREIGN_KEY_CHECKS=1;
