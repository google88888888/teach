drop database stu;
create database stu;
use stu;
create table users(
id int identity(1,1) primary key,
usr nvarchar(20) NOT NULL unique,
pwd nvarchar(20) NOT NULL,
email nvarchar(20) ,
tel char(11)
);
drop table users;
insert into users values('zyd','123','zyd@gench.edu.cn','17712121212');
select * from users

create table stuinfo
(
id nvarchar(10) primary key, 
name nvarchar(20) not null,
age int not null,
sex  nvarchar(5) not null,
grade nvarchar(10) not null,
major nvarchar(20) not null, 
);
drop table stuinfo;
insert into stuinfo values ('1','张三',19,'男','大一','计算机科学与技术');
insert into stuinfo values ('2','李四',20,'男','大二','美术学');
insert into stuinfo values ('3','王五',19,'女','大一','表演学');
insert into stuinfo values ('4','马二',22,'男','大四','日语');
insert into stuinfo values ('5','孙瑞',19,'男','大一','应用物理');
insert into stuinfo values ('6','唐红',21,'女','大二','音乐学');
insert into stuinfo values ('7','陆毅',22,'男','大四','播音与主持艺术');
insert into stuinfo values ('8','顾泽',21,'男','大三','软件工程');
insert into stuinfo values ('9','刘丽',20,'女','大二','金融学');
insert into stuinfo values ('10','张惠',22,'女','大四','会计学');
select * from stuinfo;
	