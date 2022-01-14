-- retornou somente cidades que tem um prefeito relacionado com elas.
SELECT * FROM cidades c inner join prefeitos p on c.id = p.cidade_id;

-- retornou todas as cidades e somente os prefeitos com ligação com elas.
SELECT * FROM cidades c left join prefeitos p on c.id = p.cidade_id;

-- retornou todos os prefeitos e apenas as cidades relacionadas com prefeitos.
SELECT * FROM cidades c left join prefeitos p on c.id = p.cidade_id;

-- o FULL JOIN não é suportado pelo MYSQL! Contornamos esse problema assim:
SELECT * FROM cidades c left join prefeitos p on c.id = p.cidade_id union
SELECT * FROM cidades c left join prefeitos p on c.id = p.cidade_id;
