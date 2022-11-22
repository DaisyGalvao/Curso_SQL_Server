--JOINS - TIPOS

--Palavra-chave JOIN é usada para obter dados de duas ou mais tabelas, baseado em um relecionamento entre colunas nestas tabelas

--INNER JOIN: Retorna linhas quando houver pelo menos uma informação que na tabela for encontrada também na outra tabela.

--OUTER JOIN: Retorna linhas mesmo quando não houver informações que se complementam entre uma das tabelas.


SELECT * FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor


--Para especificar como deseja filtrar - incluir o nome da tabela (virgula) e o nome da coluna

SELECT tbl_Livro.Nome_Livro, tbl_Livro.ISBN, tbl_autores.Nome_Autor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor


--Usando Aliases:
SELECT L.Nome_Livro, E.Nome_editora
FROM tbl_Livro AS L
INNER JOIN tbl_editoras AS E
ON L.ID_editora = E.ID_Editora