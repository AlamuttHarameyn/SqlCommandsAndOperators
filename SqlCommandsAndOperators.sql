										--KOMUTLAR VE OPERAT�RLER

-- Insert komutu veri eklemek i�in kullan�l�r. insert yap�s� INSERT TABLOADI KOLON ADI VALUES EKLENECEKVER�LER �eklindedir. Kendi kendine artan de�er �zelli�i olan bir kolon varsa �rn. �d veriler kolon ad� olarak eklenmez

INSERT Customers  (CustomerName,CustomerSurname,City,Distrcit,Gender,BirthDate) VALUES
('Gizem','Ustah�seyin','�stanbul','Zeytinburnu','K','1999-07-16'),
('Mehmet','G�ven','�stanbul','Sultangazi','E','1997-03-01'),
('Yeliz','K�ro�lu','�stanbul','Avc�lar','K','1979-06-16'),
('Ece','Kanruk','�stanbul','Avc�lar','K','1989-04-06'),
('Ramis','A��ks�z','�stanbul','Sultangazi','E','1996-12-11'),
('Sevda','A��ks�z','Malatya','Merkez','K','1974-03-01'),
('Ay�e','G�nayd�n','�stanbul','�i�li','K','1999-07-16'),
('�eyma','Arslan','Giresun','Piraziz','K','1997-03-01'),
('Asl�han','Gaye','�stanbul','Bak�rk�y','K','1979-06-16'),
('Selim','Uslu','�stanbul','Be�ikta�','E','1989-04-06'),
('Arif','Cihan','�stanbul','Ey�psultan','E','1996-12-11'),
('G�l','S�zer','Trabzon','Of','K','1974-03-01'),
('Ahmet','Sa�lam','�stanbul','Ka��thane','E','1998-03-06'),
('Fatih','Sultan','Tokat','Erba�','E','1997-02-08'),
('Salim','Kal�r','Konya','Emirgazi','E','1979-12-28'),
('Su','Karaca','Elaz��','Alacakaya','K','1965-03-02')

										--DELETE KOMUTU
DELETE FROM Customers --Tablodaki b�t�n kay�tlar silindi
DELETE FROM Customers WHERE CustomerName='Gizem' --ad� gizem olan kay�tlar silinir
DELETE FROM Customers WHERE CustomerSurname='Ustah�seyin' --soyad� ustah�seyin olan kay�tlar silinir
DELETE FROM Customers WHERE City='�stanbul' --�ehri istanbul olan kay�tlar silinir
DELETE FROM Customers WHERE Distrcit='Zeytinburnu' --il�esi zeytinburnu olan kay�tlar silinir

TRUNCATE TABLE Customers --Tablonun tamam�n� temizler

										--SELECT, WHERE KOMUTLARI VE OPERAT�RLER 
SELECT * FROM Customers WHERE City = '�stanbul' --�ehri istanbul olan� getir
SELECT * FROM Customers WHERE City <> '�stanbul' --�ehri istanbul olmayan� getir
SELECT * FROM Customers WHERE Birthdate <= 19900101 --Do�um tarihi 1990 01 01'Den (dahil) k���k olan� getir
SELECT * FROM Customers WHERE Birthdate >= 19900101 --Do�um tarihi 1990 01 01'Den (dahil) b�y�k olan� getir
SELECT * FROM Customers WHERE Birthdate < 19900101 --Do�um tarihi 1990 01 01'Den k���k olan� getir
SELECT * FROM Customers WHERE Birthdate > 19900101 --Do�um tarihi 1990 01 01'Den b�y�k olan� getir
SELECT * FROM Customers WHERE Birthdate BETWEEN '19900101' and '20221231'--Do�um tarihi 1990 01 01 ve 2022 12 31 tarihleri aras�ndaki kay�tlar� getir
SELECT * FROM Customers WHERE CustomerName LIKE 'Giz%' --Ad� giz ile ba�layanlar� getir
SELECT * FROM Customers WHERE CustomerName LIKE '%Giz' --ad� giz ile bitenleri getir
SELECT * FROM Customers WHERE CustomerName LIKE '%Giz%' -- ad�n�n i�inde giz ge�enleri getir
SELECT * FROM Customers WHERE City IN ('�stanbul','Ordu','Giresun') --�ehri istanbuul ordu giresun olanlar� getir

										--UPDATE KOMUTU VE OPERAT�RLER
-- Update komutu g�ncellemek i�in kullan�l�r. update yap�s� UPDATE TABLOADI SET COLUMN1=VALUE1 WHERE <�artlar> �eklindedir.

