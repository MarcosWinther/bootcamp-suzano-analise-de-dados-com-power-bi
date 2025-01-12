USE company;

-- Informações sobre Departamentos em Stafford
SELECT Dname AS Department_Name, d.Mgr_ssn, e.Address  AS MANAGER
	FROM department d, dept_location l, employee e
    WHERE d.Dnumber = l.Dnumber and l.Dlocation = 'Stafford';

-- Gerentes que trabalham em Stafford
SELECT Dname AS Department_Name, CONCAT(e.Fname, ' ', e.Minit, ' ', e.Lname) AS MANAGER
	FROM department d, dept_location l, employee e
    WHERE d.Dnumber = l.Dnumber AND l.Dlocation = 'Stafford'
		AND d.Mgr_ssn = e.Ssn;

-- Departamentos e localização com seus respectivos gerentes
SELECT Dname AS Department_Name, CONCAT(e.Fname, ' ', e.Minit, ' ', e.Lname) AS MANAGER, l.Dlocation
	FROM department d, dept_location l, employee e
    WHERE d.Dnumber = l.Dnumber AND d.Mgr_ssn = e.Ssn;
    
-- Projetos feitos em Stafford
SELECT p.Pnumber, p.Pname, d.Dname, CONCAT(e.Fname, ' ', e.Minit, ' ', e.Lname) AS Manager, e.Address
	FROM employee e, project p, department d
    WHERE d.Dnumber = p.Dnumber AND p.Plocation = 'Stafford' AND d.Mgr_Ssn = e.Ssn;