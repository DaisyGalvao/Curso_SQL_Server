--Stored Procedure - Altera��o e Parametro de entrada

--Sintaxe:
--ALTER PROCEDURE nome_procedimento
--bloco de c�digo da sp

--Par�metros de Entrada:

ALTER PROCEDURE teste
(@par1	AS INT)
AS
SELECT @par1

EXEC teste 25

--Comentar codigo todo, selecionar tudo e:
--CTRL+K+C
--CTRL+K+U - tirar comentario


ALTER PROCEDURE p_LivroValor
(@ID SMALLINT)
AS
SELECT Nome_Livro as Livro, Preco_Livro as Pre�o
FROM tbl_Livro
WHERE ID_Livro = @ID

EXEC p_LivroValor 104


--Multiplos par�metros de entrada:

ALTER PROCEDURE teste
((@par1 AS int, @part2 AS varchar(20))
AS
SELECT @par1
SELECT @par2

--Por posi��o:
EXEC teste 26, 'Laranja'

--Por nome dos par�metros:
EXEC teste @par2 = 'Abacate' , @par1 = 30


