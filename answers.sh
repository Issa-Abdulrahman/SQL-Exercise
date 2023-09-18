"1. Get all the names of students in the database:
SELECT name from students
----------------------------------------------
2. Get all the data of students above 30 years old 3:
select * from students
WHERE Age>30 
--------------------------------------------------------------
3. Get the names of the females who are 30 years old:
SELECT name FROM students 
WHERE Gender = 'F'
AND Age=30
------------------------------------------------------------------
4. Get the number of Points of Alex
select Points FROM students
WHERE Name= 'Alex'
-----------------------------------------------------------------
5. Add yourself as a new student (your name, your age...):
insert into students VALUES(100,'Issa', 27, 'M',200)
-------------------------------------------------------------------
6. Increase the points of Basma because she solved a new exercise :
UPDATE students 
SET Points = Points+1
WHERE name='Basma'
------------------------------------------------------------------------
 7. Decrease the points of Alex because he's late today:
UPDATE students 
SET Points = Points-1
WHERE name='Alex'
--------------------
CREATING TABLES:
--------------------
Create a table graduates that includes:
- ID, Integer, Not Null, Primary key, Auto incerement - 
Name, Text, Not Null, Unique - 
Age, Integer - Gender, Text - 
Points, Integer -
Graduation, Text that will point to the date of the graduation

CREATE TABLE graduates( id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL UNIQUE, 
age INT,
gender TEXT,
points INT,
graduation date)
-----------------------------------------------------------------------
10-Copy Layal's data from students to graduates
INSERT INTO graduates(name,age,gender,points)
 SELECT name,Age,Gender,Points
 FROM students
 WHERE name='Layal'
-----------------------------------------------------------------------
11-add the graduation date previously mentioned to Layal's record in graduates

UPDATE graduates 
SET Graduation = '2018-09-08' 
WHERE Name = 'Layal'
-------------------------------------------------------------------------
12-Remove Layal's record from students:
DELETE FROM students
WHERE name='Layal'

-----------------------------
JOINTS:
-----------------------------

14-Produce a table that contains, for each employee, his/her name, company name, and company date:

SELECT employees.name, companies.name, companies.Date 
FROM employees
INNER JOIN companies 
on employees.company= companies.name
-----------------------------------------------------------------------------
15-Find the name of employees that work in companies made before 2000:

SELECT employees.Name
FROM employees
INNER JOIN companies
on companies.name= employees.Company 
WHERE companies.Date <2000
----------------------------------------------------------------------------
16-Find the name of company that has a graphic designer:

SELECT employees.Company
FROM employees
INNER JOIN companies
ON companies.name = employees.Company 
WHERE Role='Graphic Designer'
------------------------------------------------------------------------------
18-Find the person with the highest number of points in students:

SELECT name FROM students
WHERE points=(SELECT MAX(points) FROM students)
-------------------------------------------------------------------------------
19-Find the average of points in students:

SELECT avg(points) FROM students
-------------------------------------------------------------------------------
20-Find the number of students that have 500 points:
SELECT COUNT(*)
FROM students
WHERE points = 500;
----------------------------------------------------------------------------------
21-Find the names of students that contains 's':

SELECT name
FROM students
WHERE name LIKE '%s%';
--------------------------------------------------------------------------------
22-Find all students based on the decreasing order of their points:

SELECT *
FROM students
ORDER BY points DESC
























