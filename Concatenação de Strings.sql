--Concatena��o de Strings

--� poss�vel concatenar strings usando-se o perador de concatena��o +

--Sintaxe: 
-- string1 | coluna + string2 | coluna


--Exemplos:

SELECT 'F�bio' + 'da B�son Treinamentos' AS B�son

SELECT Nome_autor, Sobrenome_autor FROM tbl_autores

SELECT Nome_autor + ' ' + Sobrenome_autor AS 'Nome Completo' 
FROM tbl_autores


SELECT 'Eu gosto do livro ' + Nome_Livro AS 'Livros Favoritos'
FROM tbl_Livro
WHERE ID_Autor = 2


