use ssi;
create table student (
id int,
name varchar(40),
age int,
city varchar(40) default "bhopal"
);
select * from student;
insert into student(id,name,age)values(1,"Rohit",20);
insert into student(id,name,age,city)values(1,"Rohit",20,"jabalpur");
insert into student(id,name,age)values(1,"Rohit",20);

create table order1 (
order_id int,
order_num int,
order_date datetime default current_timestamp()
);
select * from order1;
insert into order1(order_id,order_num) values(101,456);
insert into order1(order_id,order_num) values(102,4567);

create table order2 (
order_id int not null auto_increment,
order_num int not null,
order_date datetime default current_timestamp(),
primary key (order_id)
);
select * from order2;
insert into order2(order_num) values(123);
insert into order2(order_num) values(124);
insert into order2(order_num) values(125);
insert into order2(order_num) values(126);

create table order3 (
order_id int not null auto_increment,
order_num int not null ,
order_date datetime default current_timestamp(),
primary key (order_id)
);
alter table order3 auto_increment=100;
insert into order3(order_num) values(123);
insert into order3(order_num) values(124);
insert into order3(order_num) values(125);
insert into order3(order_num) values(126);
select * from order3;

alter table order3 auto_increment=150;
alter table order3 auto_increment=50;
alter table order3 auto_increment=150;