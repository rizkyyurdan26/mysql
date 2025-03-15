show databases;

-- Create Database
create database if not exists store;
use store;
show tables;

-- Create Table
create table goods(
	id_goods int not null auto_increment,
	name varchar(30) not null,
	primary key (id_goods)
);

desc goods;

create table supplier(
	id_supplier int not null auto_increment,
	supplierName varchar(30) not null,
	address varchar(50) not null,
	primary key(id_supplier)
);

desc supplier;

create table franchise(
	franchise_id int not null auto_increment,
	franchise_name varchar(30) not null,
	franchise_address varchar(100) not null,
	primary key (franchise_id)
);

desc franchise;

-- Child or Fact Table
create table details(
	details_id int not null auto_increment,
	name varchar(30) not null,
	purchase_price int not null,
	sale_price int not null,
	id_goods int,
	id_supplier int,
	index(id_supplier),
	index(id_goods),
	foreign key (id_supplier) references supplier(id_supplier)
	on delete restrict on update cascade,
	foreign key (id_goods) references goods(id_goods)
	on delete restrict on update cascade,
	primary key (details_id)
	
);

desc details;

-- Change Column's Name
alter table goods change column name nameGoods varchar(30) not null;

-- Add new Column
alter table goods add column stock int(4) not null; -- after id_goods;
alter table details add column descriptions varchar(150);

-- Remove colum
alter table goods drop column stock;