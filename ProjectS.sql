use demo;
select * from product;
select SupplierID, sum(price) FROM product group by SupplierID;
select SupplierID, sum(price) as total FROM product group by SupplierID having total > 50 order by total;
