-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.51-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema testblog
--

CREATE DATABASE IF NOT EXISTS testblog;
USE testblog;

--
-- Definition of table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`,`name`,`title`,`content`) VALUES 
 (1,'333','33','333333'),
 (2,'玩儿','我',' 是'),
 (3,'水电费','水电费','所的'),
 (4,'水电费','锁定','是'),
 (5,'333玩儿','33','333333');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;


--
-- Definition of table `attaches`
--

DROP TABLE IF EXISTS `attaches`;
CREATE TABLE `attaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `types` varchar(200) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `last_update` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attaches`
--

/*!40000 ALTER TABLE `attaches` DISABLE KEYS */;
INSERT INTO `attaches` (`id`,`name`,`url`,`types`,`size`,`last_update`) VALUES 
 (5,'11.jpg','f:/TenFive/SJUpload/public/upload/','image/pjpeg',2939,'2011-01-27 03:12:48'),
 (6,'7.jpg','f:/TenFive/SJUpload/public/upload/','image/pjpeg',2864,'2011-01-27 03:18:20'),
 (7,'17.jpg','f:/TenFive/SJUpload/public/upload/','image/pjpeg',4525,'2011-01-27 03:29:56');
/*!40000 ALTER TABLE `attaches` ENABLE KEYS */;


--
-- Definition of table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carts`
--

/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` (`id`,`name`,`details`,`img`,`price`) VALUES 
 (16,'SQLSERVER2008学习手册','很适合我们啊','1',25),
 (17,'电影风暴','北漂演员的梦想','2',32),
 (18,'3D max 从新手到高手','一个求学者的故事','5',12),
 (19,'Ruby on Rails IS VERY GOOD','百分之百的美丽动人','6',86),
 (32,'weewr','sdf','5',1254),
 (33,'w','w','我',123);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;


--
-- Definition of table `line_items`
--

DROP TABLE IF EXISTS `line_items`;
CREATE TABLE `line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `unit_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_items_product` (`product_id`),
  CONSTRAINT `fk_items_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `line_items`
--

/*!40000 ALTER TABLE `line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `line_items` ENABLE KEYS */;


--
-- Definition of table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  `img` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


--
-- Definition of table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tests`
--

/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `active_code` varchar(255) DEFAULT NULL,
  `is_actived` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`is_actived`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`pass`,`email`,`active_code`,`is_actived`) VALUES 
 (63,'wo','weo','1347882267@qq.com','1235849279',0),
 (64,'admin','123456','670413661@qq.com','360839059',0),
 (65,NULL,NULL,NULL,'1125884891',0),
 (66,'admin','2222','670413661@qq.com','1201144339',0),
 (67,'abb','222222','670413661@qq.com','384964861',0),
 (68,'dcy','222222','670413661@qq.com','644546456',0),
 (69,'sorry','2222','670413661@qq.com','831793010',1),
 (70,'asd','2222','670413661@qq.com','563944812',0),
 (73,'a','2222','1347882267@qq.com','1175389007',1),
 (74,'lanse','lanse','1347882267@qq.com','1198505961',0),
 (75,'huanxinag','huaxiang','dcyandly@foxmail.com','148469245',0),
 (76,'throw','throw','dcyandly@foxmail.com','292303583',0),
 (77,'throw','throw','dcyandly@foxmail.com','1141585890',0),
 (78,'abb','123456','dcyandly@foxmail.com','793740675',0),
 (79,'myhome','mh','dcyandly@gmail.com','145629897',1),
 (80,'sadfsdf','sdfsdf','670413661@qq.com','861153187',0),
 (81,'appoligize','appo','1347882267@qq.com','521062502',0),
 (82,'werwe','werw ','1347882267@qq.com','1176511712',0),
 (83,'youyuu','sdf','1347882267@qq.com','471225566',0),
 (84,'670','123456','670413661@qq.com','883366371',0),
 (85,'隐形的翅膀','admin','670413661@qq.com','1153350861',0),
 (86,'dcyandly','dcyandly','670413661@qq.com','309546215',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
