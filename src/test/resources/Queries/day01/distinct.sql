/*
 DISTINCT
    remove duplicate from your requested result. original one still into database
 */

-- display only firstName from employees table
select FIRST_NAME from EMPLOYEES;

-- get all unique firstname from employees
select distinct FIRST_NAME from EMPLOYEES;

-- get me unique job-ids from employees
select distinct JOB_ID from  EMPLOYEES;

--get unique country-id from locations
select distinct COUNTRY_ID from LOCATIONS;






