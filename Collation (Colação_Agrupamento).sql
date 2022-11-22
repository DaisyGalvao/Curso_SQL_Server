--Collation ("Colação" / "Agrupamento")

--Trata-se da codificação dos caracteres em uma ordem padrão

--Muitos sistemas de colação são baseados em ordem numérica ou alfabética.

--A colação usada pelos bancos de dados é configurada durante a instalação do sistema.

--collation-charts.org - Site com cartas de agurpamento em vários alfabetos e idiomas
--Clicar em DBMS collation charts - MS SQL Server collations - mssql.0409.1252.Latin1_General_CI_AI.html


--Para ver as opções de agrupamentos disponíveis:
SELECT * FROM fn_helpcollations()


--Para ver o esquema de colação usado atualmente pelo servidor:
SELECT SERVERPROPERTY('Collation') AS Colação_Usada

--Alterar o esquema de agrupamento de um banco de dados:
ALTER DATABASE Biblioteca2
COLLATE Greek_CI_AI


--Verificar o esquema de agrupamento de um banco de dados:
SELECT DATABASEPROPERTYEX('Biblioteca2','Collation') AS Colação


--Para inserir em apenas uma coluna que deseja incluir o agrupamento

SELECT * FROM tbl_Livro
ORDER BY Nome_Livro
COLLATE Icelandic_CI_AI