--Stored Procedures 

--Defini��o:
--S�o lotes (batches) de declara��es SQL que podem ser executadas como uma subrotina.
--Permitem centralizar a l�gica de acesso ao dados em um �nico local,
--facilitando a manuten��o e otimiza��o de c�digo.
--Tamb�m � poss�vel ajustar permiss�es de acesso aos usu�rios, definindo
--quem pode ou n�o execut�-las.

--Sintaxe:
--CREATE PROCEDURE nome_procedimento
--	(@Par�metro Tipo_dados)
--AS
--	Bloco de c�digos


--Para executar:
--EXEC(UTE)teste
--OBS.: Se o procedimento armazenado for o primeiro comando de um
--batch, n�o � necess�rio usar a palavra EXEC, mas � aconselhavel 
--usar sempre para n�o se perder

--Exemplo 1:
CREATE PROCEDURE teste
AS
SELECT 'B�son Treinamentos' AS Nome


--Para executar procedimento:
EXEC teste(nome do procedimento)


--Exemplo 2:
CREATE PROCEDURE p_LivroValor
AS
SELECT Nome_Livro, Preco_livro
FROM tbl_Livro

EXEC p_LivroValor

--Para visualizar como foi feito o codigo:
--EXEC sp_helptext p_LivroValor

--Criptografar Stored Procedure:

CREATE PROCEDURE p_LivroISBN
WITH ENCRYPTION
AS
SELECT nome_Livro,ISBN
FROM tbl_Livro


--Buscar conte�do com:
--sp_helptext:
EXEC sp_helptext p_LivroISBN