select * from EMPLOYEES;


/*
 MULTI-ROW / AGGREGATE / GROUPING FUNC
 count
 max
 min
 avg
 sum

 it will take multiple row and gives single output

 All aggregate functions ignore null values
 */


-- COUNT

-- How many department we have ?
select count(*) from DEPARTMENTS;

-- How many different name we have ?

select distinct FIRST_NAME from EMPLOYEES;

select count(distinct FIRST_NAME) from EMPLOYEES;

-- How many employees we have works as 'IT_PROG' or 'SA_REP'
select count(*)  from EMPLOYEES
where JOB_ID IN('IT_PROG','SA_REP');

-- NOTE --> If you wanna count your result use * to get correct answer


-- How many employees we have as department_id is null
-- this gives us correct result since it is counting the rows
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null ;

select DEPARTMENT_ID from EMPLOYEES
where DEPARTMENT_ID is null ;

-- How many employees we have as department_id is not null
-- This both gives us same result since there is no null in result
select count(*) from EMPLOYEES
where DEPARTMENT_ID is not null ;

select DEPARTMENT_ID from EMPLOYEES
where DEPARTMENT_ID is null ;

-- MAX
-- get max salary from employees
select max(SALARY) from EMPLOYEES;

-- MAX
-- get min salary from employees
select min(SALARY) from EMPLOYEES;

-- SUM
-- get total salary of employees
select sum(SALARY) from EMPLOYEES;

-- AVG
-- get avg salary from employees
select avg(SALARY) from EMPLOYEES;

-- ROUND --> it is not an aggregate function, it is numeric function
select round(avg(SALARY)) from EMPLOYEES;

-- determines number of decimal numbers (2)
select round(avg(SALARY), 2) from EMPLOYEES;



