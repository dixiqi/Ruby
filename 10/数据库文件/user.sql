CREATE DATABASE IF NOT EXISTS unit102;
USE unit102;

create table users
(
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `year` int NOT NULL,
  `sex` varchar(2) NOT NULL,
  `address` varchar(50),
  `phone` varchar(12),
  PRIMARY KEY (`id`)
);
