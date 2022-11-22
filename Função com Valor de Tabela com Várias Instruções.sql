--Fun��o com Valor de Tabela com V�rias Instru��es

--Combina a habilidade da fun��o escalar de conter c�digos complexos
--com habilidades de fun��o com valor de tabela de retornar um resultset.

--Este tipo de fun��o cria uma vari�vel do tipo table e popula a partir do c�digo.
--Essa tabela � ent�o passada de volta � fun��o, de modo que possa ser usada
--em declara��es SELECT.

--Vamos ver um exemplo a seguir que cria uma vari�vel de tabela chamada @valores e 
--popula com os dados provenientes das tabelas livros e editoras:


CREATE FUNCTION multi_tabela()
RETURNS @valores Table
	(Nome_Livro VARCHAR(50),
	Data_Pub DATETIME, Nome_Editora VARCHAR(50),
	Preco_Livro MONEY)
	AS
	BEGIN
	INSERT @valores (Nome_Livro, Data_Pub, Nome_Editora, Preco_Livro)
		SELECT L.Nome_Livro, L.Data_Pub, E.Nome_Editora, L.Preco_Livro
		FROM tbl_Livro AS L
		INNER JOIN tbl_editoras AS E
		ON L.ID_editora = E.ID_Editora
	RETURN
	END


SELECT *
FROM multi_tabela()