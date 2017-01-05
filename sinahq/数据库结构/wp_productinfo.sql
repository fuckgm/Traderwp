
DROP TABLE IF EXISTS `wp_productinfo`;
CREATE TABLE `wp_productinfo` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `ptitle` varchar(255) DEFAULT NULL COMMENT '标题',
  `cid` int(11) DEFAULT NULL COMMENT '产品分类id',
  `uprice` double DEFAULT NULL,
  `feeprice` double DEFAULT NULL,
  `wave` double DEFAULT NULL COMMENT '产品波动',
  `company` varchar(255) DEFAULT NULL COMMENT '单位',
  `patx` double(11,0) DEFAULT '0' COMMENT '点差乘',
  `patj` double(11,0) DEFAULT '0' COMMENT '点差加',
  `buytime` varchar(255) DEFAULT NULL COMMENT '决胜时间',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


INSERT INTO `wp_productinfo` VALUES (1,'油1',1,60,30,0,'5t',0,0,'60'),(2,'油2',1,120,0.6,3,'0.1t',0,0,'120'),(3,'油3',1,180,6,5,'1',0,0,'180'),(4,'银1',2,60,30,5,'5000g',0,0,'60'),(6,'银2',2,120,0.6,0.9,'100g',0,0,'120'),(7,'银3',2,180,30,10,'5t',0,0,'180'),(8,'铜1',3,60,5,1,'1t',0,0,'60'),(9,'铜2',3,120,0.6,5,'1',0,0,'120'),(10,'铜3',3,180,5,5,'1',0,0,'180'),(12,'比特币60',4,60,1,1,'1',0,0,NULL),(13,'比特币120',4,120,1,1,'1',0,0,NULL),(14,'比特币180',4,180,1,1,'1',0,0,NULL);
