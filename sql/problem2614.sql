CREATE DATABASE beecrowd2614;

USE beecrowd2614;

CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE rentals (
	id INT NOT NULL AUTO_INCREMENT,
    rentals_date DATE,
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

INSERT INTO rentals (rentals_date, id_customers) VALUES ('2016-09-10', 3);
INSERT INTO rentals (rentals_date, id_customers) VALUES ('2016-02-09', 1);
INSERT INTO rentals (rentals_date, id_customers) VALUES ('2016-02-08', 4);
INSERT INTO rentals (rentals_date, id_customers) VALUES ('2016-02-09', 2);
INSERT INTO rentals (rentals_date, id_customers) VALUES ('2016-02-03', 6);
INSERT INTO rentals (rentals_date, id_customers) VALUES ('2016-04-04', 4);

SELECT * FROM customers;
SELECT * FROM rentals;

# Junção Cartesiana

SELECT customers.name, rentals.rentals_date
	FROM customers, rentals
    WHERE customers.id = rentals.id_customers AND rentals.rentals_date LIKE '2016-09-%%';

# Junção Inner Join

SELECT customers.name, rentals.rentals_date
	FROM customers
    INNER JOIN rentals
    ON customers.id = rentals.id_customers
    WHERE rentals.rentals_date LIKE '2016-09-%%';