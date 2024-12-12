create database scl;
create table scl.student(roll_no int, fname varchar(40), address varchar(40) ,phone int , age int);
insert into scl.student(roll_no,fname,address,phone,age) values(1,"Rohit","bhopal",123456789,25);
insert into scl.student(roll_no,fname,address,phone,age) values(2,"Virat","bhopal",123456789,26);
insert into scl.student(roll_no,fname,address,phone,age) values(3,"Krishna","indore",123456789,27);
insert into scl.student(roll_no,fname,address,phone,age) values(4,"ajay","ujjain",123456789,24);
insert into scl.student(roll_no,fname,address,phone,age) values(5,"Gaurav","delhi",123456789,28);
select * from scl.student;
update scl.student set fname="sourab" where roll_no=5;
update scl.student set age=20 where roll_no=1;

