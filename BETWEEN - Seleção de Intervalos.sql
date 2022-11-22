--BETWEEN - Selecao de Intervalos

--Ex. 
--SELECT colunas FROM tabela
--WHERE coluna BETWEEN valor1 AND valor2

SELECT * FROM tbl_Livro
WHERE Data_Pub BETWEEN '20040517' AND '20100517'

SELECT Nome_Livro AS Livro, Preco_Livro AS Pre�o
FROM tbl_Livro
WHERE Preco_Livro BETWEEN 40.00 AND 60.00