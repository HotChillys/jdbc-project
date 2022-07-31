select * from DEVELOPERS;

select * from TESTERS;

select * from DEVELOPERS -- 3 column
union
select * from TESTERS; -- 3 column

-- union --> removes the duplicated rows, ascending order
select NAMES from DEVELOPERS -- 3 column
union
select NAMES from TESTERS; -- 3 column


--union all -->  does not remove duplicated rows and does not sort
select NAMES from DEVELOPERS -- 3 column
union all
select NAMES from TESTERS; -- 3 column


--minus --> returns the first query's row that are not matching from the second query's row
select NAMES from DEVELOPERS -- 3 column
minus
select NAMES from TESTERS; -- 3 column


--intersect --> returns the matching rows from two queries
select NAMES from DEVELOPERS -- 3 column
intersect
select NAMES from TESTERS; -- 3 column









