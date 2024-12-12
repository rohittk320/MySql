create database collage;
create table collage.student(student_id int, fname varchar(40), lname varchar(40),age int, BirthDate date, sex char, city varchar(40));
insert into collage.student(student_id,fname,lname,age,BirthDate,sex,city) values(1,"john","walker",18,'2000-09-19',"M","New york");
insert into collage.student(student_id,fname,lname,age,BirthDate,sex,city) values(2,"christen","ballard",19,'1999-09-1',"F","akron");
insert into collage.student(student_id,fname,lname,age,BirthDate,sex,city) values(3,"scarlet","fisher",20,'1994-09-19',"F","montreal");
insert into collage.student(student_id,fname,lname,age,BirthDate,sex,city) values(4,"james","peterson",17,'2003-07-19',"M","loco");
insert into collage.student(student_id,fname,lname,age,BirthDate,sex,city) values(5,"ethen","hunt",25,'1990-06-19',"M","washington");
insert into collage.student(student_id,fname,lname,age,BirthDate,sex,city) values(6,"chris","lyn",23,'2000-09-9',"M","london");
insert into collage.student(student_id,fname,lname,age,BirthDate,sex,city) values(7,"leo","gordon",19,'2003-07-8',"M","brazil");
insert into collage.student(student_id,fname,lname,age,BirthDate,sex,city) values(8,"tony","stark",30,'1990-08-20',"M","New york");

select * from collage.student;