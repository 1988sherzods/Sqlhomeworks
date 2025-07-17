-- Lesson 3. Homework 3

-- 1.
-- BULK INSERT - bu tashqi fayldagi ma'lumotlarni SQL SERVER da ma'lumotlar bazasidagi jadvalga yuklash uchun ishlatiladi. BULK INSERT  
-- juda katta hajimdagi ma'lumotlarni tez yuklashni ta'minlaydi. Sintaksis: BULK INSERT database_name or schema_name
--                                                                        FROM  'data_file'
--                                                                        WITH
--                                                                        (
--																			FIELDTERMINATOR = ',',
--                                                                          ROWTERMINATOR='\in'
--                                                                         );

-- 2. CSV, TXT, XML, JSON 

-- CSV (Comma Separated Values) - jadval ko'rinishidagi ma'lumotlar uchun keng tarqalgan format;
-- TXT (Text file) - oddiy matn ko'rinishidagi fayllar. 
-- XML (Extensible Markup Language) - teglar yordamida ma'lumotlarni tasvirlash imkonini beruvchi format;
-- JSON (JavaScript Object Notation) - ma'lumotlar almashinuvi uchun server va mijoz o'rtasida ko'p ishlatiladigan format.

-- 3.

Create table Products (Product_id int Primary Key, Product_name varchar(50), Price Decimal(10,2));

-- 4.

Select * from Products
Insert into Products Values (01, 'Cola', 4000),
                            (02, 'Apple', 6000),
							(03, 'Pencil', 2000);

-- 5.
-- NULL - SQL ning ma'lumotlar bazasida qiymat yo'qligini yoki qiymat no'malum ekanligini bildiruvchi ishora;
-- NOT NULL - Ustunga NULL qiymat kiritishni taqiqlaydi.

-- 6. UNIQUE

Select * from Products
Alter table Products
Add UNIQUE(Product_name);

-- 7.
-- SQL da uning maqsadini tushuntiruvchi izoh yozishning ikki xil asosiy ko'rinishi mavjud:
-- 1) Bir qatorli izoh: Satr boshida (--) ishlatiladi. Bu ikkita uzuq chiziq (defis) dan keyin satr oxirigacha bo'lgan ma'lumot
-- izoh hisoblanadi va ma'lumotlar bazasi tomonidan bajarilmaydi;
-- 2) Ko'p qatorli izoh: Bunda izohni boshlash uchun (/*) va uni tugatish uchun ham (/*) ushbu belgilardan foydalaniladi. Ushbu 
-- belgilar orasidagi barcha ma'lumotlar, hatto bir necha qator bo'lsa ham, izoh deb hisoblanadi.

-- 8.

Select * from Products
Alter table Products
Add CategoryID int;

-- 9.

Create table Categories (Category_ID int Primary Key, Category_name varchar(50) UNIQUE);

-- 10. IDENTITY
-- SQL SERVER dagi IDENTITY ustuni, jadvalga yangi qator kiritilgada avtomatik ravishda butun son qiymatini oladigan raqamli ustundir. 
-- U asosan ma'lumotlar bazasidagi har bir yozuv uchun noyob va ketma-ket identifikatorni ta'minlash uchun ishlatiladi, bu esa 
--ma'lumotlarni boshqarish va bog'lashni osonlashtiradi. IDENTITY ustuni "seed" (boshlang'ich qiymat) va "increment" 
--(har bir keyingi qiymatga qo'shiladigan miqdor) bilan aniqlanadi. Agar bu qiymatlar ko'rsatilmasa, har ikkalasi ham 1 ga teng bp'ladi.

-- 11.
Select * from Products
Bulk Insert Products
From 'C:/path\to\your\products.csv'
With
(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR='\in'
);

-- 12.
Select * from Products
Select * from Categories
Alter table Products 
ADD Foreign key (Category_ID) References Categories (Category_ID);

-- 13. 
-- UNIQUE - ustundagi qiymatlar takrorlanmasligini talab qiladi;
-- PRIMARY KEY - Not Null va UNIQUE cheklovlarining kombinatsiyasi. Jadvaldagi har bir qatorni identifikasiya qiladi.

-- 14. 
Select * from Products
Alter table Products
Add Constraint Chk_PricePositive Check (Price>0);

-- 15.
Select * from Products
Alter table Products 
Add Stock int Not Null;

-- 16.
Select * from Products
Select isnull(Price, 0) as Price From Products;

-- 17. FOREIGN KEY
-- FOREIGN KEY - jadvallar orasidagi bog'lanishning yo'qolishini oldini oladi.

-- 18. 
Create table Customers (CustomerID int Primary Key, FirstName varchar (50), LastName varchar (50), Age int, 
Constraint Chk_Age Check (Age>=18));

-- 19.
Create table NewTable (ID Int IDENTITY(100, 10));

-- 20.
Create table OrderDetails (OrderID int not null, ProductID int not null, Quantity int, Price Decimal(10, 2), 
Primary Key (OrderID, ProductID));

-- 21.
-- COALESCE, ISNULL - SQL da Null qiymatini qayta ishlash uchun ishlatiladi.

-- ISNULL - bu funksiya Trunsact-SQL uchun xos. U ikkita argumentni qabul qiladi:
--                                                                               check_expression;
--                                                                               replacement_value.
-- Agar check_expression NULL bo'lsa, funksiya replacement_value ni qaytaradi.
-- Agar check_expression NULL bo'lmasa, funksiya check_expression ni qaytaradi.

-- COALESCE - bu funksiya ANSI SQL standartining bir qismi bo'lib, uni turli xil DBMS (SQL SERVER, ORACLE, PostgreSQL) 
-- o'rtasida ko'proq ko'chiriladigan qiladi. U bir nechta argumentlarni qabul qiladi va ro'yxatdan birinchi NULL qiymatni qaytaradi.

-- 22.
Create table Employees (EmopID int Primary Key, Email varchar(50) Unique);

-- 23. 

Alter table child_table
Add Constraint fk_name foreign Key (child_column)
References parent_table (parent_column)
On Delete Cascade
On Update Cascade;
