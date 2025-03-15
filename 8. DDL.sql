show databases;

-- create database
create database if not exists test_db;
use test_db;

-- delete database
drop database test_db;

-- 
create database campus;
use campus;

create table student(
	nim	varchar(10) not null,
	name varchar(50) not null,
	address varchar(100),
	gpa float,
	primary key (nim)
);

-- alter table student add primary key (nim); -- use it if forgot put primary key

desc student;

-- delete table
-- drop table student;

-- add column 
alter table student add gender varchar(10) after name;

-- change column
alter table student change column gender gender char(1);

-- drop column;
-- alter table student drop column gender;

-- rename table
-- alter table student rename to students;


-- TRAINING

-- table barang kode barang nama barang di db toko
-- tambahkan harga int 

create database store_test;
use store_test;

create table barang (
	kodeBarang varchar(20) not null,
	namaBarang varchar(50) not null,
	primary key(kodeBarang)
);

desc barang

alter table barang add harga int;

create table penjualan(
	idPenjualan varchar(20) not null,
	kodeBarang varchar(20) not null,
	terjual int,
	primary key (idPenjualan),
	foreign key (kodeBarang) references barang(kodeBarang) 
	on delete restrict on update cascade
);

show tables;
