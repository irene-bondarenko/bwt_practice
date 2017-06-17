/*
SQLyog Enterprise - MySQL GUI v7.13 
MySQL - 5.5.45 : Database - bwt_practice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`bwt_practice` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bwt_practice`;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `feedback` */

insert  into `feedback`(`id`,`name`,`email`,`content`) values (1,'Irene','ren.kol.t@gmail.com','hello'),(2,'Irene','jscdnmx,z','Hi');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `rememder_token` varchar(100) DEFAULT NULL,
  `role` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`first_name`,`last_name`,`email`,`password`,`sex`,`bdate`,`rememder_token`,`role`,`created_at`,`updated_at`) values (3,'Sasha','Smolina','rina.cap@yandex.ua','$2y$10$1AM/Q7IKdXNey4yGzV.7y.pjVaVsFHa8dJ3A.rY73NHiDydLBsvsa','Female','1997-03-23','3',127,'2017-06-16 09:11:59',NULL),(4,'Irene','Smolina','ren.kol.t@gmail.com','$2y$10$VNddQtMGW9lfE7w5RMlZRejkZ7KHoXGJW09bprhEBVKGpczB4elMS','Female','1997-03-23',NULL,3,'2017-06-16 09:18:21','2017-06-16 09:18:21'),(5,'Sasha','Smolina','admin@admin.com','$2y$10$XKY84zytvHtArd8TUJUmjODoDMKdQDwZFXmSA0cAcDwrd5bnqXar.','Male','2017-06-07',NULL,3,'2017-06-17 09:22:03','2017-06-17 09:22:03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
