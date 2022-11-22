--Condicional IF_ELSE

--É possível realizar testes condicionais em declarações SQL usando-se a estrutura IF/ELSE

--Nos exemplos anteriores, apenas uma linha de código é executada após os comandos IF e ELSE;
--para executar blocos de código, use as palavras BEGIN e END:


--Exemplo 1:
DECLARE @numero INT,
		@texto VARCHAR(10)

SET @numero = 20
SET @texto = 'Ana'

IF @numero = 20
	SELECT 'Número Correto!'
IF @texto = 'Fábio'
	BEGIN
		SET @numero = 30
		SELECT @numero
	END;
ELSE
	BEGIN
		SET @numero = 40
		SELECT 'Número incorreto!'
	END;


--Exemplo 2:
DECLARE @NOME VARCHAR(30),
		@MEDIA REAL,
		@RESULTADO VARCHAR (10)
SELECT
	@NOME = nome_aluno,
	@MEDIA = (tblaulos.nota1 + tbl_alunos.nota2 + tbl_alunos.nota3 + tbl_alunos_nota4)
FROM tbl_alunos
WHERE nome_aluno = 'Fábio'
	IF @MEDIA >=7.00
	BEGIN
		SELECT @RESULTADO = 'Aprovado';
	END;
	ELSE
	BEGIN
		SELECT @RESULTADO = 'Reprovado';
	END;

	SELECT ' O aluno ' + @NOME + ' está ' + @RESULTADO + ' com média ' +
	CAST(@MEDIA AS VARCHAR);

