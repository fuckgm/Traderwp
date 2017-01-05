

DROP TABLE IF EXISTS `wp_catproduct`;
CREATE TABLE `wp_catproduct` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `myat` double(11,1) DEFAULT '10.0' COMMENT '点差*',
  `myatjia` double(11,2) DEFAULT '0.00' COMMENT '点差+',
  `ask` double(11,2) DEFAULT '0.00' COMMENT '现在的价格',
  `high` double(11,2) DEFAULT '0.00' COMMENT '最高',
  `low` double(11,2) DEFAULT '0.00' COMMENT '最低',
  `open` double(11,2) DEFAULT '0.00' COMMENT '今开',
  `close` double(11,2) DEFAULT '0.00' COMMENT '昨收',
  `eidtime` int(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "wp_catproduct"
#

/*!40000 ALTER TABLE `wp_catproduct` DISABLE KEYS */;
INSERT INTO `wp_catproduct` VALUES (1,'油',100.0,1500.00,239.24,241.78,238.13,240.03,238.91,1451993790),(2,'白银',1.0,1000.00,2928.00,2942.00,2899.00,2901.00,2902.00,1451993791),(3,'铜',1.0,1500.00,30375.00,30499.00,29939.00,30057.00,29965.00,1451993792),(4,'比特币',10.0,0.00,0.00,0.00,0.00,0.00,0.00,NULL),(5,'欧元/美元',10.0,0.00,0.00,0.00,0.00,0.00,0.00,NULL);
/*!40000 ALTER TABLE `wp_catproduct` ENABLE KEYS */;
