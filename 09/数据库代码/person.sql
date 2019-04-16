CREATE DATABASE IF NOT EXISTS test;
USE test;


create table persons
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int,
  `sex` varchar(2),
  PRIMARY KEY (`id`)
);


insert into persons(`name`, `age`, `sex`) values
('ÕÅºì±ö', 32, 'ÄĞ'),('ÁõĞÇÎ°', 26, 'ÄĞ'),('ÕÔÃÎ', 24, 'Å®');