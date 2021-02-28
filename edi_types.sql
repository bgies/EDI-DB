/*
Navicat MySQL Data Transfer

Source Server         : MySQL 5.7
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : edi-db

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2021-03-01 01:42:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edi_types
-- ----------------------------
DROP TABLE IF EXISTS `edi_types`;
CREATE TABLE `edi_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `edt_edi_standard` int(10) NOT NULL COMMENT 'EDI Standard from edi_standards table ',
  `edt_transaction_set` varchar(255) NOT NULL COMMENT 'The transaction set (210, 850, INVOIC)',
  `edt_version_number` varchar(255) NOT NULL COMMENT 'The EDI version number (4010, 5010 )',
  `edt_is_incoming` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Are we receiving the file, or sending it',
  `edt_name` varchar(255) NOT NULL COMMENT 'The human readable name of this edi type (Send210Customer1)',
  `edt_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `edt_control_number` int(10) NOT NULL DEFAULT '0',
  `edt_automated` tinyint(4) NOT NULL DEFAULT '0',
  `edt_staff_id` int(10) NOT NULL DEFAULT '0',
  `edt_in_use` tinyint(4) NOT NULL DEFAULT '0',
  `edt_user` int(10) NOT NULL DEFAULT '-1',
  `edt_next_run_datetime` datetime DEFAULT NULL,
  `edt_next_run_increment_minutes` int(10) DEFAULT NULL,
  `edt_file_directory` varchar(255) NOT NULL,
  `edt_ip_address` varchar(30) DEFAULT NULL,
  `edt_username` varchar(30) DEFAULT NULL,
  `edt_password` varchar(30) DEFAULT NULL,
  `edt_after_send_processing` int(10) DEFAULT '-1',
  `edt_alert_if_not_acknowledged` tinyint(4) NOT NULL DEFAULT '1',
  `edt_alert_emails` varchar(255) NOT NULL DEFAULT '',
  `edt_alert_sms` varchar(255) NOT NULL DEFAULT '',
  `edt_object_properties` text,
  `edt_before_process_object_type` int(10) NOT NULL DEFAULT '1',
  `edt_before_process_object_properties` text,
  `edt_after_process_object_type` int(10) NOT NULL DEFAULT '1',
  `edt_after_process_object_properties` text,
  `interchange_sender_id` varchar(15) NOT NULL,
  `interchange_receiver_id` varchar(15) NOT NULL,
  `application_sender_code` varchar(15) NOT NULL,
  `application_receiver_code` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
  PRIMARY KEY (`id`),
  UNIQUE KEY `edt_type_name_unique` (`edt_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='This table contains the setup information for each type of EDI file sent or received';
SET FOREIGN_KEY_CHECKS=1;
