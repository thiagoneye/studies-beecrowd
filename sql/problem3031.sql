CREATE DATABASE beecrowd3001;

USE beecrowd3001;

CREATE TABLE products (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    type CHAR(1) NOT NULL,
    price numeric,
    PRIMARY KEY (id)
);

INSERT INTO products (name, type, price)
	VALUES ('Monitor', 'B', 0), ('Headset', 'A', 0), ('PC Case', 'A', 0),
		('Computer Desk', 'C', 0), ('Gaming Chair', 'C', 0), ('Mouse', 'A', 0);

SELECT * FROM products;

SELECT name AS type,
	CASE 
		WHEN type = 'A' THEN 20.0
        WHEN type = 'B' THEN 70.0
        WHEN type = 'C' THEN 530.5
    END AS price
	FROM products
    ORDER BY products.type, id DESC;