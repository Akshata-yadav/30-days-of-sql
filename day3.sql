CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Course VARCHAR(30),
    City VARCHAR(30),
    Age INT,
    Marks INT,
    Fees DECIMAL(10,2)
);

INSERT INTO Students
(StudentID, StudentName, Course, City, Age, Marks, Fees)
VALUES
(1, 'Aarav', 'SQL', 'Mumbai', 21, 85, 15000),
(2, 'Priya', 'Python', 'Pune', 22, 92, 18000),
(3, 'Rahul', 'SQL', 'Mumbai', 20, 67, 15000),
(4, 'Sneha', 'Power BI', 'Thane', 23, 88, 20000),
(5, 'Vikram', 'Python', 'Nashik', 21, 74, 18000),
(6, 'Neha', 'SQL', 'Pune', 22, 95, 15000),
(7, 'Rohan', 'Power BI', 'Mumbai', 24, 59, 20000),
(8, 'Ananya', 'Python', 'Thane', 20, 81, 18000),
(9, 'Karan', 'SQL', 'Nashik', 23, 76, 15000),
(10, 'Pooja', 'Power BI', 'Pune', 21, 90, 20000),
(11, 'Amit', 'Python', 'Mumbai', 22, 63, 18000),
(12, 'Isha', 'SQL', 'Thane', 20, 98, 15000);

select * from Students;

---Display all students who belong to Mumbai.
select * from Students where City = 'Mumbai';

----Find students who scored more than 80 marks.
select * from Students;

select * from Students where Marks > 80;

---Find students who are older than 21 and scored at least 75 marks.
select * from Students where Age > 21 and Marks >= 75;

---Display all students in descending order of their marks.
select * from Students order by Marks desc;

---Display all unique cities in the table.
select distinct City from Students;

---Find the average marks of all students.
select * from Students;

select avg(Marks) as avg_marks from Students;

---Find the number of students enrolled in each course.
select * from Students;

select Course, count(*) as student_count from Students 
group by Course;

---Display courses whose average marks are greater than 80.
select Course , avg(Marks) as avg_marks from Students
group by Course 
having avg(Marks) > 80;

---Find students whose marks are between 70 and 90, including both values.
select * from Students;

select StudentName, Marks from Students where Marks between 70 and 90;

---Find the student or students who scored the highest marks.
select max(Marks) as max_student_marks from Students;

