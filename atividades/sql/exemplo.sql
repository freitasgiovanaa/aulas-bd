/*create table conta(numero int primary key,
				  titular varchar(30),saldo numeric,
				  agencia int, tipo char(1));
				  
create table conta_total (tipo char(1), quantidade int);

insert into conta_total(tipo, quantidade)values('F',0);
insert into conta_total(tipo, quantidade)values('J',0);

create or replace function incrementar()
returns trigger as $$ 
begin
    if new.tipo='F' then 
    update conta_total set quantidade= quantidade + 1 where tipo='F';
	else update conta_total set quantidade= quantidade + 1 where tipo='J';
	end if;
	return null;
end;
$$ language plpgsql;

create trigger trigger_incrementar 
after insert 
on conta
for each row execute procedure incrementar();

insert into conta (numero,titular,saldo,agencia,tipo)
values(1235,'Ana da Silva',2000,456,'F'),
      (1238,'XPTO LTDA',3200,789,'J'),
	  (1236,'Ana da Silva',2000,344,'F');*/
	  
