USE company;

-- Desabiliando SAFE MODE
SET SQL_SAFE_UPDATES = 0;

UPDATE employee SET Salary =
	CASE
		WHEN Dno = 5 THEN Salary + 2000
        WHEN Dno = 4 THEN Salary + 1500
        WHEN Dno = 1 THEN Salary + 3000
        ELSE Salary + 0
    END;
    
SELECT CONCAT(Fname, ' ', Lname) AS Complete_Name, Dno AS Nr_Department, Salary
	FROM employee;
    
-- Habilitando o SAFE MODE
SET SQL_SAFE_UPDATES = 1;