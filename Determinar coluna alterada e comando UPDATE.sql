--Determinar coluna alterada e comando UPDATE

--A fun��o UPDATE() retorna TRUE se uma coluna especifica for
--afetada por uma transa��o DML.

--Podemos criar um gatilho que executa um c�digo caso a coluna
--especificada seja alterada por um comando DML usando essa fun��o.

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
		PRINT 'Nome n�o foi modificado'
	END


UPDATE tbl_autores
SET Nome_Autor = 'Jo�o'
WHERE ID_Autor = 10


UPDATE tbl_autores
SET Sobrenome_Autor = 'Guimar�es'
WHERE ID_Autor = 10