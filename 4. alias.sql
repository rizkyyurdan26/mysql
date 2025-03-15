show databases;
use classicmodels;

show tables;

select *
from employees;

-- fungsi concat untuk membuat kolom baru dri gabungan kolom 
select firstName, lastName, concat(firstName,' ', lastName) as fullName
from employees
order by fullName;

select firstName, lastName, concat(firstName,'-',lastName,'-',email) as details
from employees;

select concat_ws("-", lastName, firstName, email) as details
from employees;

-- alias di table
select e.firstName, e.lastName
from employees as e
order by e.lastName;