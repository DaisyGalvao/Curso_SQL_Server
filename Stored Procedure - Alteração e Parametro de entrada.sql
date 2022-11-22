--Stored Procedure - Alteração e Parametro de entrada

--Sintaxe:
--ALTER PROCEDURE nome_procedimento
--bloco de código da sp

--Parâmetros de Entrada:

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
SELECT Nome_Livro as Livro, Preco_Livro as Preço
FROM tbl_Livro
WHERE ID_Livro = @ID

EXEC p_LivroValor 104


--Multiplos parâmetros de entrada:

ALTER PROCEDURE teste
((@par1 AS int, @part2 AS varchar(20))
AS
SELECT @par1
SELECT @par2

--Por posição:
EXEC teste 26, 'Laranja'

--Por nome dos parâmetros:
EXEC teste @par2 = 'Abacate' , @par1 = 30


