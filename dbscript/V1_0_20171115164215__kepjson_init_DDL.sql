/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : smartfactory2

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-23 12:58:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for channels_profile
-- ----------------------------
DROP TABLE IF EXISTS `channels_profile`;
CREATE TABLE `channels_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT 'common.ALLTYPES_NAME',
  `description` varchar(20) DEFAULT NULL COMMENT 'common.ALLTYPES_DESCRIPTION',
  `network_adapter` varchar(128) DEFAULT NULL COMMENT 'servermain.CHANNEL_ETHERNET_COMMUNICATIONS_NETWORK_ADAPTER_STRIN',
  `multiple_types_device_driver` varchar(40) DEFAULT NULL COMMENT 'servermain.MULTIPLE_TYPES_DEVICE_DRIVER   Allen-Bradley ControlLogix Ethernet/Modbus TCP/IP Ethernet',
  `modbus_port_number` int(11) DEFAULT NULL COMMENT 'modbus_ethernet.CHANNEL_ETHERNET_PORT_NUMBER',
  `modbus_protocol` tinyint(4) DEFAULT NULL COMMENT 'modbus_ethernet.CHANNEL_ETHERNET_PROTOCOL',
  `modbus_max_sockets` tinyint(4) DEFAULT NULL COMMENT 'modbus_ethernet.CHANNEL_MAXIMUM_SOCKETS_PER_DEVICE',
  `modbus_one_or_more_sockets` tinyint(4) DEFAULT NULL COMMENT 'modbus_ethernet.CHANNEL_USE_ONE_OR_MORE_SOCKETS_PER_DEVICE',
  `profile` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`profile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of channels_profile
-- ----------------------------
INSERT INTO `channels_profile` VALUES ('96', 'CW_10_qt_tcs2', 'CW_10_qt_tcs2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.21)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('97', 'CW_7_qt_cw', 'CW_7_qt_cw', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.22)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('98', 'CW_8_qt_xg2', 'CW_8_qt_xg2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.23)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('99', 'CW_9_qt_xg2', 'CW_9_qt_xg2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.24)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('100', 'CW_1_db', 'CW_1_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.25)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('101', 'CW_2_db', 'CW_2_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.26)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('102', 'CW_3_db', 'CW_3_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.27)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('103', 'CW_4_db', 'CW_4_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.28)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('104', 'CW_5_db', 'CW_5_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.29)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('105', 'CW_6_db', 'CW_6_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.30)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('106', 'TCS1_1_db', 'TCS1_1_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.31)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('107', 'TCS1_2_db', 'TCS1_2_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.32)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('108', 'TCS2_1_db', 'TCS2_1_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.33)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('109', 'TCS2_2_db', 'TCS2_2_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.34)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('110', 'XG1_1_db', 'XG1_1_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.35)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('111', 'XG1_2_db', 'XG1_2_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.36)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('112', 'XG1_3_db', 'XG1_3_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.37)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('113', 'XG1_4_db', 'XG1_4_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.38)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('114', 'XG1_5_db', 'XG1_5_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.39)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('115', 'XG1_6_db', 'XG1_6_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.40)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('116', 'XG1_7_db', 'XG1_7_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.41)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('117', 'XG2_1_db', 'XG2_1_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.42)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('118', 'XG2_2_db', 'XG2_2_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.43)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('119', 'XG2_3_db', 'XG2_3_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.44)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('120', 'XG2_4_db', 'XG2_4_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.45)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('121', 'XG2_5_db', 'XG2_5_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.46)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('122', 'XG2_6_db', 'XG2_6_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.47)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('123', 'XG2_7_db', 'XG2_7_db', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.48)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('124', 'XG2_8_gf', 'XG2_8_gf', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.49)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('125', 'XG_FP_2492', 'XG_FP_2492', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.50)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('126', 'XG_FP_2493', 'XG_FP_2493', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.51)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('127', 'XG_FP_2494', 'XG_FP_2494', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.52)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('128', 'XG_FP_2495', 'XG_FP_2495', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.53)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('129', 'XG_FP_2496', 'XG_FP_2496', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.54)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('130', 'XG_FP_2496A', 'XG_FP_2496A', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.55)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('353', 'XG2_19_gf', 'XG2_19_gf', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.49)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('354', 'XG_CP_2510', 'XG_CP_2510', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.76)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('355', 'XG_CP_2511', 'XG_CP_2511', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.76)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('356', 'XG_CP_2512', 'XG_CP_2512', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.76)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('357', 'XG_CP_2530', 'XG_CP_2530', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.76)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('358', 'XG_CP_2531', 'XG_CP_2531', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.76)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('359', 'XG_CP_2532', 'XG_CP_2532', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.76)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('360', 'XG2_4_MK', 'XG2_4_MK', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.83)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('361', 'TCS2_5_qt_cw', 'TCS2_5_qt_cw', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.21)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('362', 'TCS2_5_qt_xg2', 'TCS2_5_qt_xg2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.22)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('363', 'TCS2_5_qt_tcs2', 'TCS2_5_qt_tcs2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.23)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('364', 'TCS2_6_qt_xg2', 'TCS2_6_qt_xg2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.24)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('365', 'TCS2_7_qt_xg2', 'TCS2_7_qt_xg2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.25)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('366', 'TCS2_8_qt_xg2', 'TCS2_8_qt_xg2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.26)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('367', 'TCS2_9_qt_xg2', 'TCS2_9_qt_xg2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.27)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('368', 'TCS2_9_qt_tcs2', 'TCS2_9_qt_tcs2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.28)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('369', 'TCS2_10_qt_tcs2', 'TCS2_10_qt_tcs2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.29)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('370', 'TCS2_11_qt_tcs2', 'TCS2_11_qt_tcs2', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.30)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('371', 'TCS2_11_qt_cw', 'TCS2_11_qt_cw', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.31)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('372', 'TCS2_12_qt_cw', 'TCS2_12_qt_cw', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.32)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('373', 'XG_FP_1492', 'XG_FP_1492', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.50)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('374', 'XG_FP_1493', 'XG_FP_1493', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.50)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('375', 'XG_FP_1494', 'XG_FP_1494', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.50)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('376', 'XG_FP_1495', 'XG_FP_1495', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.50)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('377', 'XG_FP_1496', 'XG_FP_1496', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.50)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('378', 'XG_FP_1496A', 'XG_FP_1496A', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.50)', 'Modbus TCP/IP Ethernet', '502', '0', '1', '1', 'dev-normal');
INSERT INTO `channels_profile` VALUES ('379', 'CW_4_szl', 'CW_4_szl', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.50)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('380', 'TCS_1_10_szl', 'TCS_1_10_szl', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.50)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');
INSERT INTO `channels_profile` VALUES ('381', 'TCS_2_10_szl', 'TCS_2_10_szl', '192.168.3.173:Qualcomm Atheros AR8171/8175 PCI-E Gigabit Ethernet Controller (NDIS 6.50)', 'Allen-Bradley ControlLogix Ethernet', null, null, null, null, 'dev-normal');

