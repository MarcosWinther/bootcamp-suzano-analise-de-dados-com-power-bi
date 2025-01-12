USE company;

-- ORDER BY

-- Exemplo 01
SELECT * FROM employee ORDER BY Fname;

-- Exemplo 02
SELECT * FROM employee ORDER BY Fname;

-- Exemplo 03: nome do gerente e departamento
SELECT DISTINCT d.Dname, concat(e.Fname, ' ', e.Lname) AS Manager
	FROM department AS d, employee AS e, works_on AS w, project AS p
	WHERE (d.Dnumber = e.Dno AND e.Ssn = d.Mgr_ssn AND w.Pno = p.Pnumber)
    ORDER BY d.Dname;
    
-- Exemplo 04
SELECT d.Dname AS Department_Name, concat(e.Fname, ' ', e.Lname) AS Employee, p.Pname as Project_Name
	FROM department AS d, employee AS e, project AS p, works_on AS w
    WHERE (d.Dnumber = e.Dno AND e.Ssn = w.Essn AND w.Pno = p.Pnumber)
    ORDER BY d.Dname;