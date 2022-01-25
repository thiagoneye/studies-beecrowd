CREATE DATABASE beecrowd2743;

USE beecrowd2743;

CREATE TABLE people (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO people (name) VALUES ('Karen');
INSERT INTO people (name) VALUES ('Manuel');
INSERT INTO people (name) VALUES ('Ygor');
INSERT INTO people (name) VALUES ('Valentine');
INSERT INTO people (name) VALUES ('Jo');

SELECT name, length(name) AS length
	FROM people
    ORDER BY length DESC;