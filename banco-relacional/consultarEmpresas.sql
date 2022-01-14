select e.nome as Empresa, c.nome as Cidade
from empresas e, empresa_unidades eu, cidades c
where e.id = eu.empresa_id and c.id = eu.cidade_id and sede = 1 -- retorna somente as empresas matrizes. 