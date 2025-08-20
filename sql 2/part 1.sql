begin;
savepoint before_update;
insert into employees (firstname,lastname,department,salary)
values ('Anna','Mark','IT',12500.00),
('Dude','Man','HR',14000.00); -- 1 добавление новых пользователя

select * from employees; -- 2 выбор всех пользователей

select FIRSTNAME ,LASTNAME
from employees 
where DEPARTMENT like '%IT%'; -- 3 выбор всехсотрудников из IT отдела

update employees
set salary = 65000.00 where firstname ||' '||lastname = 'Alice Smith'; -- 4 изменение зарплаты ALICE SMITH

delete from employeeprojects
where "employeeid"  in (select employeeid from employees where lastname = 'Prince');

delete from employees
where "lastname" like 'Prince';-- 5 удаление записи Prince

select * from EMPLOYEES; -- 6 проверка всего
rollback to savepoint before_update;
commit;