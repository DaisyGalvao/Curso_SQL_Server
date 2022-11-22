--Comando SELECT INTO

--Utilizado para selecionar dados de uma ou mais tabelas
--e os insere em uma tabela diferente

--Pode ser usada para criar cópias de backup de tabelas

--EX:
--SELECT colunas
--INTO nova_tabela
--FROM tabela_atual


USE db_Biblioteca

SELECT ID_Livro,Nome_Livro,ISBN
INTO Livro_ISBN
FROM tbl_Livro
WHERE ID_Livro > 2


SELECT * FROM Livro_ISBN



SELECT *
INTO tbl_Livro_backup
FROM tbl_Livro



SELECT *
FROM tbl_Livro_backup

SELECT *
FROM tbl_Livro