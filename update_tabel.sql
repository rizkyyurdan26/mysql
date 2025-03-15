show databases;

use classicmodels;

show tables;

desc orderdetails;
select * from orderdetails;

alter table orderdetails add column revenue decimal(10,2);

update orderdetails 
set revenue = quantityOrdered * priceEach;

select count(*) from orderdetails;

alter table orderdetails drop revenue;

-- create new table from inner join or new directly data

create table coba as
select o.orderNumber, o.orderDate, p.productName, 
od.quantityOrdered, od.priceEach,c.customerName, 
od.quantityOrdered * od.priceEach as total
from products as p 
inner join orderdetails as od using (productCode)
inner join orders as o using (orderNumber)
inner join customers as c using (customerNumber);