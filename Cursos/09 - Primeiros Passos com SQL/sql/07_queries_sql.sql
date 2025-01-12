USE company;

-- Gerentes e seus respectivos departamentos
SELECT Ssn, Fname, Dname FROM employee e, department d
	WHERE (e.Ssn = d.Mgr_ssn);
  
-- Funcionários e seus dependentes
SELECT Fname, Lname, Dependent_name, Relationship FROM employee e, dependent d
	WHERE (e.Ssn = d.Essn);

-- Endereço e Data de nascimento do funcionário John B Smith
SELECT Bdate, Address FROM employee
	WHERE Fname = 'John' AND Minit = 'B' AND Lname = 'Smith';
 
 -- Todos os dados do departamento Research
SELECT * FROM department WHERE Dname = 'Research';

-- Endereço, nome e sobrenome dos funcionários do departamento Research
SELECT Fname, Lname, Address FROM employee e, department d
	WHERE d.Dname = 'Research' AND e.Dno = d.Dnumber;

-- Dados dos projetos e seus funcionários
SELECT Pname, Essn, Fname, Lname, Hours FROM project p, works_on w, employee e
	WHERE p.Pnumber = w.Pno AND e.Ssn = w.Essn;