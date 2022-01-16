CREATE DATABASE beecrowd2611;

USE beecrowd2611;

CREATE TABLE genres (
	id INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE movies (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    id_genres INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_genres) REFERENCES genres (id)
);

INSERT INTO genres (description) VALUES ('Animation');
INSERT INTO genres (description) VALUES ('Horror');
INSERT INTO genres (description) VALUES ('Action');
INSERT INTO genres (description) VALUES ('Drama');
INSERT INTO genres (description) VALUES ('Comedy');

INSERT INTO movies (name, id_genres) VALUES ('Batman', 3);
INSERT INTO movies (name, id_genres) VALUES ('The Battle of the Dark River', 3);
INSERT INTO movies (name, id_genres) VALUES ('White Duck', 1);
INSERT INTO movies (name, id_genres) VALUES ('Breaking Barriers', 4);
INSERT INTO movies (name, id_genres) VALUES ('The Two Hours', 2);

SELECT * FROM genres;
SELECT * FROM movies;

# Junção Cartesiana

SELECT movies.id, movies.name
	FROM movies, genres
	WHERE movies.id_genres = genres.id AND genres.description = 'Action';

# Junção Inner Join

SELECT movies.id, movies.name
	FROM movies
	INNER JOIN genres
	ON movies.id_genres = genres.id
	WHERE genres.description = 'Action';