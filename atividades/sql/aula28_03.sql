/*create table empregado(id_empregado serial primary key,
					  nome varchar(50) not null,
					  email varchar(40) unique not null);
					  
insert into empregado (nome, email) values('Marcos','marcos@gmail.com'),
                                          ('Ana','ana@hotmail.com'),
										  ('Bruna','bruna@gmail.com'),
										  ('Patrícia','pat@gmail.com'),
										  ('Carlos','carlos@senai.com.br');
										  
create table terceirizado(codigo_terceirizado serial primary key,
						  nome varchar(50) not null,
						  email varchar(40) not null unique);
						  
insert into terceirizado (nome,email) values('José', 'j@gmail.com'),
								            ('Antônio','antonio@gmail.com'),
								            ('Jorge','jorge@gmail.com'),
								            ('Lucas','lucas@gmail.com');
							
insert into terceirizado (nome,email) values('Lucas','lucas3@gmail.com')							
							
insert into empregado (nome,email) values('Jorge','jo@gmail.com');*/
							
/*select * from empregado
union all
select * from terceirizado

select nome from empregado
except
select nome from terceirizado order by nome asc;*/
