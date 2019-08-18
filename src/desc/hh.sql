/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.67-community-nt : Database - corporation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`corporation` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `corporation`;

/*Table structure for table `apply` */

DROP TABLE IF EXISTS `apply`;

CREATE TABLE `apply` (
  `applyid` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL,
  `applytype` varchar(20) default NULL,
  `applystate` int(11) default NULL,
  `applyreason` varchar(100) default NULL,
  PRIMARY KEY  (`applyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `apply` */

/*Table structure for table `cpt` */

DROP TABLE IF EXISTS `cpt`;

CREATE TABLE `cpt` (
  `cptid` int(11) NOT NULL auto_increment,
  `cptname` varchar(20) default NULL,
  `sortid` int(11) default NULL,
  `cptdesc` varchar(50) default NULL,
  `cptdate` date default NULL,
  PRIMARY KEY  (`cptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cpt` */

/*Table structure for table `dict` */

DROP TABLE IF EXISTS `dict`;

CREATE TABLE `dict` (
  `dictid` int(11) NOT NULL auto_increment,
  `parentid` int(11) default NULL,
  `dictdesc` varchar(50) default NULL,
  `dictstate` int(11) default NULL,
  PRIMARY KEY  (`dictid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dict` */

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `fileid` int(11) NOT NULL auto_increment,
  `filename` varchar(30) default NULL,
  `uploaddate` date default NULL,
  `userid` int(11) default NULL,
  PRIMARY KEY  (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `file` */

/*Table structure for table `right` */

DROP TABLE IF EXISTS `right`;

CREATE TABLE `right` (
  `rightid` int(11) NOT NULL auto_increment,
  `parentid` int(11) default NULL,
  `righttype` varchar(20) default NULL,
  `righttext` varchar(50) default NULL,
  `righturl` varchar(50) default NULL,
  PRIMARY KEY  (`rightid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `right` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `roleid` int(11) NOT NULL auto_increment,
  `rolename` varchar(20) default NULL,
  `roledesc` varchar(50) default NULL,
  `roleflag` int(11) default NULL,
  PRIMARY KEY  (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

/*Table structure for table `roleright` */

DROP TABLE IF EXISTS `roleright`;

CREATE TABLE `roleright` (
  `rfid` int(11) NOT NULL auto_increment,
  `roleid` int(11) default NULL,
  `rightid` int(11) default NULL,
  PRIMARY KEY  (`rfid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `roleright` */

/*Table structure for table `sort` */

DROP TABLE IF EXISTS `sort`;

CREATE TABLE `sort` (
  `sortid` int(11) NOT NULL auto_increment,
  `sorttype` varchar(30) default NULL,
  `sortdesc` varchar(50) default NULL,
  PRIMARY KEY  (`sortid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sort` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(11) NOT NULL auto_increment,
  `stunumber` varchar(12) default NULL,
  `username` varchar(20) default NULL,
  `PASSWORD` varchar(32) default NULL,
  `email` varchar(30) default NULL,
  `phone` varchar(11) default NULL,
  `sex` varchar(4) default NULL,
  `state` int(11) default NULL,
  `roleid` int(11) default NULL,
  `cptid` int(11) default NULL,
  `deptid` int(11) default NULL,
  `college` varchar(30) default NULL,
  `major` varchar(30) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
