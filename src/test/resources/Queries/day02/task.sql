select * from JOBS;

-- get me how many departments we have in each location
select LOCATION_ID, count(*) from DEPARTMENTS
group by LOCATION_ID;

-- get me how many locations we have in each country
select COUNTRY_ID, count(*) from LOCATIONS
group by COUNTRY_ID
order by 2;

-- get me how many countries we have in each region
select REGION_ID, count(*) from COUNTRIES
group by REGION_ID
order by REGION_ID;

-- get me how many employees working for each manager
select MANAGER_ID, count(*) from EMPLOYEES
where MANAGER_ID IS NOT NULL
group by MANAGER_ID
having count(*) < 5;



