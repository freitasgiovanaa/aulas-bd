/*create table setor(id_setor serial primary key,
				  nome varchar(50), data_criacao timestamp);
				  
begin;
 insert into setor(nome,data_criacao) values('ADMINISTRAÇÃO',current_timestamp),
  ('RH',current_timestamp),
  ('INFORMÁTICA',current_timestamp),
  ('DIRETORIA',current_timestamp);
  savepoint salvar_setor;
  rollback to savepoint salvar_setor;
  commit;*/
  
select * from setor
