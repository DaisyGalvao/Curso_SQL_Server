--INDICES

--Permitem que as aplicações de Bancos de Dados encontrem os dados mais rapidamente, sem ter de ler a tabela toda.

--Os Usuários não vêem os índices.

--Observação:

--Apenas crie indices em tabelas que recebam muitas consultas;

--Tabelas indexadas levam mais tempo para serem atualizadas.


USE db_Biblioteca

SELECT * FROM tbl_Livro

CREATE INDEX indice_nome_livro
ON tbl_Livro(Nome_Livro)