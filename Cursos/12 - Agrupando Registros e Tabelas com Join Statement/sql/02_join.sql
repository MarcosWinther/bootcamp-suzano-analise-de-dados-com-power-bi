USE company;

-- JOIN

-- Exemplo 01
SELECT * FROM employee JOIN works_on ON Ssn = Essn;

-- Exemplo 02
SELECT * FROM employee JOIN department ON Ssn = Mgr_ssn;

-- Exemplo 03
SELECT CONCAT(Fname, ' ', Minit, ' ', Lname) AS Complete_Name, Address
	FROM (employee JOIN department ON Dno = Dnumber)
    WHERE Dname =  'Research';
    
-- INNER JOIN

-- Exemplo 04
SELECT Dname, Dept_create_date, Dlocation
	FROM department INNER JOIN dept_location USING(Dnumber)
    ORDER BY Dept_create_date;