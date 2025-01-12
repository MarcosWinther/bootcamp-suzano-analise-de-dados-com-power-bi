USE company;

-- Exemplo 01
SELECT d.Dname AS Dept_Name, l.Dlocation AS Localizacao_Dept
	FROM department as d, dept_location AS l
    WHERE d.Dnumber = l.Dnumber;

-- Exemplo 02
SELECT CONCAT(Fname, ' ', Lname) AS nome_completo FROM employee;