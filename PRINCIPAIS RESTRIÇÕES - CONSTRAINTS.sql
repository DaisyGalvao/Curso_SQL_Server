--PRINCIPAIS RESTRIÇÕES - CONSTRAINTS

--São regras aplicadas nas colunas das tabelas
--usado para limitar os tipos de dados inseridos na tabela

--Principais constraints:

--NOT NULL: Não aceita valor nulo 
--UNIQUE: Identifica de forma unica na tabela, não se repete no restante do banco de dados, pode ter mais de uma por tabela
--PRIMARY KEY: Identifica de forma unica, de forma que não se repita - não pode ter valor nulo - cada tabela pode conter apenas uma chave primaria
--FOREIGN KEY: Um campo que aponta para uma chave primaria de outra tabela
--CHECK: Usado para limitar os dados que serão inseridos em uma coluna - Ex: Se foi restrito para texto não aceitará numero
--DEFAULT: Usado para inserir um valor padrão - Ex: Se em um cadastro de clientes a maioria for de SP, colocar DEFAULT SP, 
--e caso entrar algum de outro estado é só alterar, pois todos ja estarão como SP



