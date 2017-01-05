set charset utf8;
CREATE TABLE `wp_accountinfo` (
  `aid` int(50) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `balance` double(24,2) DEFAULT '0.00' COMMENT '账号余额',
  `frozen` double(255,0) DEFAULT NULL COMMENT '冻结金额',
  `pwd` varchar(50) DEFAULT NULL COMMENT '交易密码',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('1','68','3004856.80','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('93','338','670.40','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('94','339','1150.00','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('95','340','9443.20','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('96','341','19430.00','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('97','342','19358.50','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('98','343','10000.00','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('99','344','0.00','','000000');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('100','345','0.00','','000000');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('101','346','0.00','','123123');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('102','347','499999989.20','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('103','348','0.00','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('104','349','0.00','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('105','350','1212991.40','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('106','351','0.00','','123321');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('107','352','0.00','','456346');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('108','372','99464.00','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('109','373','0.00','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('110','374','0.00','','');
insert into `wp_accountinfo`(`aid`,`uid`,`balance`,`frozen`,`pwd`) values('111','375','0.00','','');
CREATE TABLE `wp_balance` (
  `bpid` int(11) NOT NULL AUTO_INCREMENT,
  `bptype` varchar(255) DEFAULT NULL COMMENT '收支类型',
  `bptime` int(20) DEFAULT NULL COMMENT '操作时间',
  `bpprice` double DEFAULT NULL COMMENT '收支',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `uid` int(11) DEFAULT NULL,
  `isverified` int(11) DEFAULT NULL COMMENT '判断申请是否通过，0未通过，1通过',
  `cltime` int(20) DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`bpid`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('11','提现','1452763308','540','','64','1','1474795573');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('12','提现','1452763512','300','','64','1','1474795584');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('13','提现','1452763894','1000','','64','1','1474795598');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('14','提现','1452771435','600','','64','1','1474795614');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('15','提现','1452771712','100','','64','1','1474795619');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('16','提现','1452772051','500','','64','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('17','提现','1452773903','100','','64','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('18','提现','1452773949','200','','64','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('19','','','','','69','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('20','提现','1453431038','1000','','67','2','1453431181');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('21','提现','1453431422','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('22','提现','1453431567','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('23','提现','1453431596','1000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('24','提现','1453431895','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('25','提现','1453431899','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('26','提现','1453431935','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('27','提现','1453431944','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('28','提现','1453431946','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('29','提现','1453431946','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('30','提现','1453431947','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('31','提现','1453431947','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('32','提现','1453431947','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('33','提现','1453431947','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('34','提现','1453431947','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('35','提现','1453431948','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('36','提现','1453431965','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('37','提现','1453431965','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('38','提现','1453431989','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('39','提现','1453431989','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('40','提现','1453431989','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('41','提现','1453431989','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('42','提现','1453431989','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('43','提现','1453431990','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('44','提现','1453431991','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('45','提现','1453431991','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('46','提现','1453431991','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('47','提现','1453431991','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('48','提现','1453431991','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('49','提现','1453431991','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('50','提现','1453431992','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('51','提现','1453431992','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('52','提现','1453431992','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('53','提现','1453431992','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('54','提现','1453431992','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('55','提现','1453431992','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('56','提现','1453431993','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('57','提现','1453431993','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('58','提现','1453431993','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('59','提现','1453431993','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('60','提现','1453431993','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('61','提现','1453431993','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('62','提现','1453431994','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('63','提现','1453431994','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('64','提现','1453431994','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('65','提现','1453431994','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('66','提现','1453431994','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('67','提现','1453431995','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('68','提现','1453431995','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('69','提现','1453431995','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('70','提现','1453431995','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('71','提现','1453431995','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('72','提现','1453431995','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('73','提现','1453431996','50000','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('74','提现','1453432095','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('75','提现','1453432232','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('76','提现','1453432846','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('77','提现','1453432862','100','','67','0','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('78','提现','1453433168','100','','67','2','1463023194');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('79','提现','1453433173','100','','67','1','1453441341');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('80','提现','1453433234','100','','67','2','1453441331');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('81','提现','1453433237','100','1516','67','2','1453434492');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('82','提现','1453433343','100','1111','67','2','1453434167');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('83','提现','1453433361','100','122','67','1','1453434141');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('84','提现','1453433485','100','','67','2','1453433657');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('85','','','','','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('86','充值','1463023126','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('87','充值','1463023128','0','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('88','充值','1463023131','0','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('89','充值','1463121160','100','开始充值','342','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('90','充值','1463386848','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('91','充值','1465900299','0.01','开始充值','351','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('92','充值','1465900318','0.01','开始充值','351','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('93','充值','1465900318','0.01','开始充值','351','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('94','充值','1470739226','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('95','充值','1470800946','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('96','充值','1470911963','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('97','充值','1470964121','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('98','充值','1470986537','1111','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('99','充值','1471058520','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('100','充值','1471082256','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('101','充值','1471105360','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('102','充值','1471159108','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('103','充值','1471233624','0','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('104','充值','1471243073','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('105','充值','1471247164','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('106','充值','1471262512','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('107','充值','1471309461','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('108','充值','1471324303','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('109','充值','1471325591','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('110','充值','1471337058','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('111','充值','1471421866','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('112','充值','1471424188','500','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('113','充值','1471506320','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('114','充值','1473740148','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('115','充值','1473768072','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('116','充值','1473829871','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('117','充值','1473829945','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('118','充值','1473836961','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('119','充值','1473846344','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('120','充值','1473866109','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('121','充值','1473946472','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('122','充值','1474089583','1000','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('123','充值','1474092889','1000','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('124','充值','1474111966','8000','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('125','充值','1474253699','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('126','充值','1474448879','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('127','充值','1474456567','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('128','充值','1474480161','100','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('129','充值','1474517708','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('130','充值','1474629493','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('131','充值','1474735557','0.01','开始充值','350','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('132','充值','1474736728','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('133','充值','1474889255','100','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('134','充值','1474890783','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('135','充值','1474895848','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('136','充值','1474896967','100','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('137','充值','1474937584','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('138','充值','1474938363','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('139','充值','1474940915','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('140','充值','1474944715','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('141','充值','1474951172','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('142','充值','1474951674','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('143','充值','1475063718','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('144','充值','1475076302','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('145','充值','1475374522','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('146','充值','1475374574','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('147','充值','1475374580','0.01','开始充值','67','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('148','充值','1475465507','1000','开始充值','374','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('149','充值','1475465958','0','开始充值','374','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('150','充值','1475466486','0','开始充值','374','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('151','充值','1475467974','0','开始充值','374','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('152','充值','1475500259','100','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('153','充值','1475593376','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('154','充值','1475593977','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('155','充值','1475637369','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('156','充值','1475658235','0.01','开始充值','375','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('157','充值','1475820772','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('158','充值','1475935469','0.01','开始充值','68','','');
insert into `wp_balance`(`bpid`,`bptype`,`bptime`,`bpprice`,`remarks`,`uid`,`isverified`,`cltime`) values('159','充值','1475935541','0.01','开始充值','68','','');
CREATE TABLE `wp_bankinfo` (
  `bid` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '绑定',
  `bankname` varchar(20) NOT NULL COMMENT '所属银行',
  `province` varchar(20) NOT NULL COMMENT '省份',
  `city` varchar(20) NOT NULL COMMENT '城市',
  `branch` varchar(20) NOT NULL COMMENT '支行名',
  `banknumber` varchar(20) NOT NULL COMMENT '银行卡号',
  `busername` varchar(20) NOT NULL COMMENT '姓名',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
insert into `wp_bankinfo`(`bid`,`uid`,`bankname`,`province`,`city`,`branch`,`banknumber`,`busername`) values('20','338','','','','','','');
insert into `wp_bankinfo`(`bid`,`uid`,`bankname`,`province`,`city`,`branch`,`banknumber`,`busername`) values('21','339','','','','','','');
insert into `wp_bankinfo`(`bid`,`uid`,`bankname`,`province`,`city`,`branch`,`banknumber`,`busername`) values('22','340','','','','','','');
insert into `wp_bankinfo`(`bid`,`uid`,`bankname`,`province`,`city`,`branch`,`banknumber`,`busername`) values('23','341','','','','','','');
insert into `wp_bankinfo`(`bid`,`uid`,`bankname`,`province`,`city`,`branch`,`banknumber`,`busername`) values('24','342','','','','','','');
insert into `wp_bankinfo`(`bid`,`uid`,`bankname`,`province`,`city`,`branch`,`banknumber`,`busername`) values('25','343','','','','','','');
insert into `wp_bankinfo`(`bid`,`uid`,`bankname`,`province`,`city`,`branch`,`banknumber`,`busername`) values('26','67','','','','','','');
insert into `wp_bankinfo`(`bid`,`uid`,`bankname`,`province`,`city`,`branch`,`banknumber`,`busername`) values('27','350','','','','','','');
insert into `wp_bankinfo`(`bid`,`uid`,`bankname`,`province`,`city`,`branch`,`banknumber`,`busername`) values('28','68','','','','','','');
insert into `wp_bankinfo`(`bid`,`uid`,`bankname`,`province`,`city`,`branch`,`banknumber`,`busername`) values('29','372','','','','','','');
CREATE TABLE `wp_bankrournal` (
  `bankno` varchar(255) NOT NULL COMMENT '日志编号',
  `bankname` varchar(255) DEFAULT NULL COMMENT '银行名称',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `

cardnumber` int(20) DEFAULT NULL COMMENT '银行卡号',
  `cardholder` varchar(255) DEFAULT NULL COMMENT '持卡人名称'
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
CREATE TABLE `wp_bournal` (
  `bno` varchar(100) NOT NULL COMMENT '提现/充值编号',
  `btype` varchar(20) DEFAULT NULL COMMENT '银行名称',
  `btime` int(20) DEFAULT NULL COMMENT '操作时间',
  `bprice` double(20,2) DEFAULT NULL COMMENT '提现/充值金额',
  `uid` int(20) DEFAULT NULL COMMENT '持卡人名称',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `isverified` int(10) DEFAULT NULL,
  `balance` double(20,2) DEFAULT '0.00' COMMENT '账户余额'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
insert into `wp_catproduct`(`cid`,`cname`,`myat`,`myatjia`,`ask`,`high`,`low`,`open`,`close`,`eidtime`) values('1','油','100.0','1500.00','239.24','241.78','238.13','240.03','238.91','1451993790');
insert into `wp_catproduct`(`cid`,`cname`,`myat`,`myatjia`,`ask`,`high`,`low`,`open`,`close`,`eidtime`) values('2','白银','1.0','1000.00','2928.00','2942.00','2899.00','2901.00','2902.00','1451993791');
insert into `wp_catproduct`(`cid`,`cname`,`myat`,`myatjia`,`ask`,`high`,`low`,`open`,`close`,`eidtime`) values('3','铜','1.0','1500.00','30375.00','30499.00','29939.00','30057.00','29965.00','1451993792');
CREATE TABLE `wp_commission` (
  `comid` int(11) NOT NULL AUTO_INCREMENT,
  `ustyle` int(11) DEFAULT '0' COMMENT '状态，0显示，1是不显示',
  `rebate` double(11,2) DEFAULT NULL COMMENT '佣金',
  `cotime` int(20) DEFAULT NULL COMMENT '提现时间',
  `uid` int(11) DEFAULT NULL COMMENT '提线人id',
  PRIMARY KEY (`comid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
insert into `wp_commission`(`comid`,`ustyle`,`rebate`,`cotime`,`uid`) values('1','0','20.00','1450538571','64');
insert into `wp_commission`(`comid`,`ustyle`,`rebate`,`cotime`,`uid`) values('2','1','100.00','1450538571','64');
insert into `wp_commission`(`comid`,`ustyle`,`rebate`,`cotime`,`uid`) values('3','1','50.00','1450538571','64');
CREATE TABLE `wp_experience` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `eprice` int(11) DEFAULT NULL,
  `limittime` int(11) DEFAULT '0' COMMENT '时限',
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
insert into `wp_experience`(`eid`,`eprice`,`limittime`) values('5','200','30');
insert into `wp_experience`(`eid`,`eprice`,`limittime`) values('6','8','60');
insert into `wp_experience`(`eid`,`eprice`,`limittime`) values('7','200','50');
insert into `wp_experience`(`eid`,`eprice`,`limittime`) values('8','5','12');
insert into `wp_experience`(`eid`,`eprice`,`limittime`) values('9','8','10');
CREATE TABLE `wp_experienceinfo` (
  `exid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `exgtime` int(20) DEFAULT NULL COMMENT '领卷时间',
  `endtime` int(30) DEFAULT NULL COMMENT '过期时间',
  `getstyle` int(11) DEFAULT NULL COMMENT '状态',
  `getway` varchar(50) DEFAULT NULL COMMENT '获得途径',
  PRIMARY KEY (`exid`)
) ENGINE=MyISAM AUTO_INCREMENT=374 DEFAULT CHARSET=utf8;
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('81','362','6','1455702248','1460886248','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('82','362','6','1455702248','1460886248','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('83','362','6','1455702248','1460886248','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('84','364','6','1455764597','1460948597','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('85','364','6','1455764597','1460948597','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('86','364','6','1455764597','1460948597','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('87','365','6','1455766824','1460950824','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('88','365','6','1455766824','1460950824','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('89','365','6','1455766824','1460950824','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('90','354','6','1455789346','1460973346','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('91','354','6','1455789346','1460973346','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('92','354','6','1455789346','1460973346','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('93','358','6','1455876271','1461060271','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('94','358','6','1455876271','1461060271','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('95','358','6','1455876271','1461060271','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('96','347','6','1456977282','1462161282','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('97','347','6','1456977282','1462161282','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('98','347','6','1456977282','1462161282','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('99','366','6','1457156458','1462340458','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('100','366','6','1457156458','1462340458','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('101','366','6','1457156458','1462340458','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('102','369','6','1457338219','1462522219','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('103','369','6','1457338219','1462522219','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('104','369','6','1457338219','1462522219','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('105','370','6','1457340670','1462524670','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('106','370','6','1457340670','1462524670','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('107','370','6','1457340670','1462524670','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('108','352','6','1457427820','1462611820','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('109','352','6','1457427820','1462611820','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('110','352','6','1457427820','1462611820','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('111','64','6','1457427954','1462611954','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('112','64','6','1457427954','1462611954','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('113','64','6','1457427954','1462611954','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('114','64','6','1457427955','1462611955','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('115','64','6','1457427955','1462611955','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('116','64','6','1457427955','1462611955','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('117','64','6','1457427966','1462611966','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('118','64','6','1457427966','1462611966','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('119','64','6','1457427966','1462611966','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('120','372','6','1457427966','1462611966','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('121','372','6','1457427966','1462611966','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('122','372','6','1457427966','1462611966','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('123','373','6','1457429030','1462613030','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('124','373','6','1457429030','1462613030','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('125','373','6','1457429030','1462613030','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('126','376','6','1458354473','1463538473','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('127','376','6','1458354473','1463538473','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('128','376','6','1458354473','1463538473','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('129','351','6','1458544181','1463728181','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('130','351','6','1458544181','1463728181','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('131','351','6','1458544181','1463728181','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('132','377','6','1458733994','1463917994','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('133','377','6','1458733994','1463917994','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('134','377','6','1458733994','1463917994','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('135','378','6','1459403509','1464587509','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('136','378','6','1459403509','1464587509','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('137','378','6','1459403509','1464587509','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('138','64','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('139','65','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('140','66','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('141','67','5','1459406331','1461998331','1','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('142','68','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('143','69','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('144','70','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('145','71','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('146','102','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('147','103','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('148','127','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('149','129','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('150','130','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('151','143','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('152','144','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('153','145','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('154','146','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('155','147','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('156','148','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('157','159','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('158','378','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('159','160','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('160','347','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('161','348','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('162','349','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('163','350','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('164','351','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('165','352','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('166','353','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('167','354','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('168','355','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('169','356','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('170','357','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('171','358','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('172','359','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('173','360','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('174','361','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('175','362','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('176','365','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('177','364','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('178','368','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('179','367','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('180','369','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('181','370','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('182','371','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('183','372','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('184','373','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('185','374','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('186','375','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('187','376','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('188','377','5','1459406331','1461998331','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('189','64','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('190','65','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('191','66','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('192','67','5','1459428937','1462020937','1','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('193','68','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('194','69','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('195','70','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('196','71','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('197','102','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('198','103','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('199','127','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('200','129','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('201','130','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('202','143','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('203','144','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('204','145','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('205','146','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('206','147','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('207','148','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('208','159','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('209','378','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('210','160','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('211','347','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('212','348','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('213','349','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('214','350','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('215','351','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('216','352','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('217','353','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('218','354','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('219','355','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('220','356','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('221','357','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('222','358','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('223','359','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('224','360','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('225','361','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('226','362','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('227','365','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('228','364','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('229','368','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('230','367','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('231','369','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('232','370','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('233','371','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('234','372','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('235','373','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('236','374','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('237','375','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('238','376','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('239','377','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('240','379','5','1459428937','1462020937','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('241','381','6','1459922919','1465106919','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('242','381','6','1459922919','1465106919','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('243','381','6','1459922919','1465106919','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('244','382','6','1459923639','1465107639','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('245','382','6','1459923639','1465107639','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('246','382','6','1459923639','1465107639','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('247','384','6','1459925374','1465109374','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('248','384','6','1459925374','1465109374','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('249','384','6','1459925374','1465109374','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('250','385','6','1459925506','1465109506','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('251','385','6','1459925506','1465109506','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('252','385','6','1459925506','1465109506','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('253','387','6','1459925810','1465109810','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('254','387','6','1459925810','1465109810','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('255','387','6','1459925810','1465109810','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('256','90','6','1459925810','1465109810','0','分享赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('257','388','6','1459926135','1465110135','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('258','388','6','1459926135','1465110135','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('259','388','6','1459926135','1465110135','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('260','350','6','1459926194','1465110194','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('261','350','6','1459926194','1465110194','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('262','350','6','1459926194','1465110194','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('263','388','6','1459926194','1465110194','0','分享赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('264','389','6','1459927704','1465111704','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('265','389','6','1459927704','1465111704','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('266','389','6','1459927704','1465111704','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('267','390','6','1459928805','1465112805','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('268','390','6','1459928805','1465112805','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('269','390','6','1459928805','1465112805','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('270','361','6','1460340420','1465524420','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('271','361','6','1460340420','1465524420','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('272','361','6','1460340420','1465524420','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('273','64','6','1460340425','1465524425','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('274','64','6','1460340425','1465524425','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('275','64','6','1460340425','1465524425','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('276','393','6','1460364807','1465548807','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('277','393','6','1460364807','1465548807','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('278','393','6','1460364807','1465548807','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('279','396','6','1460509650','1465693650','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('280','396','6','1460509650','1465693650','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('281','396','6','1460509650','1465693650','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('282','397','6','1460535355','1465719355','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('283','397','6','1460535355','1465719355','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('284','397','6','1460535355','1465719355','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('285','64','6','1460535359','1465719359','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('286','64','6','1460535359','1465719359','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('287','64','6','1460535359','1465719359','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('288','398','6','1460535382','1465719382','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('289','398','6','1460535382','1465719382','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('290','398','6','1460535382','1465719382','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('291','399','6','1460606967','1465790967','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('292','399','6','1460606967','1465790967','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('293','399','6','1460606967','1465790967','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('294','400','6','1460967642','1466151642','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('295','400','6','1460967642','1466151642','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('296','400','6','1460967642','1466151642','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('297','401','6','1461033148','1466217148','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('298','401','6','1461033148','1466217148','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('299','401','6','1461033148','1466217148','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('300','402','6','1461209909','1466393909','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('301','402','6','1461209909','1466393909','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('302','402','6','1461209909','1466393909','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('303','403','6','1461217356','1466401356','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('304','403','6','1461217356','1466401356','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('305','403','6','1461217356','1466401356','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('306','404','6','1461321462','1466505462','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('307','404','6','1461321462','1466505462','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('308','404','6','1461321462','1466505462','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('309','360','6','1461321474','1466505474','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('310','360','6','1461321474','1466505474','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('311','360','6','1461321474','1466505474','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('312','405','6','1461577079','1466761079','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('313','405','6','1461577079','1466761079','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('314','405','6','1461577079','1466761079','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('315','406','6','1461687869','1466871869','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('316','406','6','1461687869','1466871869','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('317','406','6','1461687869','1466871869','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('318','407','6','1461722356','1466906356','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('319','407','6','1461722356','1466906356','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('320','407','6','1461722356','1466906356','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('321','408','6','1461723060','1466907060','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('322','408','6','1461723060','1466907060','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('323','408','6','1461723060','1466907060','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('324','409','6','1461910621','1467094621','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('325','409','6','1461910621','1467094621','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('326','409','6','1461910621','1467094621','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('327','410','6','1461915154','1467099154','1','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('328','410','6','1461915154','1467099154','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('329','410','6','1461915154','1467099154','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('330','67','5','1462501392','1465093392','1','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('331','412','6','1462711994','1467895994','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('332','412','6','1462711994','1467895994','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('333','412','6','1462711994','1467895994','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('334','68','9','1463386456','1464250456','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('335','67','9','1463386456','1464250456','1','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('336','338','9','1463386456','1464250456','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('337','339','9','1463386456','1464250456','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('338','340','9','1463386456','1464250456','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('339','341','9','1463386456','1464250456','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('340','342','9','1463386456','1464250456','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('341','343','9','1463386456','1464250456','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('342','344','9','1463386456','1464250456','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('343','345','9','1463386456','1464250456','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('344','346','6','1463858338','1469042338','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('345','346','6','1463858338','1469042338','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('346','346','6','1463858338','1469042338','0','注册赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('347','67','6','1463858338','1469042338','1','分享赠送');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('348','68','5','1464117883','1466709883','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('349','67','5','1464117883','1466709883','1','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('350','338','5','1464117883','1466709883','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('351','339','5','1464117883','1466709883','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('352','340','5','1464117883','1466709883','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('353','341','5','1464117883','1466709883','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('354','342','5','1464117883','1466709883','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('355','343','5','1464117883','1466709883','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('356','344','5','1464117883','1466709883','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('357','345','5','1464117883','1466709883','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('358','346','5','1464117883','1466709883','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('359','68','5','1471427370','1474019370','1','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('360','67','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('361','347','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('362','348','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('363','349','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('364','350','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('365','351','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('366','352','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('367','353','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('368','354','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('369','355','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('370','356','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('371','357','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('372','358','5','1471427370','1474019370','0','后台发放');
insert into `wp_experienceinfo`(`exid`,`uid`,`eid`,`exgtime`,`endtime`,`getstyle`,`getway`) values('373','68','5','1475076434','1477668434','0','后台发放');
CREATE TABLE `wp_journal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jno` varchar(255) NOT NULL COMMENT '日志编号',
  `uid` int(11) DEFAULT NULL,
  `jtype` varchar(255) DEFAULT NULL COMMENT '操作类型，建仓，平仓',
  `jtime` int(20) DEFAULT NULL COMMENT '操作时间',
  `jincome` double(255,2) DEFAULT NULL COMMENT '收支金额',
  `number` int(11) DEFAULT NULL COMMENT '手数',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注：',
  `balance` double(255,2) DEFAULT NULL COMMENT '记录当时用户余额',
  `jstate` int(11) DEFAULT NULL COMMENT '0亏损，1盈利',
  `jusername` varchar(20) DEFAULT NULL COMMENT '用户名',
  `jostyle` int(11) DEFAULT NULL COMMENT '0涨，1跌',
  `juprice` double(11,2) DEFAULT NULL COMMENT '产品单价',
  `jfee` double(11,1) DEFAULT NULL COMMENT '手续费',
  `jbuyprice` double(11,2) DEFAULT NULL COMMENT '进仓价',
  `jsellprice` double(11,2) DEFAULT NULL COMMENT '平仓价',
  `jaccess` double(11,2) DEFAULT NULL COMMENT '出入金额',
  `jploss` double(11,2) DEFAULT NULL COMMENT '盈亏金额',
  `oid` int(10) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=275 DEFAULT CHARSET=utf8;
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('192','1464316301100','67','建仓','1464316301','8.00','1','0.1t油','10000919165.20','0','test1234','0','8.00','0.6','322.28','','-8.60','','365');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('193','1470622908995','67','建仓','1470622908','8.00','1','0.1t油','10000919156.60','0','test1234','0','8.00','0.6','0.00','','-8.60','','366');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('194','1470712398101','67','建仓','1470712398','80.00','1','1000g银砖','10000919070.60','0','test1234','1','80.00','6.0','4379.00','','-86.00','','367');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('195','1470911980995','67','建仓','1470911980','100.00','1','0.1t铜2222','10000919130.00','0','test1234','1','100.00','0.6','31875.00','','-100.60','','368');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('196','1470912031102','67','平仓','1470912031','50.60','1','0.1t油','10000919180.60','1','test1234','0','8.00','0.6','0.00','42.60','50.60','42.60','366');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('197','1470912078101','67','建仓','1470912078','8.00','1','0.1t油','10000919172.00','0','test1234','1','8.00','0.6','42.60','','-8.60','','369');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('198','1470986873575','67','平仓','1470986873','100.00','1','0.1t铜2222','10000919272.00','0','test1234','1','100.00','0.6','31875.00','31875.00','100.00','0.00','368');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('199','1471064577495','67','建仓','1471064577','19.20','1','阿胶块','10000919252.20','0','test1234','0','19.20','0.6','31875.00','','-19.80','','370');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('200','1471105091515','67','建仓','1471105091','80.00','1','1000g银砖','10000919166.20','0','test1234','0','80.00','6.0','4328.00','','-86.00','','371');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('201','1471245302544','67','平仓','1471245302','80.00','1','1000g银砖','10000919246.20','0','test1234','0','80.00','6.0','4328.00','4328.00','80.00','0.00','371');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('202','1471247383555','67','建仓','1471247383','2000.00','10','5000g银砖','10000916946.20','0','test1234','0','200.00','300.0','4328.00','','-2300.00','','372');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('203','1471254602979','67','平仓','1471254602','2000.00','10','5000g银砖','10000918946.20','0','test1234','0','200.00','300.0','4328.00','4328.00','2000.00','0.00','372');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('204','1471262534545','67','建仓','1471262534','80.00','1','1000g银砖','10000918860.20','0','test1234','0','80.00','6.0','4328.00','','-86.00','','373');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('205','1471325378505','67','平仓','1471325378','80.00','1','1000g银砖','10000918940.20','0','test1234','0','80.00','6.0','4328.00','4328.00','80.00','0.00','373');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('206','1471325645100','67','建仓','1471325645','40000.00','1','1t铜','10000878934.20','0','test1234','1','40000.00','6.0','31875.00','','-40006.00','','374');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('207','1471335721575','67','建仓','1471335721','200.00','1','5t铜','10000878704.20','0','test1234','0','200.00','30.0','31875.00','','-230.00','','375');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('208','1471344968564','67','建仓','1471344968','8.00','1','100g银砖','10000878695.60','0','test1234','1','8.00','0.6','4328.00','','-8.60','','376');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('209','1471345036994','67','建仓','1471345036','2000.00','10','5t油','10000876395.60','0','test1234','0','200.00','300.0','42.60','','-2300.00','','377');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('210','1471427797534','67','平仓','1471427797','8.00','1','0.1t油','10000876403.60','0','test1234','1','8.00','0.6','42.60','42.60','8.00','0.00','369');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('211','1471427824489','67','平仓','1471427824','200.00','1','1111','10000876603.60','0','test1234','0','200.00','0.6','31875.00','31875.00','200.00','0.00','370');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('212','1471431987515','67','建仓','1471431987','8.00','1','0.1t油','10000876595.00','0','test1234','1','8.00','0.6','42.60','','-8.60','','378');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('213','1471489739985','67','建仓','1471489739','800.00','10','1000g银砖','10000875735.00','0','test1234','1','80.00','60.0','4328.00','','-860.00','','379');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('214','1471490652991','67','平仓','1471490653','40000.00','1','1t铜','10000915735.00','0','test1234','1','40000.00','6.0','31875.00','31875.00','40000.00','0.00','374');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('215','1471490677535','67','建仓','1471490677','80000.00','2','1t铜','10000835723.00','0','test1234','0','40000.00','12.0','31875.00','','-80012.00','','380');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('216','1471490897495','67','平仓','1471490897','0.00','1','5t铜','10000835723.00','0','test1234','0','200.00','30.0','31875.00','31875.00','0.00','0.00','375');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('217','1471490923989','67','平仓','1471490923','80000.00','2','1t铜','10000915723.00','0','test1234','0','40000.00','12.0','31875.00','31875.00','80000.00','0.00','380');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('218','1471491038101','67','建仓','1471491038','80000.00','2','1t铜','10000835711.00','0','test1234','1','40000.00','12.0','31875.00','','-80012.00','','381');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('219','1471493048564','67','平仓','1471493048','0.00','2','1t铜','10000835711.00','0','test1234','1','40000.00','12.0','31875.00','31875.00','0.00','0.00','381');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('220','1473739573531','68','建仓','1473739573','0.00','1','5t油','0.00','0','admin','0','0.00','0.0','42.60','','0.00','','382');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('221','1473778101535','68','平仓','1473778101','0.00','1','5t油','0.00','1','admin','0','200.00','30.0','42.60','42.60','0.00','0.00','382');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('222','1473778718101','68','建仓','1473778718','16.00','2','0.1t油','10000835693.80','0','admin','0','8.00','1.2','42.60','','-17.20','','383');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('223','1473780287102','68','平仓','1473780287','16.00','2','0.1t油','10000835709.80','0','admin','0','8.00','1.2','42.60','42.60','16.00','0.00','383');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('224','1473780310545','68','建仓','1473780310','16.00','2','0.1t油','10000835692.60','0','admin','1','8.00','1.2','42.60','','-17.20','','384');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('225','1473780321495','68','平仓','1473780321','16.00','2','0.1t油','10000835708.60','0','admin','1','8.00','1.2','42.60','42.60','16.00','0.00','384');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('226','1473844790549','68','建仓','1473844790','80.00','10','0.1t油','10000835622.60','0','admin','1','8.00','6.0','42.60','','-86.00','','385');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('227','1473844848485','68','建仓','1473844848','40000.00','1','1t铜','10000795616.60','0','admin','1','40000.00','6.0','31875.00','','-40006.00','','386');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('228','1473845768564','68','建仓','1473845768','80.00','1','1000g银砖','10000795530.60','0','admin','1','80.00','6.0','4328.00','','-86.00','','387');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('229','1473852546505','68','建仓','1473852546','1400.00','7','5000g银砖','10000793920.60','0','admin','1','200.00','210.0','4328.00','','-1610.00','','388');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('230','1473865874501','68','平仓','1473865874','80.00','10','0.1t油','10000794000.60','0','admin','1','8.00','6.0','42.60','42.60','80.00','0.00','385');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('231','1473865882974','68','平仓','1473865882','1400.00','7','5000g银砖','10000795400.60','0','admin','1','200.00','210.0','4328.00','4328.00','1400.00','0.00','388');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('232','1473912082505','68','建仓','1473912082','40.00','5','0.1t油','10000795357.60','0','admin','0','8.00','3.0','42.60','','-43.00','','389');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('233','1473946402509','68','平仓','1473946402','40.00','5','0.1t油','10000795397.60','0','admin','0','8.00','3.0','42.60','42.60','40.00','0.00','389');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('234','1473946414101','68','建仓','1473946414','200.00','1','5t油','10000795167.60','0','admin','0','200.00','30.0','42.60','','-230.00','','390');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('235','1474000765100','68','建仓','1474000765','32.00','4','0.1t油','10000795133.20','0','admin','1','8.00','2.4','42.60','','-34.40','','391');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('236','1474000823559','68','建仓','1474000823','1000.00','10','1t油','10000794073.20','0','admin','0','100.00','60.0','42.60','','-1060.00','','392');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('237','1474104334101','68','平仓','1474104334','1000.00','10','1t油','10000795073.20','0','admin','0','100.00','60.0','42.60','42.60','1000.00','0.00','392');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('238','1474480264565','68','平仓','1474480264','40000.00','1','1t铜','10000835073.20','0','admin','1','40000.00','6.0','31875.00','31875.00','40000.00','0.00','386');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('239','1474521287551','68','平仓','1474521287','32.00','4','0.1t油','10000835105.20','0','admin','1','8.00','2.4','42.60','42.60','32.00','0.00','391');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('240','1474521293100','68','平仓','1474521293','200.00','1','5t油','10000835305.20','0','admin','0','200.00','30.0','42.60','42.60','200.00','0.00','390');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('241','1474521297499','68','平仓','1474521297','80.00','1','1000g银砖','10000835385.20','0','admin','1','80.00','6.0','4328.00','4328.00','80.00','0.00','387');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('242','1474635534101','68','建仓','1474635534','200.00','1','0t','10000835184.60','0','admin','0','200.00','0.6','31875.00','','-200.60','','393');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('243','1474735185495','350','建仓','1474735185','8.00','1','0.1t油','1212991.40','0','lilyallen','1','8.00','0.6','42.60','','-8.60','','394');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('244','1474736692521','68','建仓','1474736692','8.00','1','0.1t油','10000835176.00','0','admin','0','8.00','0.6','42.60','','-8.60','','395');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('245','1474774953575','68','建仓','1474774953','200.00','1','5t油','10000834946.00','0','admin','0','200.00','30.0','42.60','','-230.00','','396');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('246','1474779526545','68','平仓','1474779526','200.00','1','5t油','10000835146.00','0','admin','0','200.00','30.0','42.60','42.60','200.00','0.00','396');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('247','1474795426509','68','建仓','1474795426','80.00','1','1000g银砖','10000835060.00','0','admin','0','80.00','6.0','4328.00','','-86.00','','397');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('248','1474889112561','68','建仓','1474889112','40000.00','1','1t铜','10000795054.00','0','admin','0','40000.00','6.0','31875.00','','-40006.00','','398');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('249','1474890054541','68','平仓','1474890054','8.00','1','0.1t油','10000795062.00','0','admin','0','8.00','0.6','42.60','42.60','8.00','0.00','395');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('250','1474891032569','68','建仓','1474891032','8.00','1','0.1t油','10000795053.40','0','admin','0','8.00','0.6','42.60','','-8.60','','399');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('251','1474896721495','68','平仓','1474896721','8.00','1','0.1t油','10000795061.40','0','admin','0','8.00','0.6','42.60','42.60','8.00','0.00','399');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('252','1474896730975','68','平仓','1474896730','200.00','1','0t','10000795261.40','0','admin','0','200.00','0.6','31875.00','31875.00','200.00','0.00','393');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('253','1474896737495','68','平仓','1474896737','40.00','1','1t铜','10000795301.40','0','admin','0','40.00','5.0','31875.00','31875.00','40.00','0.00','398');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('254','1474896746979','68','平仓','1474896746','80.00','1','1000g银砖','10000795381.40','0','admin','0','80.00','6.0','4328.00','4328.00','80.00','0.00','397');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('255','1474897112565','68','建仓','1474897112','8.00','1','0.1t油','10000795372.80','0','admin','0','8.00','0.6','42.60','','-8.60','','400');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('256','1474897158549','68','建仓','1474897158','320.00','4','1000g银砖','10000795028.80','0','admin','0','80.00','24.0','4328.00','','-344.00','','401');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('257','1474939567102','68','平仓','1474939567','8.00','1','0.1t油','10008.00','0','admin','0','8.00','0.6','42.60','42.60','8.00','0.00','400');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('258','1474939572525','68','平仓','1474939572','320.00','4','1000g银砖','10328.00','0','admin','0','80.00','24.0','4328.00','4328.00','320.00','0.00','401');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('259','1474964737495','68','建仓','1474964737','8.00','1','0.1t油','10319.40','0','admin','0','8.00','0.6','42.60','','-8.60','','402');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('260','1474982174101','68','建仓','1474982174','800.00','10','1000g银砖','9459.40','0','admin','0','80.00','60.0','4328.00','','-860.00','','403');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('261','1474982186979','68','建仓','1474982186','400.00','10','1t铜','9009.40','0','admin','1','40.00','50.0','31875.00','','-450.00','','404');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('262','1474982201575','68','建仓','1474982201','3000.00','10','0t','6003.40','0','admin','0','300.00','6.0','31875.00','','-3006.00','','405');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('263','1474982212525','68','建仓','1474982212','1000.00','10','1t油','4943.40','0','admin','0','100.00','60.0','42.60','','-1060.00','','406');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('264','1475032609495','372','建仓','1475032609','1000.00','5','5t油','98850.00','0','huiyuan1','0','200.00','150.0','42.60','','-1150.00','','407');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('265','1475032664565','372','建仓','1475032664','2000.00','10','5t铜','96550.00','0','huiyuan1','0','200.00','300.0','31875.00','','-2300.00','','408');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('266','1475035279102','372','平仓','1475035279','1000.00','5','5t油','97550.00','0','huiyuan1','0','200.00','150.0','42.60','42.60','1000.00','0.00','407');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('267','1475035287555','372','平仓','1475035287','2000.00','10','5t铜','99550.00','0','huiyuan1','0','200.00','300.0','31875.00','31875.00','2000.00','0.00','408');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('268','1475217517100','68','平仓','1475217517','8.00','1','0.1t油','4951.40','0','admin','0','8.00','0.6','42.60','42.60','8.00','0.00','402');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('269','1475217538505','68','建仓','1475217538','80.00','10','0.1t油','4865.40','0','admin','0','8.00','6.0','42.60','','-86.00','','409');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('270','1475593995985','68','平仓','1475593995','3000000.00','10','XYSK','3004865.40','0','admin','0','300000.00','6.0','31875.00','31875.00','3000000.00','0.00','405');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('271','1475593998101','68','平仓','1475593998','0.00','10','0.1t油','3004865.40','0','admin','0','8.00','6.0','42.60','42.60','0.00','0.00','409');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('272','1475639122505','68','建仓','1475639122','8.00','1','0.1t油','3004856.80','0','admin','0','8.00','0.6','42.60','','-8.60','','410');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('273','1475655147985','372','建仓','1475655147','80.00','10','0.1t油','99464.00','0','huiyuan1','1','8.00','6.0','42.60','','-86.00','','411');
insert into `wp_journal`(`id`,`jno`,`uid`,`jtype`,`jtime`,`jincome`,`number`,`remarks`,`balance`,`jstate`,`jusername`,`jostyle`,`juprice`,`jfee`,`jbuyprice`,`jsellprice`,`jaccess`,`jploss`,`oid`) values('274','1475665193579','67','平仓','1475665193','8.00','1','100g银砖','8.00','0','test1234','1','8.00','0.6','4328.00','4328.00','8.00','0.00','376');
CREATE TABLE `wp_managerinfo` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `poid` int(11) DEFAULT NULL COMMENT '持仓人',
  `coid` int(11) DEFAULT NULL COMMENT '平仓人',
  `mname` varchar(255) DEFAULT NULL COMMENT '法人名字',
  `brokerid` varchar(255) DEFAULT NULL COMMENT '法人代表身份证',
  `photoid` varchar(255) DEFAULT NULL COMMENT '会员资质',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('64','67','','','1631651','165416545646','2016-01-21/56a0bb4093ad5.png');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('69','69','','','165','165','2016-01-21/56a0c4e5a5cc4.png');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('70','338','','','wifi伴侣','440772198707132142','2016-05-16/5739690c297fe.png');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('71','339','','','真的wifi伴侣','440772198612142261','2016-05-16/57396a7a95d99.png');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('72','340','','','daili1','440772199821028173','2016-05-13/5735962bd27cc.png');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('73','341','','','','44078219920814216X','');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('74','342','','','yonghu','44078219920814216X','2016-05-13/57358b390a327.jpeg');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('75','343','','','','44078219920814216X','');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('76','68','','','d;fljds;jf','349087398749037','2016-05-16/573969034d34c.png');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('77','344','','','rendaxia','32546786543245','2016-05-16/573973ce155e9.png');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('78','348','','','','610115199009263515','');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('79','349','','','','610115199009263515','');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('80','350','','','','610115199009263515','');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('81','351','','','','','');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('82','352','','','','','');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('83','372','','','','huiyuan1','');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('84','373','','','','564654645654656','');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('85','374','','','','111111111111111111','');
insert into `wp_managerinfo`(`mid`,`uid`,`poid`,`coid`,`mname`,`brokerid`,`photoid`) values('86','375','','','','43052611311155035','');
CREATE TABLE `wp_newsclass` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fclass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
insert into `wp_newsclass`(`fid`,`fclass`) values('1','最新资讯');
insert into `wp_newsclass`(`fid`,`fclass`) values('2','财经要闻');
insert into `wp_newsclass`(`fid`,`fclass`) values('3','系统公告');
insert into `wp_newsclass`(`fid`,`fclass`) values('4','财经早报');
CREATE TABLE `wp_newsinfo` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(255) DEFAULT NULL COMMENT '标题',
  `ncontent` text COMMENT '内容',
  `ncover` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `ncategory` int(11) DEFAULT NULL COMMENT '新闻分类id',
  `ntime` int(20) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
insert into `wp_newsinfo`(`nid`,`ntitle`,`ncontent`,`ncover`,`ncategory`,`ntime`) values('7','铜行情走势','&lt;span&gt;　全球矿业巨擘力拓(RIO)周一(9?7? )表示，全球&lt;a target=&quot;_blank&quot; rel=&quot;nofollow&quot; href=&quot;http://futures.hexun.com/copper/index.html&quot;&gt;铜&lt;/a&gt;市可能2-3年内陷入结构性短缺，电厂相关需求将会使其成为首个走出供应过剩窘境的&lt;a target=&quot;_blank&quot; rel=&quot;nofollow&quot; href=&quot;http://jingzhi.funds.hexun.com/161715.shtml&quot;&gt;大宗商品&lt;/a&gt;。&lt;/span&gt;&lt;span&gt;　　因产出扩增以及&lt;a target=&quot;_blank&quot; rel=&quot;nofollow&quot; href=&quot;http://jingzhi.funds.hexun.com/512600.shtml&quot;&gt;主要消费&lt;/a&gt;国中国放缓程度大于预期，许多大宗商品的价格目前都接近2008-2009年金融危机期间的低点，包括&lt;a target=&quot;_blank&quot; rel=&quot;nofollow&quot; href=&quot;http://futures.hexun.com/oil/index.html&quot;&gt;石油&lt;/a&gt;、天然气、煤炭、铁矿石以及多种金属。&lt;/span&gt;　　然而，力拓铜煤事业执行长发言称，预计铜将成为首个摆脱供应过剩的大宗商品。　　他指出，“市况现在相当艰困，但铜是一个相当具有吸引力的大宗商品。在2-3年之内，可能会转为短缺。　　近两个交易日，沪铜1607跌势暂缓，下方支撑十分强劲，而接下去来的一段时间，沪铜还将延续探底之旅。','2016-09-21/57e24f0be7144.jpg','1','1474387200');
CREATE TABLE `wp_order` (
  `oid` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '商品编号',
  `pid` int(11) NOT NULL COMMENT '产品ID',
  `ostyle` int(12) NOT NULL DEFAULT '0' COMMENT '0涨 1跌，',
  `buytime` int(20) DEFAULT NULL COMMENT '建仓',
  `onumber` int(20) DEFAULT NULL COMMENT '手数',
  `selltime` int(20) DEFAULT '0' COMMENT '平仓',
  `ostaus` int(11) DEFAULT NULL COMMENT '0交易，1平仓',
  `buyprice` double(20,2) DEFAULT NULL COMMENT '入仓价',
  `sellprice` double(20,2) DEFAULT '0.00' COMMENT '平仓价',
  `endprofit` int(11) DEFAULT '0' COMMENT '止盈',
  `endloss` int(11) DEFAULT '0' COMMENT '止亏',
  `fee` double(11,1) DEFAULT NULL COMMENT '手续费',
  `eid` int(11) NOT NULL COMMENT '体验卷状态',
  `orderno` varchar(40) DEFAULT NULL COMMENT '订单编号',
  `ptitle` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `commission` double(255,1) DEFAULT '0.0' COMMENT '佣金',
  `ploss` double(255,1) DEFAULT '0.0' COMMENT '盈亏',
  `display` int(11) DEFAULT '0' COMMENT '0,可查询，1不可查询',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=412 DEFAULT CHARSET=utf8;
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('365','67','2','0','1464316301','1','1464316555','1','322.28','','10','10','0.6','0','1464316301100','0.1t油','10000919165.2','-322.3','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('366','67','2','0','1470622908','1','1470912031','1','0.00','42.60','0','10','0.6','0','1470622908995','0.1t油','10000919180.6','42.6','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('367','67','5','1','1470712398','1','1470773241','1','4379.00','0.00','0','0','6.0','0','1470712398101','1000g银砖','10000919230.6','4379.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('368','67','9','1','1470911980','1','1470986873','1','31875.00','31875.00','20','20','0.6','0','1470911980995','0.1t铜2222','10000919272.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('369','67','2','1','1470912078','1','1471427797','1','42.60','42.60','0','0','0.6','0','1470912078101','0.1t油','10000876403.6','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('370','67','9','0','1471064577','1','1471427824','1','31875.00','31875.00','50','10','0.6','0','1471064577495','1111','10000876603.6','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('371','67','5','0','1471105091','1','1471245302','1','4328.00','4328.00','0','0','6.0','0','1471105091515','1000g银砖','10000919246.2','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('372','67','4','0','1471247383','10','1471254602','1','4328.00','4328.00','0','0','300.0','0','1471247383555','5000g银砖','10000918946.2','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('373','67','5','0','1471262534','1','1471325378','1','4328.00','4328.00','0','0','6.0','0','1471262534545','1000g银砖','10000918940.2','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('374','67','8','1','1471325645','1','1471490652','1','31875.00','31875.00','50','50','6.0','0','1471325645100','1t铜','10000915735.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('375','67','7','0','1471335721','1','1471490897','1','31875.00','31875.00','0','0','30.0','0','1471335721575','5t铜','10000835723.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('376','67','6','1','1471344968','1','1475665193','1','4328.00','4328.00','0','0','0.6','0','1471344968564','100g银砖','8.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('377','67','1','0','1471345036','10','0','0','42.60','0.00','0','0','300.0','0','1471345036994','5t油','10000876395.6','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('378','67','2','1','1471431987','1','0','0','42.60','0.00','0','0','0.6','0','1471431987515','0.1t油','10000876595.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('379','67','5','1','1471489739','10','0','0','4328.00','0.00','0','0','60.0','0','1471489739985','1000g银砖','10000875735.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('380','67','8','0','1471490677','2','1471490923','1','31875.00','31875.00','0','0','12.0','0','1471490677535','1t铜','10000915723.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('381','67','8','1','1471491038','2','1471493048','1','31875.00','31875.00','40','20','12.0','0','1471491038101','1t铜','10000835711.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('382','68','1','0','1473739573','1','1473778101','1','42.60','42.60','0','20','30.0','1','1473739573539','5t油','0.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('383','68','2','0','1473778717','2','1473780287','1','42.60','42.60','0','0','1.2','0','1473778717100','0.1t油','10000835709.8','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('384','68','2','1','1473780310','2','1473780321','1','42.60','42.60','0','0','1.2','0','1473780310545','0.1t油','10000835708.6','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('385','68','2','1','1473844790','10','1473865874','1','42.60','42.60','10','0','6.0','0','1473844790549','0.1t油','10000794000.6','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('386','68','8','1','1473844848','1','1474480264','1','31875.00','31875.00','10','10','6.0','0','1473844848485','1t铜','10000835073.2','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('387','68','5','1','1473845768','1','1474521297','1','4328.00','4328.00','0','0','6.0','0','1473845768564','1000g银砖','10000835385.2','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('388','68','4','1','1473852546','7','1473865882','1','4328.00','4328.00','0','0','210.0','0','1473852546505','5000g银砖','10000795400.6','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('389','68','2','0','1473912082','5','1473946402','1','42.60','42.60','0','0','3.0','0','1473912082505','0.1t油','10000795397.6','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('390','68','1','0','1473946414','1','1474521293','1','42.60','42.60','0','0','30.0','0','1473946414101','5t油','10000835305.2','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('391','68','2','1','1474000765','4','1474521287','1','42.60','42.60','0','0','2.4','0','1474000765100','0.1t油','10000835105.2','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('392','68','3','0','1474000823','10','1474104334','1','42.60','42.60','0','0','60.0','0','1474000823559','1t油','10000795073.2','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('393','68','9','0','1474635534','1','1474896730','1','31875.00','31875.00','0','0','0.6','0','1474635534101','0t','10000795261.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('394','350','2','1','1474735185','1','0','0','42.60','0.00','50','50','0.6','0','1474735185495','0.1t油','1212991.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('395','68','2','0','1474736692','1','1474890054','1','42.60','42.60','0','0','0.6','0','1474736692521','0.1t油','10000795062.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('396','68','1','0','1474774953','1','1474779526','1','42.60','42.60','0','0','30.0','0','1474774953575','5t油','10000835146.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('397','68','5','0','1474795426','1','1474896746','1','4328.00','4328.00','0','0','6.0','0','1474795426505','1000g银砖','10000795381.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('398','68','8','0','1474889112','1','1474896737','1','31875.00','31875.00','0','0','5.0','0','1474889112561','1t铜','10000795301.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('399','68','2','0','1474891032','1','1474896721','1','42.60','42.60','0','0','0.6','0','1474891032569','0.1t油','10000795061.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('400','68','2','0','1474897112','1','1474939567','1','42.60','42.60','10','10','0.6','0','1474897112565','0.1t油','10008.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('401','68','5','0','1474897158','4','1474939572','1','4328.00','4328.00','0','0','24.0','0','1474897158549','1000g银砖','10328.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('402','68','2','0','1474964737','1','1475217517','1','42.60','42.60','0','0','0.6','0','1474964737495','0.1t油','4951.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('403','68','5','0','1474982174','10','0','0','4328.00','0.00','20','20','60.0','0','1474982174101','1000g银砖','9459.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('404','68','8','1','1474982186','10','0','0','31875.00','0.00','30','20','50.0','0','1474982186979','1t铜','9009.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('405','68','9','0','1474982201','10','1475593995','1','31875.00','31875.00','0','0','6.0','0','1474982201575','XYSK','3004865.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('406','68','3','0','1474982212','10','0','0','42.60','0.00','0','0','60.0','0','1474982212525','1t油','4943.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('407','372','1','0','1475032609','5','1475035279','1','42.60','42.60','20','0','150.0','0','1475032609495','5t油','97550.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('408','372','7','0','1475032664','10','1475035287','1','31875.00','31875.00','0','0','300.0','0','1475032664565','5t铜','99550.0','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('409','68','2','0','1475217538','10','1475593998','1','42.60','42.60','0','0','6.0','0','1475217538505','0.1t油','3004865.4','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('410','68','2','0','1475639122','1','0','0','42.60','0.00','0','0','0.6','0','1475639122505','0.1t油','3004856.8','0.0','0');
insert into `wp_order`(`oid`,`uid`,`pid`,`ostyle`,`buytime`,`onumber`,`selltime`,`ostaus`,`buyprice`,`sellprice`,`endprofit`,`endloss`,`fee`,`eid`,`orderno`,`ptitle`,`commission`,`ploss`,`display`) values('411','372','2','1','1475655147','10','0','0','42.60','0.00','20','20','6.0','0','1475655147985','0.1t油','99464.0','0.0','0');
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
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
insert into `wp_productinfo`(`pid`,`ptitle`,`cid`,`uprice`,`feeprice`,`wave`,`company`,`patx`,`patj`) values('1','5t油','1','200','30','0','5t','0','0');
insert into `wp_productinfo`(`pid`,`ptitle`,`cid`,`uprice`,`feeprice`,`wave`,`company`,`patx`,`patj`) values('2','0.1t油','1','8','0.6','3','0.1t','0','0');
insert into `wp_productinfo`(`pid`,`ptitle`,`cid`,`uprice`,`feeprice`,`wave`,`company`,`patx`,`patj`) values('3','1t油','1','100','6','5','1t','0','0');
insert into `wp_productinfo`(`pid`,`ptitle`,`cid`,`uprice`,`feeprice`,`wave`,`company`,`patx`,`patj`) values('4','5000g银砖','2','200','30','5','5000g','0','0');
insert into `wp_productinfo`(`pid`,`ptitle`,`cid`,`uprice`,`feeprice`,`wave`,`company`,`patx`,`patj`) values('6','100g银砖','2','8','0.6','0.9','100g','0','0');
insert into `wp_productinfo`(`pid`,`ptitle`,`cid`,`uprice`,`feeprice`,`wave`,`company`,`patx`,`patj`) values('7','5t铜','3','200','30','10','5t','0','0');
insert into `wp_productinfo`(`pid`,`ptitle`,`cid`,`uprice`,`feeprice`,`wave`,`company`,`patx`,`patj`) values('8','1t铜','3','40','5','1','1t','0','0');
insert into `wp_productinfo`(`pid`,`ptitle`,`cid`,`uprice`,`feeprice`,`wave`,`company`,`patx`,`patj`) values('9','XYSK','3','100','0.6','10','1','0','0');
CREATE TABLE `wp_userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `upwd` varchar(50) DEFAULT NULL,
  `utel` varchar(50) DEFAULT NULL,
  `utime` int(20) DEFAULT NULL COMMENT '注册时间',
  `agenttype` int(20) DEFAULT '0' COMMENT '0普通客户，1申请经纪人中，2经纪人',
  `otype` int(11) NOT NULL DEFAULT '0' COMMENT '0普通会员，2会员单位，1经纪人,3超级管理员',
  `ustatus` int(11) NOT NULL DEFAULT '0' COMMENT '0正常状态，1冻结状态，',
  `oid` int(11) DEFAULT NULL COMMENT '上线字段',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `portrait` varchar(255) DEFAULT NULL COMMENT '头像',
  `lastlog` int(20) DEFAULT NULL COMMENT '最后登录时间',
  `managername` varchar(255) DEFAULT NULL COMMENT '上线用户名',
  `comname` varchar(120) DEFAULT NULL COMMENT '公司名称',
  `comqua` varchar(50) DEFAULT NULL COMMENT '公司资质',
  `rebate` varchar(11) DEFAULT NULL COMMENT '返点',
  `feerebate` varchar(11) DEFAULT NULL COMMENT '手续费返点',
  `usertype` int(11) DEFAULT '0' COMMENT '0不是微信用户。1是微信用户',
  `wxtype` int(11) DEFAULT '0' COMMENT '1表示微信还没注册，0微信已注册成会员。',
  `openid` varchar(50) NOT NULL COMMENT '存微信用户的id',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('68','admin','f8148923558b9fa886e62e4e7b0358c1','15999999999','1474093027','2','3','0','','','','1475994745','','','','','','0','0','','');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('67','test1234','d5122e4c643ded21445f7bc87febcab8','15999999999','1450147120','2','2','0','64','陕西省西安市','http://wx.qlogo.cn/mmopen/EKHgsM07oxBQtGYiaYwbK8LkJsw2KBwELZtJCapJHKhJ0OzQaFT2nE9aRicfrJAGe6kW8ZYGMsSnccXsn39Daniams2sogpKJsg/0','1475657160','456789','广告歌','43423432423','','','0','0','','');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('347','wangbing','1d840762102860e4811c1b7765b6c0cc','18710719713','1464174358','0','0','0','67','','','1464223301','','','','','','0','0','','');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('348','huiyuan','665a45a888752d9d523f6cd8bba3b98a','18710484848','1464175666','0','2','0','68','mdomo  ','','1474506160','adminwp888','都默默都快没豆肯定怕【','飞毛士大夫','60','0','0','0','','');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('349','wangbing1234','a9faaf34a29036b54639da98d874a419','15129242446','1464191899','0','0','0','67','1111','','','test1234','','','','','0','0','','');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('350','lilyallen','ce37fe3a5e7a988f986f1ec1bca28db4','18710719712','1464222264','0','1','0','67','终将失去','','1474735149','test1234','事实上身上试试','','20','20','0','0','','');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('351','93_Ic1474618627','','','1474044783','0','0','0','','中国甘肃酒泉','http://wx.qlogo.cn/mmopen/vPjficwtgTJBok0KZCHlC4dC3Sd09tXXow5jJibZodf9v7O8DWbEWTkdklQkOhZvMaAK4MxLScGX27aEPW7vFcpg/0','','','','','','','1','1','o0pziw0zfuYZC0DV0OajQfj93_Ic','幻墨成烟');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('352','9CU0Y1474618628','','','1472790220','0','0','0','','中国湖北武汉','http://wx.qlogo.cn/mmopen/ajNVdqHZLLCnRP54MMT5SrkQvKY3lFRRsKV97sTa7BLYB4ichh0RJicSYiao1S8dJb5XQDbSITRBgDCPvaMp3VDsZW2RdiaRGT87icHEQ2IHsicR8/0','','','','','','','1','1','o0pziw_7aT4X6A39oRElxQt9CU0Y','A★康k');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('353','kxvnE1474618628','','','1472790228','0','0','0','','中国湖北武汉','http://wx.qlogo.cn/mmopen/1zRBFl1zc5sCzBKLFw6fx5e2icHsBO52x0YTNP1ZvlxQvdguZjnxgyvkEIkuZmbAdR8OXIuDZYlTic7lrdeOfypRImU6nh5Noq/0','','','','','','','1','1','o0pziw1vGEX-iWSsWMKQbLhkxvnE','A钟庸修');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('354','xloB01474618628','','','1474544338','0','0','0','','安道尔','http://wx.qlogo.cn/mmopen/PiajxSqBRaEJhqpmdr8MYlbO2Cv87d3gxzYLYeUCW8fpR1IyLVs33OKdIlqr9SgYXyDGAObeBXibQqoyuHUtruhA/0','','','','','','','1','1','o0pziw4AJ8G0RJlrXSjj3KExloB0','涵曦 沫妍');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('355','f5MDI1474618628','','','1471084820','0','0','0','','亚美尼亚','http://wx.qlogo.cn/mmopen/RNkt9nntz7JAUMEWeUJGjHaibDUJtg2f9vDy6DLn6zF8aLBXmichh1X8sOWyOxpZnicdicujt1Wcywlw0qyAbXHNL9pgZugUI2Dp/0','','','','','','','1','1','o0pziwwgEAwLxkpYAMxuM5Of5MDI','边陲明珠');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('356','ApRTM1474618628','','','1470228167','0','0','0','','中国辽宁沈阳','http://wx.qlogo.cn/mmopen/txicfHlP2P5PJZTQibQQxPicKVODeFxIQAJ5n3iaDJHiaP7ziaiaBfqib0ggy6AfSWicCFFOaibAPdO7PA66Pp5L7r5m20s4yv1AbHJAc7/0','','','','','','','1','1','o0pziw8GHi-QpEPoONMqt2pApRTM','冰雪聪明');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('357','sjQ1A1474618629','','','1472024529','0','0','0','','中国江苏苏州','http://wx.qlogo.cn/mmopen/fkzgAibiashcOic3pMTLp73QqspF8plWldibcAj6t37WKBx3joSoMLRJgPqFFAMXvEseH2bnPxhtnIQt8lMRMGO5iaBmMa8g0F2nN/0','','','','','','','1','1','o0pziw_0UsSTmNd75bzj6uJsjQ1A','化泥');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('358','1_VM81474618629','','','1472029514','0','0','0','','中国湖北黄冈','http://wx.qlogo.cn/mmopen/vPjficwtgTJABPcEYECK2oBwicD0QVrJBFKyjoww7EB2FquzvajmOjCLibXCPxlNMtBO51SbWNE96v3Klrg0mGNLIEH4WjqqI2y/0','','','','','','','1','1','o0pziw9qhTpLm8y4dAxjsWm1_VM8','枫叶');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('359','OfBYk1474618629','','','1471066454','0','0','0','','中国湖北黄冈','http://wx.qlogo.cn/mmopen/fkzgAibiashcOxWic7ux4WfDjnYges5PpU27rpHBtWBXcibIoTk2k4gYgw3apicVagkeoquLiaIE2gXHdXDEEBNTibVQPyEdenvp5QL/0','','','','','','','1','1','o0pziwwt1QGrRuBI790seekOfBYk','星之旅');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('360','f24tE1474618629','','','1471943974','0','0','0','','法国巴黎','http://wx.qlogo.cn/mmopen/txicfHlP2P5Pviahiaum3eBuMKQ7ZqkHAB1VicBiauoqRcs69wrLzN8qPaM5yca5yoL3zLmpwf0ZBFAU9giaTYpe1dia0k8tMHlcn2H/0','','','','','','','1','1','o0pziw9WXrhmP9KtGJbAGu6f24tE','^_^Y(＾_＾)Y');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('361','gplag1474618629','','','1470227993','0','0','0','','中国山西晋城','http://wx.qlogo.cn/mmopen/1zRBFl1zc5ucHScmjAhg4JYl8wp5kDGYJVbvamGGLrwdxfwC8TtagABF0icHd9nafELRAmxXelxDGibRcsNfzVH3nWsic3VXml4/0','','','','','','','1','1','o0pziw20NYt6qfaayXUNL6qgplag','正年轻，有何不可！');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('362','uI9mY1474618630','','','1472063171','0','0','0','','中国湖北武汉','http://wx.qlogo.cn/mmopen/ZxZh3hkjlbnoXppu4ZEwO3ibBtccqjlZOibDhRr3OicWnAZ4kokhY6EgdUwtLxvO1Y7RPOgzMAy1aDx3Tzl8YAUI7r6hgbAV4fr/0','','','','','','','1','1','o0pziw2x5oE_ISBjp6n1j79uI9mY','五月山海虹');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('363','zeH781474618630','','','1471944286','0','0','0','','中国浙江宁波','http://wx.qlogo.cn/mmopen/vPjficwtgTJABPcEYECK2oIpuNAyez49cCyYntnibsWTCodAcLMCaZUPMLkCZT3WU3gJa5SsVUiczibrTcOxwJllic4GGOSmNQiaeE/0','','','','','','','1','1','o0pziw3H2etf2ZMMx0DeUVXzeH78','andy~王策旺');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('364','OfYCs1474618630','','','1472037281','0','0','0','','中国湖北武汉','http://wx.qlogo.cn/mmopen/1zRBFl1zc5sSNHMnyksHics7uLrgVyYwkcqSkaicAa3SZAWK9N1P6ANJuFvSeSw1LCEuSDK9X2YmIJtSeU5VdgdyHYUTVGjPXX/0','','','','','','','1','1','o0pziwyaBzqslLDX6EfA5HCOfYCs','吉祥如意');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('365','Kxw4k1474618630','','','1471158628','0','0','0','','中国湖北黄冈','http://wx.qlogo.cn/mmopen/vPjficwtgTJABPcEYECK2oK5Ht3MiawoPf0uyINb3kJSflL1d0TSHkjCvms0xjJKOkfUAexMsjA7t1Dt7BQURbu7KwF9jicEhGX/0','','','','','','','1','1','o0pziw5oScQAnKJKdiR0gjwKxw4k','洪立勇18971710868');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('366','F5JIc1474618630','','','1472186974','0','0','0','','中国湖北','http://wx.qlogo.cn/mmopen/fkzgAibiashcOic3pMTLp73QoodcIiaYvvicN70chqy5mLwMiaD0CsGxenkblDoL51w9CHAAmmiaL9G3T9V0VH3IhdCAgDyV9vVlpHI/0','','','','','','','1','1','o0pziwxZl9mvGxWXhleh2fcF5JIc','胡馨月');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('367','wMwgg1474618630','','','1470227855','0','0','0','','中国辽宁沈阳','http://wx.qlogo.cn/mmopen/fkzgAibiashcMBrgczIBkq3hpolgNHF2QMvtiasy91dcb7LsuV9icJgTAWTEXjoibqW6YybVJX7e6mIPI6wLhYZVJ1ibsHCua9ibVVM/0','','','','','','','1','1','o0pziw3JbQJqBi2Axuka40HwMwgg','左.');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('368','CSS741474618631','','','1471350815','0','0','0','','中国广东东莞','http://wx.qlogo.cn/mmopen/fkzgAibiashcNUibTGTKRzEmMoPBib3bTkpiaLWPTUvLxN0dfUC5ryfnFarCc8kDIpb2BQTSt3tOuGdiaqFuJWJzoVp0Nc2cMgDfEj/0','','','','','','','1','1','o0pziw_A9xjuBbryouGf3eICSS74','黄文钢');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('369','AZ4eY1474618631','','','1470365405','0','0','0','','安道尔','http://wx.qlogo.cn/mmopen/vPjficwtgTJBdI16johiauia3Lcc6vbm0H7BCwIRmn47Fl5fpibc9WQarKU8Xbo1SZuuicHiaBdJRuicVLMGtg0LhvldLlw5UobOjfT/0','','','','','','','1','1','o0pziw2hpg0amy9-7fzs1VDAZ4eY','冯小狼');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('370','_r5qg1474618631','','','1472029724','0','0','0','','阿尔及利亚','http://wx.qlogo.cn/mmopen/fkzgAibiashcNkd2IsAouzVfdCQLr2b9hnT6TXUIEVRVsRJa9DRj4DXlQMliaLegJvGDTw4343P3qrXFFHcuVdl7COxmUrwHf2k/0','','','','','','','1','1','o0pziw2TFq7Zx42NKGs2N0b_r5qg','麦子');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('371','NFH1g1474618631','','','1470841540','0','0','0','','','http://wx.qlogo.cn/mmopen/1zRBFl1zc5ucHScmjAhg4MiaSGHEPG4m6W5JpryHIYZqg1y7sIl9YjsCA7Lz0dR1PRib0iaMJ8384icKYGztUWNU5O94xQCCSb7X/0','','','','','','','1','1','o0pziwxfyw4qNQvunWS6tEoNFH1g','许瑛');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('372','huiyuan1','ba929f165f6319113a86f151229241ca','15842339835','1475032104','0','2','0','68','huiyuan1','','1475655132','admin','huiyuan1','huiyuan1','0','0','0','0','','');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('373','张飞','4c9c7e3e99283ac1a46a12282e173bcf','135121515151','1475039658','0','2','0','68','十大阿斯顿阿斯顿','','1475039757','admin','6546啊实打实的','阿斯顿','7','7','0','0','','');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('374','','3ffd5b3ca118950635902c875c4ed671','','1475465458','0','2','0','68','','','1475470024','admin','','','4','','0','0','','');
insert into `wp_userinfo`(`uid`,`username`,`upwd`,`utel`,`utime`,`agenttype`,`otype`,`ustatus`,`oid`,`address`,`portrait`,`lastlog`,`managername`,`comname`,`comqua`,`rebate`,`feerebate`,`usertype`,`wxtype`,`openid`,`nickname`) values('375','猜猜','819a14b382dfe220a5c0093a369e835e','15050154888','1475658197','0','2','0','68','上厕所','','1475658219','admin','菜市场v','100','10','22','0','0','','');
CREATE TABLE `wp_webconfig` (
  `id` int(11) NOT NULL,
  `isopen` int(11) NOT NULL DEFAULT '0' COMMENT '0开启，1关闭',
  `webname` varchar(20) DEFAULT NULL COMMENT '网站名称',
  `begintime` int(20) DEFAULT NULL COMMENT '休市开始时间',
  `endtime` int(20) DEFAULT NULL COMMENT '休市结束时间',
  `notice` varchar(100) DEFAULT NULL COMMENT '公告',
  `isnotice` int(10) DEFAULT '0' COMMENT '0开启，1关闭',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
insert into `wp_webconfig`(`id`,`isopen`,`webname`,`begintime`,`endtime`,`notice`,`isnotice`) values('1','1','微盘测测','','','你们好，在这里我深知这一切是我没法控制的！','0');
CREATE TABLE `wp_wechat` (
  `wcid` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'AppID(应用ID)',
  `appsecret` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'AppSecret(应用密钥)',
  `wxname` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '公众号名称',
  `wxlogin` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '微信原始账号',
  `wxurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'url服务器地址',
  `token` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '令牌',
  `encodingaeskey` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '消息加密解密秘钥',
  `parterid` int(11) DEFAULT NULL COMMENT '微信商户账号',
  `parterkey` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '32位密码',
  PRIMARY KEY (`wcid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;
insert into `wp_wechat`(`wcid`,`appid`,`appsecret`,`wxname`,`wxlogin`,`wxurl`,`token`,`encodingaeskey`,`parterid`,`parterkey`) values('3','wx911b7cf7b6169721','5a00b1eea0060e858cae28482bb01747','\\','','','lkjhtuip534ssgft3ry53','VwsALbxJBgrtBCLAiHrqV5F2WQMDIcAeamgInGLPOF6','1393818802','YuJinTaiTouZi1881888888888888888');
