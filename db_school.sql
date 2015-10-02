/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : db_school

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2015-10-02 08:52:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(32) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `adminType` varchar(32) DEFAULT NULL,
  `regDate` varchar(32) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'zhangsan', '123456', null, '1');
INSERT INTO `t_admin` VALUES ('2', 'lisi', '123456', null, '3');

-- ----------------------------
-- Table structure for `t_bianhao`
-- ----------------------------
DROP TABLE IF EXISTS `t_bianhao`;
CREATE TABLE `t_bianhao` (
  `bId` varchar(25) NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bianhao
-- ----------------------------
INSERT INTO `t_bianhao` VALUES ('101', '本科教学工程');
INSERT INTO `t_bianhao` VALUES ('102', '教学名师');
INSERT INTO `t_bianhao` VALUES ('103', '教学项目立项');
INSERT INTO `t_bianhao` VALUES ('104', '教学成果奖');
INSERT INTO `t_bianhao` VALUES ('105', '多媒体课件大赛');
INSERT INTO `t_bianhao` VALUES ('106', '教材');
INSERT INTO `t_bianhao` VALUES ('107', '教学改革类论文');
INSERT INTO `t_bianhao` VALUES ('108', '讲课比赛');
INSERT INTO `t_bianhao` VALUES ('109', '大学生创新创业项目');
INSERT INTO `t_bianhao` VALUES ('110', '校级开放实验');
INSERT INTO `t_bianhao` VALUES ('111', '院级开放实验');
INSERT INTO `t_bianhao` VALUES ('112', '本科实验');
INSERT INTO `t_bianhao` VALUES ('113', '室建设项目');
INSERT INTO `t_bianhao` VALUES ('114', '指导本科毕业设计（论文）');
INSERT INTO `t_bianhao` VALUES ('115', '研究生创新基金项目');
INSERT INTO `t_bianhao` VALUES ('116', '数学建模、电子设计竞赛、挑战杯');
INSERT INTO `t_bianhao` VALUES ('117', 'A类');
INSERT INTO `t_bianhao` VALUES ('118', 'B类');
INSERT INTO `t_bianhao` VALUES ('201', '国家级');
INSERT INTO `t_bianhao` VALUES ('202', '省级');
INSERT INTO `t_bianhao` VALUES ('203', '校级');
INSERT INTO `t_bianhao` VALUES ('204', '国家级优秀教材');
INSERT INTO `t_bianhao` VALUES ('205', '省级优秀教材');
INSERT INTO `t_bianhao` VALUES ('206', '校级优秀教材');
INSERT INTO `t_bianhao` VALUES ('207', '正版出版教材、讲义');
INSERT INTO `t_bianhao` VALUES ('208', '申报');
INSERT INTO `t_bianhao` VALUES ('209', '优秀');
INSERT INTO `t_bianhao` VALUES ('210', '立项');
INSERT INTO `t_bianhao` VALUES ('211', '立项并结题');
INSERT INTO `t_bianhao` VALUES ('212', '合格');
INSERT INTO `t_bianhao` VALUES ('301', '教学改革重点项目');
INSERT INTO `t_bianhao` VALUES ('302', '教学改革一般项目');
INSERT INTO `t_bianhao` VALUES ('303', '重点项目（含自制仪器设备项目、学校A类项目、研讨课、双语教学');
INSERT INTO `t_bianhao` VALUES ('304', '一般项目（含学校B类项目）');
INSERT INTO `t_bianhao` VALUES ('305', '特等奖');
INSERT INTO `t_bianhao` VALUES ('306', '一等奖');
INSERT INTO `t_bianhao` VALUES ('307', '二等奖');
INSERT INTO `t_bianhao` VALUES ('308', '三等奖');
INSERT INTO `t_bianhao` VALUES ('309', '国家级规划教材');
INSERT INTO `t_bianhao` VALUES ('310', '通过验收');
INSERT INTO `t_bianhao` VALUES ('311', 'CSSCI期刊');
INSERT INTO `t_bianhao` VALUES ('312', '核心期刊');
INSERT INTO `t_bianhao` VALUES ('313', '第一名');
INSERT INTO `t_bianhao` VALUES ('314', '第一层次');
INSERT INTO `t_bianhao` VALUES ('315', '第二层次');
INSERT INTO `t_bianhao` VALUES ('316', '第三层次');
INSERT INTO `t_bianhao` VALUES ('317', '各类单项奖、优秀指导教师奖等');

-- ----------------------------
-- Table structure for `t_checker`
-- ----------------------------
DROP TABLE IF EXISTS `t_checker`;
CREATE TABLE `t_checker` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `departId` int(11) DEFAULT NULL,
  `cname` varchar(32) NOT NULL,
  `cpass` varchar(32) NOT NULL,
  `regDate` varchar(32) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_checker
-- ----------------------------
INSERT INTO `t_checker` VALUES ('101', '1', 'admin', '123', '2011');
INSERT INTO `t_checker` VALUES ('201', '2', 'wangwu', '123', '2011');

-- ----------------------------
-- Table structure for `t_depart`
-- ----------------------------
DROP TABLE IF EXISTS `t_depart`;
CREATE TABLE `t_depart` (
  `departId` int(11) NOT NULL AUTO_INCREMENT,
  `departName` varchar(32) NOT NULL,
  PRIMARY KEY (`departId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_depart
-- ----------------------------
INSERT INTO `t_depart` VALUES ('1', '软件工程');
INSERT INTO `t_depart` VALUES ('2', '网络工程');
INSERT INTO `t_depart` VALUES ('3', '计算机科学与技术');

-- ----------------------------
-- Table structure for `t_hour`
-- ----------------------------
DROP TABLE IF EXISTS `t_hour`;
CREATE TABLE `t_hour` (
  `hourId` int(11) NOT NULL AUTO_INCREMENT,
  `hourNum` int(11) NOT NULL,
  PRIMARY KEY (`hourId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_hour
-- ----------------------------

-- ----------------------------
-- Table structure for `t_passscore`
-- ----------------------------
DROP TABLE IF EXISTS `t_passscore`;
CREATE TABLE `t_passscore` (
  `pId` varchar(25) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_passscore
-- ----------------------------
INSERT INTO `t_passscore` VALUES ('101201', '1500');
INSERT INTO `t_passscore` VALUES ('101202', '600');
INSERT INTO `t_passscore` VALUES ('102201', '1500');
INSERT INTO `t_passscore` VALUES ('102202', '600');
INSERT INTO `t_passscore` VALUES ('103201301', '1500');
INSERT INTO `t_passscore` VALUES ('103201302', '600');
INSERT INTO `t_passscore` VALUES ('103202301', '750');
INSERT INTO `t_passscore` VALUES ('103202302', '300');
INSERT INTO `t_passscore` VALUES ('103203303', '40');
INSERT INTO `t_passscore` VALUES ('103203304', '20');
INSERT INTO `t_passscore` VALUES ('104201305', '5000');
INSERT INTO `t_passscore` VALUES ('104201306', '3000');
INSERT INTO `t_passscore` VALUES ('104201307', '1500');
INSERT INTO `t_passscore` VALUES ('104202305', '1250');
INSERT INTO `t_passscore` VALUES ('104202306', '750');
INSERT INTO `t_passscore` VALUES ('104202307', '300');
INSERT INTO `t_passscore` VALUES ('104203305', '80');
INSERT INTO `t_passscore` VALUES ('104203306', '50');
INSERT INTO `t_passscore` VALUES ('104203307', '30');
INSERT INTO `t_passscore` VALUES ('105201306', '400');
INSERT INTO `t_passscore` VALUES ('105201307', '300');
INSERT INTO `t_passscore` VALUES ('105201308', '200');
INSERT INTO `t_passscore` VALUES ('105202306', '150');
INSERT INTO `t_passscore` VALUES ('105202307', '100');
INSERT INTO `t_passscore` VALUES ('105202308', '80');
INSERT INTO `t_passscore` VALUES ('105203306', '60');
INSERT INTO `t_passscore` VALUES ('105203307', '40');
INSERT INTO `t_passscore` VALUES ('105203308', '20');
INSERT INTO `t_passscore` VALUES ('106204306', '3000');
INSERT INTO `t_passscore` VALUES ('106204307', '1500');
INSERT INTO `t_passscore` VALUES ('106204309', '900');
INSERT INTO `t_passscore` VALUES ('106205306', '600');
INSERT INTO `t_passscore` VALUES ('106205307', '200');
INSERT INTO `t_passscore` VALUES ('106206306', '60');
INSERT INTO `t_passscore` VALUES ('106206307', '40');
INSERT INTO `t_passscore` VALUES ('106206308', '20');
INSERT INTO `t_passscore` VALUES ('106207310', '40');
INSERT INTO `t_passscore` VALUES ('107311', '30');
INSERT INTO `t_passscore` VALUES ('107312', '20');
INSERT INTO `t_passscore` VALUES ('108201306', '400');
INSERT INTO `t_passscore` VALUES ('108201307', '300');
INSERT INTO `t_passscore` VALUES ('108201308', '200');
INSERT INTO `t_passscore` VALUES ('108202306', '150');
INSERT INTO `t_passscore` VALUES ('108202307', '100');
INSERT INTO `t_passscore` VALUES ('108202308', '80');
INSERT INTO `t_passscore` VALUES ('108203306', '60');
INSERT INTO `t_passscore` VALUES ('108203307', '40');
INSERT INTO `t_passscore` VALUES ('108203308', '20');
INSERT INTO `t_passscore` VALUES ('109201', '80');
INSERT INTO `t_passscore` VALUES ('109202', '40');
INSERT INTO `t_passscore` VALUES ('109203', '30');
INSERT INTO `t_passscore` VALUES ('109208', '25');
INSERT INTO `t_passscore` VALUES ('110209', '40');
INSERT INTO `t_passscore` VALUES ('110210', '30');
INSERT INTO `t_passscore` VALUES ('111211', '25');
INSERT INTO `t_passscore` VALUES ('112209', '50');
INSERT INTO `t_passscore` VALUES ('113208', '30');
INSERT INTO `t_passscore` VALUES ('113212', '40');
INSERT INTO `t_passscore` VALUES ('114209', '30');
INSERT INTO `t_passscore` VALUES ('115208', '30');
INSERT INTO `t_passscore` VALUES ('115210', '40');
INSERT INTO `t_passscore` VALUES ('116201313', '2000');
INSERT INTO `t_passscore` VALUES ('116201314', '600');
INSERT INTO `t_passscore` VALUES ('116201315', '450');
INSERT INTO `t_passscore` VALUES ('116201316', '360');
INSERT INTO `t_passscore` VALUES ('116201317', '60');
INSERT INTO `t_passscore` VALUES ('116202313', '300');
INSERT INTO `t_passscore` VALUES ('116202314', '150');
INSERT INTO `t_passscore` VALUES ('116202315', '100');
INSERT INTO `t_passscore` VALUES ('116202316', '75');
INSERT INTO `t_passscore` VALUES ('116202317', '40');
INSERT INTO `t_passscore` VALUES ('117201313', '1500');
INSERT INTO `t_passscore` VALUES ('117201314', '400');
INSERT INTO `t_passscore` VALUES ('117201315', '300');
INSERT INTO `t_passscore` VALUES ('117201316', '240');
INSERT INTO `t_passscore` VALUES ('117201317', '50');
INSERT INTO `t_passscore` VALUES ('117202313', '200');
INSERT INTO `t_passscore` VALUES ('117202314', '100');
INSERT INTO `t_passscore` VALUES ('117202315', '75');
INSERT INTO `t_passscore` VALUES ('117202316', '50');
INSERT INTO `t_passscore` VALUES ('117202317', '30');

-- ----------------------------
-- Table structure for `t_subject`
-- ----------------------------
DROP TABLE IF EXISTS `t_subject`;
CREATE TABLE `t_subject` (
  `subjectId` int(11) NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(32) NOT NULL,
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_subject
-- ----------------------------

-- ----------------------------
-- Table structure for `t_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `tid` varchar(32) NOT NULL,
  `departId` int(11) DEFAULT NULL,
  `tname` varchar(32) NOT NULL,
  `tpass` varchar(32) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `phoneNum` varchar(15) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `regDate` varchar(32) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('1', '1', 'pa', '123456', '1', '123', null, '123');
INSERT INTO `t_teacher` VALUES ('2', '1', 'zhangsan', '123456', '2', '1243242', null, '32');
INSERT INTO `t_teacher` VALUES ('3', '2', 'wangwu', '123456', '1', '1234', null, '44');
INSERT INTO `t_teacher` VALUES ('4', '1', 'lisi', '123455', '1', '432', null, '45');
INSERT INTO `t_teacher` VALUES ('5', '2', 'xiaoxiao', '543', '2', '43254', null, '22');
INSERT INTO `t_teacher` VALUES ('6', '1', 'es', '4324', '2', '5555', null, '12');

-- ----------------------------
-- Table structure for `t_teacherpass`
-- ----------------------------
DROP TABLE IF EXISTS `t_teacherpass`;
CREATE TABLE `t_teacherpass` (
  `tcp_id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` varchar(32) DEFAULT NULL,
  `pId` varchar(25) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `departId` int(11) DEFAULT NULL,
  `depart_state` int(11) DEFAULT '0',
  `school_state` int(11) DEFAULT '0',
  `depart_remark` varchar(255) DEFAULT NULL,
  `school_remark` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `eviPic` varchar(255) DEFAULT NULL,
  `eviZip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tcp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacherpass
-- ----------------------------
INSERT INTO `t_teacherpass` VALUES ('3', '1', '101201', '2015-05-25', '2', '2', '0', null, null, null, null, 'aa16d27f-06b9-4e32-bec3-fb011c723389');
INSERT INTO `t_teacherpass` VALUES ('4', '2', '114209', '2015-05-25', '1', '2', '0', null, null, null, null, '53ea4f07-aba1-4830-9eda-0ba1ed49b046');
INSERT INTO `t_teacherpass` VALUES ('5', '2', '104201306', '2015-05-25', '1', '2', '0', null, null, null, null, '9a5185be-801d-48cd-8532-73db9aac50b6');
INSERT INTO `t_teacherpass` VALUES ('6', '2', '107312', '2015-05-25', '2', '2', '0', null, null, null, null, '8f340114-5d76-4fbf-8df8-ebcbb455a032');
INSERT INTO `t_teacherpass` VALUES ('7', '1', '110209', '2015-05-25', '3', '2', '0', null, null, null, null, 'ffc32939-51e4-4d2e-af5d-38b9ebab97a0');
INSERT INTO `t_teacherpass` VALUES ('8', '1', '103202302', '2015-06-30', '1', '2', '0', null, null, null, null, '08f59846-2645-4cc2-8b3a-67ebaad96d1d');
INSERT INTO `t_teacherpass` VALUES ('9', '1', '116201313', '2015-06-30', '1', '1', '0', null, null, null, null, '75786387-e8a8-4222-b0ef-0ed48ec4b100');

-- ----------------------------
-- Table structure for `t_teachwork`
-- ----------------------------
DROP TABLE IF EXISTS `t_teachwork`;
CREATE TABLE `t_teachwork` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(32) DEFAULT NULL,
  `subjectId` int(11) DEFAULT NULL,
  `hourId` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `clazz` varchar(32) NOT NULL,
  `number` int(11) NOT NULL,
  `term` varchar(32) NOT NULL,
  `score` int(11) NOT NULL,
  `addDate` varchar(32) NOT NULL,
  `checkState1` int(11) NOT NULL,
  `checkState2` int(11) NOT NULL,
  `remark1` varchar(255) DEFAULT NULL,
  `remark2` varchar(255) DEFAULT NULL,
  `eviZip` varchar(255) DEFAULT NULL,
  `eviPic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teachwork
-- ----------------------------

-- ----------------------------
-- Table structure for `t_total`
-- ----------------------------
DROP TABLE IF EXISTS `t_total`;
CREATE TABLE `t_total` (
  `tid` varchar(32) NOT NULL,
  `sScore` int(11) NOT NULL,
  `sDate` date DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_total
-- ----------------------------
