


-- kendisine gönderilen 3 sayýnýn büyükten küçüðe (eþitlikte dahil) sýralamasýný bulan ve geri döndüren fonksiyon.

drop function if exists fn_sirala;
go

create function fn_sirala (@s1 real, @s2 real, @s3 real) 
returns nvarchar(max)
as
begin
	declare @sonuc nvarchar(max);
	if (@s1 > @s2)
	begin
		if(@s2> @s3)
			set @sonuc = cast(@s1 as varchar) + ' > ' + cast(@s2 as varchar) + ' > ' + cast(@s3 as varchar);
		else if(@s2< @s3)
			set @sonuc = cast(@s1 as varchar) + ' > ' + cast(@s3 as varchar) + ' > ' + cast(@s2 as varchar);
		else
			set @sonuc = cast(@s1 as varchar) + ' > ' + cast(@s3 as varchar) + ' = ' + cast(@s2 as varchar);
	end
	
	else if (@s1 < @s2)
	begin
		if(@s1 > @s3)
			set @sonuc = cast(@s2 as varchar) + ' > ' + cast(@s1 as varchar) + ' > ' + cast(@s3 as varchar);
		else if(@s1 < @s3)
			set @sonuc = cast(@s2 as varchar) + ' > ' + cast(@s3 as varchar) + ' > ' + cast(@s1 as varchar);
		else
			set @sonuc = cast(@s2 as varchar) + ' > ' + cast(@s3 as varchar) + ' = ' + cast(@s1 as varchar);
	end

	return @sonuc	
end

go
select dbo.fn_sirala(3,2,1), dbo.fn_sirala(3,1,2),dbo.fn_sirala(3,1,1),dbo.fn_sirala(1,3,2);