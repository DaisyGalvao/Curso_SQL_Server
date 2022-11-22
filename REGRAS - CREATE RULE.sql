--REGRAS - CREATE RULE

--As regras s�o configura��es que permitem especificar como determinados,
--par�metros do banco de dados devem se comportar, como por exemplo, limitar
--faixas de valores em colunas, ou especificar valores inv�lidos para registros.

--EX.:
--CREATE RULE nome_regra AS par�metro

USE db_Biblioteca

SELECT * FROM tbl_Livro

CREATE RULE rl_preco AS @VALOR > 10.00


--SP: STORED PROCEDURE = PROCEDIMENTO ARMAZENADO
--BINDRULE - VINCULAR A REGRA

EXECUTE sp_bindrule rl_preco, 'tbl_Livro.Preco_Livro'

SELECT * FROM tbl_Livro

UPDATE tbl_Livro
SET Preco_Livro = 50.00
WHERE ID_Livro = 105


UPDATE tbl_Livro
SET Preco_Livro = 9.90
WHERE ID_Livro = 101



UPDATE tbl_Livro
SET Preco_Livro = 10.90
WHERE ID_Livro = 101