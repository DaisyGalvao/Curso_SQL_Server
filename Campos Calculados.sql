--Campos Calculados

--Realiza calculo automaticamente, e grava o resulado desse calculo em uma coluna, esse campo é o campo calculado

USE test
CREATE TABLE Produtos (codProduto smallint,
NomeProduto varchar(20), Preco money,
Quant smallint, Total As (Preco * Quant)
)

SELECT * FROM Produtos

INSERT INTO Produtos VALUES (1, 'Mouse', 15.00, 2)
INSERT INTO Produtos VALUES (2, 'Teclado', 18.00, 1)
INSERT INTO Produtos VALUES (3, 'Fones', 25.00, 1)
INSERT INTO Produtos VALUES (4, 'Pendrive', 25.00, 3)
INSERT INTO Produtos VALUES (5, 'SD Card', 29.00, 2)
INSERT INTO Produtos VALUES (6, 'DVD-R', 1.30, 12)


SELECT SUM(Total) FROM Produtos
