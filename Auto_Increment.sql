select * from clg.student;
update clg.student set fname="Virat" where rollno=101;

use practise;
select * from practise.customers;
alter table customers modify column CustomerID int not null auto_increment primary key;

insert into customers(CustomerName,ContactName,Address,City,PostalCode,Country) values("Tony","Rohit","mp nagar","bhopal",462023,"india");
insert into customers(CustomerName,ContactName,Address,City,PostalCode,Country) values("Rdj","Rohit","mp nagar","bhopal",462024,"india");
insert into customers(CustomerName,ContactName,Address,City,PostalCode,Country) values("virat","rahul","tt nagar","bhopal",462023,"india");

alter table customers auto_increment 92;
