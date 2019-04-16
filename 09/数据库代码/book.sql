CREATE DATABASE IF NOT EXISTS proj2;
USE proj2;

create table books
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(20),
  `ISBN` varchar(20),
  `price` int,
  `publisher` varchar(50),
  PRIMARY KEY (`id`)
);


insert into 
books(`name`, `author`, `ISBN`, `price`, `publisher`)
values
('SQL Server 2008��ȫѧϰ�ֲ�', '��֣��', '978-7302-7-1235-123', 79, '�廪��ѧ������'),
('Struts 2 ��ȫѧϰ�ֲ�', '��֣��', '978-7302-7-3554-527', 69, '�廪��ѧ������'),
('Ruby on Rails ������Ƽ������', '����', '978-78502-65-4136', 66, '�廪��ѧ������'),
('Oracle ��ȫѧϰ�ֲ�', '��֣��', '978-7302-7-3456387', 79, '�廪��ѧ������');
