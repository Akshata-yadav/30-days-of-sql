CREATE TABLE Sales (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ProductID INT,
    Quantity INT,
    City VARCHAR(30),
    OrderDate DATE,
    Status VARCHAR(20)
);

INSERT INTO Sales VALUES
(101, 'Amit', 1, 2, 'Mumbai', '2026-01-05', 'Delivered'),
(102, 'Priya', 2, 1, 'Pune', '2026-01-06', 'Pending'),
(103, 'Rahul', 3, 3, 'Mumbai', '2026-01-08', 'Delivered'),
(104, 'Sneha', 4, 2, 'Thane', '2026-01-10', 'Cancelled'),
(105, 'Neha', 1, 1, 'Pune', '2026-01-12', 'Delivered'),
(106, 'Karan', 5, 4, 'Mumbai', '2026-01-15', 'Pending'),
(107, 'Pooja', 2, 2, 'Thane', '2026-01-18', 'Delivered'),
(108, 'Rohit', 3, 1, 'Pune', '2026-01-20', 'Cancelled'),
(109, 'Anjali', 4, 3, 'Mumbai', '2026-01-22', 'Delivered'),
(110, 'Vikas', 5, 2, 'Thane', '2026-01-25', 'Pending');

select * from sales;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 50000),
(2, 'Headphones', 'Electronics', 2000),
(3, 'Office Chair', 'Furniture', 7000),
(4, 'Desk', 'Furniture', 10000),
(5, 'Keyboard', 'Accessories', 1500);

select * from Sales;

select * from Products;

---Q1. Find all unique cities where orders were placed.

select distinct City from Sales;

---Q2. Find customers whose names start with 'A'.
select * from Sales where CustomerName like 'A%';

----Q3. Find orders placed in Mumbai or Pune.
select * from Sales where City in('Mumbai','Pune');

---Q4. Find orders that are neither Delivered nor Pending.
select * from Sales where Status not in('Delivered', 'Pending');

---Q5. Categorize orders by quantity.
SELECT OrderID, CustomerName, Quantity,
    CASE
        WHEN Quantity >= 3 THEN 'High Quantity'
        ELSE 'Low Quantity'
    END AS Quantity_Category
FROM Sales;

select OrderID,CustomerName, Quantity , 
case when Quantity > = 3 then 'high quantity'
else 'low quantity'
end as quantity_category from Sales;


---Q6. Count the number of orders in each city.
select * from Sales;

select City , count(*) as order_number from Sales 
group by City;

----Q7. Find cities with more than 3 orders.
select City , count(*) as order_number from Sales 
group by City
having count(*) > 3;

---Q8. Display each order with its product name, category, and price.
select * from Sales;
select * from Products;

select s.OrderID ,s.CustomerName , p.ProductName,p.Category,p.Price 
from Sales s inner join Products p 
on s.ProductID = p.ProductID;

----Q9. Find orders whose quantity is greater than the average order quantity.
select OrderID,CustomerName , Quantity from Sales  
where quantity > (select avg(Quantity) from Sales);

----Q10. Calculate total sales value for each product.
select p.ProductName , sum(s.Quantity * p.Price) as total_sales 
from Sales s 
inner join Products p 
on s.ProductID = p.ProductID 
group by p.ProductID , p.ProductName 
order by total_sales desc;







