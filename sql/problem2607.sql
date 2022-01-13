CREATE DATABASE beecrowd2607;

USE beecrowd2607;

CREATE TABLE providers (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(50) NOT NULL,
state CHAR(2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO providers (name, street, city, state) VALUES ('Henrique', 'Av Brasil', 'Rio de Janeiro', 'RJ');
INSERT INTO providers (name, street, city, state) VALUES ('Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG');
INSERT INTO providers (name, street, city, state) VALUES ('Caroline Silva', 'Av São Paulo', 'Salvador', 'BA');
INSERT INTO providers (name, street, city, state) VALUES ('Guilherme Staff', 'Rua Central', 'Porto Alegre', 'RS');
INSERT INTO providers (name, street, city, state) VALUES ('Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR');
INSERT INTO providers (name, street, city, state) VALUES ('Francisco Accerr', 'Av Paulista', 'São Paulo', 'SP');

SELECT * FROM providers;

SELECT DISTINCT city
FROM providers
ORDER BY city;
