#学生
create table stuInfo
(
    id      int primary key ,
    name     varchar(20) not null ,
    sex   enum ('男', '女') default '男',
    classId int
);
#教师
create table teacherInfo
(
    id   int  primary key,
    name varchar(20) not null
);
#班级
create table classInfo
(
    id    int  primary key,
    name varchar(20),
    teacherId int not null
);
#开启事务
start transaction;
insert into teacherInfo(id, name) values (1,'zzy');
insert into classInfo (id,name,teacherId) values (1,'数学二班',1);
insert into classInfo (id,name,teacherId) values (2,'数学三班',1);
insert into classInfo (id,name,teacherId) values (3,'数学一班',1);

insert into stuInfo(id, name, sex, classId) VALUES (1,'abc','男',1);
insert into stuInfo(id, name, sex, classId) VALUES (2,'abc','男',2);
insert into stuInfo(id, name, sex, classId) VALUES (3,'abc','男',2);
insert into stuInfo(id, name, sex, classId) VALUES (4,'abc','男',3);
insert into stuInfo(id, name, sex, classId) VALUES (5,'abc','男',3);


update stuInfo set sex = '女' where id='1';

delete from stuInfo where id = 1;
commit;

#查看所有学生
select * from stuInfo;