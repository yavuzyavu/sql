-- EXISTS , NOT EXISTS --
-- EXISTS condition subquerylerde kullanilir
-- IN ifadesinin kullanimina benzer
-- EXISTS , NOT EXISTS ifadeleri de altsorgudan getirilen degerlerin icerisinde
--bir degerin olmasi veya olmamasi durumunda islem yapilmasini saglar
-- Exists true false gibidir
CREATE TABLE mart
(
	urun_id int,
	musteri_isim varchar(50),
	urun_isim varchar(50)
);
CREATE TABLE nisan
(
	urun_id int ,
	musteri_isim varchar(50),
	urun_isim varchar(50)
);
INSERT INTO mart VALUES (10, 'Mark', 'Honda');
INSERT INTO mart VALUES (20, 'John', 'Toyota');
INSERT INTO mart VALUES (30, 'Amy', 'Ford');
INSERT INTO mart VALUES (20, 'Mark', 'Toyota');
INSERT INTO mart VALUES (10, 'Adam', 'Honda');
INSERT INTO mart VALUES (40, 'John', 'Hyundai');
INSERT INTO mart VALUES (20, 'Eddie', 'Toyota');
 ecauü
INSERT INTO nisan VALUES (10, 'Hasan', 'Honda');
INSERT INTO nisan VALUES (10, 'Kemal', 'Honda');
INSERT INTO nisan VALUES (20, 'Ayse', 'Toyota');
INSERT INTO nisan VALUES (50, 'Yasar', 'Volvo');
INSERT INTO nisan VALUES (20, 'Mine', 'Toyota');

select  * from mart;
select * from nisan;

   --MART VE NİSAN aylarında aynı URUN_ID ile satılan ürünlerin
  --URUN_ID’lerini listeleyen ve aynı zamanda bu ürünleri MART ayında olan
  --MUSTERI_ISIM 'lerini listeleyen bir sorgu yazınız.
  
  select urun_id, musteri_isim from mart
  where exists (select urun_id from nisan where mart.urun_id=nisan.urun_id)
  
  --Her iki ayda birden satılan ürünlerin URUN_ISIM'lerini ve bu ürünleri
--NİSAN ayında satın alan MUSTERI_ISIM'lerini listeleyen bir sorgu yazınız.

 SELECT URUN_İSİM , musteri_isim from nisan
 where exists (select urun_isim from mart where mart.urun_isim =nisan.urun_isim)
 
 --Her iki ayda ortak satilmayan ürünlerin URUN_ISIM'lerini ve  bu ürünleri
 --NİSAN ayında satın alan MUSTERI_ISIM'lerini listeleyen bir sorgu yazınız.
 
 select urun_isim, musteri_isim from nisan 
 where not exists (select urun_isim from mart where mart.urun_isim=nisan.urun_isim)
 
 -- AGGREGATE METHOD KULLANIMI --
/*
-Aggregate Methodları (SUM(Topla),COUNT(Say),MIN(EN küçük değer),MAX(En büyük değer),AVG(Ortalama))
-Subquery içinde de kullanılır
-ANcak, sorgu tek bir değer döndürüyor olmalıdır
SYNTAX: sum() şeklinde olmalı sum () arasında boşluk olmamalı
*/
 
 select * from calisanlar2
 
 
--Calisanlar2 tablosundaki en yuksek maas degerini listeleyiniz
select max (maas) from calisanlar2 

--Calisanlar listesindeki maaslarin toplamini listeleyiiniz
select sum(maas) from calisanlar2

--calisanlar listesindeki maas ortalamalarini listeleyiniz
select avg(maas) from calisanlar2
select round (avg(maas)) from calisanlar2
select round (avg(maas),2) from calisanlar2

--calisanlar tablosundan en dusuk maasi listeleyiniz
select min(maas) from calisanlar2

--Calisanlar tablosundaki kaç kişinin maaş aldığını listeleyiniz
SELECT count(maas) from calisanlar2

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin toplam maaşini listeleyiniz
select marka_isim,calisan_sayisi, (select sum (maas) from calisanlar2 where marka_isim=işyeri) 
AS toplam_maas from markalar

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin maksimum ve 
--minumum maaşini listeleyen bir Sorgu yaziniz.
select marka_isim,calisan_sayisini,(select max(maas) from calisanlar2 where marka_isim =isyeri) AS max_maas,
									(select min(maas) from calisanlar2 where marka_isim =isyeri) AS min_maas,
			
--her markanin id'sini,ismini ve toplam kac sehirde bulunduğunu listeleyen bir sorgu yaziniz
select marka_id,marka_ismini,(select count(sehir)from calisanlar2 where marka_isim=isyeri) 
AS sehir_sayisi from markalar;

--Interview Question: En yuksek ikinci maas degerini cagırın.
SELECT max (maas) AS enyuksek_ikinci_maas from calisanlar2 
where maas <(SELECT max(maas)from calisanlar2)

--Interview Question: En yuksek ikinci maas degerini cagırın.
SELECT max (maas) AS enyuksek_ikinci_maas from calisanlar2 
where maas <(SELECT max(maas)from calisanlar2)



 