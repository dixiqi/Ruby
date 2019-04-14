
CREATE DATABASE IF NOT EXISTS db_oa ;
USE db_oa ;

create table staffs
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` varchar(2),
  `age` int,
  `politics_status` varchar(10),
  `IDNO` varchar(18),
  `birthdate` date,
  `email` varchar(50),
  `mobile` varchar(15),
  `native_place` varchar(15),
  `blood_type` varchar(2),
  `nation` varchar(10),
  `work_unit` varchar(50),
  `school` varchar(50),
  PRIMARY KEY (`id`)
);

create table achievements
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `saleroom` int,
  PRIMARY KEY (`id`)
);
insert into achievements(`name`, `saleroom`)
values
('����', 4700000),
('����', 6987000),
('�ž�˼', 10020000),
('������', 2300000),
('��С��', 8633000),
('�źƻ�', 5020000),
('�', 7600000),
('����', 360000)

/*
����		name
�Ա�		sex
����		age
������ò	politics_status
���֤��	IDNO
��������	birthdate
��������	email
�ƶ��绰	mobile
����		native_place
Ѫ��		blood_type
����		nation
������λ	work_unit
��ҵԺУ	school
 */