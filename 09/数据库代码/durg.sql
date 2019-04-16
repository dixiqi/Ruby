CREATE DATABASE IF NOT EXISTS proj2;
USE proj2;

create table durgs
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `standard` varchar(20),
  `unit` varchar(20),
  `number` int,
  `price` int,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`)
);

insert into durgs(`name`, `standard`, `unit`, `number`, `price`, `expiration`)
values
('��ͷ��˽���', '2��*12��', '��', 36, 12, '2011-1-12'),
('������', 'ɢװ', '��', 200, 6, '2015-5-6'),
('�˹�ţ�ƽ���', '10��', '��', 50, 5, '2013-4-25'),
('������ҩˮ', '25ML', 'ƿ', 122, 9, '2011-1-1'),
('����׳��ˮ', '230ML', 'ƿ', 20, 15, '2011-2-24'),
('С��������', '24��', '��', 56, 8, '2010-12-5'),
('�����ɵ���Һ', '50ML', 'ƿ', 3, 6, '2011-3-17'),
('�����Ȳ�Ƭ', '200Ƭ', 'ƿ', 19, 24, '2011-1-20'),
('������ǽ�', '300ML', 'ƿ', 23, 12, '2011-12-25');