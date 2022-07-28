
--inner join
select  * from CUSTOMER inner join ADDRESS_
on customer.ADDRESS_ID = ADDRESS_.ADDRESS_ID;

select  CUSTOMER.CUSTOMER_ID, CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME, ADDRESS_.ADDRESS_ID, ADDRESS_.PHONE from CUSTOMER inner join ADDRESS_
 on customer.ADDRESS_ID = ADDRESS_.ADDRESS_ID;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS_ID, a.PHONE from CUSTOMER c inner join ADDRESS_ a
on c.ADDRESS_ID = a.ADDRESS_ID;

-------------------------------

select * from LOCATIONS l inner join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;

select c.COUNTRY_NAME, l.CITY from LOCATIONS l inner join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;

-- inner join: returns only the matching records from the two tables.

-------------------------------------------------------------------------------


-- outer join
select * from CUSTOMER c left outer join ADDRESS_ a
on c.ADDRESS_ID = a.ADDRESS_ID;

-- left outer join

-- left outer join: returns the matching records, and left table' none matching recods
select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE from CUSTOMER c left outer join ADDRESS_ a
 on c.ADDRESS_ID = a.ADDRESS_ID;

-- left outer join with where: returns the nine matching records from left table
select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE from CUSTOMER c left outer join ADDRESS_ a
on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null ;

--right outer join

-- right outer join without where: display the matching record, and none-matching records from right table
select * from CUSTOMER c right outer join ADDRESS_ a
on c.ADDRESS_ID = a.ADDRESS_ID;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS_ID, a.PHONE from CUSTOMER c right outer join ADDRESS_ a
on c.ADDRESS_ID = a.ADDRESS_ID;

-- right outer join with where: display the none matching record from right table
select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS_ID, a.PHONE from CUSTOMER c right outer join ADDRESS_ a
on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null ;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS_ID, a.PHONE from CUSTOMER c right outer join ADDRESS_ a
 on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null or a.ADDRESS_ID is null ;

---------------

-- outer join


