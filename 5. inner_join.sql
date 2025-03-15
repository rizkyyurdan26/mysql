show databases;
use classicmodels;
show tables;

describe productlines;
describe products;

select * from productlines;
select *from products;

-- inner join 2 tables
select p.productCode, p.productName, pl.textDescription
from products as p inner join productlines as pl
on p.productLine = pl.productLine;

-- cara 2
select *
from products as p inner join productlines as pl
using (productLine);

-- menampilkan data product code, productname, buyprice, text description
-- untuk product yang nilai buyprice nya > 100

select productLine, p.productCode, p.productName, p.buyPrice, pl.textDescription
from products as p inner join productlines as pl
using (productLine)
where p.buyPrice >=100
order by p.buyPrice desc limit 5;

-- inner join more than 2 tables
select o.orderNumber, o.orderDate, p.productName, od.quantityOrdered, od.priceEach 
from products as p inner join orderdetails as od 
using (productCode)
inner join orders as o using (orderNumber)
order by orderNumber ;

-- menampilkan data by orNumber = 10200
select o.orderNumber, o.orderDate, p.productName, od.quantityOrdered, od.priceEach 
from products as p inner join orderdetails as od 
using (productCode)
inner join orders as o using (orderNumber)
where orderNumber = 10200;

-- data nota lengkap dari tabel products, orderdetails, orders, customer
select o.orderNumber, o.orderDate, p.productName, 
od.quantityOrdered, od.priceEach,c.customerName, od.quantityOrdered * od.priceEach as total
from products as p 
inner join orderdetails as od using (productCode)
inner join orders as o using (orderNumber)
inner join customers as c using (customerNumber);

-- create new table from inner join or new directly data

create table coba as
select o.orderNumber, o.orderDate, p.productName, 
od.quantityOrdered, od.priceEach,c.customerName, 
od.quantityOrdered * od.priceEach as total
from products as p 
inner join orderdetails as od using (productCode)
inner join orders as o using (orderNumber)
inner join customers as c using (customerNumber);




