-- inserindo cidades passando diretamente a chave estangeira (neste caso o estado_id)
insert into
    cidades (nome, area, estado_id)
values
    ('Campinas', 795, 28),
    ('Niterói', 133.9, 22);

-- inserindo novas cidades desta vez usando um select para buscar o estado_id associado à cidade cadastrada:
insert into
    cidades(nome, area, estado_id)
values
    ('Caruaru', 920.5, (select id from estados where sigla = 'PE')),
    ('Juazeiro do Norte', 248.2, (select id from estados where sigla = 'CE'));    

-- select * from cidades
