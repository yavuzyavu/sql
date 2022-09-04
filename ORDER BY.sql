-- ORDER BY --
-- ORDER BY cumlecigi bir sorgu deyimi icerisinnde belli bir sutuna gore 
-- siralama yapmak iiccin kullanilir

CREATE TABLE kisiler 
(
id int PRIMARY KEY,
ssn CHAR(9) ,
isim VARCHAR(50), 
soyisim VARCHAR(50), 
maas int,
adres VARCHAR(50) 
);
    
INSERT INTO kisiler VALUES(1, 123456789, 'Ali','Can', 3000,'Istanbul');
INSERT INTO kisiler VALUES(2, 234567890, 'Veli','Cem', 2890,'Ankara');
INSERT INTO kisiler VALUES(3, 345678901, 'Mine','Bulut',4200,'Adiyaman');
INSERT INTO kisiler VALUES(4, 256789012, 'Mahmut','Bulut',3150,'Adana');
INSERT INTO kisiler VALUES (5, 344678901, 'Mine','Yasa', 5000,'Ankara');
INSERT INTO kisiler VALUES (6, 345458901, 'Veli','Yilmaz',7000,'Istanbul');
INSERT INTO kisiler VALUES(7,113456789, 'Ali','Can', 3000,'Istanbul');
INSERT INTO kisiler VALUES(8,224567890, 'Veli','Cem', 2890,'Ankara');
INSERT INTO kisiler VALUES(9,335678901, 'Mine','Bulut',4200,'Ankara');
INSERT INTO kisiler VALUES(10,446789012, 'Mahmut','Bulut',3150,'Istanbul');
INSERT INTO kisiler VALUES (11,554678901, 'Mine','Yasa', 5000,'Ankara');
INSERT INTO kisiler VALUES (12,665458901, 'Veli','Yilmaz',7000,'Istanbul');

select * from kisiler

--kisiler tablosunu adrese gore sıralayarak sorgulayiniz.
select * from kisiler ORDER BY adres
select * from kisiler ORDER BY adres  asc; -- ASCENDING (ASC) yazmasakta sirali verir

--kisiler tablosunu adrese gore tersten sıralayarak sorgulayiniz.
select * from kisiler ORDER BY adres  desc; --descendıng (DSC) TERSTEN siralama yapacagimiz zaman kullaniriz

--kisileri maaasi buyukten kucuge sıralayiniz
select * from kisiler ORDER BY maas desc;

--ismi mine olanlari, maasa  gore azalan sırada sorgulayiniz
SELECT * from kisiler where isim = 'Mine' order by maas desc;

--soyisimi BULUT olanlari maas sirali olarak siralayiniz
SELECT * FROM kisiler where soyisim = 'Bulut' order by maas desc  
