USE company;

-- AND
SELECT Bdate, Address FROM employee
	WHERE (Fname = 'John' AND Minit = 'B' AND Lname = 'Smith');
    
-- OR
SELECT * FROM department
	WHERE Dname = 'Research' OR Dname = 'Administration';
    
-- Emeplo com AND e OR
SELECT CONCAT(e.Fname, ' ', e.Lname) AS Complete_Name, d.Dname
	FROM employee e, department d
    WHERE (d.Dnumber = e.Dno AND Dname = 'Research' OR Dname = 'Administration');
    
    desc department;