/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : studenttb

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-03-05 17:16:20
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
INSERT INTO `studenttb` VALUES ('1', '呵呵', '男', '65', '哈哈哈', '5665', '65656');
INSERT INTO `studenttb` VALUES ('2', '2', '男', '22', '2', '2', '2');
INSERT INTO `studenttb` VALUES ('3', '3', '男', '3', '3', '3', '3');
INSERT INTO `studenttb` VALUES ('33', '33', '男', '33', '33', '33', '33');
INSERT INTO `studenttb` VALUES ('4', '4', '男', '4', '4', '4', '4');
INSERT INTO `studenttb` VALUES ('6666', '哈哈', '男', '15', '65', '65', '65');
