use rt;
select * from orders;
select * from customers;
select customers.CustomerName,orders.orderID from customers cross join orders;
select customers.CustomerID,orders.EmployeeID from customers , orders;  -- cross join

select count(*) from orders;
select count(*) from customers;
select count(*) from customers cross join orders;

select * from customers cross join orders where customers.customerID = orders.customerID;
select * from customers join orders where customers.customerID = orders.customerID;

select count(*) from customers cross join orders where customers.customerID = orders.customerID;

select * from suppliers;
select count(*) from suppliers;

select city from customers 
union 
select city from suppliers;   -- return only  distinct values from both table,Every SELECT statement within UNION must have the same number of columns

select city from customers 
union all 
select city from suppliers;   -- all records show

create table rohit as select city from customers union select city from suppliers;
select count(*) from rohit;

create table rohit1 as select city from customers union all select city from suppliers;
select count(*) from rohit1;

select count(*) from customers;
select count(*) from suppliers;


/* The UNION operator is used to combine the result-set of two or more SELECT statements.

Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order */