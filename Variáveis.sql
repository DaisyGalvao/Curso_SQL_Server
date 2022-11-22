--Variáveis

--As variáveis podem ser declaradas no corpo de um batch ou procedimento.

--Pode-se atribuir-lhes valores usando-se declarações SET ou SELECT.

--As variáveis são inicializadas por padrão com NULL

--Obs. Usa-se a palavra DECLARE apenas uma vez para todas as variáveis.

--Declaração de Variáveis:

--Ex.:

DECLARE @nome_var tipo


--SET nome_var = valor_var

--Ex.: 
DECLARE @valor INT,
		@texto VARCHAR(40),
		@data_nasc DATE,
		@nada MONEY
--Atribuir valores com SET
SET @valor = 50
SET @TEXTO = 'Bóson'
SET @data_nasc = GETDATE()
--Exibir os valores (consulta)
SELECT @valor AS Valor, @texto AS Texto,
@data_nasc AS 'Data de Nascimento',
@nada AS Salário


--Atribuir valor com SELECT - quando tem apenas um valor a ser retornado

--SELECT nome_var = coluna FROM tabela
--WHERE condição
--SELECT nome_var AS alias

USE db_Biblioteca

DECLARE @livro VARCHAR(30)
SELECT @livro = nome_livro
FROM tbl_livro
WHERE ID_Livro = 101

SELECT @livro AS 'Nome do Livro'

--Exemplo com Cáculo:

DECLARE @preco MONEY, @quantidade INT, @nome VARCHAR(30)
SET @quantidade = 5

SELECT @preco = Preco_Livro, @nome = Nome_Livro
FROM tbl_livro
WHERE ID_Livro = 101

SELECT @nome AS 'Nome do Livro',
@preco * @quantidade AS 'Preço dos Livros'








