-- PRIMERY KEY Primary keys must contain UNIQUE values, and cannot contain NULL values.
use practise; 
create table person1 (
id int not null,
last_name varchar(40),
fname varchar(40) not null,
age int,
primary key (id)
);
select * from person1;
insert into person1 (id,last_name,fname,age) values(101,"Thakur","rohit",25);
insert into person1 (id,last_name,fname,age) values(102,"Thakur","rohit",24);    -- id value changed --
insert into person1 (id,fname) values(103,"rohit");
select * from person1 where last_name is null;    -- show null record
select * from person1 where last_name is not null;


create table person2 (
id int not null,
last_name varchar(40),
fname varchar(40) not null,
age int,
constraint rt primary key (id,fname)
);
select * from person2;
insert into person2 (id,last_name,fname,age) values(1,"Thakur","rohit",25);
insert into person2 (id,last_name,fname,age) values(1,"Lodhi","rohit",25);  -- do not run
insert into person2 (id,last_name,fname,age) values(1,"Thakur","virat",25);
insert into person2 (id,last_name,fname,age) values(2,"Thakur","virat",26);

create table employee(
emp_id int,
emp_name varchar(255),
age int,
salary int,
manager_id int
);
drop table employee;
select * from employee;
insert into employee (emp_id,emp_name,age,salary,manager_id) values (1,"rohit",25,25000,4);
insert into employee (emp_id,emp_name,age,salary,manager_id) values (2,"virat",26,15000,5);
insert into employee (emp_id,emp_name,age,salary,manager_id) values (3,"vishnu",25,35000,2);
insert into employee (emp_id,emp_name,age,salary,manager_id) values (4,"sandeep",27,45000,1);
insert into employee (emp_id,emp_name,age,salary,manager_id) values (5,"rishabh",24,65000,3);

 -- self join ,it is regular join in which table is joined to itself
select * from employee as T1 join employee as T2 where T1.manager_id = T2.emp_id;
select * from employee as T1 join employee as T2 where T1.manager_id = T2.emp_id order by t1.emp_id;

select T1.emp_id, T1.emp_name, T2.emp_name from employee as T1 join employee as T2 where T1.manager_id = T2.emp_id order by t1.emp_id;
select T1.emp_id, T1.emp_name, T1.manager_id, T2.emp_name as manager_name from employee as T1 join employee as T2 where T1.manager_id = T2.emp_id order by t1.emp_id;

select T1.emp_id, T1.emp_name, T1.manager_id,T2.emp_id, T2.emp_name as manager_name from employee as T1 join employee as T2 where T1.manager_id = T2.emp_id order by t1.emp_id;
