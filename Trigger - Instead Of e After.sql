--Trigger - Instead Of e After

--Sintaxe do Trigger:
--CREATE TRIGGER nome_trigger
--ON tabela | view
--[WITH ENCRYPTION]
--AFTER | INSTEAD OF
--[INSERT,UPDATE,DELETE]
--AS

--Trigger After - Ex1:
CREATE TRIGGER teste_trigger_after
ON tbl_editoras
AFTER INSERT
AS
PRINT 'Olá Mundo!';

INSERT INTO tbl_editoras VALUES ('Editora10')

SELECT * FROM tbl_editoras



--Trigger After - Ex2:
CREATE TRIGGER trigger_after
ON tbl_editoras
AFTER INSERT
AS
INSERT INTO tbl_autores VALUES (25, 'Jose', 'da Silva')
INSERT INTO tbl_Livro VALUES ('Livro1', '123456000','20001010',
77,25,2)

--DROP TRIGGER teste_trigger_after

INSERT INTO tbl_editoras VALUES ('Editora11')

SELECT * FROM tbl_Livro


--Trigger INSTEAD OF - EX:
CREATE TRIGGER teste_trigger_insteadof
ON tbl_autores
INSTEAD OF INSERT
AS
PRINT 'Olá de novo! Não inseri o registro desta vez!';


INSERT INTO tbl_autores VALUES (26, 'João', 'Moura')

SELECT * FROM tbl_autores