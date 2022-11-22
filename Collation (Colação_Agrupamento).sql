--Collation ("Cola��o" / "Agrupamento")

--Trata-se da codifica��o dos caracteres em uma ordem padr�o

--Muitos sistemas de cola��o s�o baseados em ordem num�rica ou alfab�tica.

--A cola��o usada pelos bancos de dados � configurada durante a instala��o do sistema.

--collation-charts.org - Site com cartas de agurpamento em v�rios alfabetos e idiomas
--Clicar em DBMS collation charts - MS SQL Server collations - mssql.0409.1252.Latin1_General_CI_AI.html


--Para ver as op��es de agrupamentos dispon�veis:
SELECT * FROM fn_helpcollations()


--Para ver o esquema de cola��o usado atualmente pelo servidor:
SELECT SERVERPROPERTY('Collation') AS Cola��o_Usada

--Alterar o esquema de agrupamento de um banco de dados:
ALTER DATABASE Biblioteca2
COLLATE Greek_CI_AI


--Verificar o esquema de agrupamento de um banco de dados:
SELECT DATABASEPROPERTYEX('Biblioteca2','Collation') AS Cola��o


--Para inserir em apenas uma coluna que deseja incluir o agrupamento

SELECT * FROM tbl_Livro
ORDER BY Nome_Livro
COLLATE Icelandic_CI_AI