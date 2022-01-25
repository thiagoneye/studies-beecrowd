CREATE DATABASE beecrowd2745;

USE beecrowd2745;

CREATE TABLE people (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    salary NUMERIC NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO people (name, salary) VALUES ('James M. Tabarez', 883);
INSERT INTO people (name, salary) VALUES ('Rafael T. Hendon', 4281);
INSERT INTO people (name, salary) VALUES ('Linda J. Gardner', 4437);
INSERT INTO people (name, salary) VALUES ('Nicholas J. Conn', 8011);
INSERT INTO people (name, salary) VALUES ('Karol A. Morales', 2508);
INSERT INTO people (name, salary) VALUES ('Lolita S. Graves', 8709);

SELECT * FROM people;

SELECT name, ROUND(salary*0.1, 2) AS tax
	FROM people
    WHERE salary > 3000;