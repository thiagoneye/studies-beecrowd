CREATE DATABASE beecrowd2994;

USE beecrowd2994;

CREATE TABLE doctors (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE work_shifts (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    bonus NUMERIC NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE attendances (
	id INT NOT NULL AUTO_INCREMENT,
    hours INT NOT NULL,
    id_doctor INT NOT NULL,
    id_work_shift INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_doctor) REFERENCES doctors (id),
    FOREIGN KEY (id_work_shift) REFERENCES work_shifts (id)
);

INSERT INTO doctors (name) VALUES ('Arlino'), ('Tiago'), ('Amanda'), ('Wellington');

INSERT INTO work_shifts (name, bonus) VALUES ('nocturnal', 15), ('afternoon', 2), ('day', 1);

INSERT INTO attendances (hours, id_doctor, id_work_shift) VALUES (5, 1, 1), (2, 3, 1), (3, 3, 2), (2, 2, 3),
	(5, 1, 3), (1, 4, 3), (2, 4, 1), (2, 3, 2), (4, 2, 2);

SELECT * FROM doctors;
SELECT * FROM work_shifts;
SELECT * FROM attendances;

# Junção Cartesiana

SELECT doctors.name, ROUND(SUM(attendances.hours*150*(1 + work_shifts.bonus/100)),1) AS salary
	FROM doctors, work_shifts, attendances
    WHERE attendances.id_doctor = doctors.id AND attendances.id_work_shift = work_shifts.id
    GROUP BY doctors.id
    ORDER BY salary DESC;

# Junção Inner Join

SELECT doctors.name, ROUND(SUM(attendances.hours*150*(1 + work_shifts.bonus/100)),1) AS salary
	FROM attendances
    INNER JOIN doctors
    ON attendances.id_doctor = doctors.id
    INNER JOIN work_shifts
    ON attendances.id_work_shift = work_shifts.id
    GROUP BY doctors.id
    ORDER BY salary DESC;