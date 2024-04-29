/*create extension pgcrypto;

select encode(digest('123456','SHA512'),'hex');

select crypt('123456',gen_salt('bf'));

create table usuario(id_usuario serial primary key,
					login varchar(20) not null unique,
					email varchar(50) not null unique,
					senha text,
					ativo boolean);
					
insert into usuario(login,email,senha,ativo) 
values('Maria','maria@gmail.com',crypt('aMinha$enhaEmuitoDificil',gen_salt('MD5')),true);
									  
insert into usuario(login,email,senha,ativo) 
values('Jose','jose@gmail.com',crypt('123456',gen_salt('MD5')),true);
									
insert into usuario(login,email,senha,ativo) 
values('Joao','joao@gmail.com',crypt('1234567',gen_salt('MD5')),true);

select * from usuario

select (login, senha=crypt('123456',senha)) as autenticacao from usuario;

select * from usuario where senha=crypt('123456',senha);

create role miguel with login encrypted password '123456';

create table pessoa(id_pessoa serial primary key,
				   nome varchar(60)not null,
				   idade int check (idade >= 0),
				   sexo char(1));
				   
insert into pessoa(nome, idade, sexo)
values('Ana', 25, 'F'),
	  ('Carla', 15, 'F'),
	  ('Mariana', 18, 'F'),
	  ('Adriano', 39, 'M'),
	  ('Marcos', 77, 'M'),
	  ('Andre', 19, null),
	  ('José', 44, null);
	  
grant all on pessoa to miguel

alter table pessoa enable row level security;

create policy miguel_pol_1 on pessoa for select to miguel 
using (sexo='M');

create policy miguel_pol_2 on pessoa 
for select to miguel using (sexo is null);

explain select * from pessoa;*/

