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
insert into student values ('1','����',19,'��','��һ','�������');
insert into student values ('2','����',20,'��','���','����ѧ');
insert into student values ('3','����',19,'Ů','��һ','���ѧ');
insert into student values ('4','����',22,'��','����','�������ѧ');
insert into student values ('5','����',19,'��','��һ','Ӧ����ѧ');
insert into student values ('6','����',21,'��','����','�������ѧ');
select * from student;
	