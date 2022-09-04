create table personel2 (
	id int,
adi VARCHAR(20),
soyadi VARCHAR(20),
telefon int,
tc_kimlikno VARCHAR(13),
maas int,
departman int);

insert into personel2 values (('3','ali', 'can', '999999999','111111111', '3500 00', '1')
insert into personel2 values ('4','salim', 'kan', '199999998','222222222', '4500 00', '1')
insert into personel2 values ('6','cem', 'kar', '399999997','3333333', '3500 00', '2')
insert into personel2 values ('7','salih', 'bal', '499999968','4444444' , '4500 00', '3')
insert into personel2 values ('9','kenan', 'can', '699999995', '555555555','3000 00', '4')
insert into personel2 values ('10','ismail', 'cem', '799999994', ' 666666666','3500 00',''4')
							  
--Personel tablomuzdan(personel2) MAAS alanı 3000 ve 5000 arasında olanları seçmek isteyelim.
--3000 ce 5000 değerleri de dahil olsun. Bu soruyu iki farklı yoldan cevaplandırabiliriz
select * from personel2							  
							  
select * from personel2
where maas between 3000 and 5000
							  
							  

							  
