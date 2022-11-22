--AUTO INCREMENTO - IDENTITY

--Permite que um numero unico seja gerado, quando um novo registro é inserido na tabela

--O valor inicial padrão é 1, e se incrementa de 1 em 1 - mas pode iniciar por qualquer valor e pode incrementar de 2 em 2 também

--So pode utilizar um identidade por tabela

CREATE TABLE tbl_teste_identidade
(ID_Teste SMALLINT PRIMARY KEY IDENTITY,
valor SMALLINT NOT NULL)

USE db_Biblioteca

INSERT INTO tbl_teste_identidade (valor) VALUES (10)
INSERT INTO tbl_teste_identidade (valor) VALUES (20)
INSERT INTO tbl_teste_identidade (valor) VALUES (30)
INSERT INTO tbl_teste_identidade (valor) VALUES (40)


SELECT * FROM tbl_teste_identidade

