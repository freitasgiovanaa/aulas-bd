/*create table empregado (id_empregado serial primary key,
					   nome varchar(50) not null, 
					   sobrenome varchar(40) not null,
					   email varchar(30) not null unique,
					   cargo varchar(30),
					   salario numeric not null);
					   
insert into empregado (nome,sobrenome,email,cargo,salario)
values('Maria','Silva','maria@gmail.com','Programadora',6400),
('Jorge','Santos','jorge@gmail.com','Aux. Adm.',3200),
('Ana','Oliveira','ana@gmail.com','Arquiteta',9300),
('Renato','Nascimento','renato@gmail.com','Eng. Civil',8900);

create table empregado_auditoria
(id_empregado_auditoria serial primary key,
id_empregado int, nome varchar(50),
data_modificacao date default null,
salario numeric not null);

create or replace function empregado_atualizar_salario()
returns trigger as $$ 
begin 
    insert into empregado_auditoria(id_empregado,nome,salario,data_modificacao)
    values(old.id_empregado,old.nome, old.salario, now());
 return new;									
end;
$$
language 'plpgsql';

create trigger atualizar_salario 
after update 
on empregado
for each row
execute procedure empregado_atualizar_salario();

update empregado set salario = salario *1.12;

create table empregado_auditoria_delete(
id_empregado_delete serial primary key,
id_empregado int, nome varchar(50), sobrenome varchar(40),
email varchar(50), cargo varchar(40), salario numeric,data_apagou date);

create or replace function empregado_apagar()
returns trigger as $$
begin 
    insert into empregado_auditoria_delete
	(id_empregado,nome,sobrenome,email,cargo,salario,data)
	values(old.id_empregado,old.nome,old.sobrenome,old.email,
		   old.cargo,old.salario,now());
           return new;
end;
$$
language 'plpgsql';

create trigger apagar_empregado 
after delete 
on empregado
for each row 
execute procedure empregado_apagar();

delete from empregado  where id_empregado = 1

insert into empregado(id_empregado, nome, sobrenome, email, cargo, salario)
select id_empregado, nome, sobrenome, email, cargo, salario
from empregado_auditoria_delete;*/