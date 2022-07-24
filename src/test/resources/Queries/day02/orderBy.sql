select * from EMPLOYEES;

/*
 ORDER BY
    - it allows to sort your data based on provided column/index
    - as a default it orders in ASC / Ascending order (a-z or 0-90
    - if you want to order them into DESC / Descending order, we need to specify after column/index
 */

 -- get all info from employees who is making low salary to high
select *from EMPLOYEES
order by SALARY asc;

-- get all info from employees who is making high salary to low
select * from  EMPLOYEES
order by SALARY DESC ;

-- how can we use index to sort data?
    -- index needs to be in limit of your column count

-- this orders data on that specified index (8)
select * from EMPLOYEES
order by 8;

select EMAIL, FIRST_NAME from EMPLOYEES
order by 2 ;

-- get all info where employee_id < 120
-- and order them based on first name alphabetical order
select * from EMPLOYEES
where EMPLOYEE_ID < 120
order by  FIRST_NAME;

--IQ--> get all info from employees based on first name asc and last name desc
select * from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc ;








