-- create table tb_emp(id_empregado serial primary key,
-- 				   nome varchar(50), foto OID);

-- insert into tb_emp(nome,foto) values
-- ('Ana',lo_import('/temp/bread_fruit.jpg'));

-- select * from tb_emp

select nome, lo_export(foto,'/temp/bread.jpg')
from tb_emp where nome = 'Ana'