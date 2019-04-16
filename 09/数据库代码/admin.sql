CREATE DATABASE IF NOT EXISTS test;
USE test;

create table admins
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `login_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(20),
  `role` varchar(10),
  `last_login_time` datetime,
  `login_count` int,
  `state` int,
  PRIMARY KEY (`id`)
);

insert into 
admins(`login_name`, `password`, `username`, `role`, `last_login_time`, `login_count`, `state`)
values('admin', '123', '张浩华', '超级管理员', '2011-01-13 12:38:51', 3, 1);

insert into 
admins(`login_name`, `password`, `username`, `role`, `last_login_time`, `login_count`, `state`)
values('joker', '123', '小刘', '普通管理员', '2011-01-11 15:08:23', 12, 1);

insert into 
admins(`login_name`, `password`, `username`, `role`, `last_login_time`, `login_count`, `state`)
values('beibei', '123', '李小贝', '普通管理员', '2011-01-03 12:03:00', 2, 1);

insert into 
admins(`login_name`, `password`, `username`, `role`, `last_login_time`, `login_count`, `state`)
values('xiaocai', '123', '小蔡', '普通管理员', '2010-12-28 12:02:32', 5, 2);

insert into 
admins(`login_name`, `password`, `username`, `role`, `last_login_time`, `login_count`, `state`)
values('lxg', '123', '刘小光', '超级管理员', '2011-01-14 12:51:51', 30, 1);