--Operadores IN e NOT IN- Filtro de M�ltiplas Condi��es

--Determina se um um valor espec�fico corresponde a qualquer valor em uma subconsulta ou lista

--Retorna sempre TRUE ou FALSE

--Pode substituir o OR em queries(consulta) com mais de uma condi��o


--Sintaxe:
--Express�o_teste(NOT)IN (subconsulta | lista)

USE db_Biblioteca

SELECT * FROM tbl_Livro
WHERE ID_Autor NOT IN (1, 2)
