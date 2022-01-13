CREATE DATABASE beecrowd2606;

USE beecrowd2606;

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

INSERT INTO categories (name) VALUES ('old stock');
INSERT INTO categories (name) VALUES ('new stock');
INSERT INTO categories (name) VALUES ('modern');
INSERT INTO categories (name) VALUES ('commercial');
INSERT INTO categories (name) VALUES ('recyclable');
INSERT INTO categories (name) VALUES ('executive');
INSERT INTO categories (name) VALUES ('superior');
INSERT INTO categories (name) VALUES ('wood');
INSERT INTO categories (name) VALUES ('super luxury');
INSERT INTO categories (name) VALUES ('vintage');

INSERT INTO products (name, amount, price, id_categories) VALUES ('Lampshade', 100, '800', 4);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Table for painting', 1000, '560', 9);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Notebook desk', 10000, '25.50', 9);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Computer desk', 350, '320.50', 6);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Chair', 3000, '210.64', 9);
INSERT INTO products (name, amount, price, id_categories) VALUES ('Home alarm', 750, '460', 4);

SELECT * FROM categories;
SELECT * FROM products;

SELECT products.id, products.name FROM products
INNER JOIN categories
ON products.id_categories = categories.id
WHERE categories.name LIKE 'super%';