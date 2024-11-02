
-- Kendisine gönderilen iki tam sayıdan en büyük olanı bulup geri döndüren fonksiyon:


-- Nesne silmenin Kısa Yol
-- drop function if exists enBuyuk;

-- Nesne silmenin Uzun Yol
if exists (select * from sys.objects where name = N'enBuyuk' AND type = N'FN') -- N ile evrensel harfleri kullan
DROP function dbo.enBuyuk;
go
create function enBuyuk (@s1 real , @s2 real)Returns real 
as
begin
	declare @eb real;
	if(@s1>@s2)
		set @eb = @s1;
	else
		set @eb = @s2;
	return @eb
end

go

-- select dbo.enBuyuk(7,8);
