
-- Lesson 2; Homw2
-- 1.
CREATE TABLE Employees(Emp_id int, Emp_name varchar(50), Salary DECIMAL(10,2));
-- 2.
Select * from Employees
Insert into Employees Values(1, 'Devid', 5000),
                            (2, 'Shane', 8000),
							(3, 'Jonh', 6000);
-- 3.
Update Employees Set Salary=7000 Where Emp_id=1;
-- 4.
Delete from Employees where Emp_id=2;
-- 5.
-- Delete, Truncate, Drop - bu SQL da o'chirish uchun ishlatiladigan komandalar:
-- Delete - ma'lumotlar bazasidagi ma'lumotlarin bir yoki bir necha qatorlarni o'chirish uchun ishlatiladi, lekin Truncate komandasidan
-- ko'ra sekinroq ishlaydi;
-- Truncate - jadvaldagi barcha qatorlarni o'chiradi. Bu komanda Delete komandasiga qaraganda ancha tez ishlaydi. Bunda jadvalning
-- strukturasi saqlanib qolinadi;
-- Drop - bu komanda ma'lumotlar bazasidagi barcha ma'lumotlarni, hamda butunlay jadvalni o'chirish uchun ishlatiladi.

-- 6.

Alter Table Employees 
modify Emp_name varchar(50) to Emp_name varchar(100);

-- 7.

Alter Table Employees 
ADD Department (VARCHAR(50));

--8.

Alter Table Employees 
Alter column Salary Float

--9.

Create table Departments(Dep_id int Primary key, Dep_name varchar(50));

-- 10.

Truncate table Employees 

-- 11. 
Select * from Departments
Insert into Departments Values (1, 'Director'),
                              (2, 'Accounting'),
							  (3, 'Financial'),
							  (4, 'Management'),
							  (5, 'Sales');

-- 12.

Select * from Employees
Select * from Departments
Update Employees
Set Departments='Management' where Salary>5000;
 
-- 13.
Truncate table Departments

-- 14.
Alter Table Employees Drop Column Departments;

--15.
Select * from Employees
Alter Table Employees rename to 'StaffMembers';

-- 16.

Drop table Departments

--17.

Create table PRODUCTS (Product_id int Primary key, Product_name varchar(50), Category varchar(50), Price Decimal(10,2), 
Date int);

-- 18. 
 Select * from PRODUCTS
 Alter table PRODUCTS
 Add Constraint ck_PricePositive Check (Price>0);

 -- 19. 
Select * from PRODUCTS
 Alter table PRODUCTS
 ADD StockQuantity int(50);

 -- 20. 
 Select * from PRODUCTS
Alter table PRODUCTS Rename column Category to 'ProductCategory';

-- 21. 
Select * from PRODUCTS
Insert into PRODUCTS Values (1, 'Apple', 'Fruits', 2000, 8),
                            (2, 'Peach', 'Fruits', 3000, 10),
							(3, 'Nut', 'DriedFruits', 4000, 12),
							(4, 'Pistachios', 'DriedFruits', 6000, 9),
							(5, 'Almonds', 'DriedFruits', 5000, 11);

-- 22.
Select * Into PRODUCTS_Backup From PRODUCTS;

-- 23. 
Select * from PRODUCTS
Exec sp_rename 'PRODUCTS', 'Inventory';

-- 24. 

Select * from Inventory 
Alter table Inventory
Modify Column Price Float;

-- 25.
Select * from Inventory 
Alter table Inventory
ADD ProductCode int Identity(1000, 5);
