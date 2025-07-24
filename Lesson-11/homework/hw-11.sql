-- Lesson 11 / Homework 11




-- 1.


Select o.OrderID, c.CustomerName, o.OrderDate
From Orders o
join Customers c on o.CustomerID=c.CustomerID
Where o.OrderDate>'2022-12-31';

-- 2.

Select e.Name, d.DepartmentName
From Employees e
join Departments d on e.DepartmentID=d.DepartmentID
Where d.DepartmentName in ('Sales', 'Marketing');

-- 3.


Select d.DepartmentName, Max(e.Salary) as MaxSalary
From Departments d
join Employees e on d.DepartmentID=e.DepartmentID
Group By d.DepartmentName;

-- 4.



Select c.FirstName, LastName, o.OrderID, o.OrderDate
From Customers c
join Orders o on c.CustomerID=o.CustomerID
where c.Сountry='USA' and o.OrderDate='2023';

-- 5.


Select c.FirstName, LastName, Count(o.OrderID) as TotalOrders
From Customers c
left join Orders o on c.CustomerID=o.CustomerID
Group by c.FirstName, LastName;

-- 6.

Select p.ProductName, s.SupplierName
From Products p
join Suppliers s on p.SupplierID=s.SupplierID
Where s.SupplierName in ('Gadget Supplies', 'Clothing Mart');

-- 7.


Select c.FirstName, LastName, Max(o.OrderDate) as o.MostRecentOrderDate
From Customers c
left join Orders o on c.CustomerID=o.CustomerID
Group by c.FirstName, LastName; 

-- 8.



Select c.FirstName, LastName, Count(o.OrderDate) as OrderTotal
From Customers c
join Orders o on c.CustomerID=o.CustomerID
Where OrderTotal>500;

-- 9.


Select p.ProductName, s.SaleDate, s.SaleAmount
From Products  p
join Sales s on p.ProductID=s.ProductID
Where Year(s.SaleDate)='2022' or s.SaleAmount>400;

-- 10.


Select p.ProductName, Sum(s.SaleAmount) as TotalSaleAmount
From Products p
join Sales s on p.ProductID=s.ProductID
Group by p.ProductName;

-- 11.

Select e.Name, d.DepartmentName, e.Salary
From Employees  e
join Departments d on e.DepartmentID=d.DepartmentID
Where d.DepartmentName='HR' and e.Salary>60000;

-- 12.


Select p.ProductName, s.SaleDate, p.StockQuantity
From Products p
join Sales s on p.ProductID=s.ProductID
where Year (s.SaleDate)='2023' and p.StockQuantity>100;

-- 13.


Select e.Name, d.DepartmentName, e.HireDate
From Employees e
join Departments d on e.DepartmentID=d.DepartmentID
Where d.DepartmentName='Sales' or year(e.HireDate)>2020;

-- 14.


Select c.FirstName, LastName, o.OrderID, c.Address, o.OrderDate
From Customers c
join Orders o on c.CustomerID=o.CustomerID
Where c.Address like '____%' and c.Country='USA';

-- 15.



Select p.ProductName, p.Category, s.SaleAmount
From Products p
join Sales s on p.ProductID=s.ProductID
Where p.Category='Electronics' or s.SaleAmount>350;

-- 16.



Select c.CategoryName, Count(p.ProductID) as ProductCount
From Categories c
left join Products p on c.CategoryID=p.CategoryID
Group By c.CategoryName;


-- 17.



Select c.FirstName, LastName, c.City, o.OrderID, o.TotalAmount
From Customers c
join Orders o on c.CustomerID=o.CustomerID
Where c.City='Los Angeles' and o.TotalAmount>300;

-- 18.


Select e.Name, d.DepartmentName
From Employees e
join Departments d on e.DepartmentID=d.DepartmentID
Where d.DepartmentName in ('HR','Finance') or 
(
	lower(e.Name) like '%a%a%a%a%' or
	lower(e.Name) like '%a%a%a%e%' or
	lower(e.Name) like '%a%a%a%i%' or
	lower(e.Name) like '%a%a%a%o%' 
);


-- 19.


Select e.Name, d.DepartmentName, e.Salary
From Employees e
join Departments d on e.DepartmentID=d.DepartmentID
Where d.DepartmentName in ('Sales', 'Marketing') and e.Salary>60000;
