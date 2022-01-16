CREATE DATABASE beecrowd2616;

USE beecrowd2616;

CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE locations (
	id INT NOT NULL AUTO_INCREMENT,
    locations_date DATE NOT NULL,
    id_customers INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_customers) REFERENCES customers (id)
);

INSERT INTO customers (name, street, city) VALUES ('Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas');
INSERT INTO customers (name, street, city) VALUES ('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia');
INSERT INTO customers (name, street, city) VALUES ('Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador');
INSERT INTO customers (name, street, city) VALUES ('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana');
INSERT INTO customers (name, street, city) VALUES ('João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa');
INSERT INTO customers (name, street, city) VALUES ('Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');

INSERT INTO locations (locations_date, id_customers) VALUES ('2016-10-09', 3);
INSERT INTO locations (locations_date, id_customers) VALUES ('2016-09-02', 1);
INSERT INTO locations (locations_date, id_customers) VALUES ('2016-08-02', 4);
INSERT INTO locations (locations_date, id_customers) VALUES ('2016-09-02', 2);
INSERT INTO locations (locations_date, id_customers) VALUES ('2016-03-02', 6);
INSERT INTO locations (locations_date, id_customers) VALUES ('2016-04-04', 4);

SELECT * FROM customers;
SELECT * FROM locations;

SELECT customers.id, customers.name
	FROM customers
    WHERE customers.id NOT IN (
		SELECT DISTINCT locations.id_customers
        FROM locations
	);