UPDATE Customers SET Nation='T�rkiye' --Nation kolonu T�rkiye olarak g�ncellendi
UPDATE Customers SET CustomerName='Gizem'--B�t�n isimler gizem olarak g�ncellendi
UPDATE Customers SET CustomerSurname='Ustah�seyin' --B�t�n soyisimler Ustah�seyin olarak g�ncellendi
UPDATE Customers SET City='�stanbul' --B�t�n �ehirler �stanbul olarak g�ncellendi
UPDATE Customers SET Distrcit='Zeytinburnu'  --B�t�n il�eler Zeytinburnu olarak g�ncellendi
UPDATE Customers SET City='�zmir' WHERE City = '�stanbul' --�ehri istanbul olan� izmir olarak g�ncelle
UPDATE Customers SET City='�zmir' WHERE City <> '�stanbul' --�ehri istanbul olmayan� izmir olarak g�ncelle
UPDATE Customers SET Birthdate = 20000101 WHERE Birthdate <= 19900101 --do�um g�n� 1990 01 01'dan (dahil) k���k olan� 2000 01 01 olarak g�ncelle
UPDATE Customers SET Birthdate = 20000101 WHERE Birthdate >= 19900101 --do�um g�n� 1990 01 01'dan (dahil) b�y�k olan� 2000 01 01 olarak g�ncelle
UPDATE Customers SET Birthdate = 20000101 WHERE Birthdate < 19900101 --do�um g�n� 1990 01 01'dan k���k olan� 2000 01 01 olarak g�ncelle
UPDATE Customers SET Birthdate = 20000101  WHERE Birthdate > 19900101 --do�um g�n� 1990 01 01'dan k���k olan� 2000 01 01 olarak g�ncelle
UPDATE Customers SET CustomerName='Gizem' WHERE CustomerName LIKE 'Giz%' --ad� giz ile ba�layan� gizem olarak g�ncelle
UPDATE Customers SET CustomerName='Gizem' WHERE CustomerName LIKE '%Giz' --ad� giz ile biteni gizem olarak g�ncelle
UPDATE Customers SET CustomerName='Gizem' WHERE CustomerName LIKE '%Giz%' --ad�n�n i�inde giz olan� gizem olarak g�ncelle
UPDATE Customers SET CustomerName='Gizem' WHERE City IN ('�stanbul','Ordu','Giresun') --�ehri istanbul ordu giresun olan�n ad�n� gizem olarak g�ncelle
UPDATE Customers SET Gender='Erkek' WHERE Gender='E' -- cinsiyeti e olan� erkek olarak g�ncelle
UPDATE Customers SET Gender='Kad�n' WHERE Gender='K' -- cinsiyeti k olan� kad�n olarak g�ncelle

										--AND OR OPERAT�RLER�
SELECT * FROM Customers WHERE City='�stanbul' and Distrcit='Zeytinburnu' or Distrcit='Bak�rk�y' --�ehri istanbul olan� ve il�esi zeytinburnu veya bak�rk�y olan� getir
SELECT * FROM Customers WHERE CustomerName='Gizem' and CustomerSurname='Ustah�seyin' or CustomerSurname='G�ven' --ad� gizem olan� ve soyad� ustah�seyin veya g�ven olan� getir

										--DISTINCT KOMUTU (TEKRAR EDEN VER�LER� TEK�LLE�T�R�R)
SELECT Distrcit FROM Customers --Tablodaki toplam il�eleri getirecek yani 10 tane zeytinburnu varsa bir olarak getirilecektir
SELECT Gender FROM Customers
SELECT City FROM Customers
SELECT CustomerName FROM Customers
SELECT CustomerSurname FROM Customers

										--ORDER BY KOMUTU
--VER�LER� SIRALI GET�RMEK ���ND�R

SELECT ID,CustomerName,CustomerSurname,City FROM  Customers ORDER BY ID ASC --ASC K���KTEN B�Y��ED�R. ID'YE G�RE K���KTEN B�Y��E GET�R
SELECT ID,CustomerName,CustomerSurname,City FROM  Customers ORDER BY ID DESC --DESC B�Y�KTEN K����ED�R. ID'YE G�RE B�Y�KTEN K����E GET�R
SELECT ID,CustomerName,CustomerSurname,City FROM  Customers ORDER BY CustomerName ASC --ASC K���KTEN B�Y��ED�R. �SME G�RE K���KTEN B�Y��E GET�R
SELECT ID,CustomerName,CustomerSurname,City FROM  Customers ORDER BY CustomerName DESC --DESC B�Y�KTEN K����ED�R. �SME G�RE B�Y�KTEN K����E GET�R


