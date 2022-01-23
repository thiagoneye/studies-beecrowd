CREATE DATABASE beecrowd2625;

USE beecrowd2625;

CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state CHAR(2) NOT NULL,
    credit_limit DECIMAL(8,2),
    PRIMARY KEY (id)
);

CREATE TABLE natural_person (
	id INT NOT NULL AUTO_INCREMENT,
    cpf CHAR(14) NOT NULL,
    id_customers INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_customers) REFERENCES customers (id)
);

INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', '475');
INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', '3170');
INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', '1067');
INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', '475');
INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', '4312');
INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', '2314');

INSERT INTO natural_person (cpf, id_customers) VALUES ('26774287840', 1);
INSERT INTO natural_person (cpf, id_customers) VALUES ('97918477200', 2);

SELECT * FROM customers;
SELECT * FROM natural_person;

SELECT CONCAT(SUBSTRING(cpf,1,3), '.', SUBSTRING(cpf,4,3), '.', SUBSTRING(cpf,7,3), '-', SUBSTRING(cpf,10,2)) AS CPF
	FROM natural_person;