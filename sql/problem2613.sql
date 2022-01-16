CREATE DATABASE beecrowd2613;

USE beecrowd2613;

CREATE TABLE prices (
	id INT NOT NULL AUTO_INCREMENT,
    categorie VARCHAR(50) NOT NULL,
    value DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE movies (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    id_prices INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_prices) REFERENCES prices (id)
);

INSERT INTO prices (categorie, value) VALUES ('Releases', '3.50');
INSERT INTO prices (categorie, value) VALUES ('Bronze Seal', '2.00');
INSERT INTO prices (categorie, value) VALUES ('Silver Seal', '2.50');
INSERT INTO prices (categorie, value) VALUES ('Gold Seal', '3.00');
INSERT INTO prices (categorie, value) VALUES ('Promotion', '1.50');

INSERT INTO movies (name, id_prices) VALUES ('Batman', 3);
INSERT INTO movies (name, id_prices) VALUES ('The Battle of the Dark River', 3);
INSERT INTO movies (name, id_prices) VALUES ('White Duck', 5);
INSERT INTO movies (name, id_prices) VALUES ('Breaking Barriers', 4);
INSERT INTO movies (name, id_prices) VALUES ('The Two Hours', 2);

SELECT * FROM prices;
SELECT * FROM movies;

# Junção Cartesiana

SELECT movies.id, movies.name
	FROM movies, prices
    WHERE movies.id_prices = prices.id AND prices.value < '2.00';

# Junção Inner Join

SELECT movies.id, movies.name
	FROM movies
    INNER JOIN prices
    ON movies.id_prices = prices.id
	WHERE prices.value < '2.00';