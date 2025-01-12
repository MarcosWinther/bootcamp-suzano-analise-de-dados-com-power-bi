USE company;

-- Exemplo 01
SELECT Fname, Minit, Lname, Salary, Salary * 0.011 AS INSS FROM employee;
-- Traz o mesmo resultado do comando de cima
SELECT Fname, Minit, Lname, Salary, ROUND(Salary * 0.011, 2) AS INSS FROM employee;

-- Exemplo 02
SELECT * FROM employee AS e, works_on AS w, project p
	WHERE (e.Ssn = w.Essn AND w.Pno = p.Pnumber AND p.Pname = 'ProductX');

SELECT CONCAT(e.Fname, ' ', e.Lname) AS Complete_name, e.Salary, ROUND(e.Salary * 1.1, 2) AS incresead_salary
	FROM employee AS e, works_on AS w, project p
	WHERE (e.Ssn = w.Essn AND w.Pno = p.Pnumber AND p.Pname = 'ProductX');
    
-- Exemplo 03
SELECT CONCAT(e.Fname, ' ', e.Lname) AS Complete_name, e.Address
	FROM employee e, department d
    WHERE (d.Dname = 'Research' AND d.Dnumber = e.Dno);
