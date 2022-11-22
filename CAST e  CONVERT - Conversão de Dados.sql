--Conversão de Dados - CAST e  CONVERT

--Podemos converter expressões de um tipo de dados em outro no SQL usando as funções:
--CAST
--CONVERT

--Função CAST(expre ssão AS novo_tipo_dados) - Converte um tipo money para varchar para que a consulta apareça concatenado na mesma string


--Ex.:

Use db_Biblioteca

SELECT 'O preço do livro' + Nome_Livro + ' é de R$ ' +
CAST(Preco_Livro AS VARCHAR(6)) AS Item
FROM tbl_Livro
WHERE ID_Autor = 2


--Função CONVERT
--CONVERT(novo_tipo_dados) - estio é usado normalmente para converter datas ou trabalhar com float/real

--Ex.:
SELECT 'O preço do livro ' + Nome_Livro + ' é de R$ ' +
CONVERT(varchar(6),Preco_Livro) AS Itens
FROM tbl_Livro


--Trabalhando com datas - Quando a expressão é um tipo de data ou hora, o estilo deve ser
--um valor de acordo com a tabela a seguir (simplificada):

--Código do Estilo	 - Padrão		-		Representação
--		101				EUA					 mm/dd/aaaa
--		102				ANSI				 aaaa.mm.dd
--		103				Britanico/Fran		 dd/mm/aaaa - Estilo que usamos


--Ex.: Sem alteração no codigo de datas:
SELECT 'A data de publicação ' +
CONVERT(VARCHAR(20),Data_Pub)
FROM tbl_Livro
WHERE ID_Livro = 102


--EX.: Com conversão:
SELECT 'A data de publicação ' +
CONVERT(VARCHAR(20),Data_Pub, 103)
FROM tbl_Livro
WHERE ID_Livro = 102


--Site onde contém os tipos de conversões:
--http://msdn.microsoft.com/pt-br/library/ms.187928.aspx