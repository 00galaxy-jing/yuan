/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : yuan

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-08-04 15:45:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookkeeping
-- ----------------------------
DROP TABLE IF EXISTS `bookkeeping`;
CREATE TABLE `bookkeeping` (
  `bk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bk_class` int(11) DEFAULT NULL,
  `bk_title_id` varchar(50) DEFAULT NULL,
  `bk_title` varchar(100) DEFAULT NULL,
  `bk_content` longtext,
  `bk_is_deleted` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`bk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookkeeping
-- ----------------------------
INSERT INTO `bookkeeping` VALUES ('1', '1', null, null, '<p style=\"text-indent: 2em; text-align: left;\">代理记账的流程...</p><p style=\"text-indent: 2em; text-align: left;\">包括：</p><p style=\"text-indent: 2em; text-align: left;\">1、步骤1；</p><p style=\"text-indent: 2em; text-align: left;\">2、步骤2；</p><p style=\"text-indent: 2em; text-align: left;\">3、步骤3；</p><p style=\"text-indent: 2em; text-align: left;\">4、步骤4；</p><p style=\"text-indent: 2em; text-align: left;\">5、步骤5；</p><p style=\"text-indent: 2em; text-align: left;\">6、步骤6。</p>', '0', '2016-07-29 16:14:19');
INSERT INTO `bookkeeping` VALUES ('2', '2', null, null, '<p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 18px;\">balalballalala，<a href=\"http://www.feikuaihn.com/Projects/dljzgs.html\" target=\"_self\" title=\"点击查看选择代理记账的好处\">代理记账</a>是指将本企业的会计核算、记账、报税等一系列的会计工作，全部委托给专业记账公司完成，本企业只设出纳，负责日常货币收支业务和财产保管等工作。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 18px;\"><br></span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 18px;\">代理记帐是一种会计解决方案，为企业提供基础会计服务。中小企业选择<a href=\"http://www.feikuaihn.com/Projects/dljzgs.html\" target=\"_self\" title=\"点击查看代理记账的好处\">代理记帐服务</a>，能够在降低本单位会计人员成本和开支的同时，充分发挥财务公司的会计团队丰富专业经验、熟悉财税法规等优势，有效用足财税政策，降低企业财税风险，轻松应对各种监督检查，享受高品质、专业化的财务会计全程服务。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 18px;\"><br></span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 18px;\">代理记帐在一些发达国家已很普及，国内开展稍晚。由于它有成本低、服务专业、方便实用的突出优势，充当众多中小企业的会计角色。国内的外资企业对这种会计方式了解较早，认同度也高，采用的也较多。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 18px;\"><br></span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 18px;\">代理记帐服务方式分为客户送达和上门服务二种。客户送达是客户将全部原始资料送到财务记账公司或由财务记账公司派人到客户处取回原始资料，由财务记账公司进行记账和核算工作。上门服务是财务记帐公司指定会计，定期到客户单位进行面对面服务。服务方式可由客户根据自身业务需要和财务记帐公司协商，选择适合企业的服务方式。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 18px;\"><br></span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 18px;\">近些年来，各大城市中，人们对新事物的接受能力强，很多企业也相继采用这种会计方式，越来越被国内的中小企业认同和采用，代理记帐公司也发展得很快，服务水平也越来越好，为企业提供众多选择。</span></p>', '0', '2016-07-29 16:25:57');

-- ----------------------------
-- Table structure for changeorcancellation
-- ----------------------------
DROP TABLE IF EXISTS `changeorcancellation`;
CREATE TABLE `changeorcancellation` (
  `cc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cc_class` int(11) DEFAULT NULL,
  `cc_title_id` varchar(50) DEFAULT NULL,
  `cc_title` varchar(100) DEFAULT NULL,
  `cc_content` longtext,
  `cc_is_deleted` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
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
  `cp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cp_class` int(11) DEFAULT NULL,
  `cp_profiles` longtext,
  `cp_tel` varchar(100) DEFAULT NULL,
  `cp_email` varchar(150) DEFAULT NULL,
  `cp_address` varchar(80) DEFAULT NULL,
  `cp_is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyprofiles
-- ----------------------------
INSERT INTO `companyprofiles` VALUES ('1', '2', '001.jpg', null, null, null, '0');
INSERT INTO `companyprofiles` VALUES ('2', '2', '002.jpg', null, null, null, '0');
INSERT INTO `companyprofiles` VALUES ('3', '2', '003.jpg', null, null, null, '0');
INSERT INTO `companyprofiles` VALUES ('4', '2', '004.jpg', null, null, null, '0');
INSERT INTO `companyprofiles` VALUES ('5', '2', '005.jpg', null, null, null, '0');
INSERT INTO `companyprofiles` VALUES ('6', '3', null, '0737-1234567;0737-2345678;13012345678', 'example01@qq.com;example02@163.com', '湖南省益阳市xx区xx路xx号', '0');

-- ----------------------------
-- Table structure for companyregistration
-- ----------------------------
DROP TABLE IF EXISTS `companyregistration`;
CREATE TABLE `companyregistration` (
  `cr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cr_class` int(11) DEFAULT NULL,
  `cr_title_id` varchar(50) DEFAULT NULL,
  `cr_title` varchar(100) DEFAULT NULL,
  `cr_content` longtext,
  `cr_is_deleted` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
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
  `fb_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(20) DEFAULT NULL,
  `fb_tel` varchar(50) DEFAULT NULL,
  `fb_content` longtext,
  `fb_is_read` tinyint(1) DEFAULT NULL,
  `fb_is_deleted` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '避避', '132135461', '这是一条留言', '0', '0', '2016-07-28 23:09:22');

-- ----------------------------
-- Table structure for jobpostings
-- ----------------------------
DROP TABLE IF EXISTS `jobpostings`;
CREATE TABLE `jobpostings` (
  `jp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jp_title` varchar(15) DEFAULT NULL,
  `jp_requirement` longtext,
  `jp_salary` varchar(20) DEFAULT NULL,
  `jp_job_details` longtext,
  `jp_pubtime` date DEFAULT NULL,
  `jp_endtime` date DEFAULT NULL,
  `jp_is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`jp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobpostings
-- ----------------------------
INSERT INTO `jobpostings` VALUES ('1', '工作1', '本科；20-35岁', '1500-2500', '这是工作1的简介', '2016-07-20', '2016-07-29', '0');
INSERT INTO `jobpostings` VALUES ('2', '工作2', '本科；3年以上经验；25-40岁', '2000-3500', '这是工作2的简介', '2016-07-14', '2016-07-30', '0');
INSERT INTO `jobpostings` VALUES ('3', '工作3', '高中及以上；勤劳；有经验', '1000-1800', '这是工作3的简介', '2016-07-12', '2016-07-24', '0');

-- ----------------------------
-- Table structure for successfulcase
-- ----------------------------
DROP TABLE IF EXISTS `successfulcase`;
CREATE TABLE `successfulcase` (
  `sc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sc_company_name` longtext,
  `sc_image` varchar(200) DEFAULT NULL,
  `sc_is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of successfulcase
-- ----------------------------
INSERT INTO `successfulcase` VALUES ('1', '甲公司', 'jia.jpg', '0');
INSERT INTO `successfulcase` VALUES ('2', '乙公司', 'yi.jpg', '0');
INSERT INTO `successfulcase` VALUES ('3', '丙公司', 'bin.jpg', '0');

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `team_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team_description` longtext,
  `team_name` varchar(100) DEFAULT NULL,
  `team_img` varchar(255) DEFAULT NULL,
  `team_is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team
-- ----------------------------
