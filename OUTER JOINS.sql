--OUTER JOINS

--OUTER JOIN: Retorna linhas mesmo quando n�o houver informa��es que se complementam entre uma das tabelas.

--Existem 3 tipos de OUTER JOINS:

--LEFT JOIN: Retorna todas as linhas da tabela � esquerda, mesmo se n�o houver nenhuma correspond�ncia na tabela � direita

--RIGHT JOIN: Retorna todas as linhas � direita, mesmo se n�o houver nenhuma correspond�ncia na tabela � esquerda

--FULL JOIN: Retorna linhas quando houver uma correspond�ncia em qualquer uma das tabelas. � uma combina��o de LEFT e RIGHT JOINS.



--LEFT JOIN:

SELECT * FROM tbl_Livro
LEFT JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor


-- LEFT JOIN - Excluindo correspond�ncias

SELECT * FROM tbl_Livro
LEFT JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor
WHERE tbl_autores.ID_Autor IS NULL


--RIGHT JOIN

SELECT * FROM tbl_autores
RIGHT JOIN tbl_Livro
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor


--RIGHT JOIN - Excluindo correspond�ncias

SELECT * FROM tbl_autores
RIGHT JOIN tbl_Livro
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor
WHERE tbl_autores.ID_Autor IS NULL