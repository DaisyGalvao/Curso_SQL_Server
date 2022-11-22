--Determinar coluna alterada e comando UPDATE

--A função UPDATE() retorna TRUE se uma coluna especifica for
--afetada por uma transação DML.

--Podemos criar um gatilho que executa um código caso a coluna
--especificada seja alterada por um comando DML usando essa função.

CREATE TRIGGER trigger_after_autores
ON tbl_autores
AFTER INSERT, UPDATE
AS
IF UPDATE(nome_autor)
	BEGIN
		PRINT 'O nome do autor foi alterado'
	END
ELSE
	BEGIN
		PRINT 'Nome não foi modificado'
	END


UPDATE tbl_autores
SET Nome_Autor = 'João'
WHERE ID_Autor = 10


UPDATE tbl_autores
SET Sobrenome_Autor = 'Guimarães'
WHERE ID_Autor = 10