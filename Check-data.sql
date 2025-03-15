show databases;
use classicmodels;

-- unique 1
select productLine
from products 
group by productLine;

-- unique 2
select distinct productLine from products;

-- check data kosong 
select officeCode, state
from offices
where state is null;

-- merubah data kosong menjadi nol
select officeCode, ifnull(state, 0) from offices;

-- menghitung banyak data yang kosong
select * from offices;

select count(*) 
from offices
where state is null;