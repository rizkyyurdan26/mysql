show databases;
use classicmodels;
show tables;


select* from orderdetails;

select orderNumber,sum(quantityOrdered), sum(quantityOrdered * priceEach) as revenue
from orderdetails
group by orderNumber
order by revenue desc limit 10;


-- total data has revenue > 10000
select orderNumber,sum(quantityOrdered) as order_total, sum(quantityOrdered * priceEach) as revenue
from orderdetails 
group by orderNumber 
having revenue > 50000 and order_total > 600;

-- combaining where and having (where priceEach>100, group by orderNumber)
select orderNumber,priceEach, sum(quantityOrdered) as order_total, 
sum(quantityOrdered * priceEach) as revenue
from orderdetails
where priceEach > 100
group by orderNumber
having revenue > 1000 and order_total > 100
order by revenue desc limit 10;

-- mengelompokkan data orderdetails berdasarkan status ordernya,
-- yang memiliki total revenue > 150000

select * from orders;
select * from orderdetails;

select o.status, sum(od.priceEach * od.quantityOrdered) as revenue
from orders as o 
inner join orderdetails as od using (orderNumber)
group by o.status 
having revenue > 150000;

-- menampilkan officecode dengan jumlah employee > 3
select * from offices;
select * from employees;

select officeCode, o.country, count(*) as employee
from offices as o
inner join employees as em using(officeCode)
group by officeCode
having employee > 3

-- menampilkan country dengan jumlah employees > 8
select o.country, count(*) as employee
from offices as o
inner join employees as em using (officeCode)
group by country
having employee > 8;

-- menampilkan jumlah karyawan disetiap kota dan negara
select o.country, o.city, count(*) as employee
from offices as o
inner join employees as em using (officeCode)
group by city
having o.country in ('USA');



