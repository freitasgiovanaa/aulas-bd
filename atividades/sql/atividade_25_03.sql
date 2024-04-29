/*create table departamento(id_departamento serial primary key,
                         nome varchar(50),
                         id_vinculo int,
                          foreign key (id_vinculo) references departamento (id_departamento)
						  
);insert into departamento(nome, id_vinculo) values ('Diretoria', null);
insert into departamento(nome, id_vinculo) values ('Dep.Financeiro', 1);
insert into departamento(nome, id_vinculo) values ('Dep. Comercial', 1);
insert into departamento(nome, id_vinculo) values ('Contas a Pagar', 2);
insert into departamento(nome, id_vinculo) values ('Tesouraria', 2);
insert into departamento(nome, id_vinculo) values ('Pessoal', 2);
insert into departamento(nome, id_vinculo) values ('Compras', 3);
insert into departamento(nome, id_vinculo) values ('Vendas', 3);

select d1.nome, count(d2.id_vinculo) total from departamento d1
inner join departamento d2 on d1.id_departamento = d2.id_vinculo
group by d1.id_vinculo, d1.nome
order by total desc
limit 1;

create table cinema(id_cinema serial primary key,
                    nome_cinema varchar(50));

create table filme(id_filme serial primary key,
                   nome_filme varchar(50));

create table sessao(id_sessao serial primary key,
                   id_cinema int,
                       foreign key (id_cinema) references cinema(id_cinema),
                   id_filme int,
                    foreign key (id_filme) references filme(id_filme), data_sessao timestamp);
					
insert into cinema (nome_cinema) values
    ('Cinepolis RioMar Fortaleza'),
    ('Cinemark Shopping Eldorado'),
    ('Cine Show Pátio Petrópolis Shopping'),
    ('Cinepolis JK Iguatemi'),
    ('Cinemark Barra Shopping');
	
	insert into filme (nome_filme) values
    ('Duro de Matar'),
    ('Mad Max: Estrada da Fúria'),
    ('O Exterminador do Futuro 2: O Julgamento Final'),
    ('Matrix'),
    ('Missão: Impossível - Efeito Fallout'),
    ('John Wick'),
    ('Gladiador'),
    ('Kill Bill: Volume 1'),
    ('Os Vingadores'),
    ('Rambo: Programado para Matar');
	
	insert into sessao (id_cinema, id_filme, data_sessao) values
    (1, 1, '2024-03-24 10:45:00'),
    (2, 2, '2024-03-24 12:00:00'),
    (3, 3, '2024-03-25 14:45:00'),
    (4, 4, '2024-03-25 16:30:00'),
    (5, 5, '2024-03-25 18:00:00'),
    (3, 6, '2024-03-25 10:40:00'),
    (2, 7, '2024-03-26 12:00:00'),
    (3, 8, '2024-03-26 14:30:00'),
    (4, 9, '2024-03-26 16:00:00'),
    (5, 10, '2024-03-26 18:30:00');
	
select c.nome_cinema, f.nome_filme, s.data_sessao from sessao s
inner join cinema c on s.id_cinema = c.id_cinema
inner join filme f on s.id_filme = f.id_filme
where date(s.data_sessao) = '2024-03-24';

select count(id_sessao) from sessao where id_cinema = 3*/

