begin;
savepoint before_update;
UPDATE EMPLOYEES
set SALARY = round(salary * 1.1) where DEPARTMENT = 'HR'; -- 1 task

UPDATE EMPLOYEES
set DEPARTMENT = 'Senior IT' where salary >= 70000; -- 2 task

delete from EMPLOYEES
where "employeeid" in (
select employees.EMPLOYEEID  from EMPLOYEES
left join EMPLOYEEPROJECTS on EMPLOYEES.EMPLOYEEID = EMPLOYEEPROJECTS.EMPLOYEEID -- 3 task
where employeeprojects.EMPLOYEEID is null);

insert into PROJECTS (PROJECTID,PROJECTNAME,BUDGET,STARTDATE,ENDDATE)
values (4,'Dota 3',2000000,'2025-08-19','2025-08-20');
insert into employeeprojects (employeeid,projectid,hoursworked)
values ((select EMPLOYEEID--,count(projectid)
FROM EMPLOYEEPROJECTS
group by EMPLOYEEID 
having count(EMPLOYEEID) < 2 and sum(HOURSWORKED) > 50
limit 1),4,0);
insert into employeeprojects (employeeid,projectid,hoursworked)
values ((select EMPLOYEEID--,count(projectid)
FROM EMPLOYEEPROJECTS
group by EMPLOYEEID 
having count(EMPLOYEEID) < 2 and sum(HOURSWORKED) > 50
limit 1),4,0);
select * from EMPLOYEES;
SELECT * from EMPLOYEEPROJECTS;
rollback to savepoint before_update;
commit;