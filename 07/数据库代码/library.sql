
CREATE DATABASE IF NOT EXISTS library;
USE library;

create table books
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `publish_time` date NOT NULL,
  `class` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);


insert into 
books(name, author, price, ISBN, publisher, publish_time, `class`)
values('SQLServer2008', '��֣��', 79.5, '978-7-302-22315-3', '�廪��ѧ������', '2011-1-1', '���ݿ�');

insert into 
books(name, author, price, ISBN, publisher, publish_time, `class`)
values('Ruby on Rails', '����', 66, '978-302-23524-8', '�廪��ѧ������', '2011-1-1', 'Web����');

insert into 
books(name, author, price, ISBN, publisher, publish_time, `class`)
values('NetBeans', '����', 73, '977-442-2341565', '�廪��ѧ������', '2011-1-1', '���򿪷�');

insert into 
books(name, author, price, ISBN, publisher, publish_time, `class`)
values('Oracle 11g', '�Ž�', 48, '9238-302-223243', '�廪��ѧ������', '2011-1-1', '���ݿ�');

insert into 
books(name, author, price, ISBN, publisher, publish_time, `class`)
values('Eclipse3.0', '������', 59, '978-302315-113', '�廪��ѧ������', '2011-1-1', '���򿪷�')

