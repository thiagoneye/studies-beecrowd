CREATE DATABASE beecrowd2746;

USE beecrowd2746;

CREATE TABLE virus (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO virus (name) VALUES ('H1RT');
INSERT INTO virus (name) VALUES ('H7H1');
INSERT INTO virus (name) VALUES ('HUN8');
INSERT INTO virus (name) VALUES ('XH1HX');
INSERT INTO virus (name) VALUES ('XXXX');

SELECT * FROM virus;

SELECT REPLACE(name, 'H1', 'X') AS name
	FROM virus;