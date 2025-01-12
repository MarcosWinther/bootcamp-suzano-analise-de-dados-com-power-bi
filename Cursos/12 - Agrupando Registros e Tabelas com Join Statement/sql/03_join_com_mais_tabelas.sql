USE company;

-- JOIN com mais tabelas

-- Exemplo 01
SELECT CONCAT(Fname, ' ', Lname), Dno, Pname, Plocation FROM employee
	INNER JOIN works_on ON Ssn = Essn
    INNER JOIN project ON Pno = Pnumber
    ORDER BY Pnumber;
    
-- Exemplo 02
SELECT CONCAT(Fname, ' ', Lname), Dno, Pname, Plocation FROM employee
	INNER JOIN works_on ON Ssn = Essn
    INNER JOIN project ON Pno = Pnumber
    WHERE Plocation LIKE 'S%'
    ORDER BY Pnumber;

-- Exemplo 03
SELECT CONCAT(Fname, ' ', Lname) AS Complete_Name, Dno AS Dept_Number, Pname AS Project_Name, 
		Plocation AS Location 
	FROM employee
	INNER JOIN works_on ON Ssn = Essn
    INNER JOIN project ON Pno = Pnumber
    WHERE Pname LIKE 'Product%'
    ORDER BY Pnumber;
    
-- Exemplo 04
SELECT Dnumber, CONCAT(Fname, ' ', Lname) AS Manager, Salary, ROUND(Salary * 0.05, 2) AS Bonus
	FROM department
	INNER JOIN dept_location USING(Dnumber)
    INNER JOIN employee ON Ssn = Mgr_ssn
    GROUP BY Dnumber;