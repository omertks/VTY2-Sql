
drop function if exists fn_topla;

go -- kendinden �nceki k�sm� �nce �al��t�r sonra devam et

Create function fn_topla (@s1 real,@s2 real) Returns real
as
Begin
-- di�er i�lemler
return @s1 + @s2; 

end

go

select dbo.fn_topla(1,10); -- fonksiyonlar tam adlar� ile �a��r�lmal�.