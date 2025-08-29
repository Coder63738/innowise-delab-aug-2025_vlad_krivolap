begin;
savepoint before_update;
CREATE TABLE Departments (
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(50) UNIQUE NOT NULL,
 Location VARCHAR(50)
);

alter table EMPLOYEES add column Email VARCHAR(100);

update EMPLOYEES set email = CONCAT('ID', EMPLOYEEID ) || '@job.com' where email is null;

alter table EMPLOYEES add constraint email UNIQUE (email);

alter table departments rename column location to OfficeLocation;

select * from departments;
select * from EMPLOYEES;
rollback to savepoint before_update;
commit;