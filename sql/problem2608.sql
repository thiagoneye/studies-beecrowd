CREATE DATABASE beecrowd2608;

USE beecrowd2608;

CREATE TABLE products (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
amount NUMERIC NOT NULL,
price DECIMAL(8,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO products (name, amount, price) VALUES ('Two-door wardrobe', 100, '800');
INSERT INTO products (name, amount, price) VALUES ('Dining table', 1000, '560');
INSERT INTO products (name, amount, price) VALUES ('Towel holder', 10000, '25.50');
INSERT INTO products (name, amount, price) VALUES ('Computer desk', 350, '320.50');
INSERT INTO products (name, amount, price) VALUES ('Chair', 3000, '210.64');
INSERT INTO products (name, amount, price) VALUES ('Single bed', 750, '460');

SELECT * FROM products;

SELECT MAX(price) AS price, MIN(price) AS price FROM products;

