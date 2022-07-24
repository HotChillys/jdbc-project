select * from EMPLOYEES;

/*
 LIKE
Percent ( %)      -->  for matching any sequence of characters.
Underscore ( _ )  -->  for matching any single character.

  - contains
  - startwith
  - endswith
 */

 -- get all employees whose firstname starts with B
select * from EMPLOYEES
where FIRST_NAME like 'B%';

-- get all employees whose firstname starts with B and has 5 letter
select * from EMPLOYEES
where FIRST_NAME like 'B____';

-- get me 5 letter names where the middle char is z
select * from EMPLOYEES
where FIRST_NAME LIKE '__z__';

-- get me firstname where second char is a
select * from EMPLOYEES
where FIRST_NAME LIKE '_a%';

-- get me all information whose first name ends with r
select * from EMPLOYEES
where FIRST_NAME LIKE '%r';

--get me any job title information ends with manager from jobs table
select * from jobs
where JOB_TITLE LIKE '%Manager';







