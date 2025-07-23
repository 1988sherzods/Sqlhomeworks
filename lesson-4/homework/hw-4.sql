-- Lesson 4. Homwork 4







-- 1.
Select * From Employees 

Select Top 5 * From Employees 
Order by Salary Desc;

-- 2.
Select Distinct Category
From Products

-- 3.
Select * From Products Where Price>100

-- 4.
Select * From Customers where FirstName like 'A%';


-- 5.
Select * From Products Order By Price Asc;

-- 6.
Select * From Employees
Where Salary>=60000 and Department='HR';

-- 7.
Select * From Employees
Update Employees SET Email=ISNULL(Email, 'noemail@example.com');

-- 8.
Select * From Products
Where Price BETWEEN 50 AND 100;

-- 9.
Select * From Products
Select Distinct Category, ProductName From Products;

-- 10.
Select Category, ProductName From Products Order By ProductName Desc;

-- 11.
Select * From Products
Select Top 10 * From Products 
Order by Price Desc;

-- 12.
Select * From Employees
Select Coalesce(Firstname, LastName) as DName From Employees;

-- 13.
Select * From Products
Select Distinct Category, Price From Products;

-- 14.
Select * From Employees
where (Age Between 30 and 40) or (Department = 'Marketing');

-- 15.
Select * From Employees
Order By Salary DEsc
Offset 10 rows
Fetch next 10 rows only;

-- 16.
Select * From Products
Where Price<=1000 and Stock>50 Order By Stock Asc;

-- 17.
Select * From Products
Where ProductName like '%e%';

-- 18.
Select * From Employees
Where Department In('HR', 'IT', or 'Finance');

-- 19.
Select * From Customers
Where City, PostalCode Order By City Asc AND PostalCode Desc;

-- 20.
Select Top 5 ProductName, SalesAmount * From Products 
Order By SalesAmount Desc;

-- 21.

Select * From Employees
Where FirstName, LastName || '' || as FullName;

-- 22.
Select Distinct Category, ProductName, Price From Products
Where Price>50;

-- 23.

Select * From Products
Where Price <(Select Avg(Price) From Products) * 0.10;

-- 24.
Select * From Employees
Where Age<30 And Department In('HR' or 'IT');

-- 25.
Select * From Customers
Where Email like '%@gmail.com';

-- 26.
Select * From Employees
Where Salary>All(Select Salary From Employees Where Department='Sales');

-- 27.
Select * From Orders
Where LATEST_DATE Between DateAdd(day, -180, Getdate()) And Getdate();
