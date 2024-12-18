create database demo;
use demo;
create table person (
id int not null,
last_name varchar(255) ,
first_name varchar(255),
age int,
unique(id)   
);
select * from person;
insert into person() values(1,"thakur","Rohit",25);
insert into person() values(2,"thakur","Rohit",25);

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT Rohit UNIQUE (ID,LastName)
);
select * from persons;
insert into persons() values(1,"thakur","Rohit",25); -- insert unique values
insert into persons() values(1,"thakur","Rohit",25);
insert into persons() values(2,"thakur","Rohit",25);
insert into persons() values(1,"Lodhi","Rohit",25);

create table person2 (
id int not null,
last_name varchar(255),
first_name varchar(255),
age int 
);
alter table person2 add unique(id);

create table person3 (
id int not null,
last_name varchar(255),
first_name varchar(255),
age int
);
select * from person3;
alter table person3 add constraint rohit unique(id,first_name);
alter table person3 modify column id int not null auto_increment;
alter table person3 auto_increment = 5;
insert into person3(last_name,first_name,age) values("Lodhi","Rohit",25);
alter table person3 add primary key(id);
alter table person3 drop primary key;

create table `person 4`(
id int not null,
last_name varchar(255),
first_name varchar(255),
age int
);
select * from `person 4`;

create table `person 5`(
id int not null,
`last name` varchar(255),
`first name` varchar(255),
age int
);
select * from `person 5`;
select * from practice1.customers;
create view cust as select CustomerID,CustomerName ,City,Country from practice1.customers where Country="germany";  -- create virtual table
select * from cust;

create or replace view cust as select CustomerID,CustomerName ,Country from practice1.customers where Country="germany";
create or replace view cust1 as select * from practice1.customers where Country="germany";  -- update view
select * from cust1;
drop view cust1;

/* In SQL, a view is a virtual table based on the result-set of an SQL statement.
A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.
You can add SQL statements and functions to a view and present the data as if the data were coming from one single table. */  
