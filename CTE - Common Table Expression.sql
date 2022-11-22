--CTE - Common Table Expression
--Express�o de Tabela Comun

--Varia��o sint�tica de uma subconsulta, similar a uma exibi��o (view)

--Pode ser acessada m�ltiplas vezes dentro da consulta principal, como se fosse uma exibi��o ou tabela.


--Nesse caso ao inves de usar o GROUP BY CL.Nome_Cliente
--Pois n�o s�o todas as informa��es que est�o relacionadas

Use db_Loja
GO

With ConsultaCTE (Cliente, Total)
AS (SELECT CL.Nome_Cliente AS Cliente,
PR.Preco_Produto * CO.Quantidade AS Total
FROM Clientes AS CL
INNER JOIN Compras AS CO
ON CL.ID_Cliente = CO.ID_Cliente
INNER JOIN Produtos AS PR
ON CO.ID_Produto = PR.ID_Produto)


SELECT Cliente, SUM(Total) AS ValorTotal
FROM ConsultaCTE
GROUP BY Cliente
ORDER BY ValorTotal

