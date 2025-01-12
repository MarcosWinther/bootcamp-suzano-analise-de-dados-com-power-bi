USE company;

SELECT Fname, Lname FROM employee
	WHERE (SELECT COUNT(*) FROM dependent WHERE Ssn = Essn) >= 2;