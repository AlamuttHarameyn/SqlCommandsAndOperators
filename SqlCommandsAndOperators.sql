										--KOMUTLAR VE OPERATÖRLER

-- Insert komutu veri eklemek için kullanýlýr. insert yapýsý INSERT TABLOADI KOLON ADI VALUES EKLENECEKVERÝLER þeklindedir. Kendi kendine artan deðer özelliði olan bir kolon varsa örn. ýd veriler kolon adý olarak eklenmez

INSERT Customers  (CustomerName,CustomerSurname,City,Distrcit,Gender,BirthDate) VALUES
('Gizem','Ustahüseyin','Ýstanbul','Zeytinburnu','K','1999-07-16'),
('Mehmet','Güven','Ýstanbul','Sultangazi','E','1997-03-01'),
('Yeliz','Köroðlu','Ýstanbul','Avcýlar','K','1979-06-16'),
('Ece','Kanruk','Ýstanbul','Avcýlar','K','1989-04-06'),
('Ramis','Açýksöz','Ýstanbul','Sultangazi','E','1996-12-11'),
('Sevda','Açýksöz','Malatya','Merkez','K','1974-03-01'),
('Ayþe','Günaydýn','Ýstanbul','Þiþli','K','1999-07-16'),
('Þeyma','Arslan','Giresun','Piraziz','K','1997-03-01'),
('Aslýhan','Gaye','Ýstanbul','Bakýrköy','K','1979-06-16'),
('Selim','Uslu','Ýstanbul','Beþiktaþ','E','1989-04-06'),
('Arif','Cihan','Ýstanbul','Eyüpsultan','E','1996-12-11'),
('Gül','Sözer','Trabzon','Of','K','1974-03-01'),
('Ahmet','Saðlam','Ýstanbul','Kaðýthane','E','1998-03-06'),
('Fatih','Sultan','Tokat','Erbað','E','1997-02-08'),
('Salim','Kalýr','Konya','Emirgazi','E','1979-12-28'),
('Su','Karaca','Elazýð','Alacakaya','K','1965-03-02')

										--DELETE KOMUTU
DELETE FROM Customers --Tablodaki bütün kayýtlar silindi
DELETE FROM Customers WHERE CustomerName='Gizem' --adý gizem olan kayýtlar silinir
DELETE FROM Customers WHERE CustomerSurname='Ustahüseyin' --soyadý ustahüseyin olan kayýtlar silinir
DELETE FROM Customers WHERE City='Ýstanbul' --þehri istanbul olan kayýtlar silinir
DELETE FROM Customers WHERE Distrcit='Zeytinburnu' --ilçesi zeytinburnu olan kayýtlar silinir

TRUNCATE TABLE Customers --Tablonun tamamýný temizler

										--SELECT, WHERE KOMUTLARI VE OPERATÖRLER 
SELECT * FROM Customers WHERE City = 'Ýstanbul' --Þehri istanbul olaný getir
SELECT * FROM Customers WHERE City <> 'Ýstanbul' --Þehri istanbul olmayaný getir
SELECT * FROM Customers WHERE Birthdate <= 19900101 --Doðum tarihi 1990 01 01'Den (dahil) küçük olaný getir
SELECT * FROM Customers WHERE Birthdate >= 19900101 --Doðum tarihi 1990 01 01'Den (dahil) büyük olaný getir
SELECT * FROM Customers WHERE Birthdate < 19900101 --Doðum tarihi 1990 01 01'Den küçük olaný getir
SELECT * FROM Customers WHERE Birthdate > 19900101 --Doðum tarihi 1990 01 01'Den büyük olaný getir
SELECT * FROM Customers WHERE Birthdate BETWEEN '19900101' and '20221231'--Doðum tarihi 1990 01 01 ve 2022 12 31 tarihleri arasýndaki kayýtlarý getir
SELECT * FROM Customers WHERE CustomerName LIKE 'Giz%' --Adý giz ile baþlayanlarý getir
SELECT * FROM Customers WHERE CustomerName LIKE '%Giz' --adý giz ile bitenleri getir
SELECT * FROM Customers WHERE CustomerName LIKE '%Giz%' -- adýnýn içinde giz geçenleri getir
SELECT * FROM Customers WHERE City IN ('Ýstanbul','Ordu','Giresun') --þehri istanbuul ordu giresun olanlarý getir

										--UPDATE KOMUTU VE OPERATÖRLER
-- Update komutu güncellemek için kullanýlýr. update yapýsý UPDATE TABLOADI SET COLUMN1=VALUE1 WHERE <Þartlar> þeklindedir.

