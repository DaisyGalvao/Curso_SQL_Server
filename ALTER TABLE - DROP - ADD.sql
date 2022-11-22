--ALTER TABLE - DROP - ADD

--é possível alterar a estrutura de uma tabela após criada, acrescentando ou incluindo campos - porém não pode ter dados inseridos nela 


--Excluir coluna:

USE db_Biblioteca
ALTER TABLE tbl_Livro
DROP COLUMN ID_Autor


--Também é possível excluir uma constraint:

ALTER TABLE nome_tabela
DROP CONSTRAINT nome_constraint


ALTER TABLE tbl_Livro
ADD ID_Autor SMALLINT NOT NULL
CONSTRAINT fk_ID_Autor FOREIGN KEY (ID_Autor)
REFERENCES tbl_autores


ALTER TABLE tbl_Livro
ADD ID_editora SMALLINT NOT NULL
CONSTRAINT fk_id_editora FOREIGN KEY (ID_editora)
REFERENCES tbl_editoras


--Alterar coluna:

ALTER TABLE tbl_Livro
ALTER COLUMN ID_Autor SMALLINT

--Adicionar Chave primária, em uma coluna existente:

ALTER TABLE Clientes
ADD PRIMARY KEY (ID_Cliente)


--Excluir Tabela:

DROP TABLE tbl_editoras

