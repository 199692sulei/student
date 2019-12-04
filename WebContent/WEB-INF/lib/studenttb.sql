/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : studenttb

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-01-13 18:54:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `studenttb`
-- ----------------------------
DROP TABLE IF EXISTS `studenttb`;
CREATE TABLE `studenttb` (
  `ssno` varchar(6) NOT NULL,
  `ssname` varchar(10) NOT NULL,
  `sssex` varchar(6) DEFAULT NULL,
  `ssage` int(11) DEFAULT NULL,
  `ssmajor` varchar(50) DEFAULT NULL,
  `ssfav` varchar(50) DEFAULT NULL,
  `ssaddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ssno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studenttb
-- ----------------------------
INSERT INTO `studenttb` VALUES ('103302', '哈哈', '女', '18', '计算机软件', '看书', '南阳市');
INSERT INTO `studenttb` VALUES ('103303', '呵呵呵', '男', '18', '计算机软件', '打球', '南阳理工学院');
INSERT INTO `studenttb` VALUES ('103304', '你猜猜', '女', '16', '生物化学', '轮滑', '南阳理工学院');
INSERT INTO `studenttb` VALUES ('103305', '快看看', '男', '18', '软件工程', '舞蹈', '南阳理工学院');
INSERT INTO `studenttb` VALUES ('222', '333', '女', '444', '555', '666', '777');
INSERT INTO `studenttb` VALUES ('33', '33', '男', '33', '33', '33', '33');
INSERT INTO `studenttb` VALUES ('44', '44', '男', '44', '44', '44', '44');
INSERT INTO `studenttb` VALUES ('55', '55', '男', '55', '55', '55', '55');
INSERT INTO `studenttb` VALUES ('555', '555', '男', '555', '555', '555', '555');
INSERT INTO `studenttb` VALUES ('58686', '855', '女', '86', '8686', '868', '868');
INSERT INTO `studenttb` VALUES ('66', '66', '男', '66', '66', '66', '66');
INSERT INTO `studenttb` VALUES ('88', '88', '男', '88', '88', '88', '88');
INSERT INTO `studenttb` VALUES ('99', '呵呵哈', '男', '99', '99', '99', '99');
