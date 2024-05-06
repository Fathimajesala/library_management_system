/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.32-MariaDB : Database - library_management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`library_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `library_management`;

/*Table structure for table `authors` */

DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `AuthorImage` varchar(250) NOT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `authors` */

insert  into `authors`(`id`,`AuthorName`,`AuthorImage`,`creationDate`,`UpdationDate`) values 
(1,'Anne Rice','American-writer-Anne-Rice-2016 (1).webp','2024-01-22 07:23:03','2024-01-22 07:23:03'),
(2,'Chetan Bhagatt','download (2).jpg','2024-01-22 07:23:03','2024-01-22 07:23:03'),
(3,'Anita Desai','download (3).jpg','2024-01-22 07:23:03','2024-01-22 16:23:41'),
(4,'HC Verma','download (4).jpg','2024-01-22 07:23:03','2024-01-22 16:23:45'),
(5,'Herbert Schildt','download (14).jpg','2024-01-22 07:23:03',NULL),
(9,'Dr. Andy Williams','Andy-Williams.webp','2024-01-22 07:15:32',NULL),
(10,'Robert T. Kiyosak','images (2).jpg','2024-01-22 07:18:38',NULL),
(11,'Kelly Barnhill','download (13).jpg','2024-01-22 07:21:54',NULL),
(12,'R.D. Sharma ','download (11).jpg','2024-01-22 07:23:03','2024-01-22 16:23:47');

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) NOT NULL,
  `AuthorName` varchar(255) NOT NULL,
  `BookId` int(11) NOT NULL,
  `ISBNNumber` varchar(25) NOT NULL,
  `bookImage` varchar(250) NOT NULL,
  `AuthorImage` varchar(250) NOT NULL,
  `ReturnStatus` int(1) NOT NULL,
  `issuedbook_id` int(11) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `books` */

insert  into `books`(`id`,`BookName`,`AuthorName`,`BookId`,`ISBNNumber`,`bookImage`,`AuthorImage`,`ReturnStatus`,`issuedbook_id`,`RegDate`,`UpdationDate`) values 
(5,'Murach\'s MySQL','Joel Murach',31,'9350237601','5939d64655b4d2ae443830d73abc35b6.jpg','lvndffbqtkns9rj4trraeurg5g.jpg',1,0,'2022-01-21 16:42:11','2024-05-05 02:58:00'),
(6,'WordPress for Beginners 2022: A Visual Step-by-Step Guide to Mastering WordPress','Andy Williams',4,'B019MO3WCM','144ab706ba1cb9f6c23fd6ae9c0502b3.jpg','Andy-Williams.webp',1,0,'2022-01-22 07:16:07','2024-05-01 18:57:15'),
(7,'WordPress Mastery Guide:','kyle hill',5,'B09NKWH7NP','90083a56014186e88ffca10286172e64.jpg','download (6).jpg',1,0,'2022-01-22 07:18:03','2024-04-16 14:25:25'),
(8,'Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not','Robert T. Kiyosak',6,'B07C7M8SX9','52411b2bd2a6b2e0df3eb10943a5b640.jpg','images (2).jpg',1,0,'2022-01-22 07:20:39','2024-04-28 21:18:06'),
(9,'The Girl Who Drank the Moon','kelly barnhill',7,'1848126476','f05cd198ac9335245e1fdffa793207a7.jpg','download (13).jpg',1,0,'2022-01-22 07:22:33','2024-04-28 21:18:40'),
(10,'C++: The Complete Reference, 4th Edition','herbert schildt',8,'007053246X','36af5de9012bf8c804e499dc3c3b33a5.jpg','download (14).jpg',1,0,'2022-01-22 07:23:36','2024-04-02 15:46:38'),
(11,'ASP.NET Core 5 for Beginners','andreas helland',9,'GBSJ36344563','b1b6788016bbfab12cfd2722604badc9.jpg','1568289931434.jpg',1,0,'2022-01-22 08:14:21','2024-04-02 15:46:46'),
(34,'Baarathiyaar kavithaigal','Baarathiyaar',11,'11080913','timthumb.jfif','Bharathiyar-9-240x300.jpg',1,0,'2024-03-28 22:59:45','2024-04-02 15:47:00'),
(41,'JavaScript','AnneRIce',99,'11080925','serviceslibrary28.png','images (2).jpg',1,0,'2024-04-30 21:04:02',NULL);

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(150) NOT NULL,
  `CategoryImage` varchar(250) NOT NULL,
  `Status` int(1) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `category` */

insert  into `category`(`id`,`CategoryName`,`CategoryImage`,`Status`,`CreationDate`,`UpdationDate`) values 
(5,'Technology','tech.webp',1,'2022-01-22 07:23:03','2024-04-17 15:42:46'),
(8,'General','gend.png',1,'2022-01-22 07:23:03','2022-01-22 16:24:40'),
(21,'Management','ES_21Q2_WB_IQS_Category_Management.webp',1,'2024-03-24 14:56:58','2024-03-24 19:02:19'),
(22,'Tamil','tamil.jpg',1,'2024-03-28 22:51:51','2024-03-28 22:52:58'),
(23,'English','eng.jpg',1,'2024-03-29 01:02:02','2024-03-29 01:02:02'),
(25,'Programming','programming-concept-illustration_114360-1351.avif',1,'2024-04-30 20:17:28','2024-04-30 20:18:03');

/*Table structure for table `issuedbook` */

DROP TABLE IF EXISTS `issuedbook`;

CREATE TABLE `issuedbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookImage` varchar(250) NOT NULL,
  `BookId` int(11) NOT NULL,
  `idcard` varchar(150) NOT NULL,
  `IssuesDate` date NOT NULL,
  `ReturnDate` date NOT NULL,
  `ReturnStatus` int(1) NOT NULL,
  `fine` varchar(250) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `issuedbook` */

insert  into `issuedbook`(`id`,`bookImage`,`BookId`,`idcard`,`IssuesDate`,`ReturnDate`,`ReturnStatus`,`fine`) values 
(14,'36af5de9012bf8c804e499dc3c3b33a5.jpg',0,'SID925','2024-05-01','2024-05-02',1,'Not required to be fine'),
(20,'36af5de9012bf8c804e499dc3c3b33a5.jpg',0,'SID125','2024-05-05','2024-05-06',1,'Not required to be fine');

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcard` varchar(100) NOT NULL,
  `username` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `mobilenumber` char(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `status` int(1) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `students` */

insert  into `students`(`id`,`idcard`,`username`,`email`,`mobilenumber`,`position`,`password`,`status`,`RegDate`,`UpdationDate`) values 
(18,'SID825','user','user@gmail.com','1234564','student','$2y$10$6x/lu6NUh1Y57lD96DpD/uM9897JMCIZSDPfyNynymg312.2nHlEW',1,'2024-05-05 02:56:56',NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcard` varchar(50) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(240) NOT NULL,
  `mobilenumber` char(12) NOT NULL,
  `position` varchar(50) NOT NULL,
  `is_active` tinyint(5) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`idcard`,`username`,`email`,`password`,`mobilenumber`,`position`,`is_active`,`created_at`,`updated_at`) values 
(24,'AID023','Admin','admin@gmail.com','$2y$10$0rc7H0L7z8eku2QjLxbAo.rDyP5a0p5Q1.YOaK/3eidJv9P4qoc6m','123345565','librarian',1,'2024-05-06 10:37:56','2024-05-06 10:40:39'),
(25,'AID123','fathima jesala','fathimajesala11@gmail.com','$2y$10$cDGnXm9igwyajg5g7Dbmz.X0GF7IBGPi7VUO2JjDoUXUuhVrDiROa','111111111111','librarian',1,'2024-05-06 11:25:36','2024-05-06 11:31:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcard` varchar(50) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(240) NOT NULL,
  `mobilenumber` char(12) NOT NULL,
  `permission` enum('user','librarian','student') NOT NULL DEFAULT 'user',
  `is_active` tinyint(5) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
