
-- para atualizar um campo de uma tabela não podemos esquecer de usar o filtro WHERE, senão substituiremos
-- todos os campos da tabela pelo novo atributo passado no UPDATE!
UPDATE estados set nome = 'Maranhão' WHERE sigla = 'MA';
UPDATE estados set nome = 'Paraná', populacao = 11.32 WHERE sigla = 'PR';




