show databases;
use classicmodels;

show tables;

describe orders;
select * from orders;

select distinct status from orders;

select count(*) from orders;

-- menghitung jumlah data berdasarkan status but can't show individual data without status
select status, count(*) as total
from orders
group by status
order by total desc;

select status, orderNumber
from orders
where status in ('Cancelled', 'Resolved')
order by status;

-- menampilkan status revenue untuk setiap order
select o.status, sum(od.priceEach * od.quantityOrdered) as revenue
from orders as o
inner join orderdetails as od using (orderNumber)
group by o.status
order by revenue desc;
-- with rollup;

-- menampilkan jumlah employees yang terdapat di tiap officecode
select * from employees
order by officeCode;

select * from offices;

select em.officeCode, count(*) as total_employees
from offices as o
inner join employees as em using (officeCode)
group by officeCode;


-- menampilkan jumlah employee yang terdapat di setiap kota dan negara
select * from employees;
select * from offices;

select  o.city, o.country, count(o.city) as employees
from offices as o
inner join employees as em using (officeCode)
group by o.city;
-- with rollup;



