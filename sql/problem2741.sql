CREATE DATABASE beecrowd2741;

USE beecrowd2741;

CREATE TABLE students (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    grade DECIMAL(8,1) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO students (name, grade) VALUES ('Terry B. Padilla', '7.3');
INSERT INTO students (name, grade) VALUES ('William S. Ray', '0.6');
INSERT INTO students (name, grade) VALUES ('Barbara A. Gongora', '5.2');
INSERT INTO students (name, grade) VALUES ('Julie B. Manzer', '6.7');
INSERT INTO students (name, grade) VALUES ('Teresa J. Axtell', '4.6');
INSERT INTO students (name, grade) VALUES ('Ben M. Dantzler', '9.6');

SELECT * FROM students;

SELECT CONCAT('Approved: ', name), grade
	FROM students
    WHERE grade >= 7.0
    ORDER BY grade DESC;