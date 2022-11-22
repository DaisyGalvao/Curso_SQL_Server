--Stored Procedure - Parametro de entrada e INSERT

ALTER PROCEDURE p_LivroValor
(@ID SMALLINT, @Preco MONEY)
AS
SELECT Nome_Livro as Livro, Preco_Livro AS Preço
FROM tbl_Livro
WHERE ID_Livro > @ID AND Preco_Livro > @Preco

EXEC p_LivroValor @ID = 103, @Preco = 60



--Ex: Desejo fornecer o ID e a quantidade de um titulo 
--adquirido, e saber o valor total pago pelos livros

ALTER PROCEDURE p_LivroValor (
@Quantidade SMALLINT, @ID SMALLINT)
AS
SELECT Nome_Livro as Livro,
Preco_Livro * @Quantidade AS Preço
FROM tbl_Livro
WHERE ID_Livro = @ID

EXEC p_LivroValor @ID = 104, @Quantidade = 8


--Ex: Inserção de dados:

CREATE PROCEDURE p_insere_editora (
@nome VARCHAR (50))
AS
INSERT INTO tbl_editoras (Nome_Editora)
VALUES (@nome)

EXEC p_insere_editora @nome = 'Ediouro'

SELECT * FROM tbl_editoras