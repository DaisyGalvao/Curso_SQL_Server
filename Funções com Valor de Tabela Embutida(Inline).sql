--Fun��es com Valor de Tabela Embutida(Inline)

--S�o similares a uma exibi��o, por�m permitem utilizar par�metros.
--Retornam um conjunto completo de dados.

--Sintaxe b�sica:
--CREATE FUNCTION nome_fun��o(par�metros)
--RETURNS Table
--AS
--RETURN(Declara��o Select)

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
