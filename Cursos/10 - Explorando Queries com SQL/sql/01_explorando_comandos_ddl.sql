-- Explorando comandos DDL
SELECT NOW() AS TIMESTAMP;

CREATE DATABASE IF NOT EXISTS manipulation;

USE manipulation;

CREATE TABLE bankAccounts (
	Id_account INT AUTO_INCREMENT PRIMARY KEY,
    Ag_num INT NOT NULL,
    Ac_num INT NOT NULL,
    Saldo FLOAT,
    CONSTRAINT identification_account_constraint UNIQUE (Ag_num, Ac_num)
);

CREATE TABLE bankClient (
	Id_client INT AUTO_INCREMENT,
    ClientAccount INT,
    CPF VARCHAR(11) NOT NULL,
    RG VARCHAR(9) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    Renda_mensal FLOAT,
    PRIMARY KEY (Id_client, ClientAccount),
    CONSTRAINT fk_account_client FOREIGN KEY (ClientAccount) REFERENCES bankAccounts(Id_account)
    ON UPDATE CASCADE
);

CREATE TABLE bankTransactions (
	Id_transation INT AUTO_INCREMENT PRIMARY KEY,
    Ocorrencia DATETIME,
    Status_transaction VARCHAR(20),
    Valor_transferido FLOAT,
    Source_account INT,
    Destination_account INT,
    CONSTRAINT fk_source_transaction FOREIGN KEY (Source_account) REFERENCES bankAccounts(id_Account),
    CONSTRAINT fk_destionation_transaction FOREIGN KEY (Destination_account) REFERENCES bankAccounts(id_Account)
);

-- Adicionando uma nova coluna na tabela bankAccounts
ALTER TABLE bankAccounts ADD COLUMN LimiteCredito FLOAT NOT NULL DEFAULT 500.00;

DESC bankAccounts;

/*
	Para modificar:
	ALTER TABLE nome_tabela MODIFY COLUMN nome_atributo tipo_dados condição

	Para adicionar constraint:
	ALTER TABLE nome_tabela ADD CONSTRAINT nome_constraint condições
*/

-- Adicionando uma nova coluna e removendo ela depois da tabela bankAccounts
ALTER TABLE bankAccounts ADD COLUMN email VARCHAR(50);

ALTER TABLE bankAccounts DROP COLUMN email;

-- Adicionando uma nova coluna na tanela bankClient
ALTER TABLE bankClient ADD UF CHAR(2) NOT NULL;

-- Inserindo dados nas tabelas

INSERT INTO bankAccounts (Ag_num, Ac_num, Saldo) VALUES (3277, 123456, 2000.0);
SELECT * FROM bankAccounts;

INSERT INTO bankClient (ClientAccount, CPF, RG, Nome, Endereco, UF, Renda_mensal)
	VALUES (1, 78965412365, 123654789, 'Marcos Winther', 'Rua A, Santa Mônica, 12A, Uberlândia', 'MG', 4500.0);
SELECT * FROM bankClient;