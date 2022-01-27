CREATE DATABASE beecrowd2996;

USE beecrowd2996;

CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE packages (
	id_package INT NOT NULL AUTO_INCREMENT,
    id_user_sender INT NOT NULL,
    id_user_receiver INT NOT NULL,
    color VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    PRIMARY KEY (id_package),
    FOREIGN KEY (id_user_sender) REFERENCES users (id),
    FOREIGN KEY (id_user_receiver) REFERENCES users (id)
);

INSERT INTO users (name, address) VALUES ('Edgar Codd', 'England'), ('Peter Chen', 'Taiwan'),
	('Jim Gray', 'United States'), ('Elizabeth O\'Neil', 'United States');

INSERT INTO packages (id_user_sender, id_user_receiver, color, year)
	VALUES (1, 2, 'blue', 2015), (1, 3, 'blue', 2019), (2, 4, 'red', 2019),
		(2, 1, 'green', 2018), (3, 4, 'red', 2015), (4, 3, 'blue', 2019);

SELECT * FROM users;
SELECT * FROM packages;

# Junção Cartesiana

WITH send AS (
	SELECT * FROM users
		WHERE users.address != 'Taiwan'
	),
    rece AS (
		SELECT * FROM users
			WHERE users.address != 'Taiwan'
    )
    SELECT packages.year, send.name AS sender, rece.name AS receiver
		FROM packages, send, rece
		WHERE send.id = packages.id_user_sender AND rece.id = packages.id_user_receiver
			AND (packages.color = 'blue' OR packages.year = 2015)
		ORDER BY packages.year DESC, packages.id_package DESC;

# Junção Inner Join

WITH send AS (
	SELECT * FROM users
		WHERE users.address != 'Taiwan'
	),
    rece AS (
		SELECT * FROM users
			WHERE users.address != 'Taiwan'
    )
    SELECT packages.year, send.name AS sender, rece.name AS receiver
		FROM packages
			INNER JOIN send
				ON send.id = packages.id_user_sender
			INNER JOIN rece
				ON rece.id = packages.id_user_receiver
        WHERE (packages.color = 'blue' OR packages.year = 2015)
		ORDER BY packages.year DESC, packages.id_package DESC;