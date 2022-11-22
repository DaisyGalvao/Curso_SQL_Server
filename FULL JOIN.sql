--FULL JOIN

-- Combinação de RIGHT JOIN com LEFT JOIN, retornando registros que não possuam correspondências em ambas as tabelas

USE db_Biblioteca

SELECT Li.Nome_Livro, Li.ID_Autor, Au.Nome_Autor
FROM tbl_Livro AS Li
FULL JOIN tbl_autores AS Au
ON Li.ID_Autor = Au.ID_Autor


--FULL JOIN - Excluindo correspondencias

SELECT Li.Nome_Livro, Li.ID_Autor, Au.Nome_Autor
FROM tbl_Livro AS Li
FULL JOIN tbl_autores AS Au
ON Li.ID_Autor = Au.ID_Autor
WHERE Li.ID_Autor IS NULL
OR Au.ID_Autor IS NULL