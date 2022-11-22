--Aninhamento de TRIGGERS DML

--Um trigger , ao ser disparado, pode executar uma declaração DML
--que leva ao disparo de outro trigger.

--Para isso, a opção de servidor "Permitir que Gatilhos disparam
--outros gatilhos", em Propriedades do Servidor -> Avançado, deve
--estar configurada como True (é o padrão)

--Para desabilitar / habilitar a opção de aninhamento de triggers,
--use o comando:

--EXEC sp_configure 'Nested Triggers', 0|1;
--RECONFIGURE;


--TRIGGERS Recursivos

--Um gatilho recursivo é um tipo especial de trigger AFTER aninhado.

--O trigger recursivo ocorre quando um trigger executa uma declaração
--DML que o dispara novamente.

--Podemos habilitar ou desabilitar os triggers recursivos com o comando 
--ALTER DATABASE:

--Sintaxe:
--ALTER DATABASE nome_banco_dados
--SET RECURSIVE_TRIGGERS ON | OFF


CREATE TABLE tbl_trigger_recursivo (
Codigo INT PRIMARY KEY )

SELECT Codigo FROM tbl_trigger_recursivo

CREATE TRIGGER trigger_rec ON tbl_trigger_recursivo
AFTER INSERT
AS
DECLARE @cod INT
SELECT
@cod = MAX(codigo)
FROM tbl_trigger_recursivo
IF @cod < 10
	BEGIN
		INSERT INTO tbl_trigger_recursivo 
		SELECT MAX(codigo) + 1 FROM tbl_trigger_recursivo
	END
ELSE
	BEGIN
		PRINT 'Trigger Recursivo Finalizado'
	END


INSERT INTO tbl_trigger_recursivo VALUES(1)