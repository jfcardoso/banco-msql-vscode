-- select * from prefeitos

insert into prefeitos 
    (nome, cidade_id)
values
    ('Rodrigo Neves', 4),
    ('Raquel Lyra', 5), 
    ('Zenaldo Coutinho', null);
    
 -- inserindo mais um prefeito para verificar se é permitido ter dois prefeitos com cidade_id = null (pode)
insert into prefeitos 
    (nome, cidade_id)
values
    ('Rafael Greca', null)
        