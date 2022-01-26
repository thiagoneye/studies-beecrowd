CREATE DATABASE beecrowd2988;

USE beecrowd2988;

CREATE TABLE teams (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE matches (
	id INT NOT NULL AUTO_INCREMENT,
    team_1 INT NOT NULL,
    team_2 INT NOT NULL,
    team_1_goals INT NOT NULL,
    team_2_goals INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (team_1) REFERENCES teams (id),
    FOREIGN KEY (team_2) REFERENCES teams (id)
);

INSERT INTO teams (name) VALUES ('CEARA');
INSERT INTO teams (name) VALUES ('FORTALEZA');
INSERT INTO teams (name) VALUES ('GUARANY DE SOBRAL');
INSERT INTO teams (name) VALUES ('FLORESTA');

INSERT INTO matches (team_1, team_2, team_1_goals, team_2_goals) VALUES (4, 1, 0, 4);
INSERT INTO matches (team_1, team_2, team_1_goals, team_2_goals) VALUES (3, 2, 0, 1);
INSERT INTO matches (team_1, team_2, team_1_goals, team_2_goals) VALUES (1, 3, 3, 0);
INSERT INTO matches (team_1, team_2, team_1_goals, team_2_goals) VALUES (3, 4, 0, 1);
INSERT INTO matches (team_1, team_2, team_1_goals, team_2_goals) VALUES (1, 2, 0, 0);
INSERT INTO matches (team_1, team_2, team_1_goals, team_2_goals) VALUES (2, 4, 2, 1);

SELECT * FROM teams;
SELECT * FROM matches;

SELECT teams.name,
	COUNT(teams.name) AS matches,
    COUNT(CASE WHEN (matches.team_1_goals > matches.team_2_goals AND matches.team_1 = teams.id) OR (matches.team_1_goals < matches.team_2_goals AND matches.team_2 = teams.id) THEN 1 END) AS victories,
    COUNT(CASE WHEN (matches.team_1_goals < matches.team_2_goals AND matches.team_1 = teams.id) OR (matches.team_1_goals > matches.team_2_goals AND matches.team_2 = teams.id) THEN 1 END) AS defeats,
    COUNT(CASE WHEN (matches.team_1_goals = matches.team_2_goals AND matches.team_1 = teams.id) OR (matches.team_1_goals = matches.team_2_goals AND matches.team_2 = teams.id) THEN 1 END) AS draws,
    COUNT(CASE WHEN (matches.team_1_goals > matches.team_2_goals AND matches.team_1 = teams.id) OR (matches.team_1_goals < matches.team_2_goals AND matches.team_2 = teams.id) THEN 1 END) * 3 + COUNT(CASE WHEN (matches.team_1_goals = matches.team_2_goals AND matches.team_1 = teams.id) OR (matches.team_1_goals = matches.team_2_goals AND matches.team_2 = teams.id) THEN 1 END) AS score
		FROM teams
		INNER JOIN matches
		ON teams.id = matches.team_1 OR teams.id = matches.team_2
		GROUP BY teams.name
        ORDER BY score DESC;