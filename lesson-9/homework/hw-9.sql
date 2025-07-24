-- Lesson 9 / Homework 9





-- 1.


Select p.ProductName, s.SupplierName
From Products p
Cross join Supplier s;

-- 2.
Select * from Departments
Select * from Employees

Select * from Departments
Cross join Employees;

-- 3.
Select * from Products
Select * from Suppliers

Select s.SupplierName, p.ProductName
From Products p
join Suppliers s on p.SupplierID=s.SupplierID;

-- 4.


Select c.FirstName, LastName, o.OrderID
From Customers  c
join Orders o on o.CustomerID=c.CustomerID;


-- 5.


Select *from Courses
Cross join Students;

-- 6.


Select p.ProductName, o.OrderID
From Products p
join Orders o on p.ProductID=o.ProductID;

-- 7.


Select e.Name, d.DepartmentName
From Employees e
inner join Departments d on e.DepartmentID=d.DepartmentID;

-- 8.


Select s.Name, e.CourseID
From Students s
inner join Enrollments e on s.StudentID=e.StudentID;

-- 9.


Select O.*
From Orders O
join Payments P On O.OrderID=P.OrderID;

-- 10.



Select O.*
From Orders O
join Products P on O.ProductID=P.ProductID
Where P.Price>100;

-- 11.


Select e.Name, d.DepartmentName
From Employees e, Departments d
Where e.DepartmentID<>d.DepartmentID;

-- 12.


Select O.OrderID, O.ProductID, O.Quantity, P.StockQuantity 
From Orders O
join Products P on O.ProductID=P.ProductID
Where O.Quantity>P.StockQuantity;

-- 13.

Select FirstName, LastName, ProductID
From Customers C
join Sales S On C.CustomerID=S.CustomerID
Where S.SaleAmount>=500;

-- 14.


Select S.Name, C.CourseName
From Students S join Enrollments E on S.StudentID=E.StudentID
join Courses C on E.CourseID=C.CourseID
order by 2;

-- 15.

Select  p.ProductName, s.SupplierName
From Products p
join Suppliers s on  p.SupplierID=s.SupplierID 
Where s.SupplierName like '%tech%';

-- 16.


Select o.OrderID, p.PaymentID
From Orders o
join Payments p on o.OrderID=p.OrderID
Where p.Amount<o.TotalAmount;

-- 17.


Select e.Name, d.DepartmentName
From Employees e
join Departments d on e.DepartmentID=d.DepartmentID;

-- 18.


Select p.ProductName, c.CategoryName
From Products p
join Categories c on p.ProductID=c.CategoryID
Where c.CategoryName in ('Electronics', 'Furniture');

-- 19.


Select s.SaleID,c.FirstName, LastName
From Sales s
join Customers c on s.CustomerID=c.CustomerID
Where c.country='USA';

-- 20.


Select o.OrderID, c.CustomerID
From Orders o
join Customers c on o.CustomerID=c.CustomerID
Where c.city='Germany' and o.TotalAmount > 100;


-- 21
Select * from Employees
Select e1.EmployeeID, 
       e1.Name As Employee1FirstName,
	   e1.DepartmentID As Employee1DepartmentID,
	   e2.EmployeeID, 
       e2.Name As Employee2FirstName,
	   e2.DepartmentID As Employee2DepartmentID
From Employees e1
join Employees e2 on e1.DepartmentID<>e2.DepartmentID and e1.EmployeeID<e2.EmployeeID;

-- 22.


SELECT
    P.PaymentID,
    P.Amount,
    (O.Quantity * PR.Price) AS CalculatedAmount
FROM
    Payments P
JOIN
    Orders O ON P.OrderID = O.OrderID
JOIN
    Products PR ON O.ProductID = PR.ProductID
WHERE
    P.Amount<> (O.Quantity * PR.Price);

-- 23.

Select s.Name, e.CourseID
From Students s
join Enrollments e on s.StudentID=e.StudentID
join Courses c on e.CourseID=c.CourseID
Where e.EnrollmentID is null;

-- 24. 



SELECT
    M.Name AS ManagerName,
    M.Salary AS ManagerSalary,
    E.Name AS ManagedEmployeeName,
    E.Salary AS ManagedEmployeeSalary
FROM
    Employees M
join
    Employees E ON M.EmployeeID = E.ManagerID
WHERE
    M.Salary <= E.Salary;

-- 25.

SELECT
    C.CustomerID,
    C.FirstName, LastName
FROM
    Customers C
join
    Orders O on C.CustomerID = O.CustomerID
left join
    Payments P on O.OrderID = P.OrderID
Where
    P.PaymentID is null;
