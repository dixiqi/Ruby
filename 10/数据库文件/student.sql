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
('��', 	'�����301', '1030101', 23, 'Ů', '�Ϻ����ֶ������ֶ���·108��801��', 	'020-65488542'),
('���', 	'�����301', '1030102', 19, '��', '�����к��������·37��', 		'010-21578945'),
('��С�', 	'�����301', '1030103', 20, 'Ů', '֣���ж���·200�Ž𲩴�D��2708', 	'134654987654'),
('��־', 	'�����301', '1030104', 21, '��', '�����к������ռ����ɳ��14��', 	'188888888666'),
('��־ǿ',	'�����301', '1030105', 21, '��', '��֣������·148��3��2��Ԫ401��', 	'0371-62685478'),
('��ɺ', 	'�����301', '1030106', 22, 'Ů', '���ݴ�Է28��306��', 			'150655478954');


insert into meal_cards
(`number`, `student_id`, `sicherheit`, `balance`)
values
('201012365', 1, 20, 35),
('201012534', 2, 20, 5.5),
('201012357', 3, 20, 124.5),
('201012773', 4, 20, 60),
('201012455', 5, 20, 42.3),
('201012333', 6, 20, 78.6);
