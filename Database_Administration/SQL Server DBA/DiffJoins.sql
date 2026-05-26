USE [first_database]
GO

SELECT * FROM [dbo].[Student]
GO

SELECT * FROM [dbo].[Course]

SELECT * FROM student s
Inner join course c
on s.rollno = c.rollno

SELECT s.rollno,s.studentname,c.courseid FROM student s
left join course c
on s.rollno = c.rollno

SELECT s.rollno,s.studentname,c.courseid FROM student s
right join course c
on s.rollno = c.rollno

SELECT s.rollno,s.studentname,c.courseid FROM student s
full join course c
on s.rollno = c.rollno