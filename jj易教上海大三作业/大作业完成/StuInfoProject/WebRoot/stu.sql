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
insert into stuinfo values ('1','����',19,'��','��һ','�������ѧ�뼼��');
insert into stuinfo values ('2','����',20,'��','���','����ѧ');
insert into stuinfo values ('3','����',19,'Ů','��һ','����ѧ');
insert into stuinfo values ('4','���',22,'��','����','����');
insert into stuinfo values ('5','����',19,'��','��һ','Ӧ������');
insert into stuinfo values ('6','�ƺ�',21,'Ů','���','����ѧ');
insert into stuinfo values ('7','½��',22,'��','����','��������������');
insert into stuinfo values ('8','����',21,'��','����','�������');
insert into stuinfo values ('9','����',20,'Ů','���','����ѧ');
insert into stuinfo values ('10','�Ż�',22,'Ů','����','���ѧ');
select * from stuinfo;
	