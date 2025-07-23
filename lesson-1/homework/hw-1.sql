
--Lesson 1 (homework 1)


--  SQL SERVER - bu (Structured Query Language) ma'lumotlar bazasi(database) bilan ishlash uchun standart til. 
--    U ma'lumotlarni yaratish, tahrirlash, o'qish, o'zgartirish va o'chirish uchun ishlatiladi.



-- 1. DATA - ma'lumotlar
--    DATABASE - ma'lumotlar bazasi. Bu ma'lumotlarni saqlash, tartibga solish va undan foydalanish uchun tizimli tarzda tashkil etilgan
-- ma'lumotlar to'plami.
--    RELATION DATABASE - bu ma'lumotlarni jadvallar shaklida saqlaydigan va ular o'rtasida munosabatlar belgilaydigan ma'lumotlar 
-- bazasidir. 
--    TABLE - bu jadval. Bu asosiy ma'lumotlar saqlanadigan tizim.

-- 2. a) SELECT - ma'lumotlar bazasidan ma'lumotlarni tanlab olish uchun ishlatiladigan kalit so'z.
--    b) UPDATE - ma'lumotlar bazasida mavjud ma'lumotlarni o'zgartirish, tahrirlash uchun ishlatiladi.
--    c) INSERT INTO - ma'lumotlar bazasiGA ma'lumotlarni  qo'shish uchun ishlatiladi. Ikki xil ko'rinishda yozish mumkin:
--  Jadvalga qo'shiladigan ustunlar va ularning qiymatlarini belgilash orqaki;
--  Jadvalning barcha ustunlariga qiymat kiritilmoqchi bo'linsa, ustun nomlarini yozish shart emas, ammo qiymatlarni yozish kerak.

--    d) DELETE - ma'lumotlar bazasidagi jadvaldan ma'lumotlarni (qatorlarni) o'chirish uchun  ishlatiladi.
--    e) CREATE TABLE - Yangi jadval yaratish.
--    f) ALTER TABLE - mavjud jadvalni o'zgartirish, ya'ni ma'lumot qo'shish, o'chirish yoki ustunlarni o'zgartirish. 

-- 3. SQL SERVER ga ulanishning 2 xil autentifikasiya rejimi mavjud:
-- a) Windows - Active Directory dan foydalanilgan holda kiriladi, bu xavfsizroq hisoblanadi, sababi hisobga olish ma'lumotlari 
-- Active Directory da saqlanadi;
-- b) Aralash - bu SQL SERVER da alohida foydalanuvchi hisobini yaratish va foydalanish, hamda 'domen'ga kira olmaslik huquqi bilan 
-- boshqa foydalanuvchiga kirib, foydalanish huquqini beruvchi rejim.


-- 4. 
CREATE DATABASE [SchoolDB]

-- 5.
CREATE TABLE Students(Student_id int PRIMARY KEY, Student_name varchar(50), Student_age int); 

-- 6. SQL SERVER - bu Microsoft tomonidan yaratilgan ma'lumotlar bazasini boshqaruvchi relasion tizim.
--    SSMS (SQL SERVER MANAGAMENT STUDIO) - bu SQL SERVER bilan ishlash uchun grafik interfeys.
--    SQL (Structured Query Language) - ma'lumotlar bazalari bilan ishlash uchun standart til.

-- 7. SQL ning asosiy buyruq kommandalari: 1) DDL (DATA DEFINITION LANGUAGE) - CREATE, ALTER, DROP

-- CREATE - ma'lumotlar bazasidan ma'lumotlar yaratish (jadval, indeks,...)
CREATE TABLE Pupils(Pupil_id int PRIMARY KEY, Pupil_name varchar(50), Pupil_age int);

-- ALTER - mavjud jadvalni o'zgartirish
ALTER TABLE Pupils ADD Pupil_grade int;

-- DROP - ma'lumotlar bazasidan ma'lumotlar o'chirish
DROP TABLE Pupils;

-- 2) DML (DATA MAMIPULATION LANGUAGE) - SELECT, INSERT, UPDATE, DELETE
-- SELECT - ma'lumotlar bazasidan ma'lumotlarni tanlab olish 

SELECT Pupil_name, Pupil_age 
FROM Pupils 
WHERE Pupil_id=75

-- INSERT INTO - ma'lumotlar bazasiga ma'lumotlarni qo'shish uchun ishlatiladi.
INSERT INTO Pupils 
VALUES (1, 'SARVAR', 15),
       (2, 'Davron', 14),
	   (3, 'Aziza', 15),
	   (4, 'Hilola', 17),
	   (18, 'Zafar', 13),
	   (75, 'Qobil', 19);

-- UPDATE - ma'lumotlar bazasida mavjud ma'lumotlarni o'zgartirish, tahrirlash uchun ishlatiladi.
UPDATE Pupils SET Pupil_name='Azim' where Pupil_id=1;  

-- DELETE - ma'lumotlar bazasidagi jadvaldan ma'lumotlarni (qatorlarni) o'chirish uchun  ishlatiladi.
DELETE FROM Pupils WHERE Pupil_id=3;


-- 3) DCL (DATA CONTROL LANGUAGE) - GRANT, REVOKE

-- GRANT - ma'lumotlar bazasidagi ma'lumotlarga kirish huquqini beradi
GRANT SELECT, UPDATE ON Pupils TO admin_1; 

-- REVOKE - ma'lumotlar bazasidagi ma'lumotlarga kirish huquqini bekor qilish
REVOKE SELECT ON Pupils FROM admin_1; 

-- 4) DQL (DATA QUERY LANGUAGE) - SELECT
-- SELECT - ma'lumotlar bazasidan ma'lumotlarni tanlab olish uchun ishlatiladigan asosiy kalit so'z.
SELECT * FROM Pupils;

-- 8. 
SELECT * FROM Students
Insert Into Students values (1, 'Umidjon', 45),
                            (2, 'Asilbek', 24),
							(3, 'Sherzod', 37);

-- 9. AdventureWorksDW 2022.bak ma'lumotlar bazasining faylini SQL SERVER tizimida qayta tiklash uchun, 
-- SSMS (SQL SERVER MANAGAMENT STUDIO) tizimidan foydalanish shart:
-- 1) Server tizimiga ulanish. SSMS ochib, SQL SERVER ning instansasiga ulanish kerak (serverga ulanish uchun);
-- 2) "База данных" ustiga o'ng tugmani bosib, "Восстановить базу данных..."(База данныхni tiklash...)ni tanlash;
-- 3) Tiklash ustasida, "Устройство"(Qurilma)ni tanlash va ".bak" faylining joylashish yo'lini ko'rsatish;
-- 4) Tiklash jarayonini tugatish.
