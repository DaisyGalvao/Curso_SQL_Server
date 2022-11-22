--INDICES

--Permitem que as aplica��es de Bancos de Dados encontrem os dados mais rapidamente, sem ter de ler a tabela toda.

--Os Usu�rios n�o v�em os �ndices.

--Observa��o:

--Apenas crie indices em tabelas que recebam muitas consultas;

--Tabelas indexadas levam mais tempo para serem atualizadas.


USE db_Biblioteca

SELECT * FROM tbl_Livro

CREATE INDEX indice_nome_livro
ON tbl_Livro(Nome_Livro)