/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.5.53 : Database - manage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`manage` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `manage`;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `id` varchar(32) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`id`,`username`,`pass`) values ('115b745c701d489eb7f6d752e9c3364e','admin','e10adc3949ba59abbe56e057f20f883e');

/*Table structure for table `t_employee` */

DROP TABLE IF EXISTS `t_employee`;

CREATE TABLE `t_employee` (
  `id` varchar(32) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `realname` varchar(32) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `telphone` varchar(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `descript` varchar(100) DEFAULT NULL,
  `register_date` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_employee` */

insert  into `t_employee`(`id`,`username`,`realname`,`pass`,`telphone`,`address`,`descript`,`register_date`) values ('a92d8b4df0834ae7b9a9b70d0580fcf3','nibudon','Äßß²¶®','e10adc3949ba59abbe56e057f20f883e','1263589623',NULL,NULL,'2019-02-21 10:06:48'),('9e5aa6f31625404494f6295e7e9c5f2c','nbd','Äßß²¶®','e10adc3949ba59abbe56e057f20f883e','1536892233',NULL,NULL,'2019-02-21 10:03:04'),('e06a7e576ed84a4f98d5400c9707444d','nibudon1','Äßß²¶®','e10adc3949ba59abbe56e057f20f883e','153569823',NULL,NULL,'2019-02-21 19:30:52');

/*Table structure for table `t_info` */

DROP TABLE IF EXISTS `t_info`;

CREATE TABLE `t_info` (
  `id` varchar(32) NOT NULL,
  `e_id` varchar(32) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `sub_time` varchar(32) DEFAULT NULL,
  `content` text,
  `is_out` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_info` */

insert  into `t_info`(`id`,`e_id`,`title`,`sub_time`,`content`,`is_out`) values ('115b745c701d489eb7f6d752e9c3364e','a92d8b4df0834ae7b9a9b70d0580fcf3',NULL,'2019-02-21 12:19:18','123','1'),('bdb723ab4e774bebbd8f97ce0ef00267','a92d8b4df0834ae7b9a9b70d0580fcf3',NULL,'2019-02-21 12:23:33','SaaS','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
