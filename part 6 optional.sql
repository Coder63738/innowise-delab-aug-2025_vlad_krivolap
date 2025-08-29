begin;
savepoint before_update;
select Firstname,lastname,PROJECTNAME,HOURSWORKED
from employees
inner join EMPLOYEEPROJECTS on employees.EMPLOYEEID = employeeprojects.EMPLOYEEID
inner join PROJECTS on employeeprojects.PROJECTID = projects.PROJECTID
WHERE concat_ws(' ', FIRSTNAME ,LASTNAME ) = 'Bob Johnson' and HOURSWORKED > 150; -- 1 task

update projects
set budget = round(budget * 1.1)
where PROJECTID in (
select PROJECTS.PROJECTID 
from EMPLOYEES
inner join EMPLOYEEPROJECTS on employees.EMPLOYEEID = employeeprojects.EMPLOYEEID
inner join PROJECTS on employeeprojects.PROJECTID = projects.PROJECTID
where DEPARTMENT = 'IT'); --2 task

update PROJECTS
set ENDDATE = NULL
where PROJECTID = 1;

update PROJECTS
set ENDDATE = (STARTDATE + INTERVAL '1 YEAR')
where ENDDATE is NULL; -- 3 task

insert into employees (EMPLOYEEID,firstname,lastname,department,salary)
values ((select max(employeeid) from EMPLOYEES) + 1 ,'Tailer','Kirhgof','IT',75000.00);

insert into employeeprojects (employeeid,projectid,HOURSWORKED)
values ((select EMPLOYEEID  FROM  EMPLOYEES where FIRSTNAME || ' ' || LASTNAME = 'Tailer Kirhgof')
,(select projectid FROM PROJECTS where PROJECTNAME = 'Website Redesign'),80); -- 4 task

select * from PROJECTS;
select * from EMPLOYEES;
rollback to savepoint before_update;
commit;