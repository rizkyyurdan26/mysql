show databases;
use classicmodels;
show tables;

describe employees;
select * from employees;

-- order by
select * from employees
order by lastName;  -- use desc form bellow to top or from big to small

select * from employees
order by lastName desc, firstName desc;

select lastName, firstName, jobTitle 
from employees
order by lastName ;


-- Use orderdetails table
describe orderdetails;
select * from orderdetails;

-- Revenue
select orderNumber, productCode, quantityOrdered * priceEach as revenue
from orderdetails
order by revenue desc limit 5;

-- harga satuan terbesar dari order details
select * from orderdetails
order by priceEach desc;


-- data customers yang terutut secara alfabet by lastName
select  * from customers
order by contactLastName;
