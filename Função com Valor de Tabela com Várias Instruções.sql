--Função com Valor de Tabela com Várias Instruções

--Combina a habilidade da função escalar de conter códigos complexos
--com habilidades de função com valor de tabela de retornar um resultset.

--Este tipo de função cria uma variável do tipo table e popula a partir do código.
--Essa tabela é então passada de volta á função, de modo que possa ser usada
--em declarações SELECT.

--Vamos ver um exemplo a seguir que cria uma variável de tabela chamada @valores e 
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