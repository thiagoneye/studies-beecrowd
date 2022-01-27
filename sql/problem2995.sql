CREATE DATABASE beecrowd2995;

USE beecrowd2995;

CREATE TABLE records (
	id INT NOT NULL AUTO_INCREMENT,
    temperature INT NOT NULL,
    mark INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO records (temperature, mark)
	VALUES (30, 1), (30, 1), (30, 1), (32, 2), (32, 2),
		(32, 2), (32, 2), (30, 3), (30, 3), (30, 3),
        (31, 4), (31, 4), (33, 5), (33, 5), (33, 5);

SELECT * FROM records;

SELECT temperature, COUNT(temperature) AS number_of_records
	FROM records
    GROUP BY mark, temperature
    ORDER BY mark;