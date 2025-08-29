CREATE OR REPLACE VIEW IT_Department_View AS
SELECT 
    employeeid,
    firstname,
    lastname,
    salary
FROM 
    employees
where 
	department = 'IT'