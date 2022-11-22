--Stored Procedure - Parametros de sa�da e Return

CREATE PROCEDURE p_teste_valor_padr�o (
@param1 INT, @param2 VARCHAR(20) = 'Valor Padr�o!')
AS
SELECT 'Valor do par�metro 1: ' + CAST(@param1 AS VARCHAR)
SELECT 'Valor do par�metro 2: ' + @param2

EXEC p_teste_valor_padr�o @param1 = 40, 
@param2 = 'valor foi modificado'


--Par�metros de Sa�da:

--Os par�metros de sa�da habilitam um procedimento armazenado a retornar dados
--ao procedimentos chamador.

--Usamos a palavra-chave OUTPUT quando o procedimento � criado, e tamb�m quando � chamado.

--No procedimento armazenado, o par�metro de sa�da aparece como uma vari�vel local;
--no procedimento chamador, uma vari�vel deve ser criada para receber o par�metro de sa�da.


ALTER PROCEDURE teste (@par1 AS INT OUTPUT)
AS
SELECT @par1 * 2
RETURN


DECLARE @valor AS INT = 15
EXEC teste @valor OUTPUT
PRINT @valor


--Comando RETURN:

--O comando RETURN termina incondicionalmente o procedimento e retorna um
--valor inteiro ao chamador.
--Pode ser usado para retornar status de sucesso ou falha do procedimento.


--SET NOCOUNT ON - N�o aparece mensagem do que o ocorreu com a inser��o do c�digo, n�o � aconselh�vel usar

ALTER PROCEDURE p_LivroValor (
@Quantidade SMALLINT, @Cod SMALLINT = -10, @ID SMALLINT)
AS
SET NOCOUNT ON
IF @ID >= 100
	BEGIN
		SELECT Nome_Livro as Livro, 
		Preco_Livro * @Quantidade AS Pre�o
	FROM tbl_Livro
	WHERE ID_Livro = @ID
	RETURN 1
	END
ELSE
	RETURN @Cod


DECLARE @Codigo INT
EXEC @Codigo = p_LivroValor @ID = 102,
@Quantidade = 5
PRINT @Codigo