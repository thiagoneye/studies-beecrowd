CREATE DATABASE beecrowd2621;

USE beecrowd2621;

CREATE TABLE providers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state CHAR(2) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE products (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    amount NUMERIC NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    id_providers INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_providers) REFERENCES providers (id)
);

INSERT INTO providers (name, street, city, state) VALUES ('Ajax SA', 'Rua Presidente Castelo Branco', 'Porto Alegre', 'RS');
INSERT INTO providers (name, street, city, state) VALUES ('Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ');
INSERT INTO providers (name, street, city, state) VALUES ('Pr Sheppard Chairs', 'Rua do Moinho', 'Santa Maria', 'RS');
INSERT INTO providers (name, street, city, state) VALUES ('Elon Electro', 'Rua Apolo', 'São Paulo', 'SP');
INSERT INTO providers (name, street, city, state) VALUES ('Mike Electro', 'Rua Pedro da Cunha', 'Curitiba', 'PR');

INSERT INTO products (name, amount, price, id_providers) VALUES ('Blue Chair', 30, '300.00', 5);
INSERT INTO products (name, amount, price, id_providers) VALUES ('Red Chair', 50, '2150.0', 2);
INSERT INTO products (name, amount, price, id_providers) VALUES ('Disney Wardrobe', 400, '829.50', 4);
INSERT INTO products (name, amount, price, id_providers) VALUES ('Executive Chair', 17, '9.90', 3);
INSERT INTO products (name, amount, price, id_providers) VALUES ('Solar Panel', 30, '3000.25', 4);

SELECT * FROM providers;
SELECT * FROM products;

# Junção Cartesiana

SELECT products.name
	FROM providers, products
    WHERE providers.id = products.id_providers AND products.amount > 10 AND products.amount < 20 AND providers.name LIKE 'P%';

# Junção Inner Join

SELECT products.name
	FROM products
    INNER JOIN providers
    ON products.id_providers = providers.id
    WHERE products.amount > 10 AND products.amount < 20 AND providers.name LIKE 'P%';