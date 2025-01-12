USE company;
desc department;
desc project;
DESC WORKS_ON;
desc employee;

-- Subqueries

-- Exemplo 01
SELECT DISTINCT Pnumber FROM project
	WHERE Pnumber IN
		(
			SELECT DISTINCT w.Pno FROM works_on w, employee e
				WHERE (w.Essn = e.Ssn AND e.Lname = 'Smith')
        )
    OR
		(
			SELECT Pnumber
				FROM project p, employee e, department d
				WHERE (d.Mgr_ssn = e.Ssn AND e.Lname = 'Smith' AND d.Dnumber = p.Dnumber)
		);

-- Exemplo 02
SELECT DISTINCT * FROM works_on
	WHERE (Pno, Hours) IN 
    (
		SELECT Pno, Hours FROM works_on
			WHERE Essn = '123456789'
    );