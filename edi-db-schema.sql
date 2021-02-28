/*
Navicat MySQL Data Transfer

Source Server         : MySQL 5.7
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : edi-db

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2021-03-01 01:40:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edi_files
-- ----------------------------
DROP TABLE IF EXISTS `edi_files`;
CREATE TABLE `edi_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `edf_edt_id` int(10) NOT NULL,
  `edf_payment_agency` int(10) DEFAULT NULL,
  `edf_transaction_control_number` int(10) DEFAULT NULL,
  `edf_records_tablename` varchar(255) DEFAULT NULL,
  `edf_filename` varchar(255) DEFAULT NULL,
  `edf_client_filename` varchar(255) DEFAULT NULL,
  `edf_sender_id` int(10) DEFAULT NULL,
  `edf_receiver_id` int(10) DEFAULT NULL,
  `edf_state` int(10) NOT NULL,
  `edf_filedate` datetime DEFAULT NULL,
  `edf_transmission_date` datetime DEFAULT NULL,
  `edf_cancelled` int(10) NOT NULL DEFAULT '0',
  `edf_acknowledged` tinyint(4) DEFAULT NULL,
  `edf_records_parsed` int(10) unsigned DEFAULT NULL,
  `edf_records_transmitted` int(10) DEFAULT NULL,
  `edf_test_file` tinyint(4) DEFAULT '0',
  `edf_cst_id` int(10) unsigned DEFAULT NULL,
  `edf_stf_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COMMENT='Every EDI file should have a record in this table';

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
-- Table structure for edi_standards
-- ----------------------------
DROP TABLE IF EXISTS `edi_standards`;
CREATE TABLE `edi_standards` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `edi_standard` varchar(20) NOT NULL COMMENT 'The EDI Standard name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='Lookup table';

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
