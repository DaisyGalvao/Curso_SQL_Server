--Operadores AND e OR

--Usado para filtrar registros baseados em mais de uma condi��o

--AND: Mostra um registro se ambas as condi��es for verdadeiras
--OR: Mostra o registro se pelo menos uma das condi��es for verdadeira 
--e falso se todas as condi��es for falsas

--Utiliza-se junto com a clausula Where


USE db_Biblioteca

--SELECT * FROM tbl_Livro
--Where ID_Livro > 101 AND ID_Autor < 3

SELECT * FROM tbl_Livro
Where ID_Livro > 101 OR ID_Autor < 3