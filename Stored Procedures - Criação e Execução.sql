--Stored Procedures 

--Definição:
--São lotes (batches) de declarações SQL que podem ser executadas como uma subrotina.
--Permitem centralizar a lógica de acesso ao dados em um único local,
--facilitando a manutenção e otimização de código.
--Também é possível ajustar permissões de acesso aos usuários, definindo
--quem pode ou não executá-las.

--Sintaxe:
--CREATE PROCEDURE nome_procedimento
--	(@Parâmetro Tipo_dados)
--AS
--	Bloco de códigos


--Para executar:
--EXEC(UTE)teste
--OBS.: Se o procedimento armazenado for o primeiro comando de um
--batch, não é necessário usar a palavra EXEC, mas é aconselhavel 
--usar sempre para não se perder

--Exemplo 1:
CREATE PROCEDURE teste
AS
SELECT 'Bóson Treinamentos' AS Nome


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


--Buscar conteúdo com:
--sp_helptext:
EXEC sp_helptext p_LivroISBN