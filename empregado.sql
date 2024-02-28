/* ddl - (definition data language)

create table empregado(codigo_empregado int primary key, nome varchar (60) not null, cpf CHAR(11), EMAIL VARCHAR (50) UNIQUE );

alter table empregado add telefone char (10);
alter table empregado drop telefone char (11);

alter table empregado alter column telefone type char (11);

dml (data manipulation language)

insert into empregado (codigo_empregado,nome,cpf,email,telefone) values
(1,'giovana','12345678910','giovana@gmail.com','24988653423');

dql (data query language)
*/
select * from empregado;