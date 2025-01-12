CREATE SCHEMA IF NOT EXISTS company;

CREATE TABLE company.employee (
	Fname VARCHAR(20) NOT NULL,
    Minit CHAR,
    Lname VARCHAR(30) NOT NULL,
    Ssn CHAR(9) NOT NULL,
    Bdate DATE,
    Address VARCHAR(60),
    Sex CHAR,
    Salary DECIMAL(10, 2),
    Super_ssn CHAR(9),
    Dno INT NOT NULL,
    CONSTRAINT chk_salary_employee CHECK (Salary > 2000.0),
    CONSTRAINT pk_enployee PRIMARY KEY (Ssn)
);

USE company;

CREATE TABLE department (
	Dname VARCHAR(15) NOT NULL,
    Dnumber INT NOT NULL,
    Mgr_ssn CHAR(9),
    Mgr_start_date DATE,
    Dept_create_date DATE,
    CONSTRAINT chk_date_dept CHECK (Dept_create_date <= Mgr_start_date),
    CONSTRAINT pk_dept PRIMARY KEY (Dnumber),
    CONSTRAINT unique_name_dept UNIQUE(Dname),
    CONSTRAINT fk_dept FOREIGN KEY (Mgr_ssn) REFERENCES employee(Ssn)
);

CREATE TABLE dept_location (
	Dnumber INT NOT NULL,
    Dlocation VARCHAR(30) NOT NULL,
    CONSTRAINT pk_dept_location PRIMARY KEY (Dnumber, Dlocation),
    CONSTRAINT fk_dept_location FOREIGN KEY (Dnumber) REFERENCES department(Dnumber)
);

CREATE TABLE project (
	Pname VARCHAR(15) NOT NULL,
    Pnumber INT NOT NULL,
    Plocation VARCHAR(30),
    Dnumber INT NOT NULL,
    CONSTRAINT pk_project PRIMARY KEY (Pnumber),
    CONSTRAINT unique_project UNIQUE (Pname),
    CONSTRAINT fk_project FOREIGN KEY (Dnumber) REFERENCES department(Dnumber)
);

CREATE TABLE works_on (
	Essn CHAR(9) NOT NULL,
    Pno INT NOT NULL,
    Hours DECIMAL(3,1) NOT NULL,
    CONSTRAINT pk_works_on PRIMARY KEY (Essn, Pno),
    CONSTRAINT fk_employee_works_on FOREIGN KEY (Essn) REFERENCES employee(Ssn),
    CONSTRAINT fk_project_works_on FOREIGN KEY (Pno) REFERENCES project(Pnumber)
);

CREATE TABLE dependent(
	Essn CHAR(9) NOT NULL,
    Dependent_name VARCHAR(40) NOT NULL,
    Sex CHAR,
    Bdate DATE,
    Relationship VARCHAR(10),
    CONSTRAINT pk_dependent PRIMARY KEY (Essn, Dependent_name),
    CONSTRAINT fk_dependent FOREIGN KEY (Essn) REFERENCES employee(Ssn)
);

-- Checando constraints
SELECT * FROM information_schema.table_constraints
WHERE CONSTRAINT_SCHEMA = 'company';

SELECT * FROM information_schema.referential_constraints
WHERE CONSTRAINT_SCHEMA = 'company';

-- Alterando tabela employee
ALTER TABLE employee
	ADD CONSTRAINT fk_employee
    FOREIGN KEY (Super_ssn) REFERENCES employee(Ssn)
    ON DELETE SET NULL
    ON UPDATE CASCADE;