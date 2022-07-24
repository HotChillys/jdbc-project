/*
 we will use where keyword to filter requested result
 */

 -- get first name, last name, salary from employees where firstname is David
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME = 'David';

-- '' whatever you put in single quote it is case sensitive.


-- get first name, last name, salary from employees where firstname is David, last name is Lee
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME = 'David' and LAST_NAME = 'Lee';

-- get all info from employee who is making salary more than 6000
select * from EMPLOYEES
where SALARY > 6000;

-- get all info from employee who is making salary less than 6000 and equal 6000
select * from EMPLOYEES
where SALARY <= 6000;

-- get email from employee who is making salary more than 6000
select EMAIL from EMPLOYEES
where SALARY <= 6000;
-- Do we have relation with email ans salary? NO

-- get firstname, salary fom employees who is making more than 6000 and department id = 80
select FIRST_NAME, SALARY from EMPLOYEES
where SALARY > 6000 and DEPARTMENT_ID = 80;

-- get firstname, salary fom employees who is making more than and equal 3000 and less than or equal 6000
select FIRST_NAME, SALARY from EMPLOYEES
where SALARY >= 3000 and SALARY <= 6000;

-- BETWEEN lower AND upper  --Z> boundaries are included
-- it will give all matching result within range
select FIRST_NAME, SALARY from EMPLOYEES
where SALARY between 3000 and 6000;

-- get all the info from employees who is working as IT_PROG and SA_REP
select * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';

-- IN CLAUSES
-- It uses OR logic
-- get all the info from employees who is working as IT_PROG and SA_REP
select * from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP', 'FI_MGR');

-- get all the info from employees who is not working as IT_PROG and SA_REP
select * from EMPLOYEES
where JOB_ID not in ('IT_PROG', 'SA_REP', 'FI_MGR');

-- get all info from locations table where city is Rome, Tokyo
select * FROM LOCATIONS
where CITY in ('Roma', 'Tokyo');

-- display all info from employees where ids are equals 112, 145, 124, 122
select * from  EMPLOYEES
where EMPLOYEE_ID in (113, 145, 124, 122);

-- NULL and NOT NULL
select  * from EMPLOYEES
where DEPARTMENT_ID is null ;

select  * from EMPLOYEES
where DEPARTMENT_ID is not null ;