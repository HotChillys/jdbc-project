select * from employees;

/*
 ALIASES

 -- Rename column -- > Give an temporary name for column.It will not anything into database



 -- Rename table --> JOINS


 */

-- Rename column
-- Spaces are not allowed to rename column.It makes all UPPERCASE
select FIRST_NAME as given_name from EMPLOYEES;

-- It will not change anything from db
select FIRST_NAME from EMPLOYEES;

select max(salary) as highest_salary from employees;


-- Another to rename.It will use column name as it is.Also we can use spaces as well
select FIRST_NAME as "given name" from EMPLOYEES;


/*
 STRING FUNCTIONS

    -- CONCAT
        int java --> +  --> firstname + " " + lastname
        int SQL --> ||  --> firstname || + ' ' || last name
 */


 -- add email to @gmail.com domain and display as full-email
select * from EMPLOYEES; -- SKING@gmail.com --> column name is full-email

select EMAIL||'@gmail.com'as full_EMAIL from EMPLOYEES;

-- another concat
select concat(EMAIL, '@gmail.com') as full_email from EMPLOYEES;

--LOWER
select lower(concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;


--UPPER
select upper(concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;

-- INITCAP
-- It makes first letter uppercase
select EMAIL from EMPLOYEES;
select initcap(EMAIL) from EMPLOYEES;

-- LENGTH
-- It will length of provided data

select length(email) from EMPLOYEES;

-- display all the employees first name and length of it in the result order them based on length
select FIRST_NAME,length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length(FIRST_NAME);

--by  column aliases
select FIRST_NAME,length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length_firstname;

--by  column index
select FIRST_NAME,length(FIRST_NAME) as length_firstname from EMPLOYEES
order by 2;


/*
 SUBSTR(colName,beginIndex,numberOfChar)

 - if beginIndex is o , it is treated as 1
 - if beginIndex is negative , it will start from backward of data
 - if numberOfChar is omitted , it works till the end

 */

-- IQ from screenshot
select FIRST_NAME,salary from EMPLOYEES
where SALARY>3000  -- we dont any employee in our db that s why I am using 3000
order by lower(substr(FIRST_NAME,-3)) asc,SALARY desc ;












