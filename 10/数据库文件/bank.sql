CREATE DATABASE IF NOT EXISTS unit10;
USE unit10;

create table cards
(
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `number` varchar(20) NOT NULL,
  `money` int default 0,
  PRIMARY KEY (`id`)
);

insert into cards(name,number,money) 
values
('aobama','6543216598743210', 1000),
('joker', '6543216965413254', 40);
