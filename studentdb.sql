/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : studentdb

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2023-06-12 10:56:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for login_info
-- ----------------------------
DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info` (
  `id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `job` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_info
-- ----------------------------
INSERT INTO `login_info` VALUES ('10001', '123456', 'teacher');
INSERT INTO `login_info` VALUES ('10002', '123456', 'teacher');
INSERT INTO `login_info` VALUES ('10003', '123456', 'student');
INSERT INTO `login_info` VALUES ('10004', '123456', 'student');
INSERT INTO `login_info` VALUES ('10005', '123456', 'student');
INSERT INTO `login_info` VALUES ('10006', '123456', 'student');
INSERT INTO `login_info` VALUES ('10007', '123456', 'student');
INSERT INTO `login_info` VALUES ('10008', '123456', 'student');
INSERT INTO `login_info` VALUES ('10009', '123456', 'student');
INSERT INTO `login_info` VALUES ('10010', '123456', 'student');
INSERT INTO `login_info` VALUES ('10011', '123456', 'student');
INSERT INTO `login_info` VALUES ('admin', 'admin', 'admin');

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info` (
  `stuinfo_id` varchar(50) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 NOT NULL,
  `age` varchar(11) NOT NULL,
  `studydate` varchar(15) CHARACTER SET utf8 NOT NULL,
  `major` varchar(10) CHARACTER SET utf8 NOT NULL,
  `classroom` varchar(11) NOT NULL,
  `address` varchar(15) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`stuinfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES ('10004', '李四', '男', '19', '2023-01-03', '软件工程', '1901', '陕西', '444444');
INSERT INTO `student_info` VALUES ('10005', '王五', '男', '20', '2020-09-01', '软件工程', '2001', '南京', '555555');
INSERT INTO `student_info` VALUES ('10006', '小红', '女', '20', '2020-09-01', '软件工程', '2001', '南京', '666666');
INSERT INTO `student_info` VALUES ('10007', '李明', '男', '20', '2020-09-01', '软件工程', '2001', '天津', '777777');
INSERT INTO `student_info` VALUES ('10008', '小刚', '女', '19', '2020-09-01', '软件工程', '2001', '南京', '888888');
INSERT INTO `student_info` VALUES ('10009', '小舞', '女', '20', '2020-09-01', '软件工程', '2001', '南京', '999999');

-- ----------------------------
-- Table structure for student_score
-- ----------------------------
DROP TABLE IF EXISTS `student_score`;
CREATE TABLE `student_score` (
  `stusc_id` varchar(10) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 NOT NULL,
  `major` varchar(10) CHARACTER SET utf8 NOT NULL,
  `classroom` varchar(11) NOT NULL,
  `math` varchar(10) NOT NULL,
  `java` varchar(10) NOT NULL,
  `mysql` varchar(10) NOT NULL,
  PRIMARY KEY (`stusc_id`),
  CONSTRAINT `student_score_ibfk_1` FOREIGN KEY (`stusc_id`) REFERENCES `login_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student_score
-- ----------------------------
INSERT INTO `student_score` VALUES ('10003', '张三', '软件工程', '1902', '80', '90', '80');
INSERT INTO `student_score` VALUES ('10004', '李四', '软件工程', '2001', '70', '60', '80');
INSERT INTO `student_score` VALUES ('10005', '王五', '软件工程', '2001', '80', '90', '70');
INSERT INTO `student_score` VALUES ('10006', '小红', '软件工程', '2001', '70', '60', '50');
INSERT INTO `student_score` VALUES ('10007', '李明', '软件工程', '2001', '60', '60', '60');
INSERT INTO `student_score` VALUES ('10008', '小刚', '软件工程', '2001', '90', '90', '90');
INSERT INTO `student_score` VALUES ('10009', '小舞', '软件工程', '2001', '40', '30', '40');

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info` (
  `tea_id` varchar(10) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 NOT NULL,
  `age` varchar(11) NOT NULL,
  `teach_class` varchar(255) NOT NULL,
  PRIMARY KEY (`tea_id`),
  CONSTRAINT `teacher_info_ibfk_1` FOREIGN KEY (`tea_id`) REFERENCES `login_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacher_info
-- ----------------------------
INSERT INTO `teacher_info` VALUES ('10001', '小明', '男', '40', '1901');
INSERT INTO `teacher_info` VALUES ('10002', '小红', '女', '33', '2001');
