select *from EMPLOYEES;

--display job_ids where their avg salary is more than 5K
select JOB_ID, avg(SALARY), count(*) from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000;

-- BAD PRACTICE and NOT CORRECT
select JOB_ID, avg(SALARY), count(*) from EMPLOYEES
where SALARY > 5000
group by JOB_ID;

-- get department id where employees count  is bigger than 5
select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*) > 5;

-- IQ --> display duplicate names from employees table
select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*) > 1;






