select * from simple_test_table;

exec add_person(5,'이동준','010-5517-1234');
exec add_person(6,'이동준','010-2517-1234');
exec add_person(7,'이동준','010-3517-1234');

--select 프로시저 호출
var o_cursor refcursor
exec person_select('이동준', :o_cursor)
print o_cursor;