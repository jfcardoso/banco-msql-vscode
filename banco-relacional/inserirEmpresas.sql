 -- um dos problemas de declarar CNPJ, CPF, RG como INT é que aqui ele iria ignorar o zero à esquerda, e 
 -- ao considerá-los como números inteiros daria um erro por ser maior que um tipo INT suporta.

insert into empresas( nome, cnpj)
values
    ('Bradesco', 95694186000132),
    ('Vale', 27887148000146),   
    ('Cielo', 01598317000134);

-- modificando a declaração do CNPJ de INT para VARCHAR(14):
alter table empresas modify cnpj varchar(14);

-- atualizando o CNPJ da empresa Cielo porque na primeira conversão foi ignorado o zero à esquerda.
-- os números dos CNPjs estão foram das aspas porque eram inteiros anteriormente.
update empresas set cnpj =  '01598317000134' where nome = 'Cielo';

-- retorna a descrição dos campos da tabela:
desc empresas;

--inserindo as empresas e as cidades na tabela empresa_unidades (relação N:M):
insert into empresa_unidades(empresa_id, cidade_id, sede)
values
    (1,3,1),(2,4,1),(3,6,1);
    (1,4,0),(2,5,1),(3,4,0);


-- select * from empresa_unidades