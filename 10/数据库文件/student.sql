CREATE DATABASE IF NOT EXISTS unit10;
USE unit10;

create table students
(
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20),
  `klass` varchar(30),
  `number` varchar(20),
  `age` int,
  `sex` varchar(2),
  `home_address` varchar(200),
  `phone` varchar(15),
  PRIMARY KEY (`id`)
);

create table meal_cards
(
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(20),
  `student_id` int,
  `sicherheit` float,
  `balance` float,
  FOREIGN KEY (`student_id`) REFERENCES `students`(`id`),
  PRIMARY KEY (`id`)
);


insert into students
(`name`, `klass`, `number`, `age`, `sex`, `home_address`, `phone`)
values
('沈静', 	'计算机301', '1030101', 23, '女', '上海市浦东新区浦东南路108号801室', 	'020-65488542'),
('马炜', 	'计算机301', '1030102', 19, '男', '北京市海淀区田村路37号', 		'010-21578945'),
('胡小瑜', 	'计算机301', '1030103', 20, '女', '郑州市二七路200号金博大D座2708', 	'134654987654'),
('蒋志', 	'计算机301', '1030104', 21, '男', '北京市海淀区苏家坨后涧沙村14号', 	'188888888666'),
('贝志强',	'计算机301', '1030105', 21, '男', '新郑市人民路148号3幢2单元401号', 	'0371-62685478'),
('邱珊', 	'计算机301', '1030106', 22, '女', '湖州翠苑28幢306室', 			'150655478954');


insert into meal_cards
(`number`, `student_id`, `sicherheit`, `balance`)
values
('201012365', 1, 20, 35),
('201012534', 2, 20, 5.5),
('201012357', 3, 20, 124.5),
('201012773', 4, 20, 60),
('201012455', 5, 20, 42.3),
('201012333', 6, 20, 78.6);
