-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.51-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema typeflower
--

CREATE DATABASE IF NOT EXISTS typeflower;
USE typeflower;

--
-- Definition of table `tabcarts`
--

DROP TABLE IF EXISTS `tabcarts`;
CREATE TABLE `tabcarts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fId` int(11) DEFAULT NULL,
  `fCount` int(11) DEFAULT NULL,
  `fTotalPrice` float DEFAULT NULL,
  `uId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabcarts`
--

/*!40000 ALTER TABLE `tabcarts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabcarts` ENABLE KEYS */;


--
-- Definition of table `tabflowers`
--

DROP TABLE IF EXISTS `tabflowers`;
CREATE TABLE `tabflowers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fName` varchar(50) DEFAULT NULL,
  `fHanyi` varchar(200) DEFAULT NULL,
  `fSPrice` float DEFAULT NULL,
  `fImg` varchar(50) DEFAULT NULL,
  `fDetails` varchar(400) DEFAULT NULL,
  `fCailiao` varchar(100) DEFAULT NULL,
  `fBaoZ` varchar(100) DEFAULT NULL,
  `fPprice` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabflowers`
--

/*!40000 ALTER TABLE `tabflowers` DISABLE KEYS */;
INSERT INTO `tabflowers` (`id`,`fName`,`fHanyi`,`fSPrice`,`fImg`,`fDetails`,`fCailiao`,`fBaoZ`,`fPprice`) VALUES 
 (6,'生命之源','妈妈，感谢您多年的艰辛哺育，使我长大.. ',123,'10176','馈赠“说话玫瑰”，尽显尊贵本色  ','多头粉百合2枝、红玫瑰8枝、多色康乃馨16枝、散尾5片、配蓝色勿忘我、黄莺等 ','台面小花篮、粉色棉纸包裹',125),
 (7,'醉人的思想曲','穿越无数人群，去过无数城市，且让心灵.. ',160,'10229','穿越无数人群，去过无数城市，且让心灵.. ','穿越无数人群，去过无数城市，且让心灵.. ','穿越无数人群，去过无数城市，且让心灵.. ',1052),
 (8,'深情相拥 ','在洛水之滨 / 我送你远去 /相聚时..',196,'3','在洛水之滨 / 我送你远去 /相聚时..','在洛水之滨 / 我送你远去 /相聚时..','在洛水之滨 / 我送你远去 /相聚时..',180),
 (9,'感动 ','但愿我寄予您的祝福是最令你感动的！.. ',171,'4','但愿我寄予您的祝福是最令你感动的！.. ','但愿我寄予您的祝福是最令你感动的！.. ','但愿我寄予您的祝福是最令你感动的！.. ',189),
 (10,'心旷神怡 ','不论谁看了它，都会有一种心旷神怡，浑..  ',162,'5','不论谁看了它，都会有一种心旷神怡，浑.. ','不论谁看了它，都会有一种心旷神怡，浑.. ','不论谁看了它，都会有一种心旷神怡，浑.. ',162),
 (11,'祝您健康 ','叶子留得长一些，起画龙点睛的作用，.. ',156,'6','叶子留得长一些，起画龙点睛的作用，.. ','叶子留得长一些，起画龙点睛的作用，.. ','叶子留得长一些，起画龙点睛的作用，.. ',156),
 (12,'蓬勃 ','这款花饰充满了成熟的气息，赠送这种风.. ',260,'7','这款花饰充满了成熟的气息，赠送这种风.. ','这款花饰充满了成熟的气息，赠送这种风.. ','这款花饰充满了成熟的气息，赠送这种风.. ',345),
 (16,'浓浓的情谊','天上的那颗星星就是我在陪着你',123,'8','天上的那颗星星就是我在陪着你','天上的那颗星星就是我在陪着你','天上的那颗星星就是我在陪着你',123),
 (17,'我和你','一起去北漂',156,'9','一起去北漂','一起去北漂','一起去北漂',153),
 (18,'1+1','何必要在一起',456,'10','何必要在一起','何必要在一起','何必要在一起',450),
 (19,'心灵的窗户','善良、闪亮、我相信你',156,'11','善良、闪亮、我相信你','善良、闪亮、我相信你','善良、闪亮、我相信你',150),
 (20,'太阳','红日',123,'6','很好哈','很好哈','很好哈',123),
 (21,'1+1','天上的那颗星星就是我在陪着你',152,'5','天上的那颗星星就是我在陪着你','天上的那颗星星就是我在陪着你','天上的那颗星星就是我在陪着你',145),
 (22,'花好月圆','执子之手，白手偕老',123,'9','执子之手，白手偕老','执子之手，白手偕老','执子之手，白手偕老',120);
/*!40000 ALTER TABLE `tabflowers` ENABLE KEYS */;


--
-- Definition of table `tabusers`
--

DROP TABLE IF EXISTS `tabusers`;
CREATE TABLE `tabusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(50) DEFAULT NULL,
  `uPass` varchar(50) DEFAULT NULL,
  `uTname` varchar(50) DEFAULT NULL,
  `uAddress` varchar(50) DEFAULT NULL,
  `uCode` varchar(50) DEFAULT NULL,
  `uPhone` varchar(50) DEFAULT NULL,
  `uEmail` varchar(50) DEFAULT NULL,
  `uAddressType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabusers`
--

/*!40000 ALTER TABLE `tabusers` DISABLE KEYS */;
INSERT INTO `tabusers` (`id`,`uName`,`uPass`,`uTname`,`uAddress`,`uCode`,`uPhone`,`uEmail`,`uAddressType`) VALUES 
 (1,'dcy','dcy','dcy','撒地方水电费','4960000','112222222','sdfsdf','sadfsdf'),
 (5,'ertf','123','dsf','','','','',''),
 (6,'','','','','','','',''),
 (7,'','','','','','','',''),
 (8,'sd','sd','','','','','',''),
 (9,'oppo','oppo','','','','','',''),
 (10,'admin','admin','admin','','','','',''),
 (11,'adsfsadf','','','','','','',''),
 (12,'sfsdf','','','','','','',''),
 (13,'cc','','','','','','',''),
 (14,'dd','','','','','','',''),
 (15,'wer','','','','','','',''),
 (16,'wer','','','','','','',''),
 (17,'oppo','','','','','','',''),
 (18,'Happy','happy','HappyNewYear','河南省郑州市文化路路寨','4500000','15093077823','670413661@qq.com','家庭住址');
/*!40000 ALTER TABLE `tabusers` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
