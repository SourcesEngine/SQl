create table supplier10 (
   supplier_id number(6) primary key,
   supplier_name varchar(20)
);

create table order11 (
   order_id number(6) primary key,
   supplier_id number(7),
   order_date varchar(30)
);

insert into supplier10 values (10000,'IBM');
insert into supplier10 values (10001,'Hewlett Packard');
insert into supplier10 values (10002,'Microsoft');
insert into supplier10 values (10003,'NVIDIA');

insert into order11 values (500125,10000,'05/12/2003');
insert into order11 values (500126,10001,'05/13/2003');
insert into order11 values (500127,10004,'05/14/2003');

select * from order11;
select * from supplier10;


select supplier10.supplier_name,order11.order_date 
from supplier10
left outer join order11
on supplier10.supplier_id=order11.order_id;
--left join--
select supplier5.supplier_name,order7.order_date
from supplier5
left join order7
on supplier5.supplier_id=order7.order_id;

--right join--
select order7.order_date,supplier5.supplier_name
from supplier5
right join order7
on supplier5.supplier_id=order7.order_id;

--cross join all--
select * from supplier5
cross join order7;

--cross join specific--
select supplier5.supplier_name,order7.order_date
from supplier5
cross join order7;