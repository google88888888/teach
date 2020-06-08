drop database stu;
CREATE DATABASE `stu`;

USE `stu`;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `pwd` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `administrator` */

insert  into `users`(`usr`,`pwd`,`email`,`tel`) values ('zyd','zyd','zyd@gench.edu.cn','17712121212');



DROP TABLE IF EXISTS `stuinfo`;

CREATE TABLE `stuinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `grade` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `major` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

insert  into `stuinfo`(`name`,`age`,`sex`,`grade`,`major`) values 
('张三',19,'男','大一','计算机科学与技术'),
('李四',20,'男','大二','美术学'),
('王五',19,'女','大一','表演学'),
('浩二',22,'男','大四','日语'),
('孙瑞',19,'男','大一','应用物理'),
('唐红',21,'女','大二','音乐学'),
('陆毅',22,'男','大四','播音与主持艺术'),
('顾泽',21,'男','大三','软件工程'),
('刘丽',20,'女','大二','金融学'),
('张惠',22,'女','大四','会计学');


DROP TABLE IF EXISTS `works`;

CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `position` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `salary` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


insert  into `works`(`company`,`position`,`salary`,`description`) values 
('腾讯','前端','2万','负责腾讯各种网页产品的浏览器端和移动产品的各种Web View中的交互逻辑和业务逻辑开发维护。如果你想让你的代码每天在几亿台电脑和移动终端上运行，最近距离地改变几亿人的生活，这是你最好的机会。'),
('今日头条','测试','8千','做为一名测试开发，你将从客户的角度，捍卫产品的质量。通过对技术、代码到产品的全面理解，你发现产品的弱点，定位缺陷并推动修复，确保高品质的产品体验。同时你将和其他团队成员一起设计、开发和维护自动化系统，提高产品开发和测试环节的效率。'),
('阿里巴巴','运营','5千','从事腾讯各产品的云平台建设，与Iaas、Paas、Saas亲密接触。负责运营架构、数据技术应用、推广拓展等不同平台的开发工作。在这里您将有机会建设日理万“机”的管控系统，打造cool且强大的运营架构平台；在这里您将有机会挑战大数据、云计算，千亿数据尽在掌控。'),
('百度','后端','1.5万','从事腾讯产品服务后台的架构设计、开发、优化及运营工作；使用最优秀的架构设计及算法实现，在网络接入、业务运行逻辑、用户数据存储、业务数据挖掘等方向，为海量互联网用户提供稳定、安全、高效和可靠的专业后台支撑体系。');














