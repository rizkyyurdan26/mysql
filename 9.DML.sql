show databases;

create database if not exists campus;

use campus;

create table student(
	nim varchar(10) not null,
	name varchar(50) not null,
	addrss varchar(100),
	gpa float,
	primary key(nim)
);

alter table student change column addrss address varchar(100);

alter table student rename to students;
desc students;


-- insert/create
insert into students values(
	'111', 'Alex', 'Jogja', 3.98
);

-- spesifik insert
insert into students (nim, name) 
values ('1112', 'Frank');

-- many insert
insert into students
values 
('113', 'Andre', 'California', 3.79),
('114', 'Faisal', 'Bandung', 3.82);


-- Select/Read
select * from students;

-- Update
update students 
set nim = '112' 
where nim='1112';

update students 
set address = 'Tokyo'
where nim = '112';


-- Delete
delete from students where nim = '114';