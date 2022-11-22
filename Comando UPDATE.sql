--SINTAXE COMANDO UPDATE

-- UPDATE tabela
-- SET coluna(dado que deseja alterar) = valor (novo dado inserido)
-- WHERE "Filtro" (Serve para determinar quais dados terão os valores alterados)

USE db_Biblioteca

SELECT * FROM tbl_Livro

--SELECT * FROM tbl_autores


-- Ex. 01:
UPDATE tbl_Livro
SET Preco_Livro = 65.45
WHERE ID_Livro = 102


-- Ex. 02:
UPDATE tbl_autores
SET Sobrenome_Autor = 'Cartman'
WHERE ID_Autor = 2;

-- Ex 03:
UPDATE tbl_Livro
SET Preco_Livro = 80.00,
ISBN = '0202020'
WHERE ID_Livro = 101;
