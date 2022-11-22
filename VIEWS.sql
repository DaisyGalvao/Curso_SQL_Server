--VIEWS

--É uma exibição (Visão), é uma tabela virtual baseada no conjunto de resultados da conduta SQL.

--Contém linhas e colunas como uma tabela real, e pode receber comandos como declarações JOIN, WHERE e funções como uma tabela normal.

--Mostra sempre resultafos de dados atualizado, pois o motor do banco de dados recria os dados toda vez que um usuário consulta a visão.


--Ex.:
--CREATE VIEW (Nome_Exibição)
--AS SELECT colunas
--FROM tabela
--WHERE condições


--VIEWS - Criação:
CREATE VIEW vw_LivrosAutores
AS SELECT tbl_Livro.Nome_Livro AS Livro,
tbl_autores.Nome_Autor AS Autor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor


SELECT Livro, Autor
FROM vw_LivrosAutores
WHERE Livro LIKE 'S%'

--ViEWS - Alteração:
ALTER VIEW vw_LivrosAutores AS
SELECT tbl_Livro.Nome_Livro AS Livro,
tbl_autores.Nome_Autor AS Autor, Preco_Livro AS Valor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor

SELECT * FROM vw_LivrosAutores

--VIEW - Exclusão:
DROP VIEW vw_LivrosAutores
