--Alias

--Pode-se dar um nome diferente a uma coluna ou tabela em uma consulta

USE db_Biblioteca
SELECT Nome_Livro
AS Livro
FROM tbl_Livro


SELECT Nome_Livro
AS Livro, ID_Autor AS Autor
FROM tbl_Livro
