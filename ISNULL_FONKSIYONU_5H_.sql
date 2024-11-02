
declare @depKodu varchar(5) = 'D1';

select *, d.DNAME as DAdi from dbo.PERSONEL p 
left join dbo.DEPARTMENT d on d.DCODE = p.DEPARTMENTCODE 
where ISNULL(p.DEPARTMENTCODE,'') = ISNULL(@depKodu, '');

  -- ISNULL (Kontrol edilen, eðer nullsa kullanýlacak)


  -- Boþluk veya null gönderildiðinde bütün kayýtlarýn gelmesi Ödev. Çokonomelli Sýnavda çýkar.