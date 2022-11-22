--Stored Procedure - Parametros de saída e Return

CREATE PROCEDURE p_teste_valor_padrão (
@param1 INT, @param2 VARCHAR(20) = 'Valor Padrão!')
AS
SELECT 'Valor do parâmetro 1: ' + CAST(@param1 AS VARCHAR)
SELECT 'Valor do parâmetro 2: ' + @param2

EXEC p_teste_valor_padrão @param1 = 40, 
@param2 = 'valor foi modificado'


--Parâmetros de Saída:

--Os parâmetros de saída habilitam um procedimento armazenado a retornar dados
--ao procedimentos chamador.

--Usamos a palavra-chave OUTPUT quando o procedimento é criado, e também quando é chamado.

--No procedimento armazenado, o parâmetro de saída aparece como uma variável local;
--no procedimento chamador, uma variável deve ser criada para receber o parâmetro de saída.


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


--SET NOCOUNT ON - Não aparece mensagem do que o ocorreu com a inserção do código, não é aconselhável usar

ALTER PROCEDURE p_LivroValor (
@Quantidade SMALLINT, @Cod SMALLINT = -10, @ID SMALLINT)
AS
SET NOCOUNT ON
IF @ID >= 100
	BEGIN
		SELECT Nome_Livro as Livro, 
		Preco_Livro * @Quantidade AS Preço
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