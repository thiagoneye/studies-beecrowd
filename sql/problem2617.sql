CREATE DATABASE beecrowd2617;

USE beecrowd2617;

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

INSERT INTO providers (name, street, city, state) VALUES ('Ajax SA', 'Presidente Castelo Branco', 'Porto Alegre', 'RS');
INSERT INTO providers (name, street, city, state) VALUES ('Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ');
INSERT INTO providers (name, street, city, state) VALUES ('South Chairs', 'Av Moinho', 'Santa Maria', 'RS');
INSERT INTO providers (name, street, city, state) VALUES ('Elon Electro', 'Apolo', 'São Paulo', 'SP');
INSERT INTO providers (name, street, city, state) VALUES ('Mike Electro', 'Pedro da Cunha', 'Curitiba', 'PR');

INSERT INTO products (name, amount, price, id_providers) VALUES ('Blue Chair', 30, '300.00', 5);
INSERT INTO products (name, amount, price, id_providers) VALUES ('Red Chair', 50, '2150.0', 1);
INSERT INTO products (name, amount, price, id_providers) VALUES ('Disney Wardrobe', 400, '829.50', 4);
INSERT INTO products (name, amount, price, id_providers) VALUES ('Blue Toaster', 20, '9.90', 3);
INSERT INTO products (name, amount, price, id_providers) VALUES ('Solar Panel', 30, '3000.25', 4);

SELECT * FROM providers;
SELECT * FROM products;

# Junção Cartesiana

SELECT products.name, providers.name
	FROM products, providers
    WHERE products.id_providers = providers.id
		AND providers.name LIKE 'Ajax SA';

# Junção Inner Join

SELECT products.name, providers.name
	FROM providers
    INNER JOIN products
    ON providers.id = products.id_providers
	WHERE providers.name LIKE 'Ajax SA';