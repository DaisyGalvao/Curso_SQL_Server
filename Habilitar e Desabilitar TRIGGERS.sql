--Habilitar e Desabilitar TRIGGERS

--O administrador do Sistema pode desabilitar temporariamente um trigger se
--se houver necessidade.
--Para isso, use o comando DDL ALTER TABLE:

--Sintaxe:
--ALTER TABLE nome_tabela
--ENABLE|DISABLE TRIGGER nome_trigger


--Ex1 - Desabilitar TRIGGER:
ALTER TABLE tbl_editoras
ENABLE TRIGGER trigger_after


--Verificar a existência de triggers:
EXEC sp_helptrigger @tabname=tbl_editoras


--Verificar a existência de triggers no banco todo:
USE db_Biblioteca
SELECT *
FROM sys.triggers
WHERE is_disabled = 1 OR is_disabled = 0
