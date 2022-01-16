CREATE DATABASE beecrowd2620;

USE beecrowd2620;

CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state CHAR(2) NOT NULL,
    credit_limit NUMERIC NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE orders (
	id INT NOT NULL AUTO_INCREMENT,
    orders_data DATE NOT NULL,
    id_customers INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_customers) REFERENCES customers (id)
);

INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475);
INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170);
INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067);
INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475);
INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312);
INSERT INTO customers (name, street, city, state, credit_limit) VALUES ('Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

INSERT INTO orders (orders_data, id_customers) VALUES ('2016-05-13', 3);
INSERT INTO orders (orders_data, id_customers) VALUES ('2016-01-12', 2);
INSERT INTO orders (orders_data, id_customers) VALUES ('2016-04-18', 5);
INSERT INTO orders (orders_data, id_customers) VALUES ('2016-09-07', 4);
INSERT INTO orders (orders_data, id_customers) VALUES ('2016-02-13', 6);
INSERT INTO orders (orders_data, id_customers) VALUES ('2016-08-05', 3);

SELECT * FROM customers;
SELECT * FROM orders;

# Junção Cartesiana

SELECT customers.name, orders.id
	FROM customers, orders
    WHERE orders.id_customers = customers.id
		AND orders.orders_data < '2016-07-01';

# Junção Inner Join

SELECT customers.name, orders.id
	FROM customers
    INNER JOIN orders
    ON customers.id = orders.id_customers
    WHERE orders.orders_data < '2016-07-01';