CREATE TABLE departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'Data Analytics', 'Mumbai'),
(2, 'IT Support', 'Pune'),
(3, 'Finance', 'Delhi'),
(4, 'Marketing', 'Bangalore'),
(5, 'Operations', 'Hyderabad'),
(6, 'Research', 'Chennai');

select * from departments

CREATE TABLE staffdetails (
    StaffID INT PRIMARY KEY,
    StaffName VARCHAR(50),
    DepartmentID INT,
    Salary INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO staffdetails VALUES
(101, 'Akash', 1, 45000),
(102, 'Priya', 2, 40000),
(103, 'Rahul', 1, 55000),
(104, 'Sneha', 3, 50000),
(105, 'Karan', 4, 35000),
(106, 'Meera', 2, 48000),
(107, 'Rohan', 3, 60000),
(108, 'Neha', 5, 42000),
(109, 'Amit', NULL, 38000),
(110, 'Pooja', 1, 52000);

select * from departments;

select * from staffdetails;

---Display staff names along with their department names.
select s.StaffName , d.DepartmentName from staffdetails s inner join departments d
on s.DepartmentID = d.DepartmentID;

---Display all departments and their staff names, including departments without staff.
select d.DepartmentID , d.DepartmentName , s.StaffName from  departments d left join 
staffdetails s on s.DepartmentID = d.DepartmentID;

---Display all staff members with their department names, including staff without departments.
select s.StaffName , d.DepartmentName from departments d right join staffdetails s 
on s.DepartmentID = d.DepartmentID;

----Display all records from both tables, including unmatched records.
select d.DepartmentName , s.StaffName  from departments d full outer join 
staffdetails s on d.DepartmentID = s.DepartmentID;

---Display staff members working in the Mumbai location.
select * from departments;
select * from staffdetails;

select s.StaffName , d.DepartmentName , d.Location 
from staffdetails s inner join Departments d 
on s.DepartmentID = d.DepartmentID 
where d.Location = 'Mumbai';

----Find the total number of staff members in each department.
select d.DepartmentName,  count(s.StaffID) as total_count_of_staff from departments d 
left join staffdetails s on d.DepartmentID = s.DepartmentID
group by d.DepartmentName;

---Find departments having more than one staff member.
select d.DepartmentName,  count(s.StaffID) as total_count_of_staff from departments d 
left join staffdetails s on d.DepartmentID = s.DepartmentID
group by d.DepartmentName
having count(s.StaffID) > 1;

---Find the total salary paid by each department.
select d.DepartmentName,  sum(s.Salary) as total_salary_of_staff from departments d 
inner join staffdetails s on d.DepartmentID = s.DepartmentID
group by d.DepartmentName;

---Find departments that do not have any staff members.

select d.DepartmentID ,d.DepartmentName 
from departments d left join staffdetails s  
on d.DepartmentID = s.DepartmentID 
where s.StaffID is null;

---Display staff members earning more than ₹45,000 who belong to the Data Analytics department.

select s.StaffName , s.Salary , d.DepartmentName from staffdetails s 
inner join Departments d 
on s.DepartmentID = d.DepartmentId 
where s.Salary > 45000 
and d.DepartmentName = 'Data Analytics';

