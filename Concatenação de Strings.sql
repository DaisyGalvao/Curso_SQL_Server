--Concatenação de Strings

--É possível concatenar strings usando-se o perador de concatenação +

--Sintaxe: 
-- string1 | coluna + string2 | coluna


--Exemplos:

SELECT 'Fábio' + 'da Bóson Treinamentos' AS Bóson

SELECT Nome_autor, Sobrenome_autor FROM tbl_autores

SELECT Nome_autor + ' ' + Sobrenome_autor AS 'Nome Completo' 
FROM tbl_autores


SELECT 'Eu gosto do livro ' + Nome_Livro AS 'Livros Favoritos'
FROM tbl_Livro
WHERE ID_Autor = 2


