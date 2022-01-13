CREATE DATABASE beecrowd2609;

USE beecrowd2609;

CREATE TABLE categories (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE products (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
amount NUMERIC NOT NULL,
price DECIMAL(8,2) NOT NULL,
id_categories INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_categories) REFERENCES categories (id)
);

INSERT INTO categories (name) VALUES ('wood');
INSERT INTO categories (name) VALUES ('luxury');
INSERT INTO categories (name) VALUES ('vintage');
INSERT INTO categories (name) VALUES ('modern');
INSERT INTO categories (name) VALUES ('super luxury');

INSERT INTO products (name, amount, price, id_categories) VALUES ('Two-door wardrobe', 100, '800', 1);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Dining table', 1000, '560', 3);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Towel holder', 10000, '25.50', 4);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Computer desk', 350, '320.50', 2);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Chair', 3000, '210.64', 4);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Single bed', 750, '460', 1);

SELECT * FROM categories;
SELECT * FROM products;

SELECT categories.name, SUM(products.amount) AS sum
FROM products
INNER JOIN categories
ON products.id_categories = categories.id
GROUP BY categories.name;