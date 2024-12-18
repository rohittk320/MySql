create database fkey;
create table person (
id int not null, 		 -- must
full_name varchar(420),
age int,
primary key (id)
);
select * from person;
insert into person () values(1,"Rohit",26);
insert into person () values(2,"virat",27);
insert into person () values(3,"rahul",28);
insert into person () values(4,"Sachin",29);

-- forign key
create table orders (
order_id int not null ,
order_no int,
person_id int,
primary key (order_id),
foreign key (person_id) references person (id)
);
select * from orders;
insert into orders () values(100,1123,10);   -- do not run bcoz 10 is not available in  person(id)
insert into orders () values(101,1123,1);
insert into orders () values(102,1789,3);
insert into orders () values(104,1789,4);

create table person1 (
id int not null,
full_name varchar(420),
age int,
check (age >= 18)
);
select * from person1;
insert into person1 () values(1,"Rohit",16);  -- do not run age should grether than 18
insert into person1 () values(2,"virat",7);   -- do not run age should grether than 18
insert into person1 () values(3,"rahul",28);
insert into person1 () values(4,"Sachin",29);

alter table person1 add email varchar(255);
alter table person1 modify email int;
alter table person1 modify email varchar(255);
update person1 set email="rohit@gmail.com" where id=2;
alter table person1 drop column email;
update person1 set full_name= "Tony" where id=4;


/* The following constraints are commonly used in SQL:

NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Prevents actions that would destroy links between tables
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
CREATE INDEX - Used to create and retrieve data from the database very quickly  */
