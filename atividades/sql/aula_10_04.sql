/*select now() as data_hora;
select current_date;
select now()::date;

create table documentos(id_documento serial primary key,
					   texto varchar(255) not null,
					   data_postagem date not null
					   default current_date);
					   
insert into documentos(texto) values('emissao de nota fiscal'),
                                    ('encaminhado para envio');
									
select texto, to_char(data_postagem,'dd month, yyyy') from documentos;

create table aluno(id_aluno serial primary key, nome varchar(60),
				  email varchar(70) unique, data_nascimento date);
				  
insert into aluno (nome, email, data_nascimento)
values('José','j@gmail.com','2000-01-09'),
      ('Maria','m@gmail.com','1988-02-28'),
	  ('Carlos','c@gmail.com','1947-03-10');
	  
select nome, (now()-data_nascimento) as idade from aluno

select nome, age(data_nascimento) as idade from aluno

select nome, extract(day from data_nascimento) as day,
extract(month from data_nascimento) as month,
extract(year from data_nascimento) as year
from aluno;

create table pedidos (id_produto serial primary key,
					 nome_produto varchar(100),
					 quantidade int,
					 valor decimal,
					 data_compra date);
					 
insert into pedidos (nome_produto,quantidade,valor,data_compra)
values ('Esmalte Risque',35,12.90,'2023-03-09'),
       ('Camisa Flamengo',70,300,'2024-04-05'),
	   ('Massa de Tomate Pomarola',67,8.99,'2024-03-07'),
	   ('Macarrão Instantâneo Nissin',88,5.30,'2023-12-31'),
	   ('Refrigerante Coca-Cola 600ml',100,6.80,'2024-03-30');
	   
select nome_produto,to_char(now() - data_compra, 'dd') as diferenca_dia 
from pedidos

select nome_produto,to_char(data_compra, 'day') as diferenca_dia 
from pedidos

select 
	extract(month from data_compra) as mes,
	count(quantidade)
	from pedidos
group by mes
order by mes

select localtime(0);

select localtime at time zone 'UTC-4';

select time '10:00' -time '02:00' as Resultado;
select localtime + interval '2 hours' as resultado;

create table exemplosts(datats timestamp, datatstz timestamptz);

set timezone = 'America/Sao_Paulo';

show timezone;

insert into exemplosts (datats,datatstz) values 
('2024-04-10 10:00:00','2024-04-10 10:00:00')

select * from exemplosts;

set timezone = 'America/Sao_Paulo';

show timezone;

select * from exemplosts;

select version();

select ceil(4.95) as arredondamento_pra_cima;

select random() as numero_aleatorio;

select floor(random()* 1000) as numero_aleatorio;

select sqrt(9) as reposta;

select least(10,30,0,90,8) as resultado;

select greatest(10,30,0,90,8) as maior;

select mod

create table avaliacao(id_avaliacao serial primary key,
					  nome varchar(50),
					  peso numeric,
					  altura numeric);
					  
insert into avaliacao(nome,peso,altura) 
values ('Giovana',60,1.74),
       ('Guilherme',77,1.80),
	   ('Marcia',87,1.97),
	   ('Luiz',44,1.76),
	   ('Pedro',60,1.78);
	 
select nome, round(peso/(altura*altura),2) as imc from avaliacao

select nome, 
case 
	when round(peso/(altura*altura), 2) < 18.5 then 'magreza'
	when round(peso/(altura*altura), 2) >= 18.5 and round(peso/(altura*altura), 2) <= 24.9 then 'normal'
	when round(peso/(altura*altura), 2) >= 25 and round(peso/(altura*altura), 2) <= 29.9 then 'sobrepeso'
	when round(peso/(altura*altura), 2) >= 30 and round(peso/(altura*altura), 2) <= 39.9 then 'obesidade'
	else 'obesidade grave'
end as imc
from avaliacao;*/