create table simple_test_table
(
num int primary key,
name varchar2(30) not null,
phone_number varchar2(20) unique
)

insert into simple_test_table values(1,'�̿���',null);
insert into simple_test_table values(2,'�̵���','0110-2940-1613');
select * from simple_test_table;

