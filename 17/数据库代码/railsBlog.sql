-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.0-m2-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema railsblog
--

CREATE DATABASE IF NOT EXISTS railsblog;
USE railsblog;

--
-- Definition of table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `post_id` int(10) unsigned NOT NULL,
  `author` varchar(45) DEFAULT NULL,
  `author_url` varchar(45) DEFAULT NULL,
  `author_email` varchar(45) DEFAULT NULL,
  `author_openid_authority` varchar(45) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`post_id`,`author`,`author_url`,`author_email`,`author_openid_authority`,`body`,`body_html`,`created_at`,`updated_at`,`id`) VALUES 
 (9,'guest','','',NULL,'guest','guest','2011-02-21 14:02:34','2011-02-21 14:02:34',2);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


--
-- Definition of table `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
CREATE TABLE `open_id_authentication_associations` (
  `issued` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lifetime` int(10) unsigned DEFAULT NULL,
  `handle` varchar(45) DEFAULT NULL,
  `assoc_type` varchar(45) DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`issued`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `open_id_authentication_associations`
--

/*!40000 ALTER TABLE `open_id_authentication_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_associations` ENABLE KEYS */;


--
-- Definition of table `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
CREATE TABLE `open_id_authentication_nonces` (
  `timestamp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_url` varchar(45) NOT NULL,
  `salt` varchar(45) NOT NULL,
  PRIMARY KEY (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `open_id_authentication_nonces`
--

/*!40000 ALTER TABLE `open_id_authentication_nonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_nonces` ENABLE KEYS */;


--
-- Definition of table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `slug` varchar(45) DEFAULT NULL,
  `body` text NOT NULL,
  `body_html` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`,`title`,`slug`,`body`,`body_html`,`created_at`,`updated_at`) VALUES 
 (6,'test','test','<p>\n	ss</p>\n','<p>\n<p>ss</p></p>','2011-02-16 10:54:39','2011-02-19 13:14:52'),
 (7,'Rails系列视频教程','railsvideo','<p>Rails系列视频教程内容翔实，由浅入深，循序渐进，帮助你迅速掌握Rails!</p>\n<p>想了解Rails开发的朋友千万不可错过哦!</p>\n<h3>更多信息请浏览<a href=\"http://www.itzcn.com\">www.itzcn.com</a></h3>\n','<p>Rails系列视频教程内容翔实，由浅入深，循序渐进，帮助你迅速掌握Rails!</p>\n<p>想了解Rails开发的朋友千万不可错过哦!</p>\n<h3>更多信息请浏览<a href=\"http://www.itzcn.com\">www.itzcn.com</a></h3>','2011-02-20 09:55:42','2011-02-21 10:14:01');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


--
-- Definition of table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `slug` varchar(45) DEFAULT NULL,
  `body` text NOT NULL,
  `body_html` text NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `approved_comments_count` int(10) unsigned DEFAULT NULL,
  `cached_tag_list` varchar(45) NOT NULL,
  `published_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `edited_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`,`title`,`slug`,`body`,`body_html`,`active`,`approved_comments_count`,`cached_tag_list`,`published_at`,`created_at`,`updated_at`,`edited_at`) VALUES 
 (2,'Hi,everyone','aa','<p>\n	终于在这里安家了。</p>\n<p>\n	以后有关窗内网的新闻都可以在这里看到。</p>\n','<p>\n<p>终于在这里安家了。</p><br />\n<p><br />\n	以后有关窗内网的新闻都可以在这里看到。</p></p>',NULL,0,'itzcn','2011-02-15 02:36:00','2011-02-15 10:36:02','2011-02-16 08:25:56','2011-02-15 10:36:02'),
 (8,'Rails3新特性','rails3','<p>\n	Rails3新特性</p>\n','<p>\n<p>Rails3新特性</p></p>',NULL,NULL,'rails','2011-02-20 01:59:00','2011-02-20 09:59:47','2011-02-20 10:04:37','2011-02-20 09:59:47'),
 (9,'Rails畅销书推荐','railsbook','<p>\n	Ruby on Rail程序设计技术详解</p>\n','<p>\n<p>Ruby on Rail程序设计技术详解</p></p>',NULL,1,'rails, book','2011-02-20 10:05:40','2011-02-20 10:05:40','2011-02-20 10:05:40','2011-02-20 10:05:40');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


--
-- Definition of table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


--
-- Definition of table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(45) NOT NULL,
  `data` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;


--
-- Definition of table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
CREATE TABLE `taggings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taggings`
--

/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` (`id`,`tag_id`,`taggable_id`,`created_at`) VALUES 
 (3,3,2,'2011-02-16 08:25:56'),
 (6,6,8,'2011-02-20 09:59:47'),
 (8,6,9,'2011-02-20 10:05:40'),
 (9,8,9,'2011-02-20 10:05:40');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;


