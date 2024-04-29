-- create table usuario(id_usuario serial primary key,
-- 					 nome_usuario varchar(50),
-- 					 email varchar(100) unique not null);
					 
-- create table artista(id_artista serial primary key,
-- 					nome varchar(50));

-- create type genero_musical as enum
-- ('Rock', 'Samba', 'Trap', 'Pop', 'Funk', 'Sertanejo', 'MPB', 'Rap', 'Forró', 'Pagode');

-- create table genero(id_genero serial primary key,
-- 				   genero genero_musical);

-- create table musica(id_musica serial primary key,
-- 				    nome_musica varchar(50),
-- 				    id_artista int,
-- 				   		foreign key (id_artista) references artista(id_artista),
-- 				    id_genero int,
-- 				   		foreign key (id_genero) references genero(id_genero));

-- create table album(id_album serial primary key,
-- 				   nome_album varchar(50),
-- 				   id_musica int,
-- 				  	foreign key (id_musica) references musica(id_musica)
-- );

-- create table playlist(id_playlist serial primary key,
-- 					  id_usuario int,
-- 					 	foreign key (id_usuario) references usuario(id_usuario),
-- 					  nome_playlist varchar(50));

-- create table musica_playlist(id_musica_playlist serial primary key,
-- 					  		id_playlist int,
-- 								foreign key (id_playlist) references playlist(id_playlist),
-- 							id_musica int,
-- 								foreign key (id_musica) references musica(id_musica));

-- insert into artista(nome) values
-- ('Queen'),
-- ('Matuê'),
-- ('Billie Eilish'),
-- ('MC Cabelinho'),
-- ('Imagine Dragons'),
-- ('Fundo de Quintal'),
-- ('Maiara & Maraisa'),
-- ('Péricles'),
-- ('Sebastían Yatra'),
-- ('Racionais MC'); 

-- insert into usuario (nome_usuario, email) values
--     ('Alice', 'alice@gmail.com'),
--     ('LP', 'lpzin@gmail.com'),
--     ('Carol', 'carol@hotmail.com'),
--     ('David', 'david@yahoo.com'),
--     ('Eevee', 'eevee@gmail.com'),
--     ('Frank', 'frank@gmail.com'),
--     ('Grace', 'grace@hotmail.com'),
--     ('Henry', 'henry@gmail.com'),
--     ('Ivy', 'ivy@hotmail.com'),
--     ('Jack', 'jack@yahoo.com');

-- insert into genero(genero)
-- values
-- ('Rock'),
-- ('Samba'),
-- ('Trap'),
-- ('Pop'),
-- ('Pagode'),
-- ('Sertanejo'),
-- ('Forró'),
-- ('MPB'),
-- ('Funk'),
-- ('Rap');

-- insert into musica(nome_musica, id_artista, id_genero)
-- values
-- ('Eu Não Quero Mais', 6, 2),
-- ('Papo de Samba', 6, 2),
-- ('Machine', 5, 4),
-- ('Natural', 5, 4),
-- ('Devuélveme El Corazón', 9, 4),
-- ('No Hay Nadie Más', 9, 4),
-- ('Melhor Eu Ir', 8, 5),
-- ('Até Que Durou', 8, 5),
-- ('A Morte do Autotune', 2, 3),
-- ('Antes', 2, 3),
-- ('Jesus Chorou', 10, 10),
-- ('Capitulo 4, Versículo 3', 10, 10),
-- ('X1', 4, 3),
-- ('Fogo e Gasolina', 4, 3),
-- ('Bohemian Rhapsody', 1, 1),
-- ('Love Of My Life', 1, 1),
-- ('My Future', 3, 4),
-- ('NDA', 3, 4),
-- ('A Culpa É Nossa', 7, 6),
-- ('Narcisista', 7, 6);

-- insert into album(nome_album)
-- values
-- ('Identidade(Ao Vivo)'),
-- ('Maquina do Tempo'),
-- ('Nada Como Um Dia Após o Outro'),
-- ('Happier Than Ever'),
-- ('LITTLE LOVE'),
-- ('Ao Vivo Convida'),
-- ('Nos Arcos da Lapa'),
-- ('A Nigth At The Opera'),
-- ('Nigth Visions');

-- alter table musica add id_album int,
-- add foreign key (id_album) references album (id_album);
 
-- alter table album drop column id_musica

-- insert into playlist (id_usuario, nome_playlist)
-- values 
-- (2, 'LP'),
-- (6, null),
-- (7, 'Aleatoria');

-- insert into musica_playlist(id_playlist, id_musica)
-- values
-- (3,9),
-- (3,10),
-- (3,17),
-- (3,11),
-- (3,1),
-- (3,2),
-- (3,8),
-- (5,18),
-- (5,12),
-- (5,5),
-- (5,8);

-- select ar.nome, mu.nome_musica, al.nome_album from musica mu
-- inner join artista ar on ar.id_artista = mu.id_artista
-- inner join album al on al.id_album = mu.id_album

-- select count(nome) from artista  as ar; 

-- select g.genero, 
-- count(id_musica) as musicas_do_genero from musica mu
-- inner join genero g on g.id_genero = mu.id_genero
-- group by g.id_genero

-- select id_musica, nome_musica from musica where id_musica not in 
-- (select id_musica from musica_playlist )