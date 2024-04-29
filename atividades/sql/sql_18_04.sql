/*create table categoria(id_categoria serial primary key,
					  descricao varchar(50));
					  
create table if not exists produto(id_produto serial primary key,
nome varchar(60), preco numeric, id_categoria int, 
foreign key (id_categoria) references categoria (id_categoria));

insert into categoria(descricao)values('Eletrônicos'),
('Vestuário'),('Farmácia'),('Eletrodomésticos');

insert into produto(nome,preco,id_categoria) 
values ('Celular',2500,1),
       ('TV',2300,1),
	   ('Calça Jeans',150,2),
	   ('Camisa',29.4,2),
	   ('Vestido',190,2),
	   ('Geladeira',2200,4),
	   ('Fogão',910,4);
	   
select round (avg(preco),2) from produto;

select c.descricao, round (avg(preco),2) media_cat from produto p
inner join categoria c on c.id_categoria = p.id_categoria 
group by c.descricao

select 
    p.nome, c.descricao,
    round (avg(p.preco) over (partition by c.descricao),2) as media_preco
	from categoria c
inner join produto p on c.id_categoria = p.id_categoria

select
     p.nome,
	 p.preco, rank() over(order by preco desc)
from produto p

select
    p.nome, p.preco, c.descricao,
    dense_rank() over (partition by c.descricao 
				 order by preco desc) preco_ranking 
from produto p
inner join categoria c on c.id_categoria = p.id_categoria;

insert into produto(nome, preco, id_categoria) values ('Projetor',2500,1);

create temp table usuario(id serial primary key,
						 nome varchar (60));
						 
insert into usuario(nome) values ('Maria'),('Ana');

select * from usuario;

begin work;
create temp table temp_setor (id serial primary key,
						nome varchar(30) not null); 
insert into temp_setor (nome) values ('teste');
select * from temp_setor;
end;*/

select * from temp_setor; 