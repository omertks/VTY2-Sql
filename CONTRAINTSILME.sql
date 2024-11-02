
 if exists( select * from sys.objects where type = 'U' AND NAME = 'deneme')
 begin
	print 'Deneme Tablosu Varrrrr';
	drop table deneme;
	print 'Deneme Tablosu Silindi';	
 end