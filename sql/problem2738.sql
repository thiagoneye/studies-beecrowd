CREATE DATABASE beecrowd2738;

USE beecrowd2738;

CREATE TABLE candidate (
	id INT NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE score (
	candidate_id INT NOT NULL,
	math NUMERIC NOT NULL,
    specif NUMERIC NOT NULL,
    project_plan NUMERIC NOT NULL,
    FOREIGN KEY (candidate_id) REFERENCES candidate (id)
);

INSERT INTO candidate (name) VALUES ('Michael P Cannon');
INSERT INTO candidate (name) VALUES ('Barbra J Cable');
INSERT INTO candidate (name) VALUES ('Ronald D Jones');
INSERT INTO candidate (name) VALUES ('Timothy K Fitzsimmons');
INSERT INTO candidate (name) VALUES ('Ivory B Morrison');
INSERT INTO candidate (name) VALUES ('Sheila R Denis');
INSERT INTO candidate (name) VALUES ('Edward C Durgan');
INSERT INTO candidate (name) VALUES ('William K Spencer');
INSERT INTO candidate (name) VALUES ('Donna D Pursley');
INSERT INTO candidate (name) VALUES ('Ann C Davis');

INSERT INTO score (candidate_id, math, specif, project_plan) VALUES (1, 76, 58, 21);
INSERT INTO score (candidate_id, math, specif, project_plan) VALUES (2, 4, 5, 22);
INSERT INTO score (candidate_id, math, specif, project_plan) VALUES (3, 15, 59, 12);
INSERT INTO score (candidate_id, math, specif, project_plan) VALUES (4, 41, 42, 99);
INSERT INTO score (candidate_id, math, specif, project_plan) VALUES (5, 22, 90, 9);
INSERT INTO score (candidate_id, math, specif, project_plan) VALUES (6, 82, 77, 15);
INSERT INTO score (candidate_id, math, specif, project_plan) VALUES (7, 82, 99, 56);
INSERT INTO score (candidate_id, math, specif, project_plan) VALUES (8, 11, 4, 22);
INSERT INTO score (candidate_id, math, specif, project_plan) VALUES (9, 16, 29, 94);
INSERT INTO score (candidate_id, math, specif, project_plan) VALUES (10, 1, 7, 59);

SELECT * FROM candidate;
SELECT * FROM score;

# Junção Cartesiana

SELECT candidate.name, ROUND((math*2 + specif*3 + project_plan*5)/10, 2) AS avg
	FROM candidate, score
    WHERE candidate.id = score.candidate_id
    ORDER BY avg DESC;

# Junção Inner Join

SELECT candidate.name, ROUND((math*2 + specif*3 + project_plan*5)/10, 2) AS avg
	FROM candidate
    INNER JOIN score
    ON candidate.id = score.candidate_id
    ORDER BY avg DESC;