CREATE DATABASE IF NOT EXISTS proj2;
USE proj2;

create table friendLinks
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `taxis` int,
  `isShow` bit,
  PRIMARY KEY (`id`)
);
