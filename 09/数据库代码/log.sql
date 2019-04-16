CREATE DATABASE IF NOT EXISTS proj2;
USE proj2;

create table logs
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `record_time` datetime,
  `log` varchar(200),
  PRIMARY KEY (`id`)
);
