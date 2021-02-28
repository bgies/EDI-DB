/*
Navicat MySQL Data Transfer

Source Server         : MySQL 5.7
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : edi-db

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2021-03-01 01:40:33
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
-- Records of edi_files
-- ----------------------------
INSERT INTO `edi_files` VALUES ('1', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 19:51:57', '2021-02-01 19:51:57', null);
INSERT INTO `edi_files` VALUES ('2', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 19:53:58', '2021-02-01 19:53:58', null);
INSERT INTO `edi_files` VALUES ('3', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 20:01:59', '2021-02-01 20:01:59', null);
INSERT INTO `edi_files` VALUES ('4', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 20:02:57', '2021-02-01 20:02:57', null);
INSERT INTO `edi_files` VALUES ('5', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 20:24:33', '2021-02-01 20:24:33', null);
INSERT INTO `edi_files` VALUES ('6', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 20:27:53', '2021-02-01 20:27:53', null);
INSERT INTO `edi_files` VALUES ('7', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 20:28:46', '2021-02-01 20:28:46', null);
INSERT INTO `edi_files` VALUES ('8', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 20:32:24', '2021-02-01 20:32:24', null);
INSERT INTO `edi_files` VALUES ('9', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 20:46:37', '2021-02-01 20:46:37', null);
INSERT INTO `edi_files` VALUES ('10', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 20:57:32', '2021-02-01 20:57:32', null);
INSERT INTO `edi_files` VALUES ('11', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 20:58:51', '2021-02-01 20:58:51', null);
INSERT INTO `edi_files` VALUES ('12', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 21:44:40', '2021-02-01 21:44:40', null);
INSERT INTO `edi_files` VALUES ('13', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-01 22:07:28', '2021-02-01 22:07:28', null);
INSERT INTO `edi_files` VALUES ('14', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-02 00:05:57', '2021-02-02 00:05:57', null);
INSERT INTO `edi_files` VALUES ('15', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-02 00:11:23', '2021-02-02 00:11:23', null);
INSERT INTO `edi_files` VALUES ('16', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-02 00:11:43', '2021-02-02 00:11:43', null);
INSERT INTO `edi_files` VALUES ('17', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-02 00:12:08', '2021-02-02 00:12:08', null);
INSERT INTO `edi_files` VALUES ('18', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-02 00:12:36', '2021-02-02 00:12:36', null);
INSERT INTO `edi_files` VALUES ('19', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-02 00:13:11', '2021-02-02 00:13:11', null);
INSERT INTO `edi_files` VALUES ('20', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 00:15:26', '2021-02-02 00:15:26', null);
INSERT INTO `edi_files` VALUES ('21', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 00:15:52', '2021-02-02 00:15:52', null);
INSERT INTO `edi_files` VALUES ('22', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 00:47:17', '2021-02-02 00:47:17', null);
INSERT INTO `edi_files` VALUES ('23', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 00:59:07', '2021-02-02 00:59:07', null);
INSERT INTO `edi_files` VALUES ('24', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 01:01:38', '2021-02-02 01:01:38', null);
INSERT INTO `edi_files` VALUES ('25', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 01:03:33', '2021-02-02 01:03:33', null);
INSERT INTO `edi_files` VALUES ('26', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 01:06:47', '2021-02-02 01:06:47', null);
INSERT INTO `edi_files` VALUES ('27', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 01:09:45', '2021-02-02 01:09:45', null);
INSERT INTO `edi_files` VALUES ('28', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 01:16:29', '2021-02-02 01:16:29', null);
INSERT INTO `edi_files` VALUES ('29', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 13:26:07', '2021-02-02 13:26:07', null);
INSERT INTO `edi_files` VALUES ('30', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 13:29:01', '2021-02-02 13:29:01', null);
INSERT INTO `edi_files` VALUES ('31', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 13:35:17', '2021-02-02 13:35:17', null);
INSERT INTO `edi_files` VALUES ('32', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 13:43:06', '2021-02-02 13:43:06', null);
INSERT INTO `edi_files` VALUES ('33', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 13:45:08', '2021-02-02 13:45:08', null);
INSERT INTO `edi_files` VALUES ('34', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 13:50:26', '2021-02-02 13:50:26', null);
INSERT INTO `edi_files` VALUES ('35', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 14:05:35', '2021-02-02 14:05:35', null);
INSERT INTO `edi_files` VALUES ('36', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 14:09:56', '2021-02-02 14:09:56', null);
INSERT INTO `edi_files` VALUES ('37', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 14:19:49', '2021-02-02 14:19:49', null);
INSERT INTO `edi_files` VALUES ('38', '1', null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, '1', null, null, '2021-02-02 14:39:35', '2021-02-02 14:39:35', null);
INSERT INTO `edi_files` VALUES ('39', '1', null, null, null, 'Williams210/202102/39.txt', null, null, null, '1', null, null, '1', null, null, null, '0', null, null, '2021-02-02 14:41:04', '2021-02-02 14:41:21', null);
INSERT INTO `edi_files` VALUES ('40', '1', null, null, null, null, null, null, null, '1', '2021-02-02 15:24:40', null, '1', null, null, null, '1', null, null, '2021-02-02 15:24:40', '2021-02-02 15:24:40', null);
INSERT INTO `edi_files` VALUES ('41', '1', null, null, null, null, null, null, null, '1', '2021-02-02 15:43:01', null, '1', null, null, null, '1', null, null, '2021-02-02 15:43:01', '2021-02-02 15:43:01', null);
INSERT INTO `edi_files` VALUES ('42', '1', null, null, null, null, null, null, null, '1', '2021-02-02 15:44:06', null, '1', null, null, null, '1', null, null, '2021-02-02 15:44:06', '2021-02-02 15:44:06', null);
INSERT INTO `edi_files` VALUES ('43', '1', null, '0', null, 'Williams210/202102/43.txt', null, null, null, '1', '2021-02-02 15:50:08', null, '1', null, null, null, '0', null, null, '2021-02-02 15:50:08', '2021-02-02 15:50:29', null);
INSERT INTO `edi_files` VALUES ('44', '1', null, '0', null, 'Williams210/202102/44.txt', null, null, null, '1', '2021-02-02 16:11:11', null, '1', null, null, null, '0', null, null, '2021-02-02 16:11:11', '2021-02-02 16:11:21', null);
INSERT INTO `edi_files` VALUES ('45', '1', null, '0', null, 'Williams210/202102/45.txt', null, null, null, '1', '2021-02-02 18:59:15', null, '1', null, null, null, '0', null, null, '2021-02-02 18:59:15', '2021-02-02 18:59:27', null);
INSERT INTO `edi_files` VALUES ('46', '1', null, null, null, null, null, null, null, '1', '2021-02-02 21:18:37', null, '1', null, null, null, '1', null, null, '2021-02-02 21:18:37', '2021-02-02 21:18:37', null);
INSERT INTO `edi_files` VALUES ('47', '1', null, null, null, null, null, null, null, '1', '2021-02-02 21:23:34', null, '1', null, null, null, '1', null, null, '2021-02-02 21:23:34', '2021-02-02 21:23:34', null);
INSERT INTO `edi_files` VALUES ('48', '1', null, '0', null, 'Williams210/202102/48.txt', null, null, null, '1', '2021-02-02 21:26:07', null, '1', null, '2', null, '0', null, null, '2021-02-02 21:26:07', '2021-02-02 21:26:13', null);
INSERT INTO `edi_files` VALUES ('49', '1', null, '0', null, 'Williams210/202102/49.txt', null, null, null, '1', '2021-02-02 21:34:25', null, '1', null, '2', null, '0', null, null, '2021-02-02 21:34:25', '2021-02-02 21:37:02', null);
INSERT INTO `edi_files` VALUES ('50', '1', null, '0', 'edi_files', 'Williams210/202102/50.txt', null, null, null, '1', '2021-02-02 21:37:16', null, '1', null, '2', null, '0', null, null, '2021-02-02 21:37:16', '2021-02-02 21:37:39', null);
INSERT INTO `edi_files` VALUES ('51', '1', null, null, null, null, null, null, null, '1', '2021-02-02 22:37:53', null, '1', null, null, null, '1', null, null, '2021-02-02 22:37:53', '2021-02-02 22:37:53', null);
INSERT INTO `edi_files` VALUES ('52', '1', null, '0', 'edi_files', 'Williams210/202102/52.txt', null, null, null, '1', '2021-02-02 22:48:22', null, '1', null, '2', null, '0', null, null, '2021-02-02 22:48:22', '2021-02-02 22:48:31', null);
INSERT INTO `edi_files` VALUES ('53', '1', null, '0', 'edi_files', 'Williams210/202102/53.txt', null, null, null, '1', '2021-02-02 23:37:07', null, '1', null, '2', null, '0', null, null, '2021-02-02 23:37:07', '2021-02-02 23:37:20', null);
INSERT INTO `edi_files` VALUES ('54', '1', null, '0', 'edi_files', 'Williams210/202102/54.txt', null, null, null, '1', '2021-02-02 23:38:24', null, '1', null, '2', null, '0', null, null, '2021-02-02 23:38:24', '2021-02-02 23:38:24', null);
INSERT INTO `edi_files` VALUES ('55', '1', null, '0', 'edi_files', 'Williams210/202102/55.txt', null, null, null, '1', '2021-02-03 00:02:19', null, '1', null, '2', null, '0', null, null, '2021-02-03 00:02:19', '2021-02-03 00:08:15', null);
INSERT INTO `edi_files` VALUES ('56', '1', null, null, null, null, null, null, null, '1', '2021-02-03 00:08:54', null, '1', null, null, null, '1', null, null, '2021-02-03 00:08:54', '2021-02-03 00:08:54', null);
INSERT INTO `edi_files` VALUES ('57', '1', null, null, null, null, null, null, null, '1', '2021-02-03 00:11:07', null, '1', null, null, null, '1', null, null, '2021-02-03 00:11:07', '2021-02-03 00:11:07', null);
INSERT INTO `edi_files` VALUES ('58', '1', null, null, null, null, null, null, null, '1', '2021-02-03 00:16:30', null, '1', null, null, null, '1', null, null, '2021-02-03 00:16:30', '2021-02-03 00:16:30', null);
INSERT INTO `edi_files` VALUES ('59', '1', null, null, null, null, null, null, null, '1', '2021-02-03 00:16:44', null, '1', null, null, null, '1', null, null, '2021-02-03 00:16:44', '2021-02-03 00:16:44', null);
INSERT INTO `edi_files` VALUES ('60', '1', null, null, null, null, null, null, null, '1', '2021-02-03 00:18:31', null, '1', null, null, null, '1', null, null, '2021-02-03 00:18:31', '2021-02-03 00:18:31', null);
INSERT INTO `edi_files` VALUES ('61', '1', null, null, null, null, null, null, null, '1', '2021-02-03 00:20:35', null, '1', null, null, null, '1', null, null, '2021-02-03 00:20:35', '2021-02-03 00:20:35', null);
INSERT INTO `edi_files` VALUES ('62', '1', null, null, null, null, null, null, null, '1', '2021-02-03 00:22:31', null, '1', null, null, null, '1', null, null, '2021-02-03 00:22:31', '2021-02-03 00:22:31', null);
INSERT INTO `edi_files` VALUES ('63', '1', null, null, null, null, null, null, null, '1', '2021-02-03 00:24:36', null, '1', null, null, null, '1', null, null, '2021-02-03 00:24:36', '2021-02-03 00:24:36', null);
INSERT INTO `edi_files` VALUES ('64', '1', null, '0', 'edi_files', 'Williams210/202102/64.txt', null, null, null, '1', '2021-02-03 00:24:58', null, '1', null, '2', null, '0', null, null, '2021-02-03 00:24:58', '2021-02-03 00:25:34', null);
INSERT INTO `edi_files` VALUES ('65', '1', null, '0', 'edi_files', 'Williams210/202102/65.txt', 'faks_20210203_233329.edi', null, null, '2', '2021-02-03 00:30:44', '2021-02-03 23:33:39', '0', null, '2', null, '0', null, null, '2021-02-03 00:30:44', '2021-02-03 23:33:41', null);
INSERT INTO `edi_files` VALUES ('66', '1', null, '0', 'edi_files', 'Williams210/202102/66.txt', 'faks_20210203_233344.edi', null, null, '2', '2021-02-03 00:34:07', '2021-02-03 23:33:52', '0', null, '2', null, '0', null, null, '2021-02-03 00:34:07', '2021-02-03 23:33:53', null);
INSERT INTO `edi_files` VALUES ('67', '1', null, '0', 'edi_files', 'Williams210/202102/67.txt', 'faks_20210203_233353.edi', null, null, '2', '2021-02-03 00:44:20', '2021-02-03 23:33:58', '0', null, '2', null, '0', null, null, '2021-02-03 00:44:20', '2021-02-03 23:33:59', null);
INSERT INTO `edi_files` VALUES ('68', '1', null, '0', 'edi_files', 'Williams210/202102/68.txt', 'faks_20210204_005217.edi', null, null, '2', '2021-02-03 00:54:11', '2021-02-04 00:52:24', '0', null, '2', null, '0', null, null, '2021-02-03 00:54:11', '2021-02-04 00:52:49', null);
INSERT INTO `edi_files` VALUES ('69', '1', null, '0', 'edi_files', 'Williams210/202102/69.txt', 'faks_20210204_005249.edi', null, null, '2', '2021-02-03 00:57:06', '2021-02-04 00:52:54', '0', null, '2', null, '0', null, null, '2021-02-03 00:57:06', '2021-02-04 00:52:58', null);
INSERT INTO `edi_files` VALUES ('70', '1', null, '0', 'edi_files', 'Williams210/202102/70.txt', 'faks_20210204_005258.edi', null, null, '2', '2021-02-03 12:37:56', '2021-02-04 00:53:04', '0', null, '2', null, '0', null, null, '2021-02-03 12:37:56', '2021-02-04 00:54:19', null);
INSERT INTO `edi_files` VALUES ('71', '1', null, '0', 'edi_files', 'Williams210/202102/71.txt', null, null, null, '1', '2021-02-03 14:02:03', null, '0', null, '2', null, '0', null, null, '2021-02-03 14:02:03', '2021-02-03 14:09:34', null);
INSERT INTO `edi_files` VALUES ('72', '1', null, '0', 'edi_files', 'Williams210/202102/72.txt', null, null, null, '1', '2021-02-03 14:10:03', null, '0', null, '2', null, '0', null, null, '2021-02-03 14:10:03', '2021-02-03 14:16:43', null);
INSERT INTO `edi_files` VALUES ('73', '1', null, '0', 'edi_files', 'Williams210/202102/73.txt', null, null, null, '1', '2021-02-03 14:17:06', null, '0', null, '2', null, '0', null, null, '2021-02-03 14:17:06', '2021-02-03 14:36:39', null);
INSERT INTO `edi_files` VALUES ('74', '1', null, '0', 'edi_files', 'Williams210/202102/74.txt', null, null, null, '1', '2021-02-03 14:36:58', null, '0', null, '2', null, '0', null, null, '2021-02-03 14:36:58', '2021-02-03 14:38:06', null);
INSERT INTO `edi_files` VALUES ('75', '1', null, '0', 'edi_files', 'Williams210/202102/75.txt', null, null, null, '1', '2021-02-03 14:40:11', null, '0', null, '2', null, '0', null, null, '2021-02-03 14:40:11', '2021-02-03 14:40:12', null);
INSERT INTO `edi_files` VALUES ('76', '1', null, '0', 'edi_files', 'Williams210/202102/76.txt', null, null, null, '1', '2021-02-03 14:40:44', null, '0', null, '2', null, '0', null, null, '2021-02-03 14:40:44', '2021-02-03 14:40:45', null);
INSERT INTO `edi_files` VALUES ('77', '1', null, '0', 'edi_files', 'Williams210/202102/77.txt', null, null, null, '1', '2021-02-03 14:41:21', null, '0', null, '2', null, '0', null, null, '2021-02-03 14:41:21', '2021-02-03 14:41:21', null);
INSERT INTO `edi_files` VALUES ('78', '1', null, '0', 'edi_files', 'Williams210/202102/78.txt', null, null, null, '1', '2021-02-03 14:43:11', null, '0', null, '2', null, '0', null, null, '2021-02-03 14:43:11', '2021-02-03 14:43:11', null);
INSERT INTO `edi_files` VALUES ('79', '1', null, '0', 'edi_files', 'Williams210/202102/79.txt', null, null, null, '1', '2021-02-03 15:13:34', null, '0', null, '1', null, '0', null, null, '2021-02-03 15:13:34', '2021-02-03 15:13:34', null);
INSERT INTO `edi_files` VALUES ('80', '1', null, '0', 'edi_files', 'Williams210/202102/80.txt', null, null, null, '1', '2021-02-03 15:26:15', null, '0', null, '1', null, '1', null, null, '2021-02-03 15:26:15', '2021-02-03 17:06:51', null);
INSERT INTO `edi_files` VALUES ('81', '1', null, '0', 'orders', 'Williams210/202102/81.txt', null, null, null, '1', '2021-02-08 18:31:11', null, '0', null, '1', null, '1', null, null, '2021-02-08 18:31:11', '2021-02-08 18:31:13', null);
INSERT INTO `edi_files` VALUES ('82', '1', null, '0', 'orders', 'Williams210/202102/82.txt', null, null, null, '1', '2021-02-08 18:32:47', null, '0', null, '1', null, '1', null, null, '2021-02-08 18:32:47', '2021-02-08 18:32:48', null);
INSERT INTO `edi_files` VALUES ('83', '1', null, '0', 'orders', 'Williams210/202102/83.txt', null, null, null, '1', '2021-02-08 18:34:26', null, '0', null, '1', null, '1', null, null, '2021-02-08 18:34:26', '2021-02-08 18:34:26', null);
INSERT INTO `edi_files` VALUES ('84', '1', null, '0', 'orders', 'Williams210/202102/84.txt', null, null, null, '1', '2021-02-08 18:36:22', null, '0', null, '1', null, '1', null, null, '2021-02-08 18:36:22', '2021-02-08 18:36:22', null);
INSERT INTO `edi_files` VALUES ('85', '1', null, '0', 'orders', 'Williams210/202102/85.txt', null, null, null, '1', '2021-02-21 19:30:13', null, '0', null, '1', null, '1', null, null, '2021-02-21 19:30:13', '2021-02-21 19:30:49', null);
INSERT INTO `edi_files` VALUES ('86', '1', null, '0', 'orders', 'Williams210/202102/86.txt', null, null, null, '1', '2021-02-21 23:14:06', null, '0', null, '1', null, '1', null, null, '2021-02-21 23:14:06', '2021-02-21 23:16:53', null);
INSERT INTO `edi_files` VALUES ('87', '1', null, '0', 'orders', 'Williams210/202102/87.txt', null, null, null, '1', '2021-02-21 23:26:39', null, '0', null, '1', null, '1', null, null, '2021-02-21 23:26:39', '2021-02-22 00:06:49', null);
INSERT INTO `edi_files` VALUES ('88', '1', null, '0', 'orders', 'Williams210/202102/88.txt', null, null, null, '1', '2021-02-22 00:27:43', null, '0', null, '1', null, '1', null, null, '2021-02-22 00:27:43', '2021-02-22 00:27:52', null);
INSERT INTO `edi_files` VALUES ('89', '1', null, '0', 'orders', 'Williams210/202102/89.txt', null, null, null, '1', '2021-02-22 00:30:36', null, '0', null, '1', null, '1', null, null, '2021-02-22 00:30:36', '2021-02-22 00:30:39', null);
INSERT INTO `edi_files` VALUES ('90', '1', null, '0', 'orders', 'Williams210/202102/90.txt', null, null, null, '1', '2021-02-22 00:31:22', null, '0', null, '1', null, '1', null, null, '2021-02-22 00:31:22', '2021-02-22 00:31:25', null);
INSERT INTO `edi_files` VALUES ('91', '1', null, '0', 'orders', 'Williams210/202102/91.txt', null, null, null, '1', '2021-02-22 00:36:18', null, '0', null, '1', null, '1', null, null, '2021-02-22 00:36:18', '2021-02-22 00:38:26', null);
INSERT INTO `edi_files` VALUES ('92', '1', null, '0', 'orders', 'Williams210/202102/92.txt', null, null, null, '1', '2021-02-22 00:40:42', null, '0', null, '1', null, '1', null, null, '2021-02-22 00:40:42', '2021-02-22 00:44:35', null);
INSERT INTO `edi_files` VALUES ('93', '1', null, '0', 'orders', 'Williams210/202102/93.txt', null, null, null, '1', '2021-02-22 00:44:54', null, '0', null, '1', null, '1', null, null, '2021-02-22 00:44:54', '2021-02-22 00:47:54', null);
INSERT INTO `edi_files` VALUES ('94', '1', null, '0', 'orders', 'Williams210/202102/94.txt', null, null, null, '1', '2021-02-22 00:54:36', null, '0', null, '1', null, '1', null, null, '2021-02-22 00:54:36', '2021-02-22 00:55:06', null);
INSERT INTO `edi_files` VALUES ('95', '1', null, '0', 'orders', 'Williams210/202102/95.txt', null, null, null, '1', '2021-02-22 01:42:08', null, '0', null, '1', null, '1', null, null, '2021-02-22 01:42:08', '2021-02-22 13:59:28', null);
INSERT INTO `edi_files` VALUES ('96', '1', null, '0', 'orders', 'Williams210/202102/96.txt', null, null, null, '1', '2021-02-22 13:59:21', null, '0', null, '1', null, '1', null, null, '2021-02-22 13:59:21', '2021-02-22 13:59:46', null);
INSERT INTO `edi_files` VALUES ('97', '1', null, '0', 'orders', 'Williams210/202102/97.txt', null, null, null, '1', '2021-02-22 14:02:25', null, '0', null, '1', null, '1', null, null, '2021-02-22 14:02:25', '2021-02-22 14:36:30', null);
INSERT INTO `edi_files` VALUES ('98', '1', null, null, null, null, null, null, null, '1', '2021-02-22 14:36:52', null, '1', null, null, null, '1', null, null, '2021-02-22 14:36:52', '2021-02-22 14:36:52', null);
INSERT INTO `edi_files` VALUES ('99', '1', null, null, null, null, null, null, null, '1', '2021-02-22 14:37:13', null, '1', null, null, null, '1', null, null, '2021-02-22 14:37:13', '2021-02-22 14:37:13', null);
INSERT INTO `edi_files` VALUES ('100', '1', null, '0', 'orders', 'Williams210/202102/100.txt', null, null, null, '1', '2021-02-22 14:44:50', null, '0', null, '0', null, '1', null, null, '2021-02-22 14:44:50', '2021-02-22 14:44:51', null);
INSERT INTO `edi_files` VALUES ('101', '1', null, '0', 'orders', 'Williams210/202102/101.txt', null, null, null, '1', '2021-02-22 14:46:29', null, '0', null, '0', null, '1', null, null, '2021-02-22 14:46:29', '2021-02-22 14:46:30', null);
INSERT INTO `edi_files` VALUES ('102', '1', null, null, null, null, null, null, null, '1', '2021-02-22 15:16:59', null, '1', null, null, null, '1', null, null, '2021-02-22 15:16:59', '2021-02-22 15:16:59', null);
INSERT INTO `edi_files` VALUES ('103', '1', null, '0', 'orders', 'Williams210/202102/103.txt', null, null, null, '1', '2021-02-22 15:23:24', null, '0', null, '1', null, '1', null, null, '2021-02-22 15:23:24', '2021-02-22 15:28:35', null);
INSERT INTO `edi_files` VALUES ('104', '1', null, '0', 'orders', 'Williams210/202102/104.txt', null, null, null, '1', '2021-02-22 15:28:50', null, '0', null, '1', null, '1', null, null, '2021-02-22 15:28:50', '2021-02-22 15:33:24', null);
INSERT INTO `edi_files` VALUES ('105', '1', null, null, null, null, null, null, null, '1', '2021-02-22 16:11:20', null, '1', null, null, null, '1', null, null, '2021-02-22 16:11:20', '2021-02-22 16:11:20', null);
INSERT INTO `edi_files` VALUES ('106', '1', null, null, null, null, null, null, null, '1', '2021-02-22 16:22:43', null, '1', null, null, null, '1', null, null, '2021-02-22 16:22:43', '2021-02-22 16:22:43', null);
INSERT INTO `edi_files` VALUES ('107', '1', null, null, null, null, null, null, null, '1', '2021-02-22 16:29:09', null, '1', null, null, null, '1', null, null, '2021-02-22 16:29:09', '2021-02-22 16:29:09', null);
INSERT INTO `edi_files` VALUES ('108', '1', null, null, null, null, null, null, null, '1', '2021-02-22 17:13:51', null, '1', null, null, null, '1', null, null, '2021-02-22 17:13:51', '2021-02-22 17:13:51', null);
INSERT INTO `edi_files` VALUES ('109', '1', null, null, null, null, null, null, null, '1', '2021-02-22 17:33:21', null, '1', null, null, null, '1', null, null, '2021-02-22 17:33:21', '2021-02-22 17:33:21', null);
INSERT INTO `edi_files` VALUES ('110', '1', null, null, null, null, null, null, null, '1', '2021-02-22 17:36:14', null, '1', null, null, null, '1', null, null, '2021-02-22 17:36:14', '2021-02-22 17:36:14', null);
INSERT INTO `edi_files` VALUES ('111', '1', null, '0', 'orders', 'Williams210/202102/111.txt', null, null, null, '1', '2021-02-22 17:36:59', null, '0', null, '1', null, '1', null, null, '2021-02-22 17:36:59', '2021-02-22 17:58:23', null);
INSERT INTO `edi_files` VALUES ('112', '1', null, '0', 'orders', 'Williams210/202102/112.txt', null, null, null, '1', '2021-02-22 17:51:01', null, '0', null, '1', null, '1', null, null, '2021-02-22 17:51:01', '2021-02-22 17:59:57', null);
INSERT INTO `edi_files` VALUES ('113', '1', null, null, null, null, null, null, null, '1', '2021-02-22 18:00:10', null, '1', null, null, null, '1', null, null, '2021-02-22 18:00:10', '2021-02-22 18:00:10', null);
INSERT INTO `edi_files` VALUES ('114', '1', null, null, null, null, null, null, null, '1', '2021-02-22 18:02:29', null, '1', null, null, null, '1', null, null, '2021-02-22 18:02:29', '2021-02-22 18:02:29', null);
INSERT INTO `edi_files` VALUES ('115', '1', null, '0', 'orders', 'Williams210/202102/115.txt', null, null, null, '1', '2021-02-22 18:04:07', null, '0', null, '1', null, '1', null, null, '2021-02-22 18:04:07', '2021-02-22 18:04:19', null);
INSERT INTO `edi_files` VALUES ('116', '1', null, '0', 'orders', 'Williams210/202102/116.txt', null, null, null, '1', '2021-02-22 18:05:36', null, '0', null, '1', null, '1', null, null, '2021-02-22 18:05:36', '2021-02-22 18:07:53', null);
INSERT INTO `edi_files` VALUES ('117', '1', null, '0', 'orders', 'Williams210/202102/117.txt', null, null, null, '1', '2021-02-22 18:12:52', null, '0', null, '1', null, '1', null, null, '2021-02-22 18:12:52', '2021-02-22 18:13:48', null);
INSERT INTO `edi_files` VALUES ('118', '1', null, null, null, null, null, null, null, '1', '2021-02-22 18:17:30', null, '1', null, null, null, '1', null, null, '2021-02-22 18:17:30', '2021-02-22 18:17:30', null);
INSERT INTO `edi_files` VALUES ('119', '1', null, null, null, null, null, null, null, '1', '2021-02-22 18:31:01', null, '1', null, null, null, '1', null, null, '2021-02-22 18:31:01', '2021-02-22 18:31:01', null);
INSERT INTO `edi_files` VALUES ('120', '1', null, null, null, null, null, null, null, '1', '2021-02-22 18:34:36', null, '1', null, null, null, '1', null, null, '2021-02-22 18:34:36', '2021-02-22 18:34:36', null);
INSERT INTO `edi_files` VALUES ('121', '1', null, '0', 'orders', 'Williams210/202102/121.txt', null, null, null, '1', '2021-02-22 19:42:29', null, '0', null, '1', null, '1', null, null, '2021-02-22 19:42:29', '2021-02-22 19:44:06', null);
INSERT INTO `edi_files` VALUES ('122', '1', null, '0', 'orders', 'Williams210/202102/122.txt', null, null, null, '1', '2021-02-22 19:44:26', null, '0', null, '1', null, '1', null, null, '2021-02-22 19:44:26', '2021-02-22 19:56:06', null);
INSERT INTO `edi_files` VALUES ('123', '1', null, '0', 'orders', 'Williams210/202102/123.txt', null, null, null, '1', '2021-02-22 19:56:24', null, '0', null, '1', null, '1', null, null, '2021-02-22 19:56:24', '2021-02-22 19:57:10', null);
INSERT INTO `edi_files` VALUES ('124', '1', null, '0', 'orders', 'Williams210/202102/124.txt', null, null, null, '1', '2021-02-22 20:29:12', null, '0', null, '1', null, '1', null, null, '2021-02-22 20:29:12', '2021-02-22 20:33:43', null);
INSERT INTO `edi_files` VALUES ('125', '1', null, '0', 'orders', 'Williams210/202102/125.txt', null, null, null, '1', '2021-02-22 20:35:44', null, '0', null, '1', null, '1', null, null, '2021-02-22 20:35:44', '2021-02-22 20:36:48', null);
INSERT INTO `edi_files` VALUES ('126', '1', null, '0', 'orders', 'Williams210/202102/126.txt', null, null, null, '1', '2021-02-22 21:33:16', null, '0', null, '1', null, '1', null, null, '2021-02-22 21:33:16', '2021-02-22 21:35:06', null);
INSERT INTO `edi_files` VALUES ('127', '1', null, '0', 'orders', 'Williams210/202102/127.txt', null, null, null, '1', '2021-02-22 21:38:06', null, '0', null, '1', null, '1', null, null, '2021-02-22 21:38:06', '2021-02-22 21:39:06', null);
INSERT INTO `edi_files` VALUES ('128', '1', null, '0', 'orders', 'Williams210/202102/128.txt', null, null, null, '1', '2021-02-22 21:45:15', null, '0', null, '1', null, '1', null, null, '2021-02-22 21:45:15', '2021-02-22 21:54:28', null);
INSERT INTO `edi_files` VALUES ('129', '1', null, null, null, null, null, null, null, '1', '2021-02-22 21:58:25', null, '1', null, null, null, '1', null, null, '2021-02-22 21:58:25', '2021-02-22 21:58:25', null);
INSERT INTO `edi_files` VALUES ('130', '1', null, '0', 'orders', 'Williams210/202102/130.txt', null, null, null, '1', '2021-02-22 22:06:44', null, '0', null, '1', null, '1', null, null, '2021-02-22 22:06:44', '2021-02-22 22:09:07', null);
INSERT INTO `edi_files` VALUES ('131', '1', null, '0', 'orders', 'Williams210/202102/131.txt', null, null, null, '1', '2021-02-22 22:11:51', null, '0', null, '1', null, '1', null, null, '2021-02-22 22:11:51', '2021-02-22 22:20:31', null);
INSERT INTO `edi_files` VALUES ('132', '1', null, '0', 'orders', 'Williams210/202102/132.txt', null, null, null, '1', '2021-02-22 22:21:10', null, '0', null, '1', null, '1', null, null, '2021-02-22 22:21:10', '2021-02-22 22:23:25', null);
INSERT INTO `edi_files` VALUES ('133', '1', null, '0', 'orders', 'Williams210/202102/133.txt', null, null, null, '1', '2021-02-22 22:35:29', null, '0', null, '1', null, '1', null, null, '2021-02-22 22:35:29', '2021-02-22 22:57:53', null);
INSERT INTO `edi_files` VALUES ('134', '1', null, '0', 'orders', 'Williams210/202102/134.txt', null, null, null, '1', '2021-02-22 22:58:06', null, '0', null, '1', null, '1', null, null, '2021-02-22 22:58:06', '2021-02-22 22:59:48', null);
INSERT INTO `edi_files` VALUES ('135', '1', null, '0', 'orders', 'Williams210/202102/135.txt', null, null, null, '1', '2021-02-22 23:01:36', null, '0', null, '1', null, '1', null, null, '2021-02-22 23:01:36', '2021-02-22 23:03:10', null);
INSERT INTO `edi_files` VALUES ('136', '1', null, '0', 'orders', 'Williams210/202102/136.txt', null, null, null, '1', '2021-02-22 23:07:51', null, '0', null, '1', null, '1', null, null, '2021-02-22 23:07:51', '2021-02-22 23:13:10', null);
INSERT INTO `edi_files` VALUES ('137', '1', null, '0', 'orders', 'Williams210/202102/137.txt', null, null, null, '1', '2021-02-22 23:13:22', null, '0', null, '1', null, '1', null, null, '2021-02-22 23:13:22', '2021-02-22 23:14:24', null);
INSERT INTO `edi_files` VALUES ('138', '1', null, '0', 'orders', 'Williams210/202102/138.txt', null, null, null, '1', '2021-02-22 23:20:23', null, '0', null, '1', null, '1', null, null, '2021-02-22 23:20:23', '2021-02-22 23:20:43', null);
INSERT INTO `edi_files` VALUES ('139', '1', null, null, null, null, null, null, null, '1', '2021-02-22 23:30:26', null, '1', null, null, null, '1', null, null, '2021-02-22 23:30:26', '2021-02-22 23:30:26', null);
INSERT INTO `edi_files` VALUES ('140', '1', null, '0', 'orders', 'Williams210/202102/140.txt', null, null, null, '1', '2021-02-22 23:43:58', null, '0', null, '1', null, '1', null, null, '2021-02-22 23:43:58', '2021-02-22 23:50:32', null);
INSERT INTO `edi_files` VALUES ('141', '1', null, '0', 'orders', 'Williams210/202102/141.txt', null, null, null, '1', '2021-02-22 23:50:58', null, '0', null, '1', null, '1', null, null, '2021-02-22 23:50:58', '2021-02-22 23:51:35', null);
INSERT INTO `edi_files` VALUES ('142', '1', null, '0', 'orders', 'Williams210/202102/142.txt', null, null, null, '1', '2021-02-23 00:25:08', null, '0', null, '1', null, '1', null, null, '2021-02-23 00:25:08', '2021-02-23 00:25:50', null);
INSERT INTO `edi_files` VALUES ('143', '1', null, '0', 'orders', 'Williams210/202102/143.txt', null, null, null, '1', '2021-02-23 00:26:49', null, '0', null, '1', null, '1', null, null, '2021-02-23 00:26:49', '2021-02-23 00:27:24', null);
INSERT INTO `edi_files` VALUES ('144', '1', null, '0', 'orders', 'Williams210/202102/144.txt', null, null, null, '1', '2021-02-23 00:28:00', null, '0', null, '1', null, '1', null, null, '2021-02-23 00:28:00', '2021-02-23 00:31:07', null);
INSERT INTO `edi_files` VALUES ('145', '1', null, null, null, null, null, null, null, '1', '2021-02-23 00:32:03', null, '1', null, null, null, '1', null, null, '2021-02-23 00:32:03', '2021-02-23 00:32:03', null);
INSERT INTO `edi_files` VALUES ('146', '1', null, '0', 'orders', 'Williams210/202102/146.txt', null, null, null, '1', '2021-02-23 00:33:56', null, '0', null, '1', null, '1', null, null, '2021-02-23 00:33:56', '2021-02-23 00:35:50', null);
INSERT INTO `edi_files` VALUES ('147', '1', null, '0', 'orders', 'Williams210/202102/147.txt', null, null, null, '1', '2021-02-23 00:41:53', null, '0', null, '1', null, '1', null, null, '2021-02-23 00:41:53', '2021-02-23 00:42:54', null);

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
-- Records of edi_transaction_sets
-- ----------------------------

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

-- ----------------------------
-- Records of edi_types
-- ----------------------------
INSERT INTO `edi_types` VALUES ('1', '1', '210', '4010', '0', 'Williams210', '0', '46', '0', '0', '0', '-1', null, null, 'Williams', null, null, null, '-1', '1', '', '', 'O:43:\"Bgies\\Phpedi\\lib\\x12\\options\\Send210Options\":58:{s:19:\"DefaultLocationCode\";s:0:\"\";s:34:\"UseSeparateGSSegmentForEachCarrier\";b:0;s:24:\"ErrorOnZeroInvoiceAmount\";b:1;s:24:\"ErrorOnBlankLocationCode\";b:0;s:27:\"ErrorOnBlankLocationAddress\";b:1;s:31:\"ConvertInvoiceNumberToUpperCase\";b:0;s:9:\"B3Options\";O:38:\"Bgies\\Phpedi\\lib\\x12\\options\\B3Options\":1:{s:19:\"CleanUpBillofLading\";b:0;}s:15:\"Loop0100Options\";O:43:\"Bgies\\Phpedi\\lib\\x12\\options\\Seg210Loop0100\":11:{s:8:\"MaxCount\";i:4;s:9:\"LoopCount\";i:4;s:30:\"AllowCanadianPostalCodesForZip\";b:1;s:19:\"CleanMexicanZipCode\";b:1;s:22:\"TruncateAddressAtSlash\";b:0;s:42:\"UseCarrierCustomerCodeForPerformingCarrier\";b:0;s:5:\"UseN1\";b:1;s:5:\"UseN2\";b:0;s:5:\"UseN3\";b:1;s:5:\"UseN4\";b:0;s:5:\"UseN9\";b:0;}s:10:\"N9Segments\";s:32:\"BM:BillOfLading|CN:InvoiceNumber\";s:31:\"Loop0060ConvertValueToUpperCase\";b:0;s:33:\"Loop0060UseFieldNameAsDescription\";b:0;s:15:\"Loop0400Options\";O:44:\"Bgies\\Phpedi\\lib\\x12\\options\\Loop0400Options\":2:{s:28:\"SkipL0SegmentWhenFieldsBlank\";b:0;s:13:\"UseL7InLXLoop\";b:1;}s:18:\"MakeGSTFirstLXLoop\";b:0;s:33:\"RemoveSpaceFromCanadianPostalCode\";b:0;s:8:\"TestFile\";O:40:\"Bgies\\Phpedi\\lib\\x12\\options\\TestFile210\":7:{s:24:\"ErrorOnBlankLocationCode\";b:0;s:27:\"ErrorOnBlankLocationAddress\";b:1;s:28:\"ErrorOnNegativeInvoiceAmount\";b:1;s:23:\"ErrorOnBlankInvoiceDate\";b:1;s:24:\"ErrorOnZeroInvoiceAmount\";b:1;s:12:\"SendTestFile\";b:0;s:21:\"MakeEntriesInDatabase\";b:0;}s:12:\"UseR3Segment\";b:0;s:12:\"UseH3Segment\";b:0;s:12:\"UseK1Segment\";b:0;s:16:\"clientFileFormat\";s:24:\"faks_yyyymmdd_hhmmss.edi\";s:10:\"delimiters\";O:39:\"Bgies\\Phpedi\\lib\\x12\\objects\\Delimiters\":5:{s:25:\"ComponentElementSeparator\";s:1:\":\";s:16:\"ElementDelimiter\";s:1:\"*\";s:17:\"SegmentTerminator\";s:1:\"~\";s:16:\"ReleaseCharacter\";s:1:\"?\";s:12:\"DecimalPoint\";s:1:\".\";}s:31:\"interchangeControlVersionNumber\";s:5:\"00401\";s:21:\"interchangeReceiverID\";s:10:\"WA-BALLGCC\";s:19:\"interchangeSenderID\";s:4:\"FAKS\";s:26:\"interchangeSenderQualifier\";s:2:\"ZZ\";s:28:\"interchangeReceiverQualifier\";s:2:\"ZZ\";s:21:\"applicationSenderCode\";s:4:\"FAKS\";s:23:\"applicationReceiverCode\";s:10:\"WA-BALLGCC\";s:24:\"transactionSetIdentifier\";s:3:\"210\";s:21:\"ediVersionReleaseCode\";s:4:\"4010\";s:29:\"ediVersionReleaseCodeExtended\";s:5:\"00401\";s:13:\"fileDirection\";s:8:\"outgoing\";s:11:\"ediStandard\";s:3:\"X12\";s:7:\"ediMemo\";a:0:{}s:10:\"errorCount\";i:0;s:9:\"errorList\";a:0:{}s:12:\"fileDateTime\";N;s:20:\"leftPadControlNumber\";b:1;s:19:\"trimExtraDelimiters\";b:0;s:12:\"writeOneLine\";b:0;s:10:\"isTestFile\";b:1;s:5:\"ediId\";i:0;s:28:\"dataInterchangeControlNumber\";i:1;s:16:\"ediReplySettings\";N;s:27:\"useXDigitsFromControlNumber\";i:9;s:15:\"GSControlNumber\";N;s:8:\"fileName\";s:0:\"\";s:9:\"detailSQL\";s:39:\"proc_williams_210_detail :DetailFieldId\";s:14:\"useDetailQuery\";i:1;s:13:\"overwriteFile\";b:0;s:13:\"use4DigitYear\";b:1;s:17:\"edi2DigitYearDate\";s:0:\"\";s:17:\"edi4DigitYearDate\";s:0:\"\";s:7:\"ediTime\";s:0:\"\";s:27:\"identificationCodeQualifier\";s:0:\"\";s:21:\"responsibleAgencyCode\";s:1:\"X\";s:27:\"transactionSetControlNumber\";i:0;s:11:\"TestFile210\";O:40:\"Bgies\\Phpedi\\lib\\x12\\options\\TestFile210\":7:{s:24:\"ErrorOnBlankLocationCode\";b:1;s:27:\"ErrorOnBlankLocationAddress\";b:1;s:28:\"ErrorOnNegativeInvoiceAmount\";b:1;s:23:\"ErrorOnBlankInvoiceDate\";b:1;s:24:\"ErrorOnZeroInvoiceAmount\";b:1;s:12:\"SendTestFile\";b:0;s:21:\"MakeEntriesInDatabase\";b:0;}s:13:\"edi4DigitDate\";s:8:\"20210222\";}', '11', 'O:28:\"Bgies\\Phpedi\\StoredProcedure\":1:{s:19:\"storedProcedureName\";s:17:\"proc_williams_210\";}', '1', 'O:21:\"Bgies\\Phpedi\\FileDrop\":1:{s:8:\"filePath\";s:0:\"\";}', 'FAKS', 'WA-BALLGCC', 'FAKS', 'WA-BALLGCC', '2021-01-05 17:19:39', '2021-02-23 00:42:55', null);
INSERT INTO `edi_types` VALUES ('2', '1', '997', '4010', '1', 'Williams210Reply997', '0', '0', '0', '0', '0', '-1', null, null, 'Williams\\997Incoming', null, null, null, '-1', '1', '', '', 'O:48:\"Bgies\\Phpedi\\lib\\x12\\options\\read\\Read997Options\":50:{s:19:\"pickUpFileDirectory\";s:0:\"\";s:20:\"dropOffFileDirectory\";s:0:\"\";s:16:\"use_include_path\";b:0;s:21:\"FileDirectoryFullPath\";s:0:\"\";s:8:\"FileName\";s:0:\"\";s:8:\"FilePath\";s:0:\"\";s:16:\"EDIReplySettings\";O:42:\"Bgies\\Phpedi\\lib\\x12\\options\\ReplySettings\":23:{s:20:\"AcknowledgeFileOn997\";b:1;s:35:\"AcknowledgeTransactionOn997Accepted\";b:0;s:34:\"AcknlowledgeTransactionOn997Reject\";b:1;s:20:\"AcknowledgeFileOn824\";b:1;s:35:\"AcknowledgeTransactionOn824Accepted\";b:1;s:34:\"AcknlowledgeTransactionOn824Reject\";b:1;s:12:\"ErrorSegment\";s:0:\"\";s:16:\"ErrorTransaction\";a:0:{}s:28:\"OnlyMatchControlNumberWithin\";i:0;s:13:\"SQLCommand824\";a:0:{}s:13:\"SQLCommand997\";a:0:{}s:11:\"DetailQuery\";s:0:\"\";s:9:\"GESegment\";s:0:\"\";s:16:\"GESegmentFilePos\";i:-1;s:9:\"GSSegment\";s:0:\"\";s:16:\"GSSegmentFilePos\";i:-1;s:10:\"IEASegment\";s:0:\"\";s:17:\"IEASegmentFilePos\";i:-1;s:10:\"ISASegment\";s:0:\"\";s:17:\"ISASegmentFilePos\";i:-1;s:16:\"STSegmentFilePos\";i:-1;s:16:\"SESegmentFilePos\";i:-1;s:13:\"FShipmentMemo\";a:0:{}}s:10:\"delimiters\";O:39:\"Bgies\\Phpedi\\lib\\x12\\objects\\Delimiters\":5:{s:25:\"ComponentElementSeparator\";s:1:\":\";s:16:\"ElementDelimiter\";s:1:\"*\";s:17:\"SegmentTerminator\";s:1:\"~\";s:16:\"ReleaseCharacter\";s:1:\"?\";s:12:\"DecimalPoint\";s:1:\".\";}s:31:\"interchangeControlVersionNumber\";s:0:\"\";s:21:\"interchangeReceiverID\";s:0:\"\";s:19:\"interchangeSenderID\";s:0:\"\";s:26:\"interchangeSenderQualifier\";s:2:\"ZZ\";s:28:\"interchangeReceiverQualifier\";s:2:\"ZZ\";s:19:\"applicationSenderID\";s:15:\"ApplicationSend\";s:21:\"applicationReceiverID\";s:14:\"ApplicationRec\";s:26:\"applicationSenderQualifier\";s:2:\"ZZ\";s:28:\"applicationReceiverQualifier\";s:2:\"ZZ\";s:24:\"transactionSetIdentifier\";s:0:\"\";s:21:\"ediVersionReleaseCode\";s:4:\"4010\";s:29:\"ediVersionReleaseCodeExtended\";s:5:\"00401\";s:13:\"fileDirection\";s:8:\"incoming\";s:11:\"ediStandard\";s:3:\"X12\";s:7:\"ediMemo\";a:0:{}s:10:\"errorCount\";i:0;s:9:\"errorList\";a:0:{}s:12:\"fileDateTime\";N;s:20:\"leftPadControlNumber\";b:0;s:19:\"trimExtraDelimiters\";b:0;s:12:\"writeOneLine\";b:1;s:10:\"isTestFile\";b:1;s:5:\"ediId\";i:0;s:28:\"dataInterchangeControlNumber\";i:1;s:16:\"ediReplySettings\";O:42:\"Bgies\\Phpedi\\lib\\x12\\options\\ReplySettings\":23:{s:20:\"AcknowledgeFileOn997\";b:1;s:35:\"AcknowledgeTransactionOn997Accepted\";b:0;s:34:\"AcknlowledgeTransactionOn997Reject\";b:1;s:20:\"AcknowledgeFileOn824\";b:1;s:35:\"AcknowledgeTransactionOn824Accepted\";b:1;s:34:\"AcknlowledgeTransactionOn824Reject\";b:1;s:12:\"ErrorSegment\";s:0:\"\";s:16:\"ErrorTransaction\";a:0:{}s:28:\"OnlyMatchControlNumberWithin\";i:0;s:13:\"SQLCommand824\";a:0:{}s:13:\"SQLCommand997\";a:0:{}s:11:\"DetailQuery\";s:0:\"\";s:9:\"GESegment\";s:0:\"\";s:16:\"GESegmentFilePos\";i:-1;s:9:\"GSSegment\";s:0:\"\";s:16:\"GSSegmentFilePos\";i:-1;s:10:\"IEASegment\";s:0:\"\";s:17:\"IEASegmentFilePos\";i:-1;s:10:\"ISASegment\";s:0:\"\";s:17:\"ISASegmentFilePos\";i:-1;s:16:\"STSegmentFilePos\";i:-1;s:16:\"SESegmentFilePos\";i:-1;s:13:\"FShipmentMemo\";a:0:{}}s:27:\"useXDigitsFromControlNumber\";i:9;s:15:\"GSControlNumber\";N;s:8:\"fileName\";s:0:\"\";s:9:\"detailSQL\";s:0:\"\";s:14:\"useDetailQuery\";i:1;s:13:\"overwriteFile\";b:0;s:13:\"use4DigitYear\";b:0;s:17:\"edi2DigitYearDate\";s:6:\"210124\";s:17:\"edi4DigitYearDate\";s:8:\"20210124\";s:7:\"ediTime\";s:9:\"181200395\";s:27:\"identificationCodeQualifier\";s:2:\"ZZ\";s:21:\"responsibleAgencyCode\";s:1:\"X\";s:27:\"transactionSetControlNumber\";i:0;s:23:\"applicationReceiverCode\";s:0:\"\";s:21:\"applicationSenderCode\";s:0:\"\";s:10:\"N9Segments\";s:32:\"BM:BillOfLading|CN:InvoiceNumber\";s:31:\"Loop0060ConvertValueToUpperCase\";b:0;}', '11', 'O:28:\"Bgies\\Phpedi\\StoredProcedure\":2:{s:19:\"storedProcedureName\";s:20:\"proc_get_997_replies\";s:13:\"directoryName\";s:27:\"edifiles/Williams210Replies\";}', '8', 's:0:\"\";', 'WA-BALLGCC', 'FAKS', 'WA-BALLGCC', 'FAKS', '2021-01-22 19:54:20', '2021-02-04 00:28:54', null);
SET FOREIGN_KEY_CHECKS=1;
