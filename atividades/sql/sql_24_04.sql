/*create table alunos(id serial primary key,
				   nome varchar (100),
				   nota1 numeric(4,2),
				   nota2 numeric(4,2),
				   media numeric(4,2)
				   generated always as ((nota1 + nota2)/2) stored);
				   
insert into alunos (nome, nota1, nota2) values 
                                        ('Ana',9,8),
                                        ('Igor',5,4),
                                        ('Mariana',6,8),
                                        ('Miguel',2,4);
										
select * from alunos

create table folha_pagamento(id serial primary key,
							nome varchar (100),
							salario_bruto numeric(6,2),
							inss numeric(6,2)
	                        generated always as (salario_bruto * 11/100) stored,
							vale_transporte numeric(6,2)
							generated always as (salario_bruto * 6/100) stored,
							salario_liquido numeric(6,2)
							generated always as (salario_bruto - (salario_bruto * 11/100) - (salario_bruto * 6/100)) stored);
						
insert into folha_pagamento (nome,salario_bruto) values
('Guilherme', 8500.00),
('Luis', 5600.65);

select * from folha_pagamento

create table setor(id serial primary key,
				  nome varchar(30) unique not null);
				  
insert into setor (nome) values('RH'),('DP'),('TI'),('Financeiro'),('Marketing');

select * from setor where not (id=1 or id=3);*/

/*select * from setor where id in (1,3);

create table conta_corrente(id serial primary key,
						   nome varchar (50));
						   
insert into conta_corrente (nome) values
('Carla'),('Arthur'),('Joaquim'),('Alberto'),('Mariana');

create table transacao(id serial primary key,
					  valor numeric, tipo varchar(20),
					  id_conta_corrente int,
foreign key(id_conta_corrente) references conta_corrente (id));

insert into transacao(valor,tipo,id_conta_corrente)
values(1000,'Saque',1),(500,'Depósito',1),(2000,'Depósito',2),(400,'Depósito',3);

select c.nome from conta_corrente c
where not exists(select t.id_conta_corrente
				 from transacao t 
				 where t.id_conta_corrente = c.id);
				 
create table costumer(id serial primary key,
					  name varchar(60),
					  email varchar (50) unique);
					  
insert into customer(name, email)
values ('Michael','m@gmail.com'),('Peter','p@gmail.com'),('Mike','mike@gmail.com');

create table supplier(id serial primary key,
					 name varchar(60), email varchar(50)unique);
					 
insert into supplier (name,email) values('XPTO LTDA','x@gmail.com'),
('ABC LTDA','abc@gmail.com'),('C&C','cec@gmail.com');

insert into customer (name,email) select name, email from supplier;

select * from customer*/