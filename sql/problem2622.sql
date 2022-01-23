CREATE DATABASE beecrowd2622;

USE beecrowd2622;

CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state CHAR(2) NOT NULL,
    credit_limit DECIMAL(8,2),
    PRIMARY KEY (id)
);

CREATE TABLE legal_person (
	id INT NOT NULL AUTO_INCREMENT,
    cnpj CHAR(18) NOT NULL,
    contact VARCHAR(16) NOT NULL,
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

INSERT INTO legal_person (cnpj, contact, id_customers) VALUES ('85883842000191', '99767-0562', '4');
INSERT INTO legal_person (cnpj, contact, id_customers) VALUES ('47773848000117', '99100-8965 ', '5');

SELECT * FROM customers;
SELECT * FROM legal_person;

# Junção Cartesiana

SELECT customers.name
	FROM customers, legal_person
    WHERE legal_person.id_customers = customers.id AND
		customers.id IN (SELECT DISTINCT legal_person.id_customers
			FROM legal_person);

# Junção Inner Join

SELECT customers.name
	FROM customers
    INNER JOIN legal_person
    ON legal_person.id_customers = customers.id
    WHERE customers.id IN (
		SELECT DISTINCT legal_person.id_customers
        FROM legal_person
        );