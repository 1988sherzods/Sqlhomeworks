
-- 1.


Select p.firstName, p.lastName, a.city, a.state
From Person p
Left Join Address a On p.personId=a.personId;


-- 2.

Select  e1.name as Employee
From Employee e1
join Employee e2 on e1.managerId=e2.id 
Where e1.salary>e2.salary;


-- 3.

DROP TABLE IF EXISTS Person;

Create table Person(id int, email varchar(255));

Insert into Person (id, email)
Values ('1', 'a@b.com'),
       ('2', 'c@d.com'),
	   ('3', 'a@b.com');

Select email
From Person
Group By email
Having Count(email)>1;

-- 4.
Delete p1 
From Person p1, Person p2
Where p1.email=p2.email and p1.id>p2.id;

-- 5.

Select Distinct ParentName
From girls 
Where ParentName not in(Select ParentName From boys);

-- 6.


Select custid, Sum(freight) as TotalSalesAmount,
               Min(freight) as LeastWeight
From Sales.Orders o
Group By custid
Having Sum(freight)>50;

-- 7.

Select c1.Item As 'Item Cart 1',
       c2.Item As 'Item Cart 2'
From Cart1 c1
Full join Cart2 c2 on c1.Item=c2.Item;


-- 8.


Select c.name
From Customers c
Left join Orders o On c.id=o.customerId
Where o.customerId is null;

-- 9.

Select e.student_id, s.student_name, e.subject_name, Count(*) as attended_exams
From Examinations e
join Students s on e.student_id=s.student_id
Order By e.student_id, e.subject_name;
