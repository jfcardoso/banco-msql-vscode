-- fazendo uma consulta que retorna todos os campos da tabela 'estados'
SELECT * from estados;

-- fazendo uma consulta retornando somente as colunas nome e sigla, nesta ordem:
-- usando um label para mudar o nome das colunas na exibição das tabelas
SELECT nome as 'Estado', sigla as 'UF' from estados;

-- fazendo uma consulta usando como filtro a palavra reservada WHERE:
select nome, sigla from estados WHERE regiao = 'Sul';

-- retorna os estados com população acima dos 10 milhões na ordem crescente.
select nome, populacao, regiao from estados WHERE populacao >=10 order by populacao;

-- retorna os estados com população acima dos 10 milhões na ordem decrescente.
select nome, populacao, regiao from estados WHERE populacao >=10 order by populacao desc;

