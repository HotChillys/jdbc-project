select * from employees;

create view EmployeesInfo as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials  ,
       FIRST_NAME||' makes ' || salary as Employees_salary  from EMPLOYEES;


-- S.K. Steven makes 24000
select * from EmployeesInfo;

select initials from EmployeesInfo;

select Employees_salary from EmployeesInfo;

drop view EmployeesInfo;

---------------------------------------------------------------------------------------

select * from EMPLOYEES;

select last_NAME || ' ' || first_NAME as fullname from EMPLOYEES;

create view EmployeeInfo as select LAST_NAME || ' ' || FIRST_NAME as fullname from EMPLOYEES;
select * from EmployeeInfo;

select last_NAME || ' ' || first_NAME as fullname,
lower(email || '@gmail.com') as Email
from EMPLOYEES;

create or replace view EmployeeInfo as
select last_NAME || ' ' || first_NAME as fullname,
       lower(email || '@gmail.com') as Email
from EMPLOYEES;

select * from EmployeeInfo;

drop view EmployeeInfo;























