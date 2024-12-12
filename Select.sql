create database ssi;
create database new;
drop database new;
-- create table new.custumer(id int, fname varchar(40), age int, doj date);
create table ssi.custumer(id int, fname varchar(40), age int, doj date);
select * from ssi.custumer;
insert into ssi.custumer(id,fname,age,doj) values(1,"Rohit Thakur",26,'2024-07-03');
insert into ssi.custumer(id,fname,age,doj) values(2,"ajay",21,'2023-06-03');
insert into ssi.custumer(id,fname,age,doj) values(3,"krishna",25,'2022-05-01');
insert into ssi.custumer(id,fname,age,doj) values(4,"Virat",27,'2023-08-02');
insert into ssi.custumer(id,fname,age,doj) values(5,"Ram",29,'2021-08-05');
select * from ssi.custumer;
/* drop table ssi.custumer
drop table ssi.custumer
drop table ssi.custumer
drop table ssi.custumer */
select * from ssi.custumer;
select id from ssi.custumer;
select id,doj from ssi.custumer;
select id,doj,fname from ssi.custumer;
select id,doj,fname,age from ssi.custumer;
select id,doj,fname,age from ssi.custumer limit 1;
select id,doj,fname,age from ssi.custumer limit 3;
select * from ssi.custumer where age=21;
select * from ssi.custumer where id=3;
select * from ssi.custumer where fname="ram";
select * from ssi.custumer where fname="RAM";
select * from ssi.custumer where fname="ram" or id=3;
select * from ssi.custumer where fname="shyam" or id=10;
select * from ssi.custumer where fname="ram" and id=5;
select * from ssi.custumer where fname="shyam" or id=1 or age=32;
