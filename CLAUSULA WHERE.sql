--CLAUSULA WHERE

--Permite filtrar os registros em uma consulta

USE db_Biblioteca

--SELECT * FROM tbl_Livro WHERE ID_Autor = '1'


SELECT ID_Autor FROM tbl_autores
WHERE Sobrenome_Autor = 'Stanek'