/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : smartfactory2

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-23 12:59:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for devices_profile
-- ----------------------------
DROP TABLE IF EXISTS `devices_profile`;
CREATE TABLE `devices_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT 'common.ALLTYPES_NAME',
  `description` varchar(20) DEFAULT NULL COMMENT 'common.ALLTYPES_DESCRIPTION',
  `driver` varchar(40) DEFAULT NULL COMMENT 'servermain.MULTIPLE_TYPES_DEVICE_DRIVER  Allen-Bradley ControlLogix Ethernet/Modbus TCP/IP Ethernet',
  `ip` varchar(64) DEFAULT NULL COMMENT 'servermain.DEVICE_ID_STRING',
  `scan_mode` tinyint(4) DEFAULT NULL COMMENT 'servermain.DEVICE_SCAN_MODE',
  `scan_rate` int(10) DEFAULT NULL COMMENT 'servermain.DEVICE_SCAN_MODE_RATE_MS',
  `protocol_mode` tinyint(4) DEFAULT NULL,
  `model` tinyint(4) DEFAULT NULL COMMENT 'servermain.DEVICE_MODEL',
  `port_number` int(10) DEFAULT NULL COMMENT 'controllogix_ethernet.DEVICE_PORT_NUMBER  default:44818',
  `modbus_port_number` int(10) DEFAULT NULL COMMENT 'modbus_ethernet.DEVICE_ETHERNET_PORT_NUMBER  default：502',
  `channel_name` varchar(20) DEFAULT NULL,
  `profile` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`channel_name`,`profile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devices_profile
