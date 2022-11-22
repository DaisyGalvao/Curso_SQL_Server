--Operadores LIKE e NOT LIKE

--LIKE: Determina se uma cadeia de caracteres especifica corresponde a um padrao - um padr�o pode incluir caracteres normais e curingas
--NOT LIKE: Inverte a comparacao, recificando se a caddeia de caracteres nao corresponde ao padr�o especificado
--Sao utilizados junto com a clausula WHERE


--LIKE - Utiliza Padr�es Espec�ficos:

-- % - Qualquer cadeia de 0 ou mais caracteres

-- _ - Sublinhado - qualquer caracter unico

-- [] - Qualquer caracter unico no intervalo ou mais conjunto especificado ([a-h];[aeiou])

-- ^ - Qualquer caracter unico que nao esteja no intervalo ou conjunto especificado ([a-h];[aeiou])


--Para buscar tudo o que conter a palavra dentro dos '%'
SELECT * FROM tbl_Livro
WHERE Nome_Livro LIKE '%Linux%'


SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro LIKE 'S%'

SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro LIKE '%G'


SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro LIKE '_I%'


SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro LIKE '[SL]%'


SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro LIKE '%[GL]'


SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro LIKE '_[iS]%'

SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro LIKE '_i__o%'


SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro NOT LIKE 'M%'