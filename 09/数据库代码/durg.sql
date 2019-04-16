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
('孢头洛克胶囊', '2板*12粒', '盒', 36, 12, '2011-1-12'),
('无天夏', '散装', '两', 200, 6, '2015-5-6'),
('人工牛黄胶囊', '10粒', '盒', 50, 5, '2013-4-25'),
('福利眼药水', '25ML', '瓶', 122, 9, '2011-1-1'),
('龙胆壮骨水', '230ML', '瓶', 20, 15, '2011-2-24'),
('小儿咳特灵', '24粒', '盒', 56, 8, '2010-12-5'),
('氟轻松滴眼液', '50ML', '瓶', 3, 6, '2011-3-17'),
('复方腥草片', '200片', '瓶', 19, 24, '2011-1-20'),
('天天和糖浆', '300ML', '瓶', 23, 12, '2011-12-25');