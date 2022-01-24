CREATE DATABASE beecrowd2740;

USE beecrowd2740;

CREATE TABLE league (
	position INT NOT NULL AUTO_INCREMENT,
    team VARCHAR(50) NOT NULL,
    PRIMARY KEY (position)
);

INSERT INTO league (team) VALUES ('The Quack Bats');
INSERT INTO league (team) VALUES ('The Responsible Hornets');
INSERT INTO league (team) VALUES ('The Bawdy Dolphins');
INSERT INTO league (team) VALUES ('The Abstracted Sharks');
INSERT INTO league (team) VALUES ('The Nervous Zebras');
INSERT INTO league (team) VALUES ('The Oafish Owls');
INSERT INTO league (team) VALUES ('The Unequaled Bison');
INSERT INTO league (team) VALUES ('The Keen Kangaroos');
INSERT INTO league (team) VALUES ('The Left Nightingales');
INSERT INTO league (team) VALUES ('The Terrific Elks');
INSERT INTO league (team) VALUES ('The Lumpy Frogs');
INSERT INTO league (team) VALUES ('The Swift Buffalo');
INSERT INTO league (team) VALUES ('The Big Chargers');
INSERT INTO league (team) VALUES ('The Rough Robins');
INSERT INTO league (team) VALUES ('The Silver Crocs');

SELECT * FROM league;

SELECT CONCAT('Podium: ', team) AS name
	FROM league
    WHERE position <= 4
    UNION ALL
		SELECT CONCAT('Demoted: ', team) AS name
			FROM league
			WHERE position >= 14;