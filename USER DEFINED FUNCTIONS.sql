--Fun��es Escalares

--Podemos criar fun��es (UDFs - USER DEFINED FUNCTIONS) para realizar diversas tarefas nos bancos
--de dados, tais como:

--Inserir l�gica complexa em uma consulta

--Criar novas fun��es para express�es complexas

--Substituir exibi��es com a vantagem de aceitar par�metros

--H� varios tipos de UDFs:
--Fun��es Escalares, Valor de Tabela Embutida, Valor de 
--Tabela Multi-instru��es



--Fun��es Escalares:

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