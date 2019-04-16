CREATE DATABASE IF NOT EXISTS proj2;
USE proj2;

create table houses
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(20),
  `subdistrict` varchar(20),
  `housing_type` varchar(20),
  `acreage` int,
  `price` float,
  PRIMARY KEY (`id`)
);


insert into 
houses(`location`, `subdistrict`, `housing_type`, `acreage`, `price`)
values
('��ˮ��', '���й�԰', '��������', 96, 76),
('��ˮ��', '������', '�߲㸴ʽ', 143, 315),
('������', '����С��', '��������', 74, 56),
('�ܳ���', '����С��', '��������', 120, 81.3),
('֣������', '�̳ǽ���', '��������', 175, 274),
('֣������', '��Ԫ�³�', '��ʽС����', 124, 146),
('������', 'ԥ��ˮ��', 'һ��һ��', 45, 26.5),
('��ˮ��', '���ǹ�Ԣ', '����һ��', 87, 61.4);

