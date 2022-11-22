--LOOP WHILE

--O comando While � usado para executar c�digo enquanto uma condi��o for verdadeira.
--Ele executa apenas um comando, se for necess�rio executar um bloco de comandos, use BEGIN / END.

--Sintaxe:
--WHILE condi��o
--	BEGIN
--		Bloco de c�digos
--	END;

--Exemplo 1 - WHILE:

DECLARE @valor INT
SET @valor = 0

WHILE @valor < 10
	BEGIN
		PRINT 'N�mero: ' + CAST(@valor AS VARCHAR(2))
		SET @valor = @valor + 1
	END;	


--Exemplo 2: Imprimir Livro e Pre�o dos livros de IDs de 100 a 105

DECLARE @codigo INT
SET @codigo = 100

WHILE @codigo < 106
	BEGIN
		SELECT ID_Livro AS ID, Nome_livro AS Livro, Preco_Livro AS Pre�o
		FROM tbl_livro
		WHERE ID_Livro = @codigo
		SET @codigo = @codigo + 1
	END;
	
