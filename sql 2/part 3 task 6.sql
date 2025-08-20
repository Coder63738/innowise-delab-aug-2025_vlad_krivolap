insert into EMPLOYEES (EMPLOYEEID,firstname,lastname,department,salary)
values (6,'Anna','Mark','IT',12500.00);

update EMPLOYEES
set SALARY = 15000.00 where lastname = 'Mark';

SELECT * from EMPLOYEES;