
-- start with
select * from COUNTRIES;

select * from COUNTRIES
where COUNTRY_NAME like 'A%';

select count(*) from COUNTRIES
where COUNTRY_NAME like '%a';

select count(COUNTRY_NAME) from COUNTRIES
where COUNTRY_NAME like 'A%' and COUNTRY_NAME like '%a';

select COUNTRY_NAME from COUNTRIES
where COUNTRY_NAME like '%b%';



