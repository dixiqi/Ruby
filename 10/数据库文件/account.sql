CREATE DATABASE IF NOT EXISTS unit102;
USE unit102;

create table accounts
(
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);
