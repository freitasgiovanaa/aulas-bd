/*CREATE TABLE cliente (codigo_cliente int AUTO_INCREMENT PRIMARY KEY,nome varchar(30) NOT NULL, telefone varchar(11), email varchar(30) NOT NULL UNIQUE,
					  cpf varchar(11), cnpj varchar(14), razao_social varchar(40),
					  tipo_cliente char);*/
/*insert INTO cliente (codigo_cliente,nome, telefone, email, cpf, cnpj, razao_social,tipo_cliente)
					  VALUES(1,'Ana','2422452232','ana@gmail.com','72345678901',null,null,'F');

INSERT INTO cliente (codigo_cliente,nome, telefone, email, cpf, cnpj, razao_social,tipo_cliente)
					  VALUES(2,'Pão de Açúcar','2122352232','extra@gmail.com',null,'12345678901234','Extra LTDA','J');

INSERT INTO cliente (codigo_cliente,nome, telefone, email, cpf, cnpj, razao_social,tipo_cliente)
					  VALUES(3,'Joana','2422482232','joana@yahoo.com.br','42345678901',null,null,'F');


INSERT INTO cliente (codigo_cliente,nome, telefone, email, cpf, cnpj, razao_social,tipo_cliente)
					  VALUES(4,'Joaquim','2422473232','joaquim@yahoo.com.br','72345678901',null,null,'F');

INSERT INTO cliente (codigo_cliente,nome, telefone, email, cpf, cnpj, razao_social,tipo_cliente)
					  VALUES(5,'Gilberto','2422492232','gilberto@hotmail.com','22345678901',null,null,'F');

INSERT INTO cliente (codigo_cliente,nome, telefone, email, cpf, cnpj, razao_social,tipo_cliente)
					  VALUES(6,'Loja da Esquina','3122352232','loja@gmail.com',null,'22345678901237','XPTO Comercio LTDA','J');*/

/*create table editora (codigo_editora int AUTO_INCREMENT primary key,
                      nome varchar(30));
INSERT INTO  editora (nome) VALUES('Vozes'),
				  ('Ciência Moderna'),
				  ('Campus'),	
				  ('Saraiva');*/

/*CREATE TABLE livro (isbn varchar(10) PRIMARY KEY, autor varchar(30), quantidade_estoque INT,
 preco decimal not NULL, codigo_editora int,
FOREIGN KEY(codigo_editora) REFERENCES editora(codigo_editora));*/

/*INSERT INTO livro (isbn,autor,quantidade_estoque,preco,codigo_editora) VALUES('32222','Rui Barbosa',10,45.5,1);
INSERT INTO livro (isbn,autor,quantidade_estoque,preco,codigo_editora) VALUES('12345','José de Vasconcelos',10,29.3,2);
INSERT INTO livro (isbn,autor,quantidade_estoque,preco,codigo_editora) VALUES('31111','Laercio',10,90.5,3);
INSERT INTO livro (isbn,autor,quantidade_estoque,preco,codigo_editora) VALUES('34451','Ana Rita',10,88.25,2);
INSERT INTO livro (isbn,autor,quantidade_estoque,preco,codigo_editora) VALUES('22232','Rui dos Santos',10,49.5,1);
INSERT INTO livro (isbn,autor,quantidade_estoque,preco,codigo_editora) VALUES('12332','Alberto da Silva',10,55.60,3);*/

/*create table compra(numero_nota int primary key, data_compra date,
                    codigo_cliente int,FOREIGN key(codigo_cliente)
                    references cliente(codigo_cliente));*/
                    
/*INSERT INTO compra (numero_nota,data_compra,codigo_cliente) VALUES(12,'2024-02-04',1);
INSERT INTO compra (numero_nota,data_compra,codigo_cliente) VALUES(13,'2024-01-02',2);
INSERT INTO compra (numero_nota,data_compra,codigo_cliente) VALUES(122,'2024-01-04',1);
INSERT INTO compra (numero_nota,data_compra,codigo_cliente) VALUES(121,'2024-01-05',3);*/

/*create table carrinho (numero_nota int, isbn varchar(10), quantidade int, valor_compra decimal,
                       desconto decimal, 
                       primary key (numero_nota, isbn), 
                       FOREIGN key (numero_nota) references compra(numero_nota),
                       FOREIGN key (isbn) references livro(isbn));*/
                       
/*INSERT INTO carrinho(numero_nota,isbn,quantidade,valor_compra,desconto) VALUES(12,'12345',10,29.3,0);
INSERT INTO carrinho(numero_nota,isbn,quantidade,valor_compra,desconto) VALUES(12,'31111',2,90.5,0);
INSERT INTO carrinho(numero_nota,isbn,quantidade,valor_compra,desconto) VALUES(121,'12345',3,29.3,0);
INSERT INTO carrinho(numero_nota,isbn,quantidade,valor_compra,desconto) VALUES(121,'32222',4,45.5,0);*/

select * from livro