select func_getperson(1) from dual;
select mytest_func() from dual;

exec add_person(50, func_getperson(1), '010-9999-9191');
exec add_person(100, mytest_func(), '010-2299-9191');

select * from simple_test_table;