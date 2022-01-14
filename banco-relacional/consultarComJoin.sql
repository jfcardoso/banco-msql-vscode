-- o uso de apelido(alias) é opcional (linha 6). Sempre tem que associar a PK com a FK (linha 7)
select
    c.nome as Cidade,
    e.nome as Estado,
    regiao as Região
from estados e, cidades c
where e.id = c.estado_id;
-- se não usar o flitro where o resultado será um produto cartesiano das duas tabela mescando os dados.
-- gerando um resultado que não corresponde com o esperado.

-- OUTRA FORMA DE FAZER A JUNÇÃO DE TABELAS:
select
    c.nome as Cidade,
    e.nome as Estado,
    regiao as Região
from estados e inner join cidades c on e.id = c.estado_id;