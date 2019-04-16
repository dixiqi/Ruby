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
('.NET����', null, '#'), 
('Java����', null, '#'), 
('��������', null, '#'), 
('C#', 1, '#'), 
('J#', 1, '#'), 
('ASP.NET', 1, '#'), 
('ASP.NET MVC', 1, '#'), 
('.NET Framework', 1, '#'), 
('VB.NET', 1, '#'), 
('J2SE', 2, '#'), 
('J2EE', 2, '#'), 
('Web����', 2, '#'), 
('J2ME', 2, '#'), 
('SSH', 2, '#'), 
('VC/MFC', 3, '#'),
('VB', 3, '#'),
('Delphi', 3, '#'),
('C++', 3, '#'),
('�������', 3, '#'),
('�ű�����', 3, '#'),
('PowerBuilder', 3, '#'),
('�߳�/����/DLL', 15, '#'),
('���濪��', 15, '#'),
('���ݿ�', 15, '#'),
('������', 15, '#'),
('ϵͳ', 15, '#');