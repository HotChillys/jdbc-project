select *
from EMPLOYEES;

--find the 3rd minimum salary from the employees table (do not  include duplicates)
        --first sort salary in desc order
select distinct SALARY from EMPLOYEES order by SALARY desc;
        -- cut the list from line 4 to get first 3
        -- use min salary to find 3 maximum
--SOLUTION
    select min(SALARY) from (select distinct SALARY from EMPLOYEES
                                                    order by SALARY desc)
where ROWNUM < 4;



--find the 3th maximum salary from the employees table (do not include duplicates)
select * from EMPLOYEES
where SALARY = (select min(SALARY) from (select distinct SALARY
                                         from EMPLOYEES
                                         order by SALARY desc )
                                   where ROWNUM < 4)



-- find the  3rd minimum salary from employees table ( do not include duplicate)

    -- first sort salaries in asc order
    select distinct SALARY
    from EMPLOYEES
    order by SALARY asc ;

    -- cut the list from line 4
    -- use max salary to find 3 maximum
    select max(SALARY) from (select distinct SALARY
                   from EMPLOYEES
                   order by SALARY asc )
where ROWNUM < 4;


-- how do we get information  about that employee ( 3rd min)

    select * from EMPLOYEES
where SALARY = (select max(SALARY) from (select distinct SALARY
                                         from EMPLOYEES
                                         order by SALARY asc )
                where ROWNUM < 4);


-- why we have 2 result in there, we already used distinct to make salaries unique?
    -- 3rd min query will return one value as 2400
    -- but we are looking for who has that salary
    -- 2 employees has same that's why it returns 2 result













