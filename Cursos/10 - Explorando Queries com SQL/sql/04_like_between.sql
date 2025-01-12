USE company;

-- Like
SELECT CONCAT(e.Fname, ' ', e.Lname) AS Complete_Name, d.Dname AS Dept_Name, e.Address
	FROM employee e, department d
    WHERE (d.Dnumber = e.Dno AND e.Address LIKE '%Houston%');
    
-- Between
SELECT CONCAT(Fname, ' ', Lname) AS Complete_Name, Salary FROM employee
	WHERE (Salary > 30000 AND Salary < 40000);
    
SELECT CONCAT(Fname, ' ', Lname) AS Complete_Name, Salary FROM employee
	WHERE (Salary BETWEEN 20000 AND 40000);