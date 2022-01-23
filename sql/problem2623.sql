CREATE DATABASE beecrowd2623;

USE beecrowd2623;

CREATE TABLE categories (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE products (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    amount NUMERIC NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    id_categories INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categories) REFERENCES categories (id)
);

INSERT INTO categories (name) VALUES ('Superior');
INSERT INTO categories (name) VALUES ('Super Luxury');
INSERT INTO categories (name) VALUES ('Modern');
INSERT INTO categories (name) VALUES ('Nerd');
INSERT INTO categories (name) VALUES ('Infantile');
INSERT INTO categories (name) VALUES ('Robust');
INSERT INTO categories (name) VALUES ('Wood');

UPDATE categories
	SET id = 9
    WHERE id = 7;

INSERT INTO products (name, amount, price, id_categories) VALUES ('Blue Chair', 30, '300.00', 9);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Red Chair', 200, '2150.0', 2);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Disney Wardrobe', 400, '829.50', 4);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Blue Toaster', 20, '9.90', 3);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Solar Panel', 30, '3000.25', 4);

SELECT * FROM categories;
SELECT * FROM products;

# Junção Cartesiana

SELECT products.name, categories.name
	FROM products, categories
    WHERE products.id_categories = categories.id AND products.amount > 100 AND categories.id IN (1, 2, 3, 6, 9)
    ORDER BY categories.id;

# Junção Inner Join

SELECT products.name, categories.name
	FROM products
	INNER JOIN categories
    ON products.id_categories = categories.id
    WHERE products.amount > 100 AND categories.id IN (1, 2, 3, 6, 9)
    ORDER BY categories.id;