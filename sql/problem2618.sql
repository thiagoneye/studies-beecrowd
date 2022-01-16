CREATE DATABASE beecrowd2618;

USE beecrowd2618;

CREATE TABLE providers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state CHAR(2) NOT NULL,
    PRIMARY KEY (id)
);

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
    id_providers INT NOT NULL,
    id_categories INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_providers) REFERENCES providers (id),
    FOREIGN KEY (id_categories) REFERENCES categories (id)
);

INSERT INTO providers (name, street, city, state) VALUES ('Ajax SA', 'Rua Presidente Castelo Branco', 'Porto Alegre', 'RS');
INSERT INTO providers (name, street, city, state) VALUES ('Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ');
INSERT INTO providers (name, street, city, state) VALUES ('South Chairs', 'Rua do Moinho', 'Santa Maria', 'RS');
INSERT INTO providers (name, street, city, state) VALUES ('Elon Electro', 'Rua Apolo', 'São Paulo', 'SP');
INSERT INTO providers (name, street, city, state) VALUES ('Mike Electro', 'Rua Pedro da Cunha', 'Curitiba', 'PR');

INSERT INTO categories (name) VALUES ('Super Luxury');
INSERT INTO categories (name) VALUES ('Imported');
INSERT INTO categories (name) VALUES ('Tech');
INSERT INTO categories (name) VALUES ('Vintage');
INSERT INTO categories (name) VALUES ('Supreme');

INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES ('Blue Chair', 30, '300.00', 5, 5);
INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES ('Red Chair', 50, '2150.0', 2, 1);
INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES ('Disney Wardrobe', 400, '829.50', 4, 1);
INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES ('Blue Toaster', 20, '9.90', 3, 1);
INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES ('TV', 30, '3000.25', 2, 2);

SELECT * FROM providers;
SELECT * FROM categories;
SELECT * FROM products;

# Junção Cartesiana

SELECT products.name, providers.name, categories.name
	FROM products, providers, categories
    WHERE products.id_providers = providers.id
		AND products.id_categories = categories.id
        AND providers.name LIKE 'Sansul SA'
        AND categories.name LIKE 'Imported';

# Junção Inner Join

SELECT products.name, providers.name, categories.name
	FROM products
    INNER JOIN providers
		ON products.id_providers = providers.id
    INNER JOIN categories
		ON products.id_categories = categories.id
    WHERE providers.name LIKE 'Sansul SA'
        AND categories.name LIKE 'Imported';