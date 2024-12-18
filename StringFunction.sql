select * from practice1.customers;
use practice1;
select concat (CustomerName," ",ContactName) as full_name from practice1.customers;
select * , concat (CustomerName," ",ContactName) as full_name from practice1.customers;
select concat (city,"--",Country) as City_Country from practice1.customers;
select CustomerName, char_length(CustomerName) as length_of_name from practice1.customers;
select city, char_length(City) as length_of_city from practice1.customers;
select city, char_length(city) from practice1.customers;
select CustomerName, character_length(CustomerName) as length_of_name from practice1.customers;

use practice1;
SELECT CONCAT(Address, " ", PostalCode, " ", City) AS Address FROM Customers;
-- Add three columns (and add a space between them) into one "Address" Column:
SELECT CONCAT_WS(" ", Address, PostalCode, City) AS Full_Address FROM Customers;
SELECT CONCAT_WS("-", Address, PostalCode, City) AS Full_Address FROM Customers;

-- Search for "a" in CustomerName column, and return position:
SELECT CustomerName, INSTR(CustomerName, "a") AS Position_of_a FROM Customers;  -- position of charater
SELECT CustomerName, INSTR(CustomerName, "e") AS Position_of_e FROM Customers;

SELECT CustomerName, LCASE(CustomerName) AS LowercaseCustomerName FROM Customers;
SELECT CustomerName, UCASE(CustomerName) AS UppercaseCustomerName FROM Customers;

SELECT CustomerName,LEFT(CustomerName, 5) AS ExtractString FROM Customers;
SELECT CustomerName,LEFT(CustomerName, 3) AS ExtractString FROM Customers;
SELECT CustomerName,RIGHT(CustomerName, 5) AS ExtractString FROM Customers;

SELECT CustomerName, LENGTH(CustomerName) AS LengthOfName FROM Customers;
SELECT CustomerName, LOCATE("a", CustomerName) as position FROM Customers;
SELECT CustomerName, LOWER(CustomerName) AS LowercaseCustomerName FROM Customers;
SELECT CustomerName, UPPER(CustomerName) AS UppercaseCustomerName FROM Customers;

SELECT LTRIM("     SQL Tutorial") AS LeftTrimmedString;
SELECT RTRIM("SQL Tutorial    ") AS LeftTrimmedString;

SELECT MID("SQL Tutorial", 5, 3) AS ExtractString;
SELECT CustomerName, substring(CustomerName, 5, 3) AS ExtractString FROM Customers;
SELECT CustomerName, substring(CustomerName, 2, 5) AS ExtractString FROM Customers;
SELECT CustomerName, mid(CustomerName, 5, 3) AS ExtractString FROM Customers;
 -- SUBSTR(string, start, length)
SELECT CustomerName,SUBSTR(CustomerName, 2, 5) AS ExtractString FROM Customers;

SELECT TRIM('    SQL Tutorial    ') AS TrimmedString;

SELECT CustomerName,RIGHT(CustomerName, 5) AS ExtractString FROM Customers;
select Country,replace(Country,"e","T") from customers;
SELECT CustomerName,REVERSE(CustomerName) FROM Customers;