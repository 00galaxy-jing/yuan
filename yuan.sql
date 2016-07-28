/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : yuan

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-07-28 14:55:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookkeeping
-- ----------------------------
DROP TABLE IF EXISTS `bookkeeping`;
CREATE TABLE `bookkeeping` (
  `bk_id` int(11) NOT NULL,
  `bk_class` int(11) NOT NULL,
  `bk_content` text NOT NULL,
  `bk_time` datetime NOT NULL,
  `bk_is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookkeeping
-- ----------------------------

-- ----------------------------
-- Table structure for changeorcancellation
-- ----------------------------
DROP TABLE IF EXISTS `changeorcancellation`;
CREATE TABLE `changeorcancellation` (
  `cc_id` int(11) NOT NULL,
  `cc_class` int(11) NOT NULL,
  `cc_content` text NOT NULL,
  `cc_time` datetime NOT NULL,
  `cc_is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changeorcancellation
-- ----------------------------

-- ----------------------------
-- Table structure for companyprofiles
-- ----------------------------
DROP TABLE IF EXISTS `companyprofiles`;
CREATE TABLE `companyprofiles` (
  `cp_id` int(11) NOT NULL,
  `cp_profiles` text NOT NULL,
  `cp_tel` varchar(100) NOT NULL,
  `cp_email` varchar(150) NOT NULL,
  `cp_address` varchar(80) NOT NULL,
  `cp_is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyprofiles
-- ----------------------------

-- ----------------------------
-- Table structure for companyregistration
-- ----------------------------
DROP TABLE IF EXISTS `companyregistration`;
CREATE TABLE `companyregistration` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cr_class` int(11) NOT NULL,
  `cr_content` text NOT NULL,
  `cr_time` datetime NOT NULL,
  `cr_is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyregistration
-- ----------------------------

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `fb_id` int(11) NOT NULL,
  `fb_email` varchar(20) NOT NULL,
  `fb_tel` varchar(15) NOT NULL,
  `fb_content` text NOT NULL,
  `fb_is_read` tinyint(1) NOT NULL DEFAULT '0',
  `fb_is_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for jobpostings
-- ----------------------------
DROP TABLE IF EXISTS `jobpostings`;
CREATE TABLE `jobpostings` (
  `jp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jp_title` varchar(15) DEFAULT NULL,
  `jp_requirement` longtext,
  `jp_salary` varchar(10) DEFAULT NULL,
  `jp_job_details` longtext,
  `jp_pubtime` date DEFAULT NULL,
  `jp_endtime` date DEFAULT NULL,
  `jp_is_deleted` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`jp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobpostings
-- ----------------------------
INSERT INTO `jobpostings` VALUES ('1', '工作1', '本科；20-35岁', '1500-2500', '这是工作1的简介', '2016-07-20', '2016-07-29', '0', null, null);
INSERT INTO `jobpostings` VALUES ('2', '工作2', '本科；3年以上经验；25-40岁', '2000-3500', '这是工作2的简介', '2016-07-14', '2016-07-30', '0', null, null);
INSERT INTO `jobpostings` VALUES ('3', '工作3', '高中及以上；勤劳；有经验', '1000-1800', '这是工作3的简介', '2016-07-12', '2016-07-24', '0', null, null);

-- ----------------------------
-- Table structure for successfulcase
-- ----------------------------
DROP TABLE IF EXISTS `successfulcase`;
CREATE TABLE `successfulcase` (
  `sc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sc_company_name` longtext,
  `sc_image` varchar(200) DEFAULT NULL,
  `sc_is_deleted` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of successfulcase
-- ----------------------------
INSERT INTO `successfulcase` VALUES ('1', '甲公司', 'jia.jpg', '0', null, null);
INSERT INTO `successfulcase` VALUES ('2', '乙公司', 'yi.jpg', '0', null, null);
INSERT INTO `successfulcase` VALUES ('3', '丙公司', 'bin.jpg', '0', null, null);
