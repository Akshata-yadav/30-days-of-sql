create database day1;

use day1;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    City VARCHAR(30),
    Age INT
);

INSERT INTO Employees
(EmployeeID, EmployeeName, Department, Salary, City, Age)
VALUES
(1, 'Amit', 'IT', 45000, 'Mumbai', 25),
(2, 'Priya', 'HR', 35000, 'Pune', 27),
(3, 'Rahul', 'IT', 60000, 'Mumbai', 30),
(4, 'Sneha', 'Finance', 50000, 'Navi Mumbai', 28),
(5, 'Neha', 'HR', 40000, 'Thane', 26),
(6, 'Karan', 'Finance', 55000, 'Pune', 32),
(7, 'Pooja', 'IT', 70000, 'Mumbai', 29),
(8, 'Rohit', 'Marketing', 30000, 'Thane', 24),
(9, 'Anjali', 'Marketing', 42000, 'Pune', 31),
(10, 'Vikas', 'Finance', 65000, 'Mumbai', 35);

select * from Employees;

---Display all employees who work in the IT department.
select * from Employees where Department = 'IT';

---Find employees whose salary is greater than ?45,000.
select * from Employees where salary > 45000;


----Display employees who live in Mumbai.
select * from Employees where City = 'Mumbai';

----Display all employees in descending order of salary.
select * from Employees order by Salary desc;

----Find employees whose age is between 25 and 30, inclusive.
select * from Employees where age between 25 and 30;

----Find the highest salary in the company.
select max(Salary) as max_salary from Employees;

----Calculate the average salary of all employees.
select avg(Salary) as avg_salary from Employees;

----Count the number of employees in each department.
select * from Employees;

select Department , count(*) as employee_number from Employees
group by Department;

----Calculate the total salary paid by each department.
select Department , sum(Salary) as salary_paid from Employees 
group by Department;

----Display departments whose average salary is greater than ?45,000.
select Department , avg(Salary) as avg_salary from Employees 
group by Department 
having avg(Salary) > 45000;