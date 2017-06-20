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

/*Table structure for table `feedbacks` */

DROP TABLE IF EXISTS `feedbacks`;

CREATE TABLE `feedbacks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;

/*Data for the table `feedbacks` */

insert  into `feedbacks`(`id`,`name`,`email`,`content`,`created_at`,`updated_at`) values (1,'Irene','ren.kol.t@gmail.com','hello',NULL,NULL),(213,'Admin','rina.cap@yandex.ua','Hi','2017-06-20 06:12:58','2017-06-20 06:12:58'),(214,'Ira','admin@admin.com','45 скороговорок, собранные в единый текст. Читайте его вслух ежедневно и через 2 недели вы удивитесь возможностям своей речи. Сохраняйте на стену, чтобы не забыть. ','2017-06-20 06:15:22','2017-06-20 06:15:22'),(216,'Ira','ren.kol.t@gmail.com','Heeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeey','2017-06-20 06:31:18','2017-06-20 06:31:18'),(217,'Ira','rina.cap@yandex.ua','go;edlhcxhugtgrhtkjlmh;,ykbgfdsarfsghrg;hj','2017-06-20 08:35:54','2017-06-20 08:35:54'),(218,'Sasha','editor@editor.com','Wind of change','2017-06-20 09:19:31','2017-06-20 09:19:31'),(219,'Sasha','editor@editor.com','12345','2017-06-20 09:20:28','2017-06-20 09:20:28');

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
  `sex` enum('','Male','Female') DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`first_name`,`last_name`,`email`,`password`,`sex`,`bdate`,`remember_token`,`role`,`created_at`,`updated_at`) values (3,'Sasha','Smolina','rina.cap@yandex.ua','$2y$10$1AM/Q7IKdXNey4yGzV.7y.pjVaVsFHa8dJ3A.rY73NHiDydLBsvsa','Female','1997-03-23','3',127,'2017-06-16 09:11:59',NULL),(4,'Irene','Smolina','ren.kol.t@gmail.com','$2y$10$VNddQtMGW9lfE7w5RMlZRejkZ7KHoXGJW09bprhEBVKGpczB4elMS','Female','1997-03-23','C0pTXqjrSWBgj9M2s2u0Pe5xqYnq3Dols16f9i94SQ9YSnn4zTbemIjvcXX9',3,'2017-06-16 09:18:21','2017-06-20 09:20:51'),(5,'Sasha','Smolina','admin@admin.com','$2y$10$XKY84zytvHtArd8TUJUmjODoDMKdQDwZFXmSA0cAcDwrd5bnqXar.','Male','2017-06-07',NULL,3,'2017-06-17 09:22:03','2017-06-17 09:22:03'),(6,'Sasha','Petrenko','wefdalskmbhg@gfweams.com','$2y$10$8j45w3fVOsE21iduAIJccuFECdNwXLjS1Tt/5RZ864D3ebpeI9q7a','Male','1989-06-22','FwM0T3bRP7GrjalDZExgyVob5ZWFAtvWri8ggTGWhoplaar3izrhJr6teMyE',3,'2017-06-20 07:57:13','2017-06-20 07:57:35'),(7,'Petro','Petrenko','editor@editor.com','$2y$10$5ExAkEioHXxeaJVPL/c2Y.6dcHH9GT6k1OmNktziguMRjrA7nBeNe','Male','2017-06-10','xI47ChM27uPSt3EKy1WPTb9fZcCAgHeMqXj5dEB4ejkOItMJl1FY8adhLu0K',3,'2017-06-20 09:44:54','2017-06-20 09:45:00'),(8,'Petro','Petrenko','admin@admin.admin','$2y$10$ItrcYRV0/GH0suVeVhhdVuIDnKjVAMr9LNpBU/h1M4umVGqH9tURW',NULL,'0000-00-00','U5GQfiCgt1CHQKXUf7JvC8oW29XciHz589Yd4aXoTDFwuoucP7i5LqmpvgBM',3,'2017-06-20 10:03:49','2017-06-20 10:04:12'),(9,'Petro','Smolin','admin@fghj.com','$2y$10$dOFBKvfY3irMVU/8W6ldw.RoOfw1a3HUpk4TCQcNm4HTcN9lQyFk6',NULL,'0000-00-00','VuEestJSD8qEGYgnchpj7lL0aGUGdPtvjlgE8oKSrIUXm4CjQEUKOzpGu9UR',3,'2017-06-20 10:04:43','2017-06-20 10:05:05'),(10,'Irene','Smolina','editor@hgfghj.com','$2y$10$y4Nm8NBtgc41fYX/dPyId.iAIRIx.XWWVoWgu1y1fYyHxD/JkwZga','','0000-00-00','OZ1xLK8josxObhUsqwn2CL13OlmqmzJ7Dh6ygEAPi9k4UmUWqvPYZIUPPFOz',3,'2017-06-20 10:06:35','2017-06-20 10:06:56'),(11,'Petro','brvgfcd','editor@sfdxjigfhekjd.com','$2y$10$YelxVVsFm/IrSgvEq5kHRu3Hoz.rYd09TZmAcX303QuBNX/9.6E.u','','2017-06-09','5pgODMXM8AbQw1dblszksWOJlHryWsBxQwfQ5Zuu4WvrP3GhiuSGQil0hLro',3,'2017-06-20 10:07:26','2017-06-20 10:07:45'),(12,'Ira','Petrenko','admin@grrdf.admin','$2y$10$8HG8gCJKCilTOhjF0lrhwO1KqMSZevhK7nrhpjJhz2cI4h0YXvfZC','','0000-00-00','ADteIczgvRAXMP1kO4F0HpfhkbE31QA2HOuSEttFmJkohDqHXsOYrm8guQmA',3,'2017-06-20 10:09:36','2017-06-20 10:09:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
