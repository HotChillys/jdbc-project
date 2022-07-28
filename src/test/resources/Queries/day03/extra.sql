/*
 Text function: string manipulations
    1. concatenation operator: ||
    2. concat(value1, value2):
    3. upper(value):
    4. lower(value):
    5. initcap(value):
    6. length(value):
    7. replace(columnName, oldValue, newValue):
    8. substr(columnName, Beginning index, end index):
    9. trim(value):

 only used for displaying data, not modifying it.
 */

-- concatenation operator : ||
select email ||'@gmail.com' from EMPLOYEES;

select FIRST_NAME || ' ' || LAST_NAME from EMPLOYEES;

-- concat (value 1, value 2):
select concat( EMAIL, '@gmail.com') from EMPLOYEES;

select concat(concat(FIRST_NAME , ' '), concat(LAST_NAME, ' ') )   from EMPLOYEES;

--upper (value):
select upper(FIRST_NAME) from EMPLOYEES;

-- lower (value):
select lower(FIRST_NAME) from EMPLOYEES;

select lower(upper(FIRST_NAME)) from EMPLOYEES; -- nested version

--initcap (value):
select initcap(EMAIL )from EMPLOYEES;

select EMAIL from EMPLOYEES;

-- length (value) :
select length(FIRST_NAME) from EMPLOYEES;

select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES;

-- replece ( column value, old value, new value):
select FIRST_NAME from EMPLOYEES;

select replace(FIRST_NAME, 'e', 'E') from EMPLOYEES;

-- substr ( column name, beg index, end index):
select FIRST_NAME from EMPLOYEES;

select FIRST_NAME, substr(FIRST_NAME, 0, 1) from EMPLOYEES;

select FIRST_NAME, LAST_NAME, substr(FIRST_NAME, 0, 1) || substr(LAST_NAME, 0, 1) from EMPLOYEES;

-- trim (value) :
select FIRST_NAME from EMPLOYEES;

select concat('      ', FIRST_NAME) from EMPLOYEES;

select trim(concat('      ', FIRST_NAME)) from EMPLOYEES;

-----------------------------------------------------------------------------------

select min(LOCATION_ID) from DEPARTMENTS; --1400

select * from DEPARTMENTS
where LOCATION_ID = 1400;

select * from DEPARTMENTS
where LOCATION_ID = (select min(LOCATION_ID) from DEPARTMENTS); -- dynamic

select * from DEPARTMENTS
where LOCATION_ID = (select max(LOCATION_ID) from DEPARTMENTS);  -- dynamic

select max(SALARY) from EMPLOYEES;

select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

select * from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);

select avg(SALARY) from EMPLOYEES;

select round(avg(SALARY), 3 )from EMPLOYEES;

select sum(SALARY) from  EMPLOYEES;

select FIRST_NAME, LAST_NAME, count(*)from EMPLOYEES
where MANAGER_ID = 100
group by FIRST_NAME, LAST_NAME;

select count(*) from EMPLOYEES
where SALARY < 10000;







