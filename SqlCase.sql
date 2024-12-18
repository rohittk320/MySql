use rt;
create table employee(
emp_id int ,
emp_name varchar(50), 
age int,
salary int, 
manager_id int
);
select * from employee;
insert into employee () values (6,'umang',16,52000,3);
insert into employee () values (7,'keshari',66,59000,5);
insert into employee () values (8,'nikhil',12,50000,9);
insert into employee () values (9,'ishant',96,55000,2);
insert into employee () values (10,'oggy',5,5000,1);
insert into employee (emp_id,emp_name,salary,manager_id) values (11,'oggy',5000,1);
select emp_id, emp_name, age,
case 
	when age<18 then "not adult"
    when age>60 then "uncle"
	when age>18 then "adult"
else "not found" end as "age criteria"  from employee;


select * from customers;
insert into customers (country) values("india");
insert into customers (country) values("america");
insert into customers (country) values("brazil");
insert into customers (country) values("london");

select customername,city,country,customerid from customers order by  (
case when city is null then country 
else city end 
);