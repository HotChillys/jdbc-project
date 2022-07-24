select * from EMPLOYEES;

-- how many different job_id we have?
select distinct JOB_ID from EMPLOYEES;

-- Display average salary for 'IT_PROG"
select avg(SALARY) from EMPLOYEES
where JOB_ID in 'IT_PROG';

-- Display average salary for 'SA_REP"
select avg(SALARY) from EMPLOYEES
where JOB_ID in 'SA_REP';

-- Display average salary for 'MK_MAN"
select avg(SALARY), min(SALARY), sum(SALARY), max(SALARY) from EMPLOYEES
where JOB_ID = 'MK_MAN';

select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID;

select JOB_ID, avg(SALARY), min(SALARY), sum(SALARY), max(SALARY), count(*) from EMPLOYEES
group by JOB_ID ;

--HINT --> if there is EACH keyword it means we need to use GROUP BY
-- get sum ( salary ) EACH department in employees table
select DEPARTMENT_ID, sum(salary), count(*), min(SALARY) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by DEPARTMENT_ID;