UPDATE Customers SET Nation='Türkiye' --Nation kolonu Türkiye olarak güncellendi
UPDATE Customers SET CustomerName='Gizem'--Bütün isimler gizem olarak güncellendi
UPDATE Customers SET CustomerSurname='Ustahüseyin' --Bütün soyisimler Ustahüseyin olarak güncellendi
UPDATE Customers SET City='Ýstanbul' --Bütün þehirler Ýstanbul olarak güncellendi
UPDATE Customers SET Distrcit='Zeytinburnu'  --Bütün ilçeler Zeytinburnu olarak güncellendi
UPDATE Customers SET City='Ýzmir' WHERE City = 'Ýstanbul' --þehri istanbul olaný izmir olarak güncelle
UPDATE Customers SET City='Ýzmir' WHERE City <> 'Ýstanbul' --þehri istanbul olmayaný izmir olarak güncelle
UPDATE Customers SET Birthdate = 20000101 WHERE Birthdate <= 19900101 --doðum günü 1990 01 01'dan (dahil) küçük olaný 2000 01 01 olarak güncelle
UPDATE Customers SET Birthdate = 20000101 WHERE Birthdate >= 19900101 --doðum günü 1990 01 01'dan (dahil) büyük olaný 2000 01 01 olarak güncelle
UPDATE Customers SET Birthdate = 20000101 WHERE Birthdate < 19900101 --doðum günü 1990 01 01'dan küçük olaný 2000 01 01 olarak güncelle
UPDATE Customers SET Birthdate = 20000101  WHERE Birthdate > 19900101 --doðum günü 1990 01 01'dan küçük olaný 2000 01 01 olarak güncelle
UPDATE Customers SET CustomerName='Gizem' WHERE CustomerName LIKE 'Giz%' --adý giz ile baþlayaný gizem olarak güncelle
UPDATE Customers SET CustomerName='Gizem' WHERE CustomerName LIKE '%Giz' --adý giz ile biteni gizem olarak güncelle
UPDATE Customers SET CustomerName='Gizem' WHERE CustomerName LIKE '%Giz%' --adýnýn içinde giz olaný gizem olarak güncelle
UPDATE Customers SET CustomerName='Gizem' WHERE City IN ('Ýstanbul','Ordu','Giresun') --þehri istanbul ordu giresun olanýn adýný gizem olarak güncelle
UPDATE Customers SET Gender='Erkek' WHERE Gender='E' -- cinsiyeti e olaný erkek olarak güncelle
UPDATE Customers SET Gender='Kadýn' WHERE Gender='K' -- cinsiyeti k olaný kadýn olarak güncelle

										--AND OR OPERATÖRLERÝ
SELECT * FROM Customers WHERE City='Ýstanbul' and Distrcit='Zeytinburnu' or Distrcit='Bakýrköy' --þehri istanbul olaný ve ilçesi zeytinburnu veya bakýrköy olaný getir
SELECT * FROM Customers WHERE CustomerName='Gizem' and CustomerSurname='Ustahüseyin' or CustomerSurname='Güven' --adý gizem olaný ve soyadý ustahüseyin veya güven olaný getir

										--DISTINCT KOMUTU (TEKRAR EDEN VERÝLERÝ TEKÝLLEÞTÝRÝR)
SELECT Distrcit FROM Customers --Tablodaki toplam ilçeleri getirecek yani 10 tane zeytinburnu varsa bir olarak getirilecektir
SELECT Gender FROM Customers
SELECT City FROM Customers
SELECT CustomerName FROM Customers
SELECT CustomerSurname FROM Customers

										--ORDER BY KOMUTU
--VERÝLERÝ SIRALI GETÝRMEK ÝÇÝNDÝR

SELECT ID,CustomerName,CustomerSurname,City FROM  Customers ORDER BY ID ASC --ASC KÜÇÜKTEN BÜYÜÐEDÝR. ID'YE GÖRE KÜÇÜKTEN BÜYÜÐE GETÝR
SELECT ID,CustomerName,CustomerSurname,City FROM  Customers ORDER BY ID DESC --DESC BÜYÜKTEN KÜÇÜÐEDÝR. ID'YE GÖRE BÜYÜKTEN KÜÇÜÐE GETÝR
SELECT ID,CustomerName,CustomerSurname,City FROM  Customers ORDER BY CustomerName ASC --ASC KÜÇÜKTEN BÜYÜÐEDÝR. ÝSME GÖRE KÜÇÜKTEN BÜYÜÐE GETÝR
SELECT ID,CustomerName,CustomerSurname,City FROM  Customers ORDER BY CustomerName DESC --DESC BÜYÜKTEN KÜÇÜÐEDÝR. ÝSME GÖRE BÜYÜKTEN KÜÇÜÐE GETÝR


