CREATE DATABASE beecrowd2604;

USE beecrowd2604;

CREATE TABLE products (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
amount NUMERIC,
price DECIMAL(8,2)
);

INSERT INTO products (name, amount, price) VALUES ('Two-door wardrobe', '100', '80');
INSERT INTO products (name, amount, price) VALUES ('Dining table', '1000', '560');
INSERT INTO products (name, amount, price) VALUES ('Towel holder', '10000', '5.50');
INSERT INTO products (name, amount, price) VALUES ('Computer desk', '350', '100');
INSERT INTO products (name, amount, price) VALUES ('Chair', '3000', '210.64');
INSERT INTO products (name, amount, price) VALUES ('Single bed', '750', '99');

SELECT id, name FROM products WHERE price < 10 OR price > 100;