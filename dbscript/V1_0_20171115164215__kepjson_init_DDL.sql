
-- ----------------------------
-- Table structure for channels_profile
-- ----------------------------

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
  `profile` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`profile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for devices_profile
-- ----------------------------

CREATE TABLE `devices_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT 'common.ALLTYPES_NAME',
  `description` varchar(20) DEFAULT NULL COMMENT 'common.ALLTYPES_DESCRIPTION',
  `driver` varchar(40) DEFAULT NULL COMMENT 'servermain.MULTIPLE_TYPES_DEVICE_DRIVER  Allen-Bradley ControlLogix Ethernet/Modbus TCP/IP Ethernet',
  `ip` varchar(64) DEFAULT NULL COMMENT 'servermain.DEVICE_ID_STRING',
  `scan_mode` tinyint(4) DEFAULT NULL COMMENT 'servermain.DEVICE_SCAN_MODE',
  `scan_rate` int(10) DEFAULT NULL COMMENT 'servermain.DEVICE_SCAN_MODE_RATE_MS',
  `model` tinyint(4) DEFAULT NULL COMMENT 'servermain.DEVICE_MODEL',
  `port_number` int(10) DEFAULT NULL COMMENT 'controllogix_ethernet.DEVICE_PORT_NUMBER  default:44818',
  `modbus_port_number` int(10) DEFAULT NULL COMMENT 'modbus_ethernet.DEVICE_ETHERNET_PORT_NUMBER  default：502',
  `channel_name` varchar(20) DEFAULT NULL,
  `profile` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`channel_name`,`profile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tags_profile
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=39331 DEFAULT CHARSET=utf8;
