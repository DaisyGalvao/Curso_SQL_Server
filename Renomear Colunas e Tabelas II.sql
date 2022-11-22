--Renomear Colunas e Tabelas II

--SP_RENAME - Stored Procedure

USE db_Biblioteca

SELECT * FROM tbl_Livro


--Alterar nome da coluna:
sp_rename 'Nometabela.NomeAtualColuna', 
'NovoNomeColuna', 'COLUMN';

sp_rename 'tbl_livro.Livro', 'Nome_Livro', 'COLUMN';

SELECT * FROM tbl_livro;


--Alterar nome da Tabela:

sp_rename 'NomeTabelaAntigo', 'NovoNomeTabela';

sp_rename 'Livros', 'tbl_livro';

SELECT * FROM tbl_livro; --Dará erro, pois ja foi feito a alteração


SELECT * FROM sys.tables; --Pesquisar com o nome já alterado.

SELECT * FROM Livros