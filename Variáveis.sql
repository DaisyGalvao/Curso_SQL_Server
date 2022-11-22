--Vari�veis

--As vari�veis podem ser declaradas no corpo de um batch ou procedimento.

--Pode-se atribuir-lhes valores usando-se declara��es SET ou SELECT.

--As vari�veis s�o inicializadas por padr�o com NULL

--Obs. Usa-se a palavra DECLARE apenas uma vez para todas as vari�veis.

--Declara��o de Vari�veis:

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
SET @TEXTO = 'B�son'
SET @data_nasc = GETDATE()
--Exibir os valores (consulta)
SELECT @valor AS Valor, @texto AS Texto,
@data_nasc AS 'Data de Nascimento',
@nada AS Sal�rio


--Atribuir valor com SELECT - quando tem apenas um valor a ser retornado

--SELECT nome_var = coluna FROM tabela
--WHERE condi��o
--SELECT nome_var AS alias

USE db_Biblioteca

DECLARE @livro VARCHAR(30)
SELECT @livro = nome_livro
FROM tbl_livro
WHERE ID_Livro = 101

SELECT @livro AS 'Nome do Livro'

--Exemplo com C�culo:

DECLARE @preco MONEY, @quantidade INT, @nome VARCHAR(30)
SET @quantidade = 5

SELECT @preco = Preco_Livro, @nome = Nome_Livro
FROM tbl_livro
WHERE ID_Livro = 101

SELECT @nome AS 'Nome do Livro',
@preco * @quantidade AS 'Pre�o dos Livros'








