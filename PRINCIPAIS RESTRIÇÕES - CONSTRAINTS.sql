--PRINCIPAIS RESTRI��ES - CONSTRAINTS

--S�o regras aplicadas nas colunas das tabelas
--usado para limitar os tipos de dados inseridos na tabela

--Principais constraints:

--NOT NULL: N�o aceita valor nulo 
--UNIQUE: Identifica de forma unica na tabela, n�o se repete no restante do banco de dados, pode ter mais de uma por tabela
--PRIMARY KEY: Identifica de forma unica, de forma que n�o se repita - n�o pode ter valor nulo - cada tabela pode conter apenas uma chave primaria
--FOREIGN KEY: Um campo que aponta para uma chave primaria de outra tabela
--CHECK: Usado para limitar os dados que ser�o inseridos em uma coluna - Ex: Se foi restrito para texto n�o aceitar� numero
--DEFAULT: Usado para inserir um valor padr�o - Ex: Se em um cadastro de clientes a maioria for de SP, colocar DEFAULT SP, 
--e caso entrar algum de outro estado � s� alterar, pois todos ja estar�o como SP



