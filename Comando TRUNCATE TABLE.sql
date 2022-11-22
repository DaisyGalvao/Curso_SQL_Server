--Comando TRUNCATE TABLE

--Remove todas as linhas de uma tabela sem registrar as exclusões de linhas individuais

--Exemplo:

--TRUNCATE TABLE nome_da_tabela

--Para saber se realmente foi excluido os registros da tabela

--Fazer SELECT COUNT(*) AS Tabela_Antes FROM nom_da_tabela

--Após exclusão para conferir

USE Test

SELECT * FROM tbl_Livro

SELECT COUNT(*) FROM tbl_Livro

TRUNCATE TABLE tbl_Livro

SELECT * FROM tbl_Livro

SELECT COUNT(*) FROM tbl_Livro


