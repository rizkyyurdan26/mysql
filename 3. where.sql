show databases;
use classicmodels;
show tables;

-- using where
select * from employees;

-- menyeleksi kolom yang memiliki job title sales rep atau officecode 1 
-- dan diurutkan berdasarkan officeCode

select lastName, firstName, jobTitle, officeCode
from employees 
where jobTitle = "Sales Rep" or officeCode = 1   -- and or
order by officeCode, jobTitle;


-- menampilkan data dalam office code dalam rentang 1 -3
select lastName, firstName, jobTitle, officeCode
from employees
where officeCode between 1 and 3;

-- menampilkan data dalam officecode dengan nama belakang on dan rentang 1-3
select lastName, firstName, jobTitle, officeCode
from employees
where (lastName like "%son") and (officeCode between 1 and 3) ;
order by officeCode, jobTitle;

-- menampilkan data employee pada officeCode 1, 3, atau 7
select lastName, firstName, jobTitle, officeCode
from employees
where officeCode in (1,3,7);
-- where officeCode = 1 or officeCode = 3 or officeCode =7;


-- menampilkan data yang memiliki null
select lastName, firstName, reportsTo
from employees 
where reportsTo is null;

-- menampilkan data dari order details yang kuantiti ordernya > 40
select * from orderdetails
where quantityOrdered > 40;

-- menampilkan data dari table orders yang status onhold. disputed, atau cancel
select * from orders;
select distinct status from orders;

select * from orders 
where status in ("on Hold", "Disputed", "Cancelled")
order by status;

select distinct jobTitle from employees;