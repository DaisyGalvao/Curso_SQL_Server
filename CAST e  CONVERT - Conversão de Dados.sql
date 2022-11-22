--Convers�o de Dados - CAST e  CONVERT

--Podemos converter express�es de um tipo de dados em outro no SQL usando as fun��es:
--CAST
--CONVERT

--Fun��o CAST(expre ss�o AS novo_tipo_dados) - Converte um tipo money para varchar para que a consulta apare�a concatenado na mesma string


--Ex.:

Use db_Biblioteca

SELECT 'O pre�o do livro' + Nome_Livro + ' � de R$ ' +
CAST(Preco_Livro AS VARCHAR(6)) AS Item
FROM tbl_Livro
WHERE ID_Autor = 2


--Fun��o CONVERT
--CONVERT(novo_tipo_dados) - estio � usado normalmente para converter datas ou trabalhar com float/real

--Ex.:
SELECT 'O pre�o do livro ' + Nome_Livro + ' � de R$ ' +
CONVERT(varchar(6),Preco_Livro) AS Itens
FROM tbl_Livro


--Trabalhando com datas - Quando a express�o � um tipo de data ou hora, o estilo deve ser
--um valor de acordo com a tabela a seguir (simplificada):

--C�digo do Estilo	 - Padr�o		-		Representa��o
--		101				EUA					 mm/dd/aaaa
--		102				ANSI				 aaaa.mm.dd
--		103				Britanico/Fran		 dd/mm/aaaa - Estilo que usamos


--Ex.: Sem altera��o no codigo de datas:
SELECT 'A data de publica��o ' +
CONVERT(VARCHAR(20),Data_Pub)
FROM tbl_Livro
WHERE ID_Livro = 102


--EX.: Com convers�o:
SELECT 'A data de publica��o ' +
CONVERT(VARCHAR(20),Data_Pub, 103)
FROM tbl_Livro
WHERE ID_Livro = 102


--Site onde cont�m os tipos de convers�es:
--http://msdn.microsoft.com/pt-br/library/ms.187928.aspx