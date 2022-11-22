--FUNCOES AGREGADAS

--MIN = Valor Minimo
--MAX = Valor Maximo
--AVG = Media Aritimetica
--SUM = Total (Soma)
--COUNT = Contar quantidade de itens

--Ex. 1:
SELECT COUNT(*) FROM tbl_autores

--Ex. 2:
SELECT MAX(Preco_Livro) AS PrecoMaximo FROM tbl_Livro


--Ex. 3:
SELECT MIN(Preco_Livro) AS PrecoMinimo FROM tbl_Livro

--Ex. 4:
SELECT AVG(Preco_Livro) AS Media FROM tbl_Livro


--Ex. 5:
SELECT SUM(Preco_Livro) AS PrecoTotal FROM tbl_Livro


