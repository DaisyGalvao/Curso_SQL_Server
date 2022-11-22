--Comando INSERT INTO - VALUES

--Para inserir informações em mais de uma coluna, separar por virgula

--e se a coluna for NOT NULL, precisa incluir o nome da coluna e algum valor

USE db_Biblioteca

INSERT INTO tbl_Autores (ID_Autor,Nome_Autor,
Sobrenome_Autor) VALUES (1, 'Daniel','Barret')

INSERT INTO tbl_Autores (ID_Autor, Nome_Autor,
Sobrenome_Autor) VALUES (2, 'Gerald','Carter')

INSERT INTO tbl_Autores (ID_Autor,Nome_Autor,
Sobrenome_Autor) Values (3,'Mark','Sobell')

INSERT INTO tbl_Autores (ID_Autor,Nome_Autor,
Sobrenome_Autor) VALUES (4,'William','Stanek')

INSERT INTO tbl_Autores (ID_Autor,Nome_Autor,
Sobrenome_Autor) VALUES (5,'Richard','Blum')


SELECT * FROM tbl_autores



INSERT INTO tbl_Editoras(Nome_Editora) VALUES
('Prentice Hall')

INSERT INTO tbl_Editoras(Nome_Editora) VALUES
('O Reilly')

INSERT INTO tbl_Editoras(Nome_Editora) VALUES
('Microsoft Press')

INSERT INTO tbl_Editoras(Nome_Editora) VALUES
('Wiley')


SELECT * FROM tbl_editoras


INSERT INTO tbl_Livro (Nome_Livro,ISBN,Data_Pub,
Preco_Livro,ID_Autor,ID_Editora) VALUES ('Linux Command
Line and Shell Scripting',1438566969,'20091221',68.35,5,4)


INSERT INTO tbl_Livro (Nome_Livro,ISBN,Data_Pub,
Preco_Livro,ID_Autor,ID_Editora) VALUES ('SSH, the Secure 
Shell',127658789,'20091221',58.30,1,1)


INSERT INTO tbl_Livro (Nome_Livro,ISBN,Data_Pub,
Preco_Livro,ID_Autor,ID_Editora) VALUES ('Using Samba',
123856789,'20001221',61.45,2,2)


INSERT INTO tbl_Livro (Nome_Livro,ISBN,Data_Pub,
Preco_Livro,ID_Autor,ID_editora) VALUES ('Fedora and Red
Hat Linux',123346789,'20101101',62.24,3,1)


INSERT INTO tbl_Livro (Nome_Livro,ISBN,Data_Pub,
Preco_Livro,ID_Autor,Id_editora) VALUES ('Microsoft
Exchange Server 2010',123366789,'20001221',45.30,4,3)




INSERT INTO tbl_Livro (Nome_Livro,ISBN,Data_Pub,
Preco_Livro,ID_Autor,Id_editora) VALUES ('NMAP Cookbook',
21236542,'20070618',29.98,0,3)

INSERT INTO tbl_Livro (Nome_Livro,ISBN,Data_Pub,
Preco_Livro,ID_Autor,Id_editora) VALUES ('PHP Programming',
27856542,'20120413',71.95,0,4)

SELECT * FROM tbl_Livro


ALTER TABLE tbl_Livro
ADD ID_editora SMALLINT NOT NULL


