USE company;

-- EXISTS

-- Empregados que possuem dependentes
SELECT e.Fname, e.Lname FROM employee e
	WHERE EXISTS (SELECT * FROM dependent as d
					WHERE e.Ssn = d.Essn);

-- Empregados que possuem filhos
SELECT e.Fname, e.Lname FROM employee e
	WHERE EXISTS (SELECT * FROM dependent as d
					WHERE e.Ssn = d.Essn AND Relationship = 'Son');

-- Empregados que possuem filhas
SELECT e.Fname, e.Lname FROM employee e
	WHERE EXISTS (SELECT * FROM dependent as d
					WHERE e.Ssn = d.Essn AND Relationship = 'Daughter');

-- Empregados que não possuem dependentes                    
SELECT e.Fname, e.Lname FROM employee e
	WHERE NOT EXISTS (SELECT * FROM dependent as d
					WHERE e.Ssn = d.Essn);

-- Empregados que não são gerentes
SELECT e.Fname, e.Lname FROM employee e
	WHERE NOT EXISTS (SELECT * FROM department as d
					WHERE e.Ssn = d.Mgr_ssn);
				
-- Gerentes que têm dependentes
SELECT e.Fname, e.Lname FROM employee e, department d
	WHERE (e.Ssn = d.Mgr_ssn) AND EXISTS (SELECT * FROM dependent dp WHERE e.Ssn = dp.Essn);