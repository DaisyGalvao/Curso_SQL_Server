--VIEWS

--� uma exibi��o (Vis�o), � uma tabela virtual baseada no conjunto de resultados da conduta SQL.

--Cont�m linhas e colunas como uma tabela real, e pode receber comandos como declara��es JOIN, WHERE e fun��es como uma tabela normal.

--Mostra sempre resultafos de dados atualizado, pois o motor do banco de dados recria os dados toda vez que um usu�rio consulta a vis�o.


--Ex.:
--CREATE VIEW (Nome_Exibi��o)
--AS SELECT colunas
--FROM tabela
--WHERE condi��es


--VIEWS - Cria��o:
CREATE VIEW vw_LivrosAutores
AS SELECT tbl_Livro.Nome_Livro AS Livro,
tbl_autores.Nome_Autor AS Autor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor


SELECT Livro, Autor
FROM vw_LivrosAutores
WHERE Livro LIKE 'S%'

--ViEWS - Altera��o:
ALTER VIEW vw_LivrosAutores AS
SELECT tbl_Livro.Nome_Livro AS Livro,
tbl_autores.Nome_Autor AS Autor, Preco_Livro AS Valor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor

SELECT * FROM vw_LivrosAutores

--VIEW - Exclus�o:
DROP VIEW vw_LivrosAutores
