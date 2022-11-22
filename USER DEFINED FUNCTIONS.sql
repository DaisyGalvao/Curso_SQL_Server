--Funções Escalares

--Podemos criar funções (UDFs - USER DEFINED FUNCTIONS) para realizar diversas tarefas nos bancos
--de dados, tais como:

--Inserir lógica complexa em uma consulta

--Criar novas funções para expressões complexas

--Substituir exibições com a vantagem de aceitar parâmetros

--Há varios tipos de UDFs:
--Funções Escalares, Valor de Tabela Embutida, Valor de 
--Tabela Multi-instruções



--Funções Escalares:

--RETURNS REAL
--AS
--	BEGIN
--	DECLARE @media REAL
--	SELECT @media = (nota1 + nota2 + nota3 + nota4 *2)/5.00
--	FROM tbl_alunos
--	WHERE nome_aluno = @nome
--	RETURN @media
--	END

SELECT dbo.nota_media('Fabio')