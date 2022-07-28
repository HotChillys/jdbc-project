create table Classmates (
    Student_Id INTEGER primary key ,
    "First_Name" varchar(20),
    "Last_Name" varchar(20)
);

select * from Classmates;

create table Co_Workers(
    Employee_Id integer primary key ,
    "First_Name" varchar(20),
    "Last_Name" varchar(20),
    Personal_Id integer references Classmates(Student_Id) -- FK can be duped, can be null, data needs to be matches with the referenced primary key
);
insert into CO_WORKERS values (1, 'John', 'Decker', null);
select * from CO_WORKERS;

insert into Classmates values (001, 'Elana', 'Venom');

insert into CO_WORKERS values (2, 'Lana', 'Larva', 001);

insert into CO_WORKERS values (3, 'Erik', 'Numb', 1);



update Classmates set Student_Id = 4 where Student_Id = 1; -- gives error
alter table Classmates drop column Student_Id; -- gives error
truncate table Classmates; -- gives error
drop table Classmates; -- gives error

-- all of the above gives error because in order to change PK, we need to delete it from another table which is FK in that table


alter table CO_WORKERS drop column PERSONAL_ID; -- now we can change PK from Classmates table.
update Classmates set Student_Id = 4 where Student_Id = 1;
alter table Classmates drop column Student_Id;
truncate table Classmates;
drop table Classmates;

commit ;


