--create
create table
    address(
    address_id INTEGER primary key ,
    address varchar(50) not null ,
    phone INTEGER
);

--insert
insert into address (address_id, address, phone) values (10, 'Lee Highway', 1234556);

insert into address (address_id, address, phone) values (12, 'Balltown rd', 36574832);

insert into address (address_id, address, phone) values (19, 'toronto street', 9856478);

--CREATE with FK
create table customer(
    customer_id INTEGER primary key ,
    FIRST_NAME varchar(30) null,
                     address_id INTEGER references address(address_id)
);

--INSERT
insert into customer (customer_id, FIRST_NAME, address_id) values (1, 'James ', 12);
insert into customer (customer_id, FIRST_NAME, address_id) values (2, 'Jamie', 19);

--UPDATE
update customer set FIRST_NAME = 'James'
where customer_id = 1;

-- DELETE
DELETE FROM customer
where customer_id = 2;

select * from address;
select * from customer;



--add column
alter table customer add Last_name varchar(25);

alter table customer add City varchar(20);

-- rename column
alter table customer rename column Last_name to Last_Name_;

update customer set Last_Name_ = 'Bond'
where customer_id = 1;

-- drop column
alter table customer drop column address_id;


-- rename table
alter table customer rename to Shoppers;

select * from Shoppers;

drop table address;


-----------------------------------------------------------------------

create table POKEMON (
    POKEMON_ID INTEGER PRIMARY KEY ,
    NAME VARCHAR(20) NOT NULL
);

SELECT * FROM POKEMON;

INSERT INTO POKEMON (POKEMON_ID, NAME) VALUES (1, 'PIKACHU');
INSERT INTO POKEMON (POKEMON_ID, NAME) VALUES (2, 'CHARMANDER');

-- drop table
DROP TABLE POKEMON;

-- Truncate
create table POKEMON (
                         POKEMON_ID INTEGER PRIMARY KEY ,
                         NAME VARCHAR(20) NOT NULL
);
INSERT INTO POKEMON (POKEMON_ID, NAME) VALUES (1, 'PIKACHU');
INSERT INTO POKEMON (POKEMON_ID, NAME) VALUES (2, 'CHARMANDER');
select * from POKEMON;

-- Truncate
truncate table POKEMON;
drop table POKEMON;


alter table customer drop column address_id;
drop table customer;
truncate table address;


commit ;



