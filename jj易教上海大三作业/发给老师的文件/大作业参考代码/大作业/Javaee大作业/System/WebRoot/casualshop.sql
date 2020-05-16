drop database casualshop;
create database casualshop;
use casualshop;
create table users(
id int identity(1,1) primary key,
usr nvarchar(20) NOT NULL unique,
pwd nvarchar(20) NOT NULL,
email nvarchar(20) ,
tel char(11)
);
drop table users;
insert into users values('chz','chz','chz@gench.edu.cn','12345678901');
select * from users

create table student
(
id nvarchar(10) primary key, 
name nvarchar(20) not null,
age int not null,
sex  nvarchar(5) not null,
grade nvarchar(10) not null,
major nvarchar(20) not null, 
);
drop table student;
insert into student values ('1','张三',19,'男','大一','软件工程');
insert into student values ('2','李四',20,'男','大二','考古学');
insert into student values ('3','刘娟',19,'女','大一','设计学');
insert into student values ('4','王二',22,'男','大四','计算机科学');
insert into student values ('5','金鑫',19,'男','大一','应用数学');
insert into student values ('6','常青',21,'男','大三','计算机科学');
select * from student;
	