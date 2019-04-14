
CREATE DATABASE IF NOT EXISTS db_student;
USE db_student;

create table scores
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL,
  `score` float NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `explain` text NOT NULL,
  PRIMARY KEY (`id`)
);

create table students
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `sex` varchar(2),
  `age` int,
  `details` text,
  PRIMARY KEY (`id`)
);

