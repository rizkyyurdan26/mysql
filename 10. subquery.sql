show databases;
use classicmodels;

show tables;

select * from payments
order by amount desc;

select customerNumber,p.paymentDate, p.amount, c.customerName
from payments as p
inner join customers as c
using (customerNumber)
order by p.amount desc limit 10;

-- min /max value
select max(amount) from payments;
select min(amount), customerNumber  from payments;

select * from payments
order by amount limit 5;

-- sum 
select sum(amount) from payments;

-- rata-rata amount dari 5 pembelian terbanyak
select AVG(amount) 
from (
	select amount from payments
	order by amount asc
	limit 5
) as avg;

-- jumlah 10 pembelian terbanyak
select sum(amount)
from(
	select amount 
	from payments
	order by amount desc
	limit 10
) as sum;


select amount 
from payments 
order by amount  desc limit 10;

-- filtering melihat amount per tahun
select * from payments;

select YEAR(paymentDate), sum(amount)
from payments 
group by YEAR(paymentDate);

-- filtering setiap bulan selama tahun 2020
select paymentDate, amount
from payments
where year(paymentDate) = 2005
order by paymentDate;


select *
from payments
where amount =(
	select max(amount)
	from payments
);


-- menampilkan first and last name from employees di kantor usa
describe employees;
select * from offices;

select o.country, e.firstName, e.lastName
from employees as e
inner join offices as o using(officeCode)
where o.country = 'USA';

-- using subQuery
select officeCode
from offices 
where country = 'USA';

select firstName, lastName
from employees 
where officeCode in (
	select officeCode
	from offices 
	where country = 'USA'
);

-- menampilkan nilai mean, max, min dari jumlah order
select * from orderdetails;

select AVG(t1.items) as avg, max(t1.items) as max, min(t1.items) as min
from (
	select orderNumber, count(*) as items 
	from orderdetails
	group by orderNumber
) as t1;

select orderNumber, count(*) as total
from orderdetails
group by orderNumber
order by total desc limit 1;

-- 