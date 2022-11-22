--Subconsultas (Subquerys) - Com Tabelas Variadas

--Uma subconsulta (subquery) é uma declaração SQL embutida em uma consulta externa.
--A subconsulta fornece uma resposta á consulta externa na forma de um valor escalar(valor simples, unico), lista de valores,
--ou conjunto de dados(dataset-serão interpretados com se fosse uma tabela), equivalentes a uma expressão, lista ou tabela para a consulta externa.

--Exemplo simples:
SELECT (SELECT 'Fábio') AS Subconsulta;


SELECT CL.Nome_Cliente AS Cliente, PR.Preco_Produto * CO.Quantidade AS Total
FROM Clientes AS CL
INNER JOIN Compras AS CO
ON CL.ID_Cliente = CO.ID_Cliente
INNER JOIN Produtos AS PR
ON CO.ID_Produto = PR.ID_Produto



SELECT Resultado.Cliente, SUM(Resultado.Total) AS Total
FROM
(SELECT CL.Nome_Cliente AS Cliente, PR.Preco_Produto * CO.Quantidade AS Total
FROM Clientes AS CL
INNER JOIN Compras AS CO
ON CL.ID_Cliente = CO.ID_Cliente
INNER JOIN Produtos AS PR
ON CO.ID_Produto = PR.ID_Produto) AS Resultado
GROUP BY Resultado.Cliente
ORDER BY Total

