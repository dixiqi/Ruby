CREATE DATABASE IF NOT EXISTS unit10;
USE unit10;

create table roles
(
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20),
  PRIMARY KEY (`id`)
);

create table functions
(
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20),
  `number` varchar(10),
  PRIMARY KEY (`id`)
);


create table functions_roles
(
  `role_id` int,
  `function_id` int,
  FOREIGN KEY (`role_id`) REFERENCES `roles`(`id`),
  FOREIGN KEY (`function_id`) REFERENCES `functions`(`id`),
  PRIMARY KEY (`role_id`, `function_id`)
);



insert into roles(`name`) values('超级管理员'), ('新闻管理员'), ('产品管理员');

insert into functions(`name`,`number`) 
values
('系统管理', '1001'),
('用户查看', '1101'),
('用户管理', '1102'),
('新闻信息浏览', '1201'),
('新闻信息添加修改', '1202'), 
('新闻信息删除', '1203'), 
('产品信息浏览', '1301'), 
('产品信息添加修改', '1302'), 
('产品信息删除', '1303');

insert into functions_roles(`role_id`,`function_id`)
values
(1, 1),(1, 2),(1, 3),(1, 4),(1, 5),(1, 6),(1, 7),(1, 8),(1, 9),
(2, 4),(2, 5),(2, 6),
(3, 7),(3, 8),(3, 9);
