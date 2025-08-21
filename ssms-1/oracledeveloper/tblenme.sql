Create table tablename_two(

supplier_id number(10)primary key,
supplier_name varchar(25)
);

insert into tablename_two values (10000, 'IBM');
insert into tablename_two values (10001, 'Hewlett Packard');
insert into tablename_two values (10002, 'Microsoft');
insert into tablename_two values (10003, 'nvidia');

select * from tablename_two

CREATE TABLE tablename_three (
ORDER_ID NUMBER (10) PRIMARY key,
SUPPLIER_ID VARCHAR (25), 
ORDER_DATE VARCHAR(30)
);

insert into tablename_three values (5000125, 10000, '2003-05-12');

insert into tablename_three values (5000126, 10001, '2003-05-13');

insert into tablename_three values (5000127, 10004, '2003-05-14');

select * from tablename_three
