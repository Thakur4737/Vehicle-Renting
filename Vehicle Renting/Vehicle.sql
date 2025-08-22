/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - vehicle
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vehicle` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vehicle`;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `bookingid` int(4) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(20) DEFAULT NULL,
  `veh_number` varchar(20) DEFAULT NULL,
  `book_date` varchar(20) DEFAULT NULL,
  `book_time` varchar(20) DEFAULT NULL,
  `exp_duration` varchar(20) DEFAULT NULL,
  `return_date` varchar(20) DEFAULT NULL,
  `return_time` varchar(20) DEFAULT NULL,
  `payable_amt` varchar(30) DEFAULT NULL,
  `desc_amt` varchar(30) DEFAULT NULL,
  `book_date_time` varchar(50) DEFAULT NULL,
  `return_date_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bookingid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`bookingid`,`cust_id`,`veh_number`,`book_date`,`book_time`,`exp_duration`,`return_date`,`return_time`,`payable_amt`,`desc_amt`,`book_date_time`,`return_date_time`) values (1,'8528473797','up32vj6999','2023-10-12','11:00:00','05:00:00','2023-10-13','1:00','1300','10',NULL,'Sat Feb 25 14:23:46 IST 2023'),(4,'8808473797','up32hg8808','2023-02-24','10:00','4:00','2023-02-25','11:00','1400','8','Sat Feb 25 14:28:06 IST 2023','Sat Feb 25 14:28:54 IST 2023');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cust_mobile` decimal(20,0) NOT NULL,
  `cust_name` varchar(20) DEFAULT NULL,
  `cust_aadhar` decimal(20,0) DEFAULT NULL,
  `cust_dlno` varchar(20) DEFAULT NULL,
  `cust_mail` varchar(30) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `alt_mobile` decimal(20,0) DEFAULT NULL,
  `ref_name` varchar(20) DEFAULT NULL,
  `ref_mobile` decimal(20,0) DEFAULT NULL,
  `relation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cust_mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`cust_mobile`,`cust_name`,`cust_aadhar`,`cust_dlno`,`cust_mail`,`cust_addr`,`alt_mobile`,`ref_name`,`ref_mobile`,`relation`) values ('8528473797','abc','58792695479','SHDR45245','abc@gmail.com','Lalitpur','8808473797','amit','89725875855','1'),('8808473797','xyz','5587589585','GFD58755','xyz@gmail.com','Basti','8528473797','ujjwal','9785971268','0');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user` varchar(15) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`user`,`password`) values ('vijay','lko123');

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `veh_number` varchar(40) NOT NULL,
  `veh_name` varchar(40) DEFAULT NULL,
  `veh_catg` varchar(40) DEFAULT NULL,
  `veh_color` varchar(40) DEFAULT NULL,
  `veh_owner` varchar(40) DEFAULT NULL,
  `own_number` decimal(40,0) DEFAULT NULL,
  `own_addr` varchar(50) DEFAULT NULL,
  `rent_amt` varchar(40) DEFAULT NULL,
  `vdesc` varchar(70) DEFAULT NULL,
  `veh_status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`veh_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

insert  into `vehicle`(`veh_number`,`veh_name`,`veh_catg`,`veh_color`,`veh_owner`,`own_number`,`own_addr`,`rent_amt`,`vdesc`,`veh_status`) values ('up32hg8808','swift','car','black','vijay','8528473797','lalitpur','1200','10','1'),('up32vj6999','Dzire','car','white','anshu','5849632576','Basti','1100','10','1'),('up32vs8528','Baleno','Car','white','amit','8808473797','Gorakhpur','1400','15','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
