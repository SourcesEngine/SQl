Create table table1(

supplier_id numeric(7)primary key,
supplier_name varchar2(15)
);

Create table Table2(

order_id numeric(7) primary key,
supplier_id numeric (6),
order_date varchar2(15)
);

insert into Table1 values (10000, 'IBM');
insert into Table1 values (10001, 'Hewlett Packard');
insert into Table1 values (10002, 'Microsoft');
insert into Table1 values (10003, 'NVIDIA');

INSERT INTO Table2 values (500125, 10000, '2003/05/12');
INSERT INTO TABLE2 VALUES (500126, 10001, '2003/05/13');
INSERT INTO TABLE2 VALUES (500127, 10004, '2003/05/14');

select *from Table1;
select *from Table2;

select * 
from table1
full  join table2
on table1.supplier_id=table2.order_id;
