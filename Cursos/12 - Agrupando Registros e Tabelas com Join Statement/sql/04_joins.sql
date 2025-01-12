USE company;

-- Exemplo com INNER JOIN
SELECT * FROM employee INNER JOIN dependent ON Ssn = Essn;

-- Exemplo com LEFT JOIN
SELECT * FROM employee LEFT JOIN dependent ON Ssn = Essn;

-- Exemplo com OUTER JOIN
SELECT * FROM employee LEFT OUTER JOIN dependent ON Ssn = Essn;