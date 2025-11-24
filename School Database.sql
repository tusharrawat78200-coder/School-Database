# Intermediate SQL Questions

#1Show students who scored more than 80 in any subject.
Select StudentID,Marks from Marks where Marks>80;
#2 Display student name, subject name, and marks (JOIN).
SELECT Students.StudentName,
Subjects.SubjectName,
Marks.Marks from Marks AS Marks
Join Students as Students
 ON Marks.StudentID=Students.StudentID
 Join Subjects as Subjects
 ON Marks.SubjectID=Subjects.SubjectID;
 
 #3Count how many students are from each city (GROUP BY).
 Select City,COUNT(*) AS TotalStudents From Students Group by City;
 #4 Find average marks in Maths.
 Select Avg(Marks) as AvgMathsMarks from Marks where SubjectID='101';
 #5Show students who have NOT taken Economics.
 Select StudentName From 
 Students where 
 StudentID NOT IN(
 Select StudentID from Marks Where SubjectID=103);
 #6 SHow Highest Marks in each Subject
 Select sub.SubjectName,max(m.Marks) as maximum_mark from Subjects sub
 Left join Marks as m
 on
 sub.SubjectID = m.SubjectID
 group by sub.SubjectName;
 #7 Display all students along with marks even if they have not taken any subject (LEFT JOIN).
 SELECT S.StudentName,
    Sub.SubjectName,
    M.Marks
FROM Students S
LEFT JOIN Marks M
    ON S.StudentID = M.StudentID
LEFT JOIN Subjects Sub
    ON Sub.SubjectID = M.SubjectID;
#8 show subject for which no student has scored marks
Select s.SubjectName
from Subjects s 
left join Marks as m
on S.SubjectID=m.SubjectID
where m.marks is null;
#9 Retrive students whose age is between 20 & 22
Select StudentName ,Age from Students where Age between 20 and 22;
#10Count the number of subject each student has taken
select count(m.SubjectID) as total_subject,s.StudentName 
from Students s
left join Marks m
on s.StudentID=m.StudentID
group by s.StudentID;


 
 
 
 