-- ----------------------------
INSERT INTO `devices_profile` VALUES ('511', 'CW_1_db', 'CW_1_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'CW_1_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('512', 'CW_2_db', 'CW_2_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'CW_2_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('513', 'CW_3_db', 'CW_3_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'CW_3_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('514', 'TCS1_1_db', 'TCS1_1_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS1_1_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('515', 'TCS2_1_db', 'TCS2_1_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_1_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('516', 'XG1_1_db', 'XG1_1_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'XG1_1_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('517', 'XG1_2_db', 'XG1_2_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'XG1_2_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('518', 'XG1_3_db', 'XG1_3_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'XG1_3_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('519', 'XG2_1_db', 'XG2_1_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'XG2_1_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('520', 'XG2_2_db', 'XG2_2_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'XG2_2_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('521', 'XG2_3_db', 'XG2_3_db', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'XG2_3_db', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('522', 'XG2_19_gf', 'XG2_19_gf', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'XG2_19_gf', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('523', 'FP_2492', '2492', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.21', '2', '300', null, '0', null, '502', 'XG_FP_2492', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('524', 'FP_2493', '2493', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.22', '2', '300', null, '0', null, '502', 'XG_FP_2493', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('525', 'FP_2494', '2494', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.23', '2', '300', null, '0', null, '502', 'XG_FP_2494', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('526', 'FP_2495', '2495', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.24', '2', '300', null, '0', null, '502', 'XG_FP_2495', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('527', 'FP_2496', '2496', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.25', '2', '300', null, '0', null, '502', 'XG_FP_2496', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('528', 'FP_2496A', '2496A', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.26', '2', '300', null, '0', null, '502', 'XG_FP_2496A', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('529', 'CP_2510', '2510', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.03', '2', '300', null, '0', null, '502', 'XG_CP_2510', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('530', 'CP_2511', '2511', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.01', '2', '300', null, '0', null, '502', 'XG_CP_2511', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('531', 'CP_2512', '2512', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.02', '2', '300', null, '0', null, '502', 'XG_CP_2512', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('532', 'CP_2530', '2530', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.11', '2', '300', null, '0', null, '502', 'XG_CP_2530', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('533', 'CP_2531', '2531', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.12', '2', '300', null, '0', null, '502', 'XG_CP_2531', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('534', 'CP_2532', '2532', 'Modbus TCP/IP Ethernet', '<192.168.3.212>.13', '2', '300', null, '0', null, '502', 'XG_CP_2532', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('535', 'XG2_4_MK', 'XG2_4_MK', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'XG2_4_MK', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('536', 'TCS2_5_qt_cw', 'TCS2_5_qt_cw', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_5_qt_cw', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('537', 'TCS2_5_qt_xg2', 'TCS2_5_qt_xg2', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_5_qt_xg2', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('538', 'TCS2_5_qt_tcs2', 'TCS2_5_qt_tcs2', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_5_qt_tcs2', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('539', 'TCS2_6_qt_xg2', 'TCS2_6_qt_xg2', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_6_qt_xg2', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('540', 'TCS2_7_qt_xg2', 'TCS2_7_qt_xg2', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_7_qt_xg2', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('541', 'TCS2_8_qt_xg2', 'TCS2_8_qt_xg2', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_8_qt_xg2', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('542', 'TCS2_9_qt_xg2', 'TCS2_9_qt_xg2', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_9_qt_xg2', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('543', 'TCS2_9_qt_tcs2', 'TCS2_9_qt_tcs2', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_9_qt_tcs2', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('544', 'TCS2_10_qt_tcs2', 'TCS2_10_qt_tcs2', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_10_qt_tcs2', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('545', 'TCS2_11_qt_tcs2', 'TCS2_11_qt_tcs2', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_11_qt_tcs2', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('546', 'TCS2_11_qt_cw', 'TCS2_11_qt_cw', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_11_qt_cw', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('547', 'TCS2_12_qt_cw', 'TCS2_12_qt_cw', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', '0', '0', '44818', null, 'TCS2_12_qt_cw', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('548', 'FP_1492', '1492', 'Modbus TCP/IP Ethernet', '<FP_1492>.11', '2', '300', null, '0', null, '502', 'XG_FP_1492', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('549', 'FP_1493', '1493', 'Modbus TCP/IP Ethernet', '<FP_1493>.12', '2', '300', null, '0', null, '502', 'XG_FP_1493', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('550', 'FP_1494', '1494', 'Modbus TCP/IP Ethernet', '<FP_1494>.13', '2', '300', null, '0', null, '502', 'XG_FP_1494', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('551', 'FP_1495', '1495', 'Modbus TCP/IP Ethernet', '<FP_1495>.14', '2', '300', null, '0', null, '502', 'XG_FP_1495', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('552', 'FP_1496', '1496', 'Modbus TCP/IP Ethernet', '<FP_1496>.15', '2', '300', null, '0', null, '502', 'XG_FP_1496', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('553', 'FP_1496A', '1496A', 'Modbus TCP/IP Ethernet', '<FP_1496A>.16', '2', '300', null, '0', null, '502', 'XG_FP_1496A', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('554', 'CW_4_szl', 'CW_4_szl', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', null, '0', '44818', null, 'CW_4_szl', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('555', 'TCS_2_10_szl', 'TCS_2_10_szl', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', null, '0', '44818', null, 'TCS_2_10_szl', 'dev-normal');
INSERT INTO `devices_profile` VALUES ('556', 'TCS_1_10_szl', 'TCS_1_10_szl', 'Allen-Bradley ControlLogix Ethernet', '<192.168.7.171>,1,0', '2', '1000', null, '0', '44818', null, 'TCS_1_10_szl', 'dev-normal');


/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : smartfactory2

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-23 12:59:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tags_profile
-- ----------------------------
DROP TABLE IF EXISTS `tags_profile`;
CREATE TABLE `tags_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL COMMENT 'common.ALLTYPES_NAME',
  `description` varchar(64) DEFAULT NULL COMMENT 'common.ALLTYPES_DESCRIPTION',
  `address` varchar(40) DEFAULT NULL COMMENT 'servermain.TAG_ADDRESS',
  `data_type` tinyint(4) DEFAULT NULL COMMENT 'servermain.TAG_DATA_TYPE  bool 1 short 4  float 8  long 6',
  `read_write` tinyint(4) DEFAULT NULL COMMENT 'servermain.TAG_READ_WRITE_ACCESS  0:read only  1:read/write',
  `scan_rate` int(10) DEFAULT NULL COMMENT 'servermain.TAG_SCAN_RATE_MILLISECONDS',
  `channel_name` varchar(255) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_name` (`channel_name`,`device_name`,`profile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=225363 DEFAULT CHARSET=utf8;
