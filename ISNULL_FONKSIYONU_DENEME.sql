

declare @sehir1 varchar(20) = 'Ýstanbul',@sehir2 varchar(20) = '',@sehir3 varchar(20);

select * from dbo.Users u where isnull(u.USERCITY,'') = isnull(@sehir1,'');

select * from dbo.Users u where isnull(u.USERCITY,'') = isnull(@sehir2,'');

select * from dbo.Users u where isnull(u.USERCITY,'') = isnull(@sehir3,'');