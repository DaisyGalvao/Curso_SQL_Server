--Triggers

--Um Trigger(Gatilho) � um tipo especial de Stored Procedure
--que � executada automaticamente quando um usu�rio realiza uma
--opera��o de modifica��o de dados em uma tabela especificada.

--No SQL Server, os triggers disparam uma vez para cada opera��o
--de modifica��o - e n�o uma vez por linha afetada (no Oracle h� as duas op��es).

--As opera��es que podem disparar um trigger s�o:
--INSERT
--UPDATE
--DELETE

--Modo de disparo de um Trigger:

--After: O c�digo presente no trigger � executado ap�s todas
--as a��es terem sido completadas na tabela especificada.

--Instead Of - O c�digo presente no trigger � executado no 
--lugar da opera��o que causou seu disparo.


--FLuxo de Transa��es:
--Para desenvolver Triggers, � necess�rio conhecimento do fluxo 
--geral da transa��o, para evitar conflitos entre os triggers e constraints.

--As transa��es se movem atrasv�s de verifica��es, e c�digos da ondem:
--1 Verifica��o de IDENTITY INSERT
--2 Restri��o (Constraint) de Nulos (NULL)
--3 Checagem de tipos de dados
--4 Execu��o de trigger INSTEAD OF (a execu��o do DML p�ra aqui
--esse trigger n�o � recursivo)
--5 Restri��o de Chave Prim�ria
--6 Restri��o 'Check'
--7 Restri��o de Chave Estrangeira
--8 Execu��o do DML e atualiza��o de log de transa��es
--9 Execu��o do trigger AFTER
--10 Commit da transa��o (Confirma��o)





