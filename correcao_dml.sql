INSERT INTO cliente (nome, email) VALUES ('Otávio Regueira','otavio_regueira@sertanejo.com.br');

SELECT * FROM cliente;

INSERT INTO conta_corrente (banco_numero,agencia_numero,numero,digito,cliente_numero) VALUES (1,2,187511463,1,1001);

SELECT * FROM conta_corrente;

DELETE FROM cliente;

DELETE FROM cliente;

DELETE FROM conta_corrente;

SELECT * FROM cliente;

INSERT INTO cliente (nome, email) VALUES ('Umbelina Neves','umbelina_neves@usa.net');

-------------------------------------------------------------


--PRIMEIRO DA DELETE NA CONTA_CORRENTE, DEPOIS NO CLIENTE.


DELETE FROM conta_corrente;
TRUNCATE TABLE cliente RESTART IDENTITY CASCADE;

------------------------------------------------------------

-- ERRO TIPO DE TRANSACAO ID NOT NULL


DROP TABLE tipo_transacao;

CREATE TABLE IF NOT EXISTS tipo_transacao (
	id SMALLSERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

---------------------------------------------------------------






