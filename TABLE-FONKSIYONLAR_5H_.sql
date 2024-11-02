

-- Table Valued Function: 
drop function if exists fn_DeparmanPersonel;
go

create function fn_DeparmanPersonel (@departmanKodu varchar(5))
Returns Table
as
return select * from dbo.PERSONEL p where p.DEPARTMENTCODE = @departmanKodu or p.DEPARTMENTCODE is null;

go
select * from dbo.fn_DeparmanPersonel('D1');



-- ISNULL(Kontrol Edilecek Deger, eðer null ise kabul edilecek deðer)