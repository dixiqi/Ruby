
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
('李意', 4700000),
('刘静', 6987000),
('张静思', 10020000),
('田丽丽', 2300000),
('李小贝', 8633000),
('张浩华', 5020000),
('李华', 7600000),
('赵铎', 360000)

/*
姓名		name
性别		sex
年龄		age
政治面貌	politics_status
身份证号	IDNO
出生日期	birthdate
电子邮箱	email
移动电话	mobile
籍贯		native_place
血型		blood_type
民族		nation
工作单位	work_unit
毕业院校	school
 */