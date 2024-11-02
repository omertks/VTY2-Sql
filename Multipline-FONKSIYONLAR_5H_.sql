
drop function if exists fn_multipleOrnek;
go

create function fn_multipleOrnek()
Returns @myTable table(id int,ad varchar(20),tbl varchar(20)) 
as
begin
	insert @myTable(id,ad,tbl) select ID, NAME, 'Personel' from PERSONEL;
	insert @myTable(id,ad,tbl) select ID, DName, 'Deprtman' from DEPARTMENT;
	
	return
end

go
select * from fn_multipleOrnek();