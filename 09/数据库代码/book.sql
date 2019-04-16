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
('SQL Server 2008完全学习手册', '郭郑州', '978-7302-7-1235-123', 79, '清华大学出版社'),
('Struts 2 完全学习手册', '郭郑州', '978-7302-7-3554-527', 69, '清华大学出版社'),
('Ruby on Rails 程序设计技术详解', '许勇', '978-78502-65-4136', 66, '清华大学出版社'),
('Oracle 完全学习手册', '郭郑州', '978-7302-7-3456387', 79, '清华大学出版社');
