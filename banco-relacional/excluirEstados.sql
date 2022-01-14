-- Para que você não exclua toda a tabela é necessário usar o flitro WHERE, senão toda a tabela será excluída
delete from estados where sigla = 'MN';

-- apaga as linhas a partir do id 1000
delete from estados where id>=1000;

