/*
Navicat MySQL Data Transfer

Source Server         : MySQL 5.7
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : edi-db

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2021-03-01 01:41:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edi_file_details
-- ----------------------------
DROP TABLE IF EXISTS `edi_file_details`;
CREATE TABLE `edi_file_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `efd_edf_id` int(10) NOT NULL COMMENT 'The edi_files record this entry is associated with',
  `efd_record_id` int(10) NOT NULL COMMENT 'The edf_records_tablename record for this entry',
  `efd_edi_transaction_control_number` int(10) NOT NULL,
  `efd_espState` tinyint(4) NOT NULL DEFAULT '0',
  `efd_acknowledgment_code` varchar(2) DEFAULT NULL,
  `efd_accepted_datetime` datetime DEFAULT NULL,
  `efd_unique_control_number` bigint(20) DEFAULT NULL,
  `efd_cancelled` int(10) NOT NULL DEFAULT '0' COMMENT 'if this entry is cancelled, either the record was not on the file, or it was rejected by the receiver',
  `efd_cancelled_by_staff_id` int(10) DEFAULT NULL,
  `efd_cancelled_datetime` datetime DEFAULT NULL,
  `efd_total` decimal(13,4) DEFAULT NULL COMMENT 'If used, this is helpful for building reports',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='This table is used to record the details of what''s in the edi_files table';

-- ----------------------------
-- Records of edi_file_details
-- ----------------------------
INSERT INTO `edi_file_details` VALUES ('1', '78', '142', '12000', '0', null, null, null, '0', null, null, '127.0000', '2021-02-03 14:43:19', '2021-02-03 14:43:19', null);
SET FOREIGN_KEY_CHECKS=1;
