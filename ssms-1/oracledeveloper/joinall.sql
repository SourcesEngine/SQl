create table first_table(

Lrn number (5),
surname varchar (10),
first_name varchar(10)
);

create table second_table(

stu_id number(5),
Lrn number(5),
Grade number(5)
);

insert into first_table values (12345, 'moneca', 'ann');
insert into first_table values (23456, 'montoya','angel');
insert into first_table values (88876, 'geen', 'joel');
insert into first_table values (13145, 'monica', 'mary');
insert into first_table values (12157, 'iron', 'van');

select * from first_table

insert into second_table values (22, 12345, 85);
insert into second_table values (33, 23456, 88);
insert into second_table values (44, 88876, 87);
insert into second_table values (55, 34356, 75);
insert into second_table values (66, 13185, 82);
insert into second_table values (77, 14566, 89);

select * from second_table

--left join-- first_table.surname, first_table.first_name, second_table.Grade, second_table.stu_id
select *
from first_table
left join second_table
on first_table.Lrn=second_table.Lrn;

--right join-- second_table.Grade, second_table.stu_id,second_table.Lrn, first_table.surname, first_table.first_name,first_table.Lrn
select *
from second_table
right join first_table
on second_table.Lrn=first_table.Lrn;

--full join--
select *
from first_table
full join second_table
on first_table.Lrn=second_table.Grade;

--inner join--
select*
from first_table
inner join second_table
on first_table.Lrn=second_table.Lrn;

--cross join--
select * from first_table
cross join second_table;
