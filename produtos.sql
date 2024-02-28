/*create table produto(codigo_produto serial primary key, 
					 nome varchar (40) not null, 
				     descricao text, 
					 preco numeric check (preco > 0) not null, 
					 quant_estoque smallint default 0);
					 */
					 /*insert into produto(nome,descricao,preco)values('celular','samsung a34',1375.5);
					 insert into produto(nome,descricao,preco)values('tv','lg sn34',1800);
					 insert into produto(nome,descricao,preco)values('kindle','modelo mg134',300);*/
					 
                     /*select * from produto;
                     delete from produto where codigo_produto =3;*/
                     /*select * from produto;*/
					/* delete from produto where codigo_produto between 7 and 9;*/
					/*update produto set preco = 2000 where codigo_produto =2;
					 */
					 update produto set quant_estoque = 100 where codigo_produto =1;
					 select * from produto;
					 
					 