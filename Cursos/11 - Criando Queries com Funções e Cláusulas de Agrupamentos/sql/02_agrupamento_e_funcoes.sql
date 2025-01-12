USE company;

-- Exemplo 01
SELECT COUNT(*) FROM employee;

-- Exemplo 02
SELECT COUNT(*) FROM employee e, department d
	WHERE e.Dno = d.Dnumber AND d.Dname = 'Research';
    
-- Exemplo 03
SELECT e.Dno, COUNT(*) AS Number_of_employees, ROUND(AVG(e.Salary), 2) AS Salary_avg
	FROM employee e, department d
	GROUP BY e.Dno;
    
-- Exemplo 04
SELECT p.Pnumber, p.Pname, COUNT(*)
	FROM project p, works_on w
    WHERE p.Pnumber = w.Pno
    GROUP BY p.Pnumber, p.Pname;
    
-- Exemplo 05
SELECT COUNT(DISTINCT Salary) FROM employee;

-- Exemplo 06
SELECT SUM(Salary) AS total_salary, MAX(Salary) AS max_salary, MIN(Salary) AS min_salary, AVG(Salary) AS avg_salary
	FROM employee;