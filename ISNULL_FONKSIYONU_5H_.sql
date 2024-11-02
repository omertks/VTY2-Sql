
declare @depKodu varchar(5) = 'D1';

select *, d.DNAME as DAdi from dbo.PERSONEL p 
left join dbo.DEPARTMENT d on d.DCODE = p.DEPARTMENTCODE 
where ISNULL(p.DEPARTMENTCODE,'') = ISNULL(@depKodu, '');

  -- ISNULL (Kontrol edilen, e�er nullsa kullan�lacak)


  -- Bo�luk veya null g�nderildi�inde b�t�n kay�tlar�n gelmesi �dev. �okonomelli S�navda ��kar.