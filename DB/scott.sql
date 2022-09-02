create table food
(
    num int primary key,
    name varchar2(50),
    price int
);

insert into  food(num,name,price) values(1,'�Ұ��',7000);
insert into  food(num,name,price) values(2,'��ġ�',6000);
SELECT * FROM FOOD;

select name, price from food;

select * from food where price >=6000 and price<7000;

update food set name='��ġ+����' where num=3;

SELECT * FROM FOOD;

insert into food values(4,'����ä',2000);

insert into food(price, name,num) values(10000,'Ȳ������',5);
insert into food(num,name) values (6,'�����޴�');

SELECT * FROM FOOD;
commit;

-----------------����-----------------

insert into food values(7,'������',7000);
insert into food values(8,'��ä���',2000);
insert into food values(9,'������',4500);
insert into food values(10,'��ġ���',4000);

SELECT * FROM FOOD;

select * from food where name like '%��ġ%';

select * from food where price >=5000 and price<=7000;

update food set price=1000 where price is null;

update food set name='���ִ� �Ұ��' where num=1;

SELECT * FROM FOOD;

commit;

SELECT * FROM FOOD;

show autocommit;

delete from food where price >=50000;

alter table food add recipe varchar2(1000);

alter table food modify price not null;

select * from food;

-------����-------

delete from food where name like '%��Ʈ%' or name like '%�Ͽ��̾�%';

delete from food where price >=10000;

update food set recipe='msg�߰�' where price <=5000;

SELECT * FROM FOOD;

select * from food order by price;









-----��------
select * from food;
select * from food_category;

select code �з��ڵ�, name �з��� from food_category;

drop table food_Truck;
drop sequence food_rownum;

create table food_Truck
(
num int primary key,
name varchar2(100) not null,
price int,
foodcode number not null,
foreign key(foodcode)references food_category(code)
);

create sequence food_rownum;

-- insert into food_truck values(food_rownum.nextval, '��Ʈ����',5);

select * from food_truck;

insert into food_truck values(food_rownum.nextval, '��Ʈ����',5000,5);

insert into food_truck values(food_rownum.nextval, '��¥����������ũ',300,7);

select * from food_truck;

insert into food_truck values(food_rownum.nextval, 'Ÿ�̾�',30000,7);



--join �� ���̺��� ����Ǵ� Ű ���� �����ͼ� �� ���� ��ġ�� �� �����ش�.

select food_truck.name ���ĸ�, price, food_category.name �з� from food_truck join food_category on food_truck.foodcode=food_category.code;

insert into food_truck values(food_rownum.nextval, '��ġ������',7000,1);
insert into food_truck values(food_rownum.nextval, '��ġ��',5000,1);
insert into food_truck values(food_rownum.nextval, '�����',6000,1);
insert into food_truck values(food_rownum.nextval, '���캺����',7000,2);
insert into food_truck values(food_rownum.nextval, '¥���',5000,2);
insert into food_truck values(food_rownum.nextval, '«��',5500,2);
insert into food_truck values(food_rownum.nextval, '�����ʹ�',3000,3);
insert into food_truck values(food_rownum.nextval, '����ʹ�',3000,3);
insert into food_truck values(food_rownum.nextval, 'ī����',10000,3);

insert into food_category values(8,'����Ʈ');

insert into food_truck values(food_rownum.nextval, '���̽�ũ��',2000,8);

insert into food_truck values(food_rownum.nextval, '�簻',3000,8);

insert into food_truck values(food_rownum.nextval, '���ݸ�����',7000,8);

insert into food_truck values(food_rownum.nextval, '����ũ',15000,8);

insert into food_truck values(food_rownum.nextval, '���ϸ���',10000,8);

select *from food_truck;

select food_truck.name ���ĸ�, price, food_category.name �з� from food_truck join food_category on food_truck.foodcode=food_category.code order by '�з�';

------groub by, having, ��ø ����, view------
select * from food_truck;

select foodcode, avg(price) from food_truck group by foodcode;

select foodcode, max(price) from food_truck group by foodcode;


select foodcode, max(price) from food_truck group by foodcode having max(price) >10000;

select foodcode, max(price) from food_truck group by foodcode having max(price) <10000;


select *from food_truck where price=(select max(price) from food_truck);


create view find_max_price as select max(price) max_price from food_truck;
select * from find_max_price;

select*from food_truck where price=(select*from find_max_price);

commit;
---------------�ǽ�����--------------
select foodcode, avg(price) from food_truck group by foodcode









