
CREATE TABLE gym (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(50),
    MembershipType VARCHAR(30),
    MonthlyFee DECIMAL(10,2),
    MembershipStatus VARCHAR(30),
    Age INT,
    City VARCHAR(50),
    JoiningDate DATE
);

INSERT INTO gym
(MemberID, MemberName, MembershipType, MonthlyFee,
MembershipStatus, Age, City, JoiningDate)
VALUES
(1, 'Aarav', 'Premium', 2500, 'Active', 25, 'Mumbai', '2026-01-10'),
(2, 'Priya', 'Basic', 1000, 'Active', 22, 'Pune', '2026-02-15'),
(3, 'Rahul', 'Gold', 2000, 'Inactive', 28, 'Mumbai', '2026-03-20'),
(4, 'Sneha', 'Premium', 2500, 'Active', 24, 'Thane', '2026-01-25'),
(5, 'Karan', 'Basic', 1000, 'Inactive', 30, 'Mumbai', '2026-04-05'),
(6, 'Neha', 'Gold', 2000, 'Active', 21, 'Nashik', '2026-02-10'),
(7, 'Rohan', 'Premium', 2500, 'Active', 27, 'Pune', '2026-03-15'),
(8, 'Ananya', 'Basic', 1000, 'Active', 26, 'Mumbai', '2026-05-01'),
(9, 'Vikram', 'Gold', 2000, 'Inactive', 32, 'Thane', '2026-01-18'),
(10, 'Isha', 'Premium', 2500, 'Active', 23, 'Nashik', '2026-04-12'),
(11, 'Aditya', 'Basic', 1000, 'Active', 29, 'Pune', '2026-05-20'),
(12, 'Meera', 'Gold', 2000, 'Active', 31, 'Mumbai', '2026-02-28'),
(13, 'Kabir', 'Premium', 2500, 'Inactive', 24, 'Thane', '2026-03-08'),
(14, 'Pooja', 'Basic', 1000, 'Active', 35, 'Nashik', '2026-06-01'),
(15, 'Arjun', 'Gold', 2000, 'Active', 28, 'Mumbai', '2026-06-10');

select * from gym;

---Display all unique membership types.
select distinct MembershipType from gym;

----Find the total MonthlyFee of all gym members.
select sum(MonthlyFee) as total_monthlyfee from gym;

----Find the minimum and maximum MonthlyFee.
select min(MonthlyFee) as min_monthlyfee from gym;

select max(MonthlyFee) as max_monthlyfee from gym;

----Count the total number of active members.
select count(*) as total_active_members from gym;

----Display each member's name and a new column FeeCategory. 
---If MonthlyFee is greater than 2000, show 'High Fee'; otherwise show 'Regular Fee'.

select MemberName , MonthlyFee,
case when MonthlyFee > 2000 then 'High Fee'
else 'Regular Fee'
end as FeeCategory
from gym;

---Display members whose MonthlyFee is greater than the average MonthlyFee of all members.
select * from gym;

select * from gym where MonthlyFee > (
select avg(MonthlyFee) as avg_monthlyfee from gym);

----Find the total MonthlyFee collected for each MembershipType.
select * from gym;

select MembershipType ,sum(MonthlyFee) as total_monthlyfee from gym 
group by MembershipType;

---Display members whose Age is greater than the minimum age of all members.
select * from gym where Age >(
select min(Age) as min_age from gym);

----Display each membership type and classify it as 'Expensive' if MonthlyFee is greater than 2000, otherwise 'Affordable'.
select MembershipType ,  MonthlyFee,
case when MonthlyFee > 2000 then 'Expensive'
else 'Affordable'
end as membership_type 
from gym;

----Find the membership type with the highest MonthlyFee using a subquery.
select distinct MembershipType,MonthlyFee from gym where MonthlyFee = (
select max(MonthlyFee) from gym );

