
drop function if exists fn_topla;

go -- kendinden önceki kýsmý önce çalýþtýr sonra devam et

Create function fn_topla (@s1 real,@s2 real) Returns real
as
Begin
-- diðer iþlemler
return @s1 + @s2; 

end

go

select dbo.fn_topla(1,10); -- fonksiyonlar tam adlarý ile çaðýrýlmalý.