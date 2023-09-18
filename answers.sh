1. Get all the names of students in the database:
SELECT name from students

2. Get all the data of students above 30 years old 3:
select * from students
WHERE Age>30 

3. Get the names of the females who are 30 years old:
SELECT name FROM students 
WHERE Gender = 'F'
AND Age=30

4. Get the number of Points of Alex
select Points FROM students
WHERE Name= 'Alex'

5. Add yourself as a new student (your name, your age...):
insert into students VALUES(100,'Issa', 27, 'M',200)

6. Increase the points of Basma because she solved a new exercise :
UPDATE students 
SET Points = Points+1
WHERE name='Basma'

 7. Decrease the points of Alex because he's late today:
UPDATE students 
SET Points = Points-1
WHERE name='Alex'



