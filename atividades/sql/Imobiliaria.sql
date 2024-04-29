/*create table imobiliaria (id_imobiliaria serial primary key,
						 nome varchar(30),
						 comissao decimal);
create table imovel (id_imovel serial primary key,
					descricao varchar(70),
					tipo varchar(30),
					valor decimal);
create table venda (id_venda serial primary key,
                   id_imobiliaria int,
                   foreign key (id_imobiliaria) references imobiliaria(id_imobiliaria),
                   comissao decimal,
                   id_imovel int,
                   foreign key (id_imovel) references imovel(id_imovel),
                   ITBI decimal,
                   Laudemio decimal);
	
insert into imobiliaria (nome) VALUES
                        ('Casa do Lar'),
                        ('Golden Realty'),
                        ('Prime Imóveis'),
                        ('Elite Propriedades'),
                        ('Sunset Real Estate');
						
insert into imovel (descricao, tipo, valor) VALUES
                   ('Casa térrea com 3 quartos e jardim', 'Casa', 250000.00),
                   ('Apartamento de luxo com vista para o mar', 'Apartamento', 500000.00),
                   ('Terreno residencial em condomínio fechado', 'Terreno', 150000.00),
                   ('Cobertura espaçosa com terraço', 'Apartamento', 700000.00),
                   ('Sítio com casa sede e área de lazer', 'Casa', 400000.00);
				   
insert into venda (id_imobiliaria, comissao, id_imovel, ITBI, Laudemio)
select imo.id_imobiliaria, i.valor * 5/100, 
i.id_imovel, i.valor * 2/100, i.valor  * 2.5/100
from imovel i, imobiliaria imo 
where i.id_imovel = 1 and imo.id_imobiliaria = 1

insert into venda (id_imobiliaria, comissao, id_imovel, ITBI, Laudemio)
select imo.id_imobiliaria, i.valor * 6/100, 
i.id_imovel, i.valor * 2/100, i.valor  * 2.5/100
from imovel i, imobiliaria imo 
where i.id_imovel = 2 and imo.id_imobiliaria = 2

insert into venda (id_imobiliaria, comissao, id_imovel, ITBI, Laudemio)
select imo.id_imobiliaria, i.valor * 7/100, 
i.id_imovel, i.valor * 2/100, i.valor  * 2.5/100
from imovel i, imobiliaria imo 
where i.id_imovel = 3 and imo.id_imobiliaria = 3

insert into venda (id_imobiliaria, comissao, id_imovel, ITBI, Laudemio)
select imo.id_imobiliaria, i.valor * 8/100, 
i.id_imovel, i.valor * 2/100, i.valor  * 2.5/100
from imovel i, imobiliaria imo 
where i.id_imovel = 4 and imo.id_imobiliaria = 4

insert into venda (id_imobiliaria, comissao, id_imovel, ITBI, Laudemio)
select imo.id_imobiliaria, i.valor * 9/100, 
i.id_imovel, i.valor * 2/100, i.valor  * 2.5/100
from imovel i, imobiliaria imo 
where i.id_imovel = 5 and imo.id_imobiliaria = 5*/

select * from venda
