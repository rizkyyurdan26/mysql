-- CRUD SQL

show databases;
use store;
show tables;

desc goods;

-- View all data in table
select * from goods;

-- insert data to table
insert into goods values(null, "keyboard", 3 );
insert into goods (nameGoods, stock) values ("mouse", 4); -- insert by column name
insert into goods (nameGoods, stock) values ("monitor",2), ("cpu", 5);

-- update data in table by id
update goods set `stock` = 5 where id_goods=1; 

-- Detele data from table
delete from goods where id_goods=4;


