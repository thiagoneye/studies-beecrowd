CREATE DATABASE beecrowd2615;

USE beecrowd2615;

CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO customers (name, street, city) VALUES ('Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas');
INSERT INTO customers (name, street, city) VALUES ('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia');
INSERT INTO customers (name, street, city) VALUES ('Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador');
INSERT INTO customers (name, street, city) VALUES ('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Uberlândia');
INSERT INTO customers (name, street, city) VALUES ('João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa');
INSERT INTO customers (name, street, city) VALUES ('Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');

SELECT * FROM customers;

SELECT DISTINCT city FROM customers;