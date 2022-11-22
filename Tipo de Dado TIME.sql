--Tipo de Dado TIME

--Define um horário no dia baseado em um relógio de 24horas (0 a 23).

--Sintaxe:
--nome_coluna TIME[(Frações de segundo)]

--Formato literal de um valor TIME:
--hh:mm:ss[.nnnnnnn]

CREATE TABLE tbl_visitas (
	id_visita INT PRIMARY KEY IDENTITY,
	nome_visitante VARCHAR (50) NOT NULL,
	CPF VARCHAR (11) NOT NULL,
	cj_visitado SMALLINT NOT NULL,
	data_visita DATE NOT NULL,
	hora_entr TIME (0) NOT NULL,
	hora_sai TIME (0) NOT NULL
);


INSERT INTO tbl_visitas (
	nome_visitante,CPF,cj_visitado,data_visita,hora_entr,hora_sai
)
	VALUES (
		'Fábio dos Reis',
		'29785632419',
		19,
		GETDATE(),
		'14:05:00',
		'18:10:00'
);

SELECT * FROM tbl_visitas

--Função que permite mostrar em minutos/horas/segundos a permanencia da visita no local:
SELECT DATEDIFF(MINUTE,hora_entr,hora_sai) AS Permanencia
FROM tbl_visitas