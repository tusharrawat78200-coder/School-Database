#1.Select all rows from the Students table.
Select * from Students;
#2.Display name and age of all students.
Select StudentName,Age from Students;
#3.Select students who are from "Delhi".
Select StudentName from Students where City="Delhi";
#4.Get students whose age > 21.
Select StudentName,Age from Students where Age>21;
#5.Count total number of students.
Select Count(*) AS totalStudents from Students;
#6Show all unique cities from Students table
Select DISTINCT City from Students;
#7Sort students by age in descending order.
Select StudentName,Age from Students order by Age desc;
#8Show subjects from Subjects table.
Select SubjectName from Subjects;
#9Find marks of student with StudentID = 1.
Select Marks From Marks where StudentID=1;
#10 Show students whose name starts with 'S'.
Select StudentName from Students where StudentName like 'S%';