--Funções com Valor de Tabela Embutida(Inline)

--São similares a uma exibição, porém permitem utilizar parâmetros.
--Retornam um conjunto completo de dados.

--Sintaxe básica:
--CREATE FUNCTION nome_função(parâmetros)
--RETURNS Table
--AS
--RETURN(Declaração Select)

CREATE FUNCTION retorna_itens (@valor REAL)
RETURNS Table
AS
RETURN (
SELECT L.Nome_Livro, A.Nome_Autor, E.Nome_Editora
FROM tbl_Livro AS L
INNER JOIN tbl_autores AS A
ON L.ID_Autor = A.ID_Autor
INNER JOIN tbl_editoras AS E
ON L.ID_editora = E.ID_Editora
WHERE L.Preco_Livro > @valor)


SELECT Nome_Livro, Nome_Autor
FROM retorna_itens(40.00) 
