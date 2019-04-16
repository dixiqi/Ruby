CREATE DATABASE IF NOT EXISTS unit10;
USE unit10;

create table types
(
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20),
  PRIMARY KEY (`id`)
);

create table products
(
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20),
  `type_id` int,
  `price` float,
  `model` varchar(20),
  FOREIGN KEY (`type_id`) REFERENCES `types`(`id`),
  PRIMARY KEY (`id`)
);


insert into types(`name`) values('MP3'),('�������'),('ƽ�����');


insert into products(`name`, `type_id`, `price`, `model`) 
values
('��������', 2, 4789, 'E32-2'),
('IPOD', 1, 531, 'Q70'),
('Chomes5', 3, 2199, 'P34'),
('ASUS', 2, 3930, 'V320-3'),
('HP', 3, 7630, 'H8132'),
('BENQ', 2, 4200, 'T3'),
('�廪�Ϲ�', 1, 56, 'QH52'),
('������', 1, 92, 'B98'),
('����', 1, 89, 'L7');


