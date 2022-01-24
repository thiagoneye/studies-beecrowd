CREATE DATABASE beecrowd2739;

USE beecrowd2739;

CREATE TABLE loan (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    value DECIMAL(8,2) NOT NULL,
    payday TIMESTAMP NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO loan (name, value, payday) VALUES ('Cristian Ghyprievy', '3000.50', '2017-10-19');
INSERT INTO loan (name, value, payday) VALUES ('John Serial', '10000', '2017-10-10');
INSERT INTO loan (name, value, payday) VALUES ('Michael Seven', '5000.40', '2017-10-17');
INSERT INTO loan (name, value, payday) VALUES ('Joana Cabel', '2000', '2017-10-05');
INSERT INTO loan (name, value, payday) VALUES ('Miguel Santos', '4050', '2017-10-20');

SELECT * FROM loan;

SELECT name, DAY(payday)
	FROM loan;