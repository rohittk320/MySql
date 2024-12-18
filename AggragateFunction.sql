create database practice1;
select * from practice1.customers;
select avg(CustomerID) from practice1.customers;
select min(CustomerID) from practice1.customers;
select max(CustomerID) from practice1.customers;
select sum(CustomerID) from practice1.customers;
select * from practice1.customers where country="germany";
select count(*) as total from practice1.customers where country="germany";

-- aggragate function ---> min,max,sum,avg --
-- group by always used with aggregate function --
select country,count(country) from practice1.customers group by country;
select country,count(country) as total from practice1.customers group by country order by count(country) desc;
select country,count(country) from practice1.customers group by country having count(country) >= 5 order by count(country);  -- having clause use with group by function
-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

select * from practice1.customers where CustomerName like 'a%';   -- start with a --
select * from practice1.customers where CustomerName like '%a';   -- end with a --
select * from practice1.customers where CustomerName like '___n%';
select * from practice1.customers where Country like '___a%';
select * from practice1.customers where Country like '_e%';  -- second later e
select * from practice1.customers where Country like '%man%';
select * from practice1.custumors where Country not like '%man%';

use practice1;
create table employee (
Sno int,
emp_name varchar(50),
salary int,
passout int,
mob bigint,
dob date,
kdob timestamp,
kdob2 datetime
);
select * from employee;
insert into employee() values(1,"Rohit",1000,2024,9876543210,'1995/01/01','1995/01/01 10/12/15','1995/01/01 11/2/15');
select distinct * from employee;  -- remove duplicate