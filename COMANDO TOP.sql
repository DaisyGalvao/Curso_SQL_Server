--COMANDO TOP

--Usado para especificar um numero de registro a retornar - pela posição numerica ou percentual
--Útil para tabelas com muitos registros


USE db_Biblioteca
SELECT TOP 3 Nome_Livro
FROM tbl_Livro

SELECT TOP 2 percent Nome_Livro
FROM tbl_Livro