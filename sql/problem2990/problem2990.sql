CREATE DATABASE beecrowd2990;

USE beecrowd2990;

CREATE TABLE departamentos (
	dnumero INT PRIMARY KEY,
    dnome VARCHAR(60),
    cpf_gerente VARCHAR(15)
);

CREATE TABLE projetos (
	pnumero INT PRIMARY KEY,
    pnome VARCHAR(45),
    dnumero INT,
    FOREIGN KEY (dnumero) REFERENCES departamentos (dnumero)
);

CREATE TABLE empregados (
	cpf VARCHAR(15) PRIMARY KEY,
    enome VARCHAR(60),
    salario DECIMAL(8,2),
    cpf_supervisor VARCHAR(15),
    dnumero INT,
    FOREIGN KEY (dnumero) REFERENCES departamentos (dnumero)
);

CREATE TABLE trabalha (
	cpf_emp VARCHAR(15) REFERENCES empregados (cpf),
    pnumero INT REFERENCES projetos (pnumero)
);

INSERT INTO departamentos VALUES ('1010', 'Pesquisa', '049382234322'),
	('1020', 'Ensino', '2434332222');

INSERT INTO projetos VALUES ('2010', 'Alpha', '1010'),
							('2020', 'Beta', '1020');

INSERT INTO empregados VALUES ('49382234322', 'João Silva', '2350', '2434332222', '1010'),
							('586733922290', 'Mario Silveira', '3500', '2434332222', '1010'),
                            ('2434332222', 'Aline Barros', '2350', NULL, '1010'),
                            ('1733332162', 'Tulio Vidal', '8350', NULL, '1020'),
                            ('4244435272', 'Juliana Rodrigues', '3310', NULL, '1020'),
                            ('1014332672', 'Natalia Marques', '2900', NULL, '1010');

INSERT INTO trabalha VALUES ('49382234322', '2010'),
							('586733922290', '2020'),
                            ('49382234322', '2020');

SELECT * FROM departamentos;
SELECT * FROM projetos;
SELECT * FROM empregados;
SELECT * FROM trabalha;

SELECT empregados.cpf, empregados.enome, departamentos.dnome
	FROM empregados
    INNER JOIN departamentos
    ON empregados.dnumero = departamentos.dnumero
    WHERE empregados.cpf NOT IN (SELECT trabalha.cpf_emp FROM trabalha)
	ORDER BY empregados.cpf;