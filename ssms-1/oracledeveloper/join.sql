create table supplier5 (
   supplier_id number(6) primary key,
   supplier_name varchar(20)
);

create table order7 (
   order_id number(6) primary key,
   supplier_id number(7),
   order_date varchar(30)
);

insert into supplier5 values (10000,'IBM');
insert into supplier5 values (10001,'Hewlett Packard');
insert into supplier5 values (10002,'Microsoft');
insert into supplier5 values (10003,'NVIDIA');

insert into order7 values (500125,10000,'05/12/2003');
insert into order7 values (500126,10001,'05/13/2003');
insert into order7 values (500127,10004,'05/14/2003');

select * from order7;
select * from supplier5;


--[left join]--
select supplier5.supplier_name,order7.order_date
from supplier5
left join order7
on supplier5.supplier_id=order7.order_id;

--[right join]--
select order7.order_date,supplier5.supplier_name
from supplier5
right join order7
on supplier5.supplier_id=order7.order_id;

--[cross join all]--
select * from supplier5
cross join order7;

--cross join specific--- supplier5.supplier_name,order7.order_date
select *
from supplier5
cross join order7;