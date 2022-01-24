CREATE DATABASE beecrowd2737;

USE beecrowd2737;

CREATE TABLE lawyers (
	register INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    customers_number INT NOT NULL,
    PRIMARY KEY (register)
);

INSERT INTO lawyers (register, name, customers_number) VALUES (1648, 'Marty M. Harrison', 5);
INSERT INTO lawyers (register, name, customers_number) VALUES (2427, 'Jonathan J. Blevins', 15);
INSERT INTO lawyers (register, name, customers_number) VALUES (3365, 'Chelsey D. Sanders', 20);
INSERT INTO lawyers (register, name, customers_number) VALUES (4153, 'Dorothy W. Ford', 16);
INSERT INTO lawyers (register, name, customers_number) VALUES (5525, 'Penny J. Cormier', 6);

SELECT * FROM lawyers;

SELECT name, customers_number
	FROM lawyers
    WHERE customers_number IN (SELECT max(customers_number) FROM lawyers)
    UNION ALL
	SELECT name, customers_number
		FROM lawyers
        WHERE customers_number IN (SELECT min(customers_number) FROM lawyers)
        UNION ALL
        SELECT 'Average', ROUND(AVG(customers_number), 0)
			FROM lawyers;