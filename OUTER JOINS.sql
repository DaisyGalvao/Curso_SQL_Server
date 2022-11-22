--OUTER JOINS

--OUTER JOIN: Retorna linhas mesmo quando não houver informações que se complementam entre uma das tabelas.

--Existem 3 tipos de OUTER JOINS:

--LEFT JOIN: Retorna todas as linhas da tabela á esquerda, mesmo se não houver nenhuma correspondência na tabela á direita

--RIGHT JOIN: Retorna todas as linhas á direita, mesmo se não houver nenhuma correspondência na tabela á esquerda

--FULL JOIN: Retorna linhas quando houver uma correspondência em qualquer uma das tabelas. É uma combinação de LEFT e RIGHT JOINS.



--LEFT JOIN:

SELECT * FROM tbl_Livro
LEFT JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor


-- LEFT JOIN - Excluindo correspondências

SELECT * FROM tbl_Livro
LEFT JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor
WHERE tbl_autores.ID_Autor IS NULL


--RIGHT JOIN

SELECT * FROM tbl_autores
RIGHT JOIN tbl_Livro
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor


--RIGHT JOIN - Excluindo correspondências

SELECT * FROM tbl_autores
RIGHT JOIN tbl_Livro
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor
WHERE tbl_autores.ID_Autor IS NULL