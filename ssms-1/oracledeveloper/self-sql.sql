Create table tablename(

customer_id    numeric(5),
surname     varchar(10),
first_name    varchar(10),
age        numeric(5),
c_membership     varchar(10),
Dates    varchar(10),
referral   numeric(5)
);

insert into tablename values (1, 'Lominoque', 'Gian', 18, 'Gold', '05/28/2023', 0);
insert into tablename values (2, 'bercillia', 'earl', 18, 'Gold', '05/28/2023', 1);
insert into tablename values (3, 'dane', 'ken', 18, 'bronze', '05/28/2023', 1);
insert into tablename values (4, 'dreo', 'jasper', 21, 'silver', '05/28/2023', 2);
insert into tablename values (5, 'recelis', 'Ivan', 16, 'non member', 'n/a', 0);

select * from tablename

--a.customer_id, a.surname, a.first_name,a.age, a.c_membership, a.Dates, b.referral
select *
from tablename as a 
Inner join tablename as b
on a.customer_id = b.referral;