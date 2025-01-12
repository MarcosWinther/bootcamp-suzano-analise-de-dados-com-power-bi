USE company;

-- Exemplo 01
SELECT p.Pnumber, p.Pname, COUNT(*)
	FROM project p, works_on w
    WHERE p.Pnumber = w.Pno
    GROUP BY p.Pnumber, p.Pname
    HAVING COUNT(*) > 2;

-- Exemplo 02
SELECT Dno, COUNT(*)
	FROM employee
    WHERE Salary > 30000
    GROUP BY Dno
    HAVING COUNT(*) >= 2;
    
-- Exemplo 03
SELECT Dno AS Department, COUNT(*) AS Number_of_Employees FROM employee
	WHERE Salary > 20000 AND Dno IN 
    (
		SELECT Dno FROM employee
        GROUP BY Dno
        HAVING COUNT(*) >= 2
    )
    GROUP BY Dno;