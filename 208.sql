use test;
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
    name varchar(20) not null,
    classId int
);

#开启事务
start transaction;
insert into teacherInfo(id, name) values (1,'zzy',1);
insert into stuInfo(id, name, sex, classId) VALUES (1,'abc','男',1);
insert into stuInfo(id, name, sex, classId) VALUES (2,'def','男',2);
insert into stuInfo(id, name, sex, classId) VALUES (3,'xzc','男',2);
insert into stuInfo(id, name, sex, classId) VALUES (4,'qfq','男',3);
insert into stuInfo(id, name, sex, classId) VALUES (5,'gvr','男',3);

update stuInfo set sex='女' where id=3;
delete from stuInfo where id = 5;

commit;

#查看所有学生
select * from stuInfo;
