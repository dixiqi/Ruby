
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
values('SQLServer2008', '郭郑州', 79.5, '978-7-302-22315-3', '清华大学出版社', '2011-1-1', '数据库');

insert into 
books(name, author, price, ISBN, publisher, publish_time, `class`)
values('Ruby on Rails', '许勇', 66, '978-302-23524-8', '清华大学出版社', '2011-1-1', 'Web开发');

insert into 
books(name, author, price, ISBN, publisher, publish_time, `class`)
values('NetBeans', '王黎', 73, '977-442-2341565', '清华大学出版社', '2011-1-1', '程序开发');

insert into 
books(name, author, price, ISBN, publisher, publish_time, `class`)
values('Oracle 11g', '张杰', 48, '9238-302-223243', '清华大学出版社', '2011-1-1', '数据库');

insert into 
books(name, author, price, ISBN, publisher, publish_time, `class`)
values('Eclipse3.0', '刘程序', 59, '978-302315-113', '清华大学出版社', '2011-1-1', '程序开发')

