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
('金水区', '城市公园', '三室两厅', 96, 76),
('金水区', '宝蓝湾', '高层复式', 143, 315),
('二七区', '天下小城', '两室两厅', 74, 56),
('管城区', '绿竹小区', '三室两厅', 120, 81.3),
('郑东新区', '绿城金座', '四室两厅', 175, 274),
('郑东新区', '西元新城', '复式小户型', 124, 146),
('二七区', '豫泊水城', '一室一厅', 45, 26.5),
('金水区', '康城公寓', '三室一厅', 87, 61.4);

