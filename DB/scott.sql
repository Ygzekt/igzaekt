create table food
(
    num int primary key,
    name varchar2(50),
    price int
);

insert into  food(num,name,price) values(1,'∫“∞Ì±‚',7000);
insert into  food(num,name,price) values(2,'±Ëƒ°¬Ó∞≥',6000);
SELECT * FROM FOOD;

select name, price from food;

select * from food where price >=6000 and price<7000;

update food set name='±Ëƒ°+¡¶¿∞' where num=3;

SELECT * FROM FOOD;

insert into food values(4,'π´ª˝√§',2000);

insert into food(price, name,num) values(10000,'»≤¡¶¡§Ωƒ',5);
insert into food(num,name) values (6,'∑£¥˝∏ﬁ¥∫');

SELECT * FROM FOOD;
commit;

-----------------πÆ¡¶-----------------

insert into food values(7,'∫∫¿Ωπ‰',7000);
insert into food values(8,'æﬂ√§±Ëπ‰',2000);
insert into food values(9,'µ∑±ÓΩ∫±Ëπ‰',4500);
insert into food values(10,'¬¸ƒ°±Ëπ‰',4000);

SELECT * FROM FOOD;

select * from food where name like '%±Ëƒ°%';

select * from food where price >=5000 and price<=7000;

update food set price=1000 where price is null;

update food set name='∏¿¿÷¥¬ ∫“∞Ì±‚' where num=1;

SELECT * FROM FOOD;

commit;

SELECT * FROM FOOD;

show autocommit;

delete from food where price >=50000;

alter table food add recipe varchar2(1000);

alter table food modify price not null;

select * from food;

-------πÆ¡¶-------

delete from food where name like '%πŒ∆Æ%' or name like '%«œøÕ¿Ãæ»%';

delete from food where price >=10000;

update food set recipe='msg√ﬂ∞°' where price <=5000;

SELECT * FROM FOOD;

select * from food order by price;









-----ªı------
select * from food;
select * from food_category;

select code ∫–∑˘ƒ⁄µÂ, name ∫–∑˘∏Ì from food_category;

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

-- insert into food_truck values(food_rownum.nextval, 'πŒ∆Æµ§π‰',5);

select * from food_truck;

insert into food_truck values(food_rownum.nextval, 'πŒ∆Æµ§π‰',5000,5);

insert into food_truck values(food_rownum.nextval, '¡¯¬•Ω∫∆›¡ˆƒ…¿Ã≈©',300,7);

select * from food_truck;

insert into food_truck values(food_rownum.nextval, '≈∏¿ÃæÓ',30000,7);



--join µŒ ≈◊¿Ã∫Ìø°º≠ ∞¯ƒ·µ«¥¬ ≈∞ ∞™¿ª ∞°¡ÆøÕº≠ ±◊ ∞™¿Ã ∞„ƒ°¥¬ ∞… ∫∏ø©¡ÿ¥Ÿ.

select food_truck.name ¿ΩΩƒ∏Ì, price, food_category.name ∫–∑˘ from food_truck join food_category on food_truck.foodcode=food_category.code;

insert into food_truck values(food_rownum.nextval, '±Ëƒ°∫∫¿Ωπ‰',7000,1);
insert into food_truck values(food_rownum.nextval, '±Ëƒ°¿¸',5000,1);
insert into food_truck values(food_rownum.nextval, '∫Ò∫ˆπ‰',6000,1);
insert into food_truck values(food_rownum.nextval, 'ªıøÏ∫∫¿Ωπ‰',7000,2);
insert into food_truck values(food_rownum.nextval, '¬•¿Â∏È',5000,2);
insert into food_truck values(food_rownum.nextval, '¬´ªÕ',5500,2);
insert into food_truck values(food_rownum.nextval, 'ªıøÏ√ π‰',3000,3);
insert into food_truck values(food_rownum.nextval, '∞Ë∂ı√ π‰',3000,3);
insert into food_truck values(food_rownum.nextval, 'ƒ´√˜µø',10000,3);

insert into food_category values(8,'µ¿˙∆Æ');

insert into food_truck values(food_rownum.nextval, 'æ∆¿ÃΩ∫≈©∏≤',2000,8);

insert into food_truck values(food_rownum.nextval, 'æÁ∞ª',3000,8);

insert into food_truck values(food_rownum.nextval, '√ ƒ›∏¥π´Ω∫',7000,8);

insert into food_truck values(food_rownum.nextval, 'ƒ…¿Ã≈©',15000,8);

insert into food_truck values(food_rownum.nextval, '∞˙¿œ∏¿Ω',10000,8);

select *from food_truck;

select food_truck.name ¿ΩΩƒ∏Ì, price, food_category.name ∫–∑˘ from food_truck join food_category on food_truck.foodcode=food_category.code order by '∫–∑˘';

------groub by, having, ¡ﬂ√∏ ¡˙¿«, view------
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
---------------Ω«Ω¿πÆ¡¶--------------
select foodcode, avg(price) from food_truck group by foodcode









