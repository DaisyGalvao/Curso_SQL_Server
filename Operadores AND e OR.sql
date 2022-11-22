--Operadores AND e OR

--Usado para filtrar registros baseados em mais de uma condição

--AND: Mostra um registro se ambas as condições for verdadeiras
--OR: Mostra o registro se pelo menos uma das condições for verdadeira 
--e falso se todas as condições for falsas

--Utiliza-se junto com a clausula Where


USE db_Biblioteca

--SELECT * FROM tbl_Livro
--Where ID_Livro > 101 AND ID_Autor < 3

SELECT * FROM tbl_Livro
Where ID_Livro > 101 OR ID_Autor < 3