--
-- Definition of table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `taggings_count` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`,`name`,`taggings_count`) VALUES 
 (3,'itzcn',1),
 (6,'rails',2),
 (8,'book',1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;


--
-- Definition of table `undo_items`
--

DROP TABLE IF EXISTS `undo_items`;
CREATE TABLE `undo_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `undo_items`
--

/*!40000 ALTER TABLE `undo_items` DISABLE KEYS */;
INSERT INTO `undo_items` (`id`,`type`,`created_at`,`data`) VALUES 
 (1,'DeletePostUndo','2011-02-16 07:32:09','--- \n:post: \n  active: \n  approved_comments_count: \n  body: |\n    <p>\n    	test</p>\n\n  body_html: |-\n    <p>\n    <p>test</p></p>\n  cached_tag_list: test\n  created_at: 2011-02-15 14:58:47 Z\n  edited_at: 2011-02-15 14:58:47 Z\n  id: 3\n  published_at: 2011-02-15 14:58:47 Z\n  slug: test\n  title: atest\n  updated_at: 2011-02-15 14:58:47 Z\n:comments: []\n\n'),
 (2,'DeletePageUndo','2011-02-16 07:48:36','--- \nbody: |\n  <p>\n  	111</p>\n\nbody_html: |-\n  <p>\n  <p>111</p></p>\ncreated_at: 2011-02-16 07:44:07 Z\nid: 2\nslug: \ntitle: About us\nupdated_at: 2011-02-16 07:46:30 Z\n'),
 (3,'DeletePageUndo','2011-02-16 08:23:35','--- \nbody: \"<ul>\\n\\\n  \\t<li>\\n\\\n  \\t\\t<a href=\\\"http://school.itzcn.com\\\" target=\\\"_blank\\\">\\xE7\\xAA\\x97\\xE5\\x86\\x85\\xE5\\xAD\\xA6\\xE9\\x99\\xA2</a></li>\\n\\\n  \\t<li>\\n\\\n  \\t\\t<a href=\\\"http://bbs.itzcn.com\\\" target=\\\"_blank\\\">\\xE7\\xAA\\x97\\xE5\\x86\\x85\\xE8\\xAE\\xBA\\xE5\\x9D\\x9B</a></li>\\n\\\n  \\t<li>\\n\\\n  \\t\\t<a href=\\\"http://blog.itzcn.com\\\" target=\\\"_blank\\\">\\xE6\\x8A\\x80\\xE6\\x9C\\xAF\\xE6\\x96\\x87\\xE6\\xA1\\xA3</a></li>\\n\\\n  \\t<li>\\n\\\n  \\t\\t<a href=\\\"http://home.itzcn.com\\\" target=\\\"_blank\\\">\\xE5\\xA8\\xB1\\xE4\\xB9\\x90\\xE7\\xA9\\xBA\\xE9\\x97\\xB4</a></li>\\n\\\n  \\t<li>\\n\\\n  \\t\\t<a href=\\\"http://www.itzcn.com/Shop.htm\\\" target=\\\"_blank\\\">\\xE7\\xAA\\x97\\xE5\\x86\\x85\\xE5\\x95\\x86\\xE5\\x9F\\x8E</a></li>\\n\\\n  \\t<li>\\n\\\n  \\t\\t&nbsp;</li>\\n\\\n  </ul>\\n\"\nbody_html: \"<ul>\\n\\\n  <li>\\n\\\n  <p><a href=\\\"http://school.itzcn.com\\\" target=\\\"_blank\\\">\\xE7\\xAA\\x97\\xE5\\x86\\x85\\xE5\\xAD\\xA6\\xE9\\x99\\xA2</a></li><br />\\n\\\n  \\t<li><br />\\n\\\n  \\t\\t<a href=\\\"http://bbs.itzcn.com\\\" target=\\\"_blank\\\">\\xE7\\xAA\\x97\\xE5\\x86\\x85\\xE8\\xAE\\xBA\\xE5\\x9D\\x9B</a></li><br />\\n\\\n  \\t<li><br />\\n\\\n  \\t\\t<a href=\\\"http://blog.itzcn.com\\\" target=\\\"_blank\\\">\\xE6\\x8A\\x80\\xE6\\x9C\\xAF\\xE6\\x96\\x87\\xE6\\xA1\\xA3</a></li><br />\\n\\\n  \\t<li><br />\\n\\\n  \\t\\t<a href=\\\"http://home.itzcn.com\\\" target=\\\"_blank\\\">\\xE5\\xA8\\xB1\\xE4\\xB9\\x90\\xE7\\xA9\\xBA\\xE9\\x97\\xB4</a></li><br />\\n\\\n  \\t<li><br />\\n\\\n  \\t\\t<a href=\\\"http://www.itzcn.com/Shop.htm\\\" target=\\\"_blank\\\">\\xE7\\xAA\\x97\\xE5\\x86\\x85\\xE5\\x95\\x86\\xE5\\x9F\\x8E</a></li><br />\\n\\\n  \\t<li><br />\\n\\\n  \\t\\t&nbsp;</li></p>\\n\\\n  </ul>\"\ncreated_at: 2011-02-15 10:51:12 Z\nid: 1\nslug: bbb\ntitle: bbb\nupdated_at: 2011-02-15 10:52:55 Z\n'),
 (4,'DeletePostUndo','2011-02-16 08:29:56','--- \n:post: \n  active: \n  approved_comments_count: \n  body: |\n    <p>\n    	ssss</p>\n\n  body_html: |-\n    <p>\n    <p>ssss</p></p>\n  cached_tag_list: sss\n  created_at: 2011-02-16 08:29:00 Z\n  edited_at: 2011-02-16 08:28:59 Z\n  id: 4\n  published_at: 2011-02-16 08:28:59 Z\n  slug: \n  title: sss\n  updated_at: 2011-02-16 08:29:00 Z\n:comments: []\n\n'),
 (5,'DeletePostUndo','2011-02-16 08:39:15','--- \n:post: \n  active: \n  approved_comments_count: \n  body: |\n    <p>\n    	dddd</p>\n\n  body_html: |-\n    <p>\n    <p>dddd</p></p>\n  cached_tag_list: \"\"\n  created_at: 2011-02-16 08:38:17 Z\n  edited_at: 2011-02-16 08:38:17 Z\n  id: 5\n  published_at: 2011-02-16 08:38:17 Z\n  slug: dd\n  title: ddd\n  updated_at: 2011-02-16 08:38:17 Z\n:comments: []\n\n'),
 (6,'DeletePageUndo','2011-02-16 10:46:33','--- \nbody: |\n  <p>\n  	dddd</p>\n\nbody_html: |-\n  <p>\n  <p>dddd</p></p>\ncreated_at: 2011-02-16 08:45:10 Z\nid: 5\nslug: dd\ntitle: dd\nupdated_at: 2011-02-16 08:45:10 Z\n'),
 (7,'DeletePageUndo','2011-02-16 10:46:34','--- \nbody: |\n  <p>\n  	aaa</p>\n\nbody_html: |-\n  <p>\n  <p>aaa</p></p>\ncreated_at: 2011-02-16 08:29:33 Z\nid: 4\nslug: \ntitle: aaa\nupdated_at: 2011-02-16 08:29:33 Z\n'),
 (8,'DeletePageUndo','2011-02-16 10:53:39','--- \nbody: \"<p>\\n\\\n  \\t\\xE8\\xBF\\x99\\xE6\\x98\\xAF\\xE7\\x94\\xB1\\xE7\\xAA\\x97\\xE5\\x86\\x85\\xE7\\xBD\\x91\\xE6\\x8F\\x90\\xE4\\xBE\\x9B\\xE7\\x9A\\x84\\xE5\\x9F\\xBA\\xE4\\xBA\\x8ERails\\xE7\\x9A\\x84Blog\\xE7\\xB3\\xBB\\xE7\\xBB\\x9F\\xE3\\x80\\x82</p>\\n\\\n  <p>\\n\\\n  \\t\\xE7\\xAA\\x97\\xE5\\x86\\x85\\xE7\\xBD\\x91\\xEF\\xBC\\x88<a href=\\\"http://www.itzcn.com\\\">www.itzcn.com</a>\\xEF\\xBC\\x89\\xE6\\x98\\xAF\\xE4\\xB8\\x80\\xE4\\xB8\\xAA\\xE5\\x9F\\xBA\\xE4\\xBA\\x8EWeb 2.0\\xE7\\x9A\\x84\\xE7\\x9C\\x9F\\xE5\\xAE\\x9E\\xE7\\xA4\\xBE\\xE5\\x8C\\xBA\\xEF\\xBC\\x8C\\xE7\\xBB\\x93\\xE5\\x90\\x88\\xE5\\xA4\\x9A\\xE4\\xBD\\x8D\\xE4\\xB8\\x80\\xE7\\xBA\\xBF\\xE8\\xAE\\xA1\\xE7\\xAE\\x97\\xE6\\x9C\\xBA\\xE6\\x95\\x99\\xE5\\xB8\\x88\\xE5\\xAE\\x9E\\xE9\\x99\\x85\\xE6\\x95\\x99\\xE5\\xAD\\xA6\\xE7\\xBB\\x8F\\xE9\\xAA\\x8C\\xEF\\xBC\\x8C\\xE5\\xBD\\x95\\xE5\\x88\\xB6\\xE4\\xBA\\x86\\xE5\\xA4\\xA7\\xE9\\x87\\x8F\\xE8\\xA7\\x86\\xE9\\xA2\\x91\\xE6\\x95\\x99\\xE7\\xA8\\x8B\\xEF\\xBC\\x8C\\xE7\\x89\\xB9\\xE5\\x88\\xAB\\xE6\\x98\\xAF\\xE7\\x9B\\xAE\\xE5\\x89\\x8DWeb\\xE5\\xBC\\x80\\xE5\\x8F\\x91\\xE6\\x96\\xB9\\xE9\\x9D\\xA2\\xE7\\x9A\\x84\\xE7\\x83\\xAD\\xE9\\x97\\xA8\\xE6\\x95\\x99\\xE7\\xA8\\x8B\\xEF\\xBC\\x8C\\xE5\\xA6\\x82Java\\xE8\\xA7\\x86\\xE9\\xA2\\x91\\xE6\\x95\\x99\\xE7\\xA8\\x8B,asp.net\\xE8\\xA7\\x86\\xE9\\xA2\\x91\\xE6\\x95\\x99\\xE7\\xA8\\x8B,php\\xE8\\xA7\\x86\\xE9\\xA2\\x91\\xE6\\x95\\x99\\xE7\\xA8\\x8B\\xE7\\xAD\\x89\\xE7\\xAD\\x89\\xEF\\xBC\\x8C\\xE6\\x97\\xA8\\xE5\\x9C\\xA8\\xE6\\x8E\\xA8\\xE8\\xBF\\x9B\\xE6\\x97\\xA0\\xE7\\xBA\\xB8\\xE5\\x8C\\x96\\xE6\\x95\\x99\\xE5\\xAD\\xA6\\xE8\\xBF\\x9B\\xE7\\xA8\\x8B\\xEF\\xBC\\x8C\\xE6\\x89\\x93\\xE9\\x80\\xA0\\xE4\\xB8\\x80\\xE4\\xB8\\xAA\\xE5\\x85\\x8D\\xE8\\xB4\\xB9\\xE5\\xBC\\x80\\xE6\\x94\\xBE\\xE7\\x9A\\x84\\xE7\\xBD\\x91\\xE7\\xBB\\x9C\\xE5\\xAD\\xA6\\xE9\\x99\\xA2\\xE3\\x80\\x82</p>\\n\"\nbody_html: \"<p>\\n\\\n  <p>\\xE8\\xBF\\x99\\xE6\\x98\\xAF\\xE7\\x94\\xB1\\xE7\\xAA\\x97\\xE5\\x86\\x85\\xE7\\xBD\\x91\\xE6\\x8F\\x90\\xE4\\xBE\\x9B\\xE7\\x9A\\x84\\xE5\\x9F\\xBA\\xE4\\xBA\\x8ERails\\xE7\\x9A\\x84Blog\\xE7\\xB3\\xBB\\xE7\\xBB\\x9F\\xE3\\x80\\x82</p><br />\\n\\\n  <p><br />\\n\\\n  \\t\\xE7\\xAA\\x97\\xE5\\x86\\x85\\xE7\\xBD\\x91\\xEF\\xBC\\x88<a href=\\\"http://www.itzcn.com\\\">www.itzcn.com</a>\\xEF\\xBC\\x89\\xE6\\x98\\xAF\\xE4\\xB8\\x80\\xE4\\xB8\\xAA\\xE5\\x9F\\xBA\\xE4\\xBA\\x8EWeb 2.0\\xE7\\x9A\\x84\\xE7\\x9C\\x9F\\xE5\\xAE\\x9E\\xE7\\xA4\\xBE\\xE5\\x8C\\xBA\\xEF\\xBC\\x8C\\xE7\\xBB\\x93\\xE5\\x90\\x88\\xE5\\xA4\\x9A\\xE4\\xBD\\x8D\\xE4\\xB8\\x80\\xE7\\xBA\\xBF\\xE8\\xAE\\xA1\\xE7\\xAE\\x97\\xE6\\x9C\\xBA\\xE6\\x95\\x99\\xE5\\xB8\\x88\\xE5\\xAE\\x9E\\xE9\\x99\\x85\\xE6\\x95\\x99\\xE5\\xAD\\xA6\\xE7\\xBB\\x8F\\xE9\\xAA\\x8C\\xEF\\xBC\\x8C\\xE5\\xBD\\x95\\xE5\\x88\\xB6\\xE4\\xBA\\x86\\xE5\\xA4\\xA7\\xE9\\x87\\x8F\\xE8\\xA7\\x86\\xE9\\xA2\\x91\\xE6\\x95\\x99\\xE7\\xA8\\x8B\\xEF\\xBC\\x8C\\xE7\\x89\\xB9\\xE5\\x88\\xAB\\xE6\\x98\\xAF\\xE7\\x9B\\xAE\\xE5\\x89\\x8DWeb\\xE5\\xBC\\x80\\xE5\\x8F\\x91\\xE6\\x96\\xB9\\xE9\\x9D\\xA2\\xE7\\x9A\\x84\\xE7\\x83\\xAD\\xE9\\x97\\xA8\\xE6\\x95\\x99\\xE7\\xA8\\x8B\\xEF\\xBC\\x8C\\xE5\\xA6\\x82Java\\xE8\\xA7\\x86\\xE9\\xA2\\x91\\xE6\\x95\\x99\\xE7\\xA8\\x8B,asp.net\\xE8\\xA7\\x86\\xE9\\xA2\\x91\\xE6\\x95\\x99\\xE7\\xA8\\x8B,php\\xE8\\xA7\\x86\\xE9\\xA2\\x91\\xE6\\x95\\x99\\xE7\\xA8\\x8B\\xE7\\xAD\\x89\\xE7\\xAD\\x89\\xEF\\xBC\\x8C\\xE6\\x97\\xA8\\xE5\\x9C\\xA8\\xE6\\x8E\\xA8\\xE8\\xBF\\x9B\\xE6\\x97\\xA0\\xE7\\xBA\\xB8\\xE5\\x8C\\x96\\xE6\\x95\\x99\\xE5\\xAD\\xA6\\xE8\\xBF\\x9B\\xE7\\xA8\\x8B\\xEF\\xBC\\x8C\\xE6\\x89\\x93\\xE9\\x80\\xA0\\xE4\\xB8\\x80\\xE4\\xB8\\xAA\\xE5\\x85\\x8D\\xE8\\xB4\\xB9\\xE5\\xBC\\x80\\xE6\\x94\\xBE\\xE7\\x9A\\x84\\xE7\\xBD\\x91\\xE7\\xBB\\x9C\\xE5\\xAD\\xA6\\xE9\\x99\\xA2\\xE3\\x80\\x82</p></p>\"\ncreated_at: 2011-02-16 08:10:35 Z\nid: 3\nslug: \ntitle: \"\\xE5\\x85\\xB3\\xE4\\xBA\\x8E\\xE6\\x88\\x91\\xE4\\xBB\\xAC\"\nupdated_at: 2011-02-16 08:23:26 Z\n'),
 (9,'DeletePostUndo','2011-02-16 10:58:16','--- \n:post: \n  active: \n  approved_comments_count: \n  body: |\n    <p>\n    	ac</p>\n\n  body_html: |-\n    <p>\n    <p>ac</p></p>\n  cached_tag_list: \"\"\n  created_at: 2011-02-16 10:55:13 Z\n  edited_at: 2011-02-16 10:55:13 Z\n  id: 6\n  published_at: 2011-02-16 10:55:13 Z\n  slug: ac\n  title: ac\n  updated_at: 2011-02-16 10:55:13 Z\n:comments: []\n\n'),
 (10,'DeletePostUndo','2011-02-19 13:14:19','--- \n:post: \n  active: \n  approved_comments_count: \n  body: |\n    <p>\n    	dddd</p>\n\n  body_html: |-\n    <p>\n    <p>dddd</p></p>\n  cached_tag_list: d\n  created_at: 2011-02-16 10:58:04 Z\n  edited_at: 2011-02-16 10:58:03 Z\n  id: 7\n  published_at: 2011-02-16 10:58:03 Z\n  slug: d\n  title: dd\n  updated_at: 2011-02-16 10:58:04 Z\n:comments: []\n\n'),
 (11,'DeleteCommentUndo','2011-02-20 07:22:08','--- \nauthor: \"\\xE4\\xB8\\xAD\\xE5\\x8D\\x8E\\xE4\\xBA\\xBA\\xE6\\xB0\\x91\\xE5\\x85\\xB1\\xE5\\x92\\x8C\\xE5\\x9B\\xBD\"\nauthor_email: \"\"\nauthor_openid_authority: \nauthor_url: \"\"\nbody: \"\\xE4\\xB8\\xAD\\xE5\\x8D\\x8E\\xE4\\xBA\\xBA\\xE6\\xB0\\x91\\xE5\\x85\\xB1\\xE5\\x92\\x8C\\xE5\\x9B\\xBD\"\nbody_html: \"\\xE4\\xB8\\xAD\\xE5\\x8D\\x8E\\xE4\\xBA\\xBA\\xE6\\xB0\\x91\\xE5\\x85\\xB1\\xE5\\x92\\x8C\\xE5\\x9B\\xBD\"\ncreated_at: 2011-02-15 14:43:41 Z\nid: 2\npost_id: 2\nupdated_at: 2011-02-15 14:43:41 Z\n'),
 (12,'DeletePostUndo','2011-02-21 15:13:05','--- \n:post: \n  active: \n  approved_comments_count: \n  body: |\n    <p>\n    	aa</p>\n\n  body_html: |-\n    <p>\n    <p>aa</p></p>\n  cached_tag_list: sss\n  created_at: 2011-02-21 15:12:57 Z\n  edited_at: 2011-02-21 15:12:57 Z\n  id: 10\n  published_at: 2011-02-21 15:12:57 Z\n  slug: aaa\n  title: aaa\n  updated_at: 2011-02-21 15:12:57 Z\n:comments: []\n\n'),
 (13,'DeletePostUndo','2011-02-23 14:37:13','--- \n:post: \n  active: \n  approved_comments_count: \n  body: |\n    <p>\n    	ww</p>\n\n  body_html: |-\n    <p>\n    <p>ww</p></p>\n  cached_tag_list: ww\n  created_at: 2011-02-23 14:37:03 Z\n  edited_at: 2011-02-23 14:37:03 Z\n  id: 10\n  published_at: 2011-02-23 14:37:03 Z\n  slug: www\n  title: www\n  updated_at: 2011-02-23 14:37:03 Z\n:comments: []\n\n'),
 (14,'DeletePageUndo','2011-02-23 14:37:22','--- \nbody: |\n  <p>\n  	3</p>\n\nbody_html: |-\n  <p>\n  <p>3</p></p>\ncreated_at: 2011-02-23 14:36:47 Z\nid: 8\nslug: \"33\"\ntitle: \"33\"\nupdated_at: 2011-02-23 14:36:47 Z\n');
/*!40000 ALTER TABLE `undo_items` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
