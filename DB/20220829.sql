select * from food_truck;
select * from food_category;

--�з� '�ڵ庰��' ����� ǥ��
select foodcode, avg(price) from food_truck group by foodcode;
-->���ڵ尡 �ǹ��ϴ� �ٸ� ���� ������ �� ����.

--1.view ���� Ǫ�� ���
select name, avgprice from 
(select foodcode, avg(price) avgprice from food_truck group by foodcode) a 
join food_category on a.foodcode=food_category.code;

--1.view �̿��Ͽ� Ǫ�� ���
create view groupby_foodcode_avg as
select foodcode, avg(price) avgprice from food_truck
group by foodcode;

select name, avgprice from food_category join groupby_foodcode_avg
on food_category.code=groupby_foodcode_avg.foodcode;

--1-2
select name, avgprice from food_category join groupby_foodcode_avg
on food_category.code=groupby_foodcode_avg.foodcode
order by avgprice desc;

--1.3
select name, avgprice from food_category join groupby_foodcode_avg
on food_category.code=groupby_foodcode_avg.foodcode
order by avgprice asc;

--2 �з����� ���� ��� ���ĵ� ǥ���ϱ�
select foodcode, max(price) maxprice from food_truck group by foodcode;

--1. group by �̿��ؼ� �� �ڵ庰�� ��� ������ ǥ���ؾ���
create view max_food as select foodcode, max(price) maxprice from food_truck group by foodcode;

--2. join�� �̿��ؼ� �� ������ ī�װ���(=�з���)ǥ���ؾ� ��
--distinct : �ߺ������ڵ�
select distinct food_truck.name foodname, price, food_category.name categoryname
from food_truck join food_category
on food_truck.foodcode=food_category.code;

create view food_category_truck as 
select distinct food_truck.name foodname, price, food_category.name categoryname 
from food_truck join food_category 
on food_truck.foodcode = food_category.code;

select * from max_food; --�ڵ庰 �ְ�
select * from food_category_truck; --�� ���ĺ� ī�װ� ǥ���ϴ� ��

--������ ī�װ����� �з��ϰ� �ǿ���.
--�׷��Ƿ� ī�װ����� max���� �ٽ� group by�Ѵ�.
select categoryname, max(price) maxprice from food_category_truck 
group by categoryname;

drop view max_food;
--view ���� �� ���ǻ��� : avg�� max �� �Լ��� ����� �� �ٸ� �̸����� ġȯ�ؾ� ��
create view max_food as select categoryname, max(price) maxprice from food_category_truck 
group by categoryname;

select * from max_food;
-- 1���� 2���� join�Ѵ�.
select foodname, price, max_food.categoryname from max_food join food_category_truck 
on max_food.categoryname=food_category_truck.categoryname and 
max_food.maxprice=food_category_truck.price;

--3. �з����� ���� ������ ���� �����ϱ�
--3-1 ���ĸ�, ī�װ����� ������ ���̺� �����(2������ ����)
--3-2 food_category_truck�� �ִ� ������ group by�ؼ� min���� ���Ѵ�.
select categoryname, min(price) minprice from food_category_truck group by categoryname;

create view min_food as
select categoryname, min(price) minprice from food_category_truck group by categoryname;

select foodname, price, min_food.categoryname from
food_category_truck join min_food on
food_category_truck.categoryname = min_food.categoryname and
food_category_truck.price=min_food.minprice;

--4�� ��������� �� �� ������ ���� ������ ���� ���ĺз�?
select * from groupby_foodcode_avg;
--4-1 �ڵ庰�� ���� �����µ�, �� �ڵ忡 ��Ī�Ǵ� �̸��� �߰�(join �̿�) 
select name, groupby_foodcode_avg.foodcode, avgprice from 
groupby_foodcode_avg join food_category on 
groupby_foodcode_avg.foodcode=food_category.code;

--5�� ��������� �� �� ������ ���� ������� ���� �з�?
create view group_avg_food as
select name, groupby_foodcode_avg.foodcode, avgprice from 
groupby_foodcode_avg join food_category on 
groupby_foodcode_avg.foodcode=food_category.code;

select * from group_avg_food;

select * from group_avg_food where avgprice=
(select min(avgprice) from group_avg_food);
--5�� ��������� �� �� ������ ���� ������� ���� �з�?
select * from group_avg_food where avgprice=
(select max(avgprice) from group_avg_food);