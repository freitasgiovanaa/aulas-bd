/*create table imobiliaria(id_imobiliaria serial primary key,
                        nome varchar(50));
						
create type tipo_imovel_enum as enum ('casa', 'apto', 'loja', 'galpão');

create table imovel(id_imovel serial primary key,
                   descricao varchar(100),
                   tipo_imovel tipo_imovel_enum,
                   rua varchar(40),
                   bairro varchar(40),
                   alugado boolean,
                   id_imobiliaria int,
                   foreign key (id_imobiliaria) references imobiliaria(id_imobiliaria));

create table inquilino(id_inquilino serial primary key,
                      cpf char(11),
                      nome varchar(50));
					  
create table contrato(id_contrato serial primary key,
                     id_imovel int,
                         foreign key (id_imovel) references imovel(id_imovel),
                      id_inquilino int,
                          foreign key (id_inquilino) references inquilino(id_inquilino),
                      data_asssinatura date,
                      data_encerramento date,
                      valor_aluguel decimal,
                      duracao_meses int);
					  
create type meses_enum as enum('janeiro', 'fevereiro', 'março',
                              'abril','maio', 'junho', 'julho',
                              'agosto', 'setembro', 'outubro', 'novembro', 'dezembro');
							  
create table pagamento(id_contrato int,
                          foreign key (id_contrato) references contrato(id_contrato),
                      mes meses_enum,
                      ano numeric(4),
                      data_pagamento date,
                      valor_pago decimal,
                      primary key(id_contrato, mes, ano));
					  
insert into imobiliaria (nome) values
    ('Imobiliária Casa Nova'),
    ('Imobiliária Chave de Ouro'),
    ('Imobiliária Primeira Escolha'),
    ('Imobiliária Imperial'),
    ('Imobiliária Céu Azul');
	
insert into imovel (descricao, tipo_imovel, rua, bairro, alugado, id_imobiliaria) values
    ('Casa com 3 quartos e jardim', 'casa', 'Rua das Flores', 'Centro', FALSE, 1),
    ('Apartamento mobiliado', 'apto', 'Avenida Principal', 'Jardim Botânico', TRUE, 2),
    ('Casa próximo à praia', 'casa', 'Rua da Praia', 'Beira Mar', FALSE, 3),
    ('Loja comercial no centro da cidade', 'loja', 'Rua Comercial', 'Centro', TRUE, 4),
    ('Galpão industrial com área de 1000m²', 'galpão', 'Rua Industrial', 'Zona Industrial', FALSE, 2),
    ('Apartamento com vista para o mar', 'apto', 'Avenida Beira Mar', 'Beira Mar', FALSE, 1),
    ('Casa térrea com piscina', 'casa', 'Rua dos Girassóis', 'Jardim das Flores', TRUE, 2),
    ('Galpão em área residencial', 'galpão', 'Rua das Palmeiras', 'Vila Residencial', FALSE, 3),
    ('loja em edifício corporativo', 'loja', 'Avenida Empresarial', 'Centro Empresarial', TRUE, 4),
    ('Galpão industrial próximo à rodovia', 'galpão', 'Rodovia Industrial', 'Zona Industrial', FALSE, 1),
    ('Casa com quintal grande', 'casa', 'Rua das Violetas', 'Jardim das Flores', TRUE, 1),
    ('Apartamento no último andar', 'apto', 'Avenida dos Coqueiros', 'Parque das Árvores', FALSE, 2),
    ('Casa com vista panorâmica', 'casa', 'Rua do Mirante', 'Alto da Colina', TRUE, 3),
    ('Loja comercial em centro empresarial renomado', 'loja', 'Avenida Comercial', 'Centro Empresarial', FALSE, 4),
    ('Galpão industrial com acesso fácil à cidade', 'galpão', 'Estrada Industrial', 'Zona Industrial', TRUE, 3),
    ('Casa geminada em condomínio fechado', 'casa', 'Rua das Acácias', 'Condomínio das Flores', FALSE, 1),
    ('Apartamento com varanda gourmet', 'apto', 'Avenida das Palmeiras', 'Parque dos Pássaros', TRUE, 2),
    ('Loja com projeto aprovado para construção', 'loja', 'Rua do Engenho', 'Engenho Novo', FALSE, 3),
    ('Loja em prédio corporativo moderno', 'loja', 'Avenida da Inovação', 'Centro Empresarial', TRUE, 4),
    ('Galpão industrial com ampla área de estacionamento', 'galpão', 'Estrada da Indústria', 'Zona Industrial', FALSE, 4);
	
insert into inquilino (cpf, nome) values
    ('12345678901', 'João Silva'),
    ('23456789012', 'Maria Santos'),
    ('34567890123', 'Pedro Oliveira'),
    ('45678901234', 'Ana Souza'),
    ('56789012345', 'José Pereira'),
    ('67890123456', 'Amanda Costa'),
    ('78901234567', 'Lucas Ferreira'),
    ('89012345678', 'Carla Almeida'),
    ('90123456789', 'Gabriel Rodrigues'),
    ('01234567890', 'Laura Martins'),
    ('10234567891', 'Fernando Lima'),
    ('11234567892', 'Juliana Castro'),
    ('12234567893', 'Rafael Oliveira'),
    ('13234567894', 'Mariana Santos'),
    ('14234567895', 'Diego Pereira'),
    ('15234567896', 'Camila Silva'),
    ('16234567897', 'Luciana Costa'),
    ('17234567898', 'Guilherme Almeida'),
    ('18234567899', 'Patrícia Rodrigues'),
    ('19234567000', 'Daniel Martins'),
    ('20234567001', 'Natália Lima'),
    ('21234567002', 'Thiago Castro'),
    ('22234567003', 'Isabela Oliveira'),
    ('23234567004', 'Marcos Santos'),
    ('24234567005', 'Vanessa Pereira'),
    ('25234567006', 'Ricardo Silva'),
    ('26234567007', 'Jéssica Costa'),
    ('27234567008', 'Paulo Almeida'),
    ('28234567009', 'Bruna Rodrigues'),
    ('29234567010', 'Felipe Martins'),
    ('30234567011', 'Tatiane Lima'),
    ('31234567012', 'Alexandre Castro'),
    ('32234567013', 'Carolina Oliveira'),
    ('33234567014', 'Gustavo Santos'),
    ('34234567015', 'Renata Pereira'),
    ('35234567016', 'Thiago Silva'),
    ('36234567017', 'Natália Costa'),
    ('37234567018', 'Vinícius Almeida'),
    ('38234567019', 'Daniela Rodrigues'),
    ('39234567020', 'Rodrigo Martins'),
    ('40234567021', 'Fernanda Lima'),
    ('41234567022', 'Marcelo Castro'),
    ('42234567023', 'Luana Oliveira'),
    ('43234567024', 'Henrique Santos'),
    ('44234567025', 'Aline Pereira'),
    ('45234567026', 'Lucas Silva'),
    ('46234567027', 'Laura Costa'),
    ('47234567028', 'Pedro Almeida'),
    ('48234567029', 'Isabella Rodrigues'),
    ('49234567030', 'Matheus Martins');

insert into contrato (id_imovel, id_inquilino, data_assinatura, data_encerramento, valor_aluguel, duracao_meses) values
    (1, 1, '2023-01-15', '2024-01-15', 1500.00, 12),
    (2, 2, '2023-02-20', '2023-08-20', 2000.00, 6),
    (3, 3, '2023-03-10', '2023-09-10', 800.00, 6),
    (4, 4, '2023-04-05', '2024-04-05', 2500.00, 12),
    (5, 5, '2023-05-12', '2023-11-12', 1200.00, 6),
    (6, 6, '2023-06-20', '2024-06-20', 1800.00, 12),
    (7, 7, '2023-07-03', '2024-01-03', 900.00, 6),
    (8, 8, '2023-08-25', '2024-02-25', 3000.00, 6),
    (9, 9, '2023-09-14', '2024-03-14', 2000.00, 6),
    (10, 10, '2023-10-10', '2024-10-10', 1500.00, 12);

insert into  pagamento (id_contrato, mes, ano, data_pagamento, valor_pago) values
    (1, 'janeiro', 2023, '2023-01-05', 1500.00),
    (1, 'fevereiro', 2023, '2023-02-05', 1500.00),
    (1, 'março', 2023, '2023-03-05', 1500.00),
    (2, 'janeiro', 2023, '2023-01-10', 2000.00),
    (2, 'fevereiro', 2023, '2023-02-10', 2000.00),
    (2, 'março', 2023, '2023-03-10', 2000.00),
    (3, 'janeiro', 2023, '2023-01-15', 800.00),
    (3, 'fevereiro', 2023, '2023-02-15', 800.00),
    (3, 'março', 2023, '2023-03-15', 800.00),
    (4, 'janeiro', 2023, '2023-01-20', 2500.00);*/
	
/*select * from imovel where alugado = false	
	
select i.id_imobiliaria, i.nome
from imobiliaria i
left join imovel m on i.id_imobiliaria = m.id_imobiliaria
where m.id_imovel is null;
	
select i.tipo_imovel, count(i.tipo_imovel) as tipo_imovel from imovel i
where i.alugado = false
group by i.tipo_imovel;

select c.id_contrato, i.nome, i.cpf, p.data_pagamento, p.valor_pago from contrato c 
inner join inquilino i on  c.id_inquilino = i.id_inquilino
inner join pagamento p on c.id_contrato = p.id_contrato
where c.id_contrato = 3;

select sum(valor_pago) from pagamento where id_contrato = 3

select c.id_contrato, i.nome from contrato c
inner join inquilino i on c.id_inquilino = i.id_inquilino
where c.data_encerramento > now()

create role henrique password '123456' 

grant insert on imobiliaria to henrique */