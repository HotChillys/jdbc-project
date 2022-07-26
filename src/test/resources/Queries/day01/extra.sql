select * from EMPLOYEES;

-- select single column from a table
select DEPARTMENT_NAME from DEPARTMENTS;

-- select multiple column from table
select DEPARTMENT_NAME, DEPARTMENT_ID from DEPARTMENTS;

-- select columns from multiple table
select * from EMPLOYEES;
select * from DEPARTMENTS;
select * from EMPLOYEES, DEPARTMENTS;

-- select from multiple tables
select EMPLOYEES.DEPARTMENT_ID, DEPARTMENTS.DEPARTMENT_ID from EMPLOYEES, DEPARTMENTS;

