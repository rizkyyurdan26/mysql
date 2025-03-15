show databases;
use classicmodels;
show tables;

describe products;
select count(*) from products;

select * from products;
select productCode,productName from products limit 10;


-- Filtering
select * from products where productLine = "Motorcycles" ;

-- Filtering uniwue name in kolumns with count
select productLine, count(*)
from products
group by productLine;

-- 
desc employees;
select lastName, email, jobTitle
from employees; 