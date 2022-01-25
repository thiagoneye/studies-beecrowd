CREATE DATABASE beecrowd2742;

USE beecrowd2742;

CREATE TABLE dimensions (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE life_registry (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    omega DECIMAL(8,1) NOT NULL,
    dimensions_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES dimensions (id)
);

INSERT INTO dimensions (name) VALUES ('C774');
INSERT INTO dimensions (name) VALUES ('C784');
INSERT INTO dimensions (name) VALUES ('C794');
INSERT INTO dimensions (name) VALUES ('C824');
INSERT INTO dimensions (name) VALUES ('C875');

INSERT INTO life_registry (name, omega, dimensions_id) VALUES ('Richard Postman', '5.6', 2);
INSERT INTO life_registry (name, omega, dimensions_id) VALUES ('Simple Jelly', '1.4	', 1);
INSERT INTO life_registry (name, omega, dimensions_id) VALUES ('Richard Gran Master', '2.5', 1);
INSERT INTO life_registry (name, omega, dimensions_id) VALUES ('Richard Turing', '6.4', 4);
INSERT INTO life_registry (name, omega, dimensions_id) VALUES ('Richard Strall', '1.0', 3);

SELECT * FROM dimensions;
SELECT * FROM life_registry;

# Junção Cartesiana

SELECT life_registry.name, ROUND(life_registry.omega*1.618, 3) AS 'Fator N'
	FROM life_registry, dimensions
    WHERE life_registry.dimensions_id = dimensions.id AND life_registry.name LIKE 'Richard%' AND (dimensions.name = 'C875' OR dimensions.name = 'C774')
    ORDER BY omega DESC;

# Junção Inner Join

SELECT life_registry.name, ROUND(life_registry.omega*1.618, 3) AS 'Fator N'
	FROM dimensions
	INNER JOIN life_registry
	ON dimensions.id = life_registry.dimensions_id
	WHERE dimensions.name IN ('C875', 'C774') AND life_registry.name LIKE 'Richard%'
	ORDER BY life_registry.omega;