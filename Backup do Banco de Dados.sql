--Backup do Banco de Dados

USE Test
GO

BACKUP DATABASE test
TO DISK = 'C:\Curso_SQL\test.bak';
GO


--Para restaurar o BD:

--Clicar com Botão direito em cima de BD - Restaurar BD - Clicar em Dispositivo e botão com ... pontos-
--Arquivo - Adicionar -  E buscar onde foi feito o Backup - Clicar no arquivo e OK


SELECT * FROM Produtos
