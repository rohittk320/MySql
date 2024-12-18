SELECT * FROM practise.student;
DELETE FROM practise.student where CustomerID=6;
Select * from practise.student where Country="germany";
Select * from practise.student where Country="germany" or Country="france";
Select * from practise.student where Country="germany" or Country="france" or Country="usa" ;
Select * from practise.student where Country="germany" or Country="france" or Country="usa" or CustomerID=2;
Select * from practise.student where Country in ("germany", "france","usa");
Select * from practise.student where Country in ("germany", "france","usa","mexico");
Select * from practise.student where Country in ("germany", "france","usa","mexico") or CustomerID in (4,10);
select * from practise.student where city in ("berlin","london","México D.F.");
Select * from practise.student where Country="germany" and city="berlin";
Select * from practise.student where Country="france" ;
Select * from practise.student where Country="france" and city="paris";
Select * from practise.student where CustomerID between 50 and 60;
Select * from practise.student where CustomerID between 50 and 60 order by Country;
Select * from practise.student where CustomerID between 50 and 60 order by Country desc;
Select count(*) from practise.student where CustomerID between 50 and 60 order by Country;
Select * from practise.student where CustomerID > 50;
Select * from practise.student where CustomerID >= 50;
Select * from practise.student where CustomerID < 25;
Select * from practise.student where CustomerID <= 25;
Select count(*) as total_record from practise.student;
Select * from practise.student;
insert into practise.student(CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country)
values(92,"rohit thakur","gaurav","ashoka garden","bhopal","462023","india");
Select * from practise.student order by CustomerID desc;

insert into practise.student(CustomerID,CustomerName,Address,City,PostalCode,Country)
values(93,"Virat thakur","mp nagar","bhopal","462023","india");
insert into practise.student (Country,CustomerID,CustomerName,City)
values("india",94,"Virat kohli","jbl");

create table practise.employe (
id int not null,
fname varchar(40) not null,
address varchar(40),
phone int not null,
age int
);
select * from practise.employe;
insert into practise.employe(id,address,age) values(1,"mp nagar",22);  -- do not run
insert into practise.employe(id,fname,address,phone,age) values(1,"rohit","mp nagar",975318200,22);
insert into practise.employe(id,fname,phone) values(1,"rohit",975318200);

select * from practise.employe;
