CREATE DATABASE beecrowd2998;

USE beecrowd2998;

CREATE TABLE clients (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    investment NUMERIC,
    PRIMARY KEY (id)
);

CREATE TABLE operations (
	id INT NOT NULL AUTO_INCREMENT,
    month INT NOT NULL,
    profit NUMERIC NOT NULL,
    client_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES clients (id)
);

INSERT INTO clients (name, investment)
	VALUES ('Daniel', 500), ('Oliveira', 2000), ('Lucas', 1000);

INSERT INTO operations (month, profit, client_id)
	VALUES (1, 230, 1), (1, 1000, 2), (2, 1000, 2),
		(1, 100, 3), (2, 300, 3), (3, 900, 3), (4, 400, 3);

SELECT * FROM clients;
SELECT * FROM operations;

SELECT * FROM (
	SELECT cli.name, cli.investment, CEILING((cli.investment / AVG(DISTINCT op.profit))) AS "month_of_payback", (SUM(op.profit) - cli.investment) AS "return"
		FROM clients cli
		LEFT JOIN operations op
			ON op.client_id = cli.id
		GROUP BY cli.name, cli.investment
	) s1
    WHERE "return" >= 0
    ORDER BY "return" DESC;