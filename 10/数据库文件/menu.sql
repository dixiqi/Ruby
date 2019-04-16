CREATE DATABASE IF NOT EXISTS unit10;
USE unit10;

create table menus
(
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50),
  `url` varchar(50),
  `parent_id` int,
  FOREIGN KEY (`parent_id`) REFERENCES `menus`(`id`),
  PRIMARY KEY (`id`)
);


insert into menus(`name`,`parent_id`,`url`)
values
('.NET技术', null, '#'), 
('Java技术', null, '#'), 
('其它语言', null, '#'), 
('C#', 1, '#'), 
('J#', 1, '#'), 
('ASP.NET', 1, '#'), 
('ASP.NET MVC', 1, '#'), 
('.NET Framework', 1, '#'), 
('VB.NET', 1, '#'), 
('J2SE', 2, '#'), 
('J2EE', 2, '#'), 
('Web开发', 2, '#'), 
('J2ME', 2, '#'), 
('SSH', 2, '#'), 
('VC/MFC', 3, '#'),
('VB', 3, '#'),
('Delphi', 3, '#'),
('C++', 3, '#'),
('汇编语言', 3, '#'),
('脚本语言', 3, '#'),
('PowerBuilder', 3, '#'),
('线程/进程/DLL', 15, '#'),
('界面开发', 15, '#'),
('数据库', 15, '#'),
('网络编程', 15, '#'),
('系统', 15, '#');