CREATE TABLE travel (
    BookingID INT PRIMARY KEY,
    TravelerName VARCHAR(50),
    Destination VARCHAR(50),
    TravelMode VARCHAR(30),
    TicketPrice DECIMAL(10,2),
    BookingStatus VARCHAR(30),
    TravelDate DATE,
    NumberOfDays INT,
    Country VARCHAR(50)
);

INSERT INTO travel
(BookingID, TravelerName, Destination, TravelMode,
TicketPrice, BookingStatus, TravelDate, NumberOfDays, Country)
VALUES
(1, 'Aarav', 'Goa', 'Flight', 8500, 'Confirmed', '2026-11-05', 5, 'India'),
(2, 'Priya', 'Dubai', 'Flight', 22000, 'Confirmed', '2026-11-10', 4, 'UAE'),
(3, 'Rahul', 'Manali', 'Bus', 3500, 'Pending', '2026-11-15', 6, 'India'),
(4, 'Sneha', 'London', 'Flight', 55000, 'Cancelled', '2026-12-01', 7, 'UK'),
(5, 'Karan', 'Jaipur', 'Train', 1800, 'Confirmed', '2026-11-20', 3, 'India'),
(6, 'Neha', 'Singapore', 'Flight', 28000, 'Pending', '2026-12-05', 5, 'Singapore'),
(7, 'Rohan', 'Kerala', 'Train', 4200, 'Confirmed', '2026-11-25', 8, 'India'),
(8, 'Ananya', 'Paris', 'Flight', 48000, 'Confirmed', '2026-12-10', 6, 'France'),
(9, 'Vikram', 'Shimla', 'Bus', 2500, 'Cancelled', '2026-12-15', 4, 'India'),
(10, 'Isha', 'Bangkok', 'Flight', 19000, 'Confirmed', '2026-12-20', 5, 'Thailand'),
(11, 'Aditya', 'Goa', 'Train', 3000, 'Pending', '2026-12-22', 3, 'India'),
(12, 'Meera', 'Dubai', 'Flight', 24000, 'Confirmed', '2026-12-25', 6, 'UAE'),
(13, 'Kabir', 'Manali', 'Bus', 4000, 'Confirmed', '2027-01-05', 7, 'India'),
(14, 'Pooja', 'London', 'Flight', 60000, 'Pending', '2027-01-10', 9, 'UK'),
(15, 'Arjun', 'Jaipur', 'Train', 2200, 'Confirmed', '2027-01-15', 4, 'India');

----Display all records from the TravelBookings table.
select * from travel;

----Display only TravelerName, Destination and TicketPrice for all bookings.
select TravelerName ,Destination, TicketPrice from travel;

----Find all bookings where BookingStatus is 'Confirmed'.
select * from travel where BookingStatus = 'Confirmed';

----Find bookings where TicketPrice is greater than 20,000.
select * from travel where TicketPrice > 20000;

----Display bookings where NumberOfDays is between 4 and 7, inclusive.
select * from travel where NumberOfDays between 4 and 7;

----Find all bookings where TravelMode is either 'Flight' or 'Train'.
select * from travel where TravelMode = 'Flight' or  TravelMode ='Train';

---Display all travelers whose names start with the letter 'A'.
select * from travel where TravelerName like 'A%';

----Display all bookings in descending order of TicketPrice.
select * from travel order by TicketPrice desc;

----Find the total number of bookings for each BookingStatus.
select BookingStatus , count(*) as total_number_of_booking from travel
group by BookingStatus;

----Display countries having more than 2 bookings.
select Country , count(*) as total_number_of_booking from travel
group by Country
having count(*)  > 2;

