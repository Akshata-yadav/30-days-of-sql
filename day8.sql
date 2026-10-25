
CREATE TABLE restaurant(
    ReservationID INT PRIMARY KEY,
    GuestName VARCHAR(50),
    RestaurantName VARCHAR(60),
    Cuisine VARCHAR(30),
    NumberOfGuests INT,
    ReservationDate DATE,
    City VARCHAR(30),
    ReservationStatus VARCHAR(20),
    BillAmount DECIMAL(8,2)
);


INSERT INTO restaurant
(ReservationID, GuestName, RestaurantName, Cuisine,
 NumberOfGuests, ReservationDate, City,
 ReservationStatus, BillAmount)
VALUES
(1, 'Aarav', 'Spice Garden', 'Indian', 4, '2026-10-20', 'Mumbai', 'Confirmed', 2500.00),
(2, 'Priya', 'Pasta House', 'Italian', 2, '2026-10-21', 'Pune', 'Completed', 1800.00),
(3, 'Rahul', 'Sushi World', 'Japanese', 3, '2026-10-22', 'Mumbai', 'Cancelled', 3200.00),
(4, 'Sneha', 'Taco Corner', 'Mexican', 5, '2026-10-23', 'Nashik', 'Confirmed', 2100.00),
(5, 'Vikram', 'Spice Garden', 'Indian', 6, '2026-10-24', 'Pune', 'Completed', 4000.00),
(6, 'Neha', 'Pasta House', 'Italian', 2, '2026-10-25', 'Mumbai', 'Pending', 1600.00),
(7, 'Karan', 'Sushi World', 'Japanese', 4, '2026-10-26', 'Nashik', 'Confirmed', 3500.00),
(8, 'Pooja', 'Taco Corner', 'Mexican', 3, '2026-10-27', 'Pune', 'Cancelled', 1900.00),
(9, 'Rohan', 'Spice Garden', 'Indian', 2, '2026-10-28', 'Mumbai', 'Completed', 1500.00),
(10, 'Ananya', 'Pasta House', 'Italian', 5, '2026-10-29', 'Nashik', 'Confirmed', 3000.00),
(11, 'Ishita', 'Sushi World', 'Japanese', 2, '2026-10-30', 'Pune', 'Pending', 2800.00),
(12, 'Manav', 'Taco Corner', 'Mexican', 4, '2026-10-31', 'Mumbai', 'Completed', 2400.00),
(13, 'Kavya', 'Spice Garden', 'Indian', 3, '2026-11-01', 'Nashik', 'Confirmed', 2200.00),
(14, 'Aditya', 'Pasta House', 'Italian', 6, '2026-11-02', 'Pune', 'Completed', 4200.00),
(15, 'Meera', 'Sushi World', 'Japanese', 5, '2026-11-03', 'Mumbai', 'Confirmed', 5000.00);

---Display all records from the RestaurantReservations table.
select * from restaurant;

----Display only GuestName, RestaurantName, and BillAmount.
select GuestName , RestaurantName , BillAmount from restaurant;

----Find all reservations with the status 'Confirmed'.
select * from restaurant where ReservationStatus = 'Confirmed';

----Find reservations where BillAmount is greater than 2500.
select * from restaurant where BillAmount > 2500;

----Display reservations where NumberOfGuests is between 2 and 5, inclusive.
select * from restaurant where NumberOfGuests between 2 and 5;

----Find all guests whose names start with the letter 'A'.
select * from restaurant where GuestName like 'A%';

----Display all reservations in ascending order of BillAmount.
select * from restaurant order by BillAmount;

-----Count the number of reservations in each city.
select City, count(*) as reservation_number from restaurant 
group by City;

----Find the average bill amount for each cuisine.
select Cuisine , avg(BillAmount) as avg_billamount from restaurant 
group by Cuisine;

----Display cuisines whose average bill amount is greater than 3000.
select Cuisine , avg(BillAmount) as avg_billamount from restaurant 
group by Cuisine
having avg(BillAmount) > 3000;