-- 1.


Select Category,
Count(ProductID) As TotalProducts
From Products
Group By Category;

-- 2.

Select Category='Electronics',
Avg(Price) As AveragePrice
From Products
Where Category='Electronics';

-- 3.
Select * From Customers
 Where City like 'L%';

-- 4.
Select * From Products
Where ProductName like '%er%';

-- 5.
Select * From Customers
Where Country like '%A';

-- 6.

Select Max(Price) as MaxHighestPrice 
From Products;

-- 7.

Select ProductName, StockQuantity,
Case When StockQuantity<30 Then 'LOW STOCK'
     Else 'Sufficient'
End As StockStatus
From Products;

-- 8.

Select Country, Count(CustomerID) As TotalCustomers
From Customers
Group By Country;


-- 9.

Select Min(Quantity) As MinQuantity,
       Max(Quantity) As MaxQuantity
From Orders;

-- 10.

Select o.CustomerID
From Orders o
Where o.OrderDate>='01-01-2023' And o.OrderDate<'01-02-2023'
Except
Select i.CustomerID
From Invoices i;

-- 11.


Select ProductName From Products
Union All
Select ProductName From Products_Discounted;

-- 12.


Select ProductName From Products
Union
Select ProductName From Products_Discounted;

-- 13.

Select Avg (TotalAmount) As AverageYearOrder
from Orders;

Select 
       Year(OrderDate) As OrderYear,
       Avg (TotalAmount) As AverageOrderAmount
from Orders 
Group By OrderDate;

-- 14.

Select ProductName,
Case when Price<100 then 'Low'
     When Price Between 100 and 500 then 'Mid'
	 Else 'High'
End As PriceGroup
from Products;

-- 15.

Select * into NewPopulation_Each_Year (district_id, district_name, [2012], [2013]) from city_population
Select district_id, district_name, [2012], [2013]
From (
	Select district_id, district_name, year, population
	From city_population
) as SourceTable
pivot
(
	Max(population) for year in ([2012], [2013])
)As PivoteDate


-- 16.

 Select ProductID,
 Sum(SaleAmount) As TotalSales
 From Sales 
 Group By ProductID;

 -- 17.
 
 Select ProductName
 From Products
 Where ProductName like '%oo%';

 -- 18.


Create table Population_Each_City (Year varchar(50),
                                   Bektemir Decimal (10,2),
								   Chilonzor Decimal (10,2),
								   Yakkasaroy Decimal (10,2));
Insert into Population_Each_City(Year, Bektemir, Chilonzor, Yakkasaroy)
Select Year, [Bektemir], [Chilonzor], [Yakkasaroy]
From city_population
pivot
(
	Sum(population)
	For district_name in ([Bektemir], [Chilonzor], [Yakkasaroy])
) As PvT;



 -- 19.
 
 Select Top 3 CustomerID, 
 Sum(TotalAmount) As Totalspent
 From Invoices
 Group by CustomerID
 Order By Totalspent Desc;

 -- 20.


 Select district_id, district_name, year, population
 From NewPopulation_Each_Year
 Unpivot
(
	population for year in ([2012], [2013])
 ) As UnpivotedData;


 -- 21.


Select p.ProductName
Count(s.ProductID) As NumberOfSales
From Products p
join Sales s on p.ProductID=s.ProductID
Group By p.ProductName;

--22.

Select Year, district_name, population
From Population_Each_City
Unpivot
(
	population For district_name in (Bektemir, Chilonzor, Yakkasaroy)
) As UnpivotedData;
