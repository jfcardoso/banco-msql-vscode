create table if not exists empresas (
    id int unsigned not null auto_increment,
    nome varchar(200) not null,
    cnpj int not null,
    primary key (id),
    unique key (cnpj)    
);

-- criando a tabela empresa_cidades que servirá de conexão para a relação n:m

create table if not exists empresa_unidades(
    empresa_id int unsigned not null,
    cidade_id int unsigned not null,
    sede tinyint(1) not null, -- valor booleano 1=true
    primary key (empresa_id, cidade_id)
);

--desc empresa_unidades