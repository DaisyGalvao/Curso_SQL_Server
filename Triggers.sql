--Triggers

--Um Trigger(Gatilho) é um tipo especial de Stored Procedure
--que é executada automaticamente quando um usuário realiza uma
--operação de modificação de dados em uma tabela especificada.

--No SQL Server, os triggers disparam uma vez para cada operação
--de modificação - e não uma vez por linha afetada (no Oracle há as duas opções).

--As operações que podem disparar um trigger são:
--INSERT
--UPDATE
--DELETE

--Modo de disparo de um Trigger:

--After: O código presente no trigger é executado após todas
--as ações terem sido completadas na tabela especificada.

--Instead Of - O código presente no trigger é executado no 
--lugar da operação que causou seu disparo.


--FLuxo de Transações:
--Para desenvolver Triggers, é necessário conhecimento do fluxo 
--geral da transação, para evitar conflitos entre os triggers e constraints.

--As transações se movem atrasvés de verificações, e códigos da ondem:
--1 Verificação de IDENTITY INSERT
--2 Restrição (Constraint) de Nulos (NULL)
--3 Checagem de tipos de dados
--4 Execução de trigger INSTEAD OF (a execução do DML pára aqui
--esse trigger não é recursivo)
--5 Restrição de Chave Primária
--6 Restrição 'Check'
--7 Restrição de Chave Estrangeira
--8 Execução do DML e atualização de log de transações
--9 Execução do trigger AFTER
--10 Commit da transação (Confirmação)





