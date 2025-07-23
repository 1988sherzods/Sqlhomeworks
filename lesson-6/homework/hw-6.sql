- Lesson 6 / Homework 6

-- 1.

| col1 | col2 |
|------|------|
| a    | b    |
| a    | b    |
| b    | a    |
| c    | d    |
| c    | d    |
| m    | n    |
| n    | m    |

| col1 | col2 |
|------|------|
| a    | b    |
| c    | d    |
| m    | n    |

Select * From InputTbl

Select Distinct col1, col2 From InputTbl

Select col1, col2 From InputTbl Group By col1, col2;

CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');

Select * From InputTbl

Select Distinct col1, col2 From InputTbl

Select col1, col2 From InputTbl Group By col1, col2;

-- 2.

CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);

Select * From TestMultipleZero
Select  A, B, C, D From TestMultipleZero
Where A !=0 or B !=0 or C !=0 or D !=0;

-- 3.

create table section1(id int, name varchar(20))
insert into section1 values (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')

Select * From section1
where id % 2!=0

-- 4.
Select * From section1
Select id, Name From section1 Order by id Asc;

-- 5.
Select * From section1
Select id, Name From section1 Order by id Desc;

-- 6.
Select * From section1
Where name like 'b%';

-- 7.

CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');

Select * from ProductCodes
Select Code from ProductCodes 
Where Code LIKE '%\\_%' Escape '\\';
