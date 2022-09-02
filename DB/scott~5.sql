--update

create procedure update_person
(
mynum in int,
changename varchar2
)
is tempvar varchar2(20) := 'ÇĞ»ı';
begin tempvar := changename || tempvar;
update simple_test_table set name=tempvar where num=mynum;
end update_person;
