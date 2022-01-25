CREATE DATABASE beecrowd2744;

USE beecrowd2744;

CREATE TABLE account (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    login VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO account (name, login, password) VALUES ('Joyce P. Parry', 'Promeraw', 'noh1Oozei');
INSERT INTO account (name, login, password) VALUES ('Michael T. Gonzalez', 'Phers1942', 'Iath3see9bi');
INSERT INTO account (name, login, password) VALUES ('Heather W. Lawless', 'Hankicht', 'diShono4');
INSERT INTO account (name, login, password) VALUES ('Otis C. Hitt', 'Conalothe', 'zooFohH7w');
INSERT INTO account (name, login, password) VALUES ('Roger N. Brownfield', 'Worseente', 'fah7ohNg');

SELECT * FROM account;

SELECT id, password, MD5(password) as "MD5"
	FROM account;