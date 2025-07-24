-- Lesson 10 / Homework 10



-- 1.



Select e.Name, e.Salary, d.DepartmentName
From Employees e
join Departments d on e.DepartmentID=d.DepartmentID
Where e.Salary>50000;

-- 2.


Select c.FirstName, LastName, o.OrderDate
From Customers c
join Orders o on c.CustomerID=o.CustomerID
Where Year(o.OrderDate)=2023;

-- 3.


Select e.Name, d.DepartmentName
From Employees e
left join Departments d on e.DepartmentID=d.DepartmentID;

-- 4.
 

Select s.SupplierName, p.ProductName
From  Suppliers s
left join Products p on s.SupplierID=p.SupplierID;

-- 5.


Select o.OrderID, o.OrderDate, p.PaymentDate, p.Amount
From  Orders o
Full join Payments p on o.OrderID=p.OrderID;


-- 6.



Select e.Name, m.Name as e.ManagerName
From  Employees e
left join Employees m on e.ManagerID=m.EmployeeID;

-- 7.



Select s.Name, c.CourseName
From  Students  s
join Enrollments e on s.StudentID=e.StudentID
join Courses c on e.CourseID=c.CourseID
Where c.CourseName='Math 101';

-- 8.


Select c.FirstName, LastName, Sum(o.Quantity) as QuantityOrdered
From Customers c
join Orders o on c.CustomerID=o.CustomerID
Group by c.FirstName, LastName
Having Sum(o.Quantity)>3;

-- 9.


Select e.Name, d.DepartmentName
From Employees e
join Departments d on e.DepartmentID=d.DepartmentID
Where d.DepartmentName='Human Resources';

-- 10.


Select d.DepartmentName, Count(e.EmployeeID) as EmployeeCount
From Departments d 
join Employees e on d.DepartmentID=e.DepartmentID
Group by d.DepartmentName
Having Count(e.EmployeeID)>5;

-- 11.


Select  p.ProductName, p.ProductID
From Products p
left join Sales s on p.ProductID=s.ProductID
Where s.ProductID is null;

-- 12.


Select c.FirstName, LastName, Count(o.OrderID) as TotalOrders
From Customers c
join Orders o on c.CustomerID=o.CustomerID
Group by c.FirstName, LastName
Having Count(o.OrderID)>=1;


-- 13.


Select e.Name, d.DepartmentName
From Employees e
join Departments d on e.DepartmentID=d.DepartmentID;



-- 14.


Select e1.Name as Employee1, e2.Name as Employee2, e1.ManagerID 
From Employees e1
join Employees e2 on e1.ManagerID=e2.ManagerID and e1.EmployeeID=e2.EmployeeID;

-- 15.



Select o.OrderID, o.OrderDate, c.FirstName, LastName
From Orders o
join Customers c on o.CustomerID=c.CustomerID
Where o.OrderDate='2022';

-- 16.
Select * From Employees
Select * From Departments

Select e.Name, e.Salary, d.DepartmentName
From Employees e
join Departments d on e.DepartmentID=d.DepartmentID
Where d.DepartmentName='Sales' and e.Salary>60000;

-- 17.


Select o.OrderID, o.OrderDate, p.PaymentDate, p.Amount
From  Orders o
join Payments p on o.OrderID=p.OrderID;

-- 18.


Select p.ProductID, p.ProductName
From Products p
left join Orders o on p.ProductID=o.ProductID
Where o.ProductID is null;

-- 19.


Select e.Name, e.Salary
From Employees e
Where Salary>(Select Avg(Salary) from Employees where DepartmentID=e.DepartmentID);

-- 20.
 

Select o.OrderID, o.OrderDate
from Orders o
left join Payments p on o.OrderID=p.OrderID
Where o.OrderDate<'2020-01-01' and p.PaymentID is null;

-- 21.



Select p.ProductID, p.ProductName
from Products p
Where not EXISTS (Select 1 FROM Categories c WHERE c.CategoryID = p.CategoryID);

-- 22.


Select e1.Name as Employee1, e2.Name as Employee2, e1.ManagerID, e1.Salary 
From Employees e1
join Employees e2 on e1.ManagerID=e2.ManagerID and e1.EmployeeID<>e2.EmployeeID
Where e1.Salary>60000;

-- 23.


Select e.Name, d.DepartmentName
from Employees e
join Departments d on e.DepartmentID=d.DepartmentID
Where d.DepartmentName like 'M%';

-- 24.

Select s.SaleID, p.ProductName, s.SaleAmount
From Sales s
join Products p on s.ProductID=p.ProductID
Where s.SaleAmount>500;

-- 25.



Select s.StudentID, s.Name
From Students s
join Enrollments e on s.StudentID=e.StudentID
join Courses c on e.CourseID=c.CourseID
Where c.CourseName='Math 101';

-- 26.


Select o.OrderID, o.OrderDate, p.PaymentID
From Orders o
left join Payments p on o.OrderID=p.OrderID
Where p.PaymentID is null;

-- 27.


Select p.ProductID, p.ProductName, c.CategoryName
From Products p
join Categories c on p.CategoryID=c.CategoryID
Where c.CategoryName in ('Electronics', 'Furniture');



