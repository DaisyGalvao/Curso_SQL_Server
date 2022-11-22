--Operador UNION

--Permite combinar duas ou mais declarações SELEC
--Ou seja, pode juntar o resultado com o SELECT em outra tabela

--Deve conter o mesmo numero de colunas, mesmo tipo de dados e ordem e muito importante

--Exemplo:
--SELECT colunas FROM tabela1
--UNION
--SELECT colunas FROM tabela2

USE db_Biblioteca
SELECT ID_Autor FROM tbl_autores
UNION
SELECT ID_Autor FROM tbl_Livro

SELECT ID_Autor FROM tbl_autores
UNION ALL
SELECT ID_Autor FROM tbl_Livro

--Modificador ALL - aparece os ID das duas tabelas juntos, sem filtro

SELECT Nome_Autor FROM tbl_autores
UNION
SELECT Nome_Livro FROM tbl_Livro

