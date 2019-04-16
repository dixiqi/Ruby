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



insert into roles(`name`) values('��������Ա'), ('���Ź���Ա'), ('��Ʒ����Ա');

insert into functions(`name`,`number`) 
values
('ϵͳ����', '1001'),
('�û��鿴', '1101'),
('�û�����', '1102'),
('������Ϣ���', '1201'),
('������Ϣ����޸�', '1202'), 
('������Ϣɾ��', '1203'), 
('��Ʒ��Ϣ���', '1301'), 
('��Ʒ��Ϣ����޸�', '1302'), 
('��Ʒ��Ϣɾ��', '1303');

insert into functions_roles(`role_id`,`function_id`)
values
(1, 1),(1, 2),(1, 3),(1, 4),(1, 5),(1, 6),(1, 7),(1, 8),(1, 9),
(2, 4),(2, 5),(2, 6),
(3, 7),(3, 8),(3, 9);
