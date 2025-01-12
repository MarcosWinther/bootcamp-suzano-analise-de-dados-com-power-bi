USE company;

-- Exemplo 01
SELECT p.Dnumber, p.Pname, COUNT(*) 
	FROM project p, works_on w
	WHERE p.Pnumber = w.Pno
    GROUP BY p.Pnumber, w.Pno;
    
-- Exemplo 02
SELECT p.Dnumber, p.Pname, COUNT(*) AS Number_of_register, ROUND(AVG(e.Salary), 2) AS Avg_Salary
	FROM project p, works_on w, employee e
	WHERE p.Pnumber = w.Pno AND e.Ssn = w.Essn
    GROUP BY p.Pnumber, w.Pno;

-- Exemplo 03
SELECT p.Dnumber, p.Pname, COUNT(*) AS Number_of_register, ROUND(AVG(e.Salary), 2) AS Avg_Salary
	FROM project p, works_on w, employee e
	WHERE p.Pnumber = w.Pno AND e.Ssn = w.Essn
    GROUP BY p.Pnumber
    ORDER BY AVG(e.Salary) DESC;
    