CREATE TABLE airlines (
    AirlineID INT PRIMARY KEY,
    AirlineName VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO airlines VALUES
(101, 'IndiGo', 'India'),
(102, 'Emirates', 'UAE'),
(103, 'Air India', 'India'),
(104, 'Lufthansa', 'Germany'),
(105, 'British Airways', 'UK'),
(106, 'Qatar Airways', 'Qatar');

CREATE TABLE flightDetails (
    FlightID INT PRIMARY KEY,
    FlightNumber VARCHAR(20),
    AirlineID INT,
    Destination VARCHAR(50),
    TicketPrice DECIMAL(10,2),
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID)
);

INSERT INTO flightDetails VALUES
(1, '6E101', 101, 'Mumbai', 5500),
(2, 'EK202', 102, 'Dubai', 25000),
(3, 'AI303', 103, 'Delhi', 7500),
(4, 'LH404', 104, 'Berlin', 35000),
(5, '6E505', 101, 'Goa', 4500),
(6, 'BA606', 105, 'London', 40000),
(7, 'AI707', 103, 'Chennai', 6500),
(8, 'QR808', 106, 'Doha', 22000);

select * from airlines;
select * from flightdetails;

---Display airline names along with their flight numbers.
select a.AirlineName , f.FlightNumber from airlines a inner join flightdetails f 
on a.AirlineID = f.AirlineID;

----Display all airlines and their flight numbers, including airlines that have no flights.
select a.AirlineID,a.AirlineName , a.Country ,  f.FlightNumber from airlines a left outer join flightdetails f 
on a.AirlineID = f.AirlineID;

----Display all flight numbers along with their airline names.
select a.AirlineName , f.FlightNumber from airlines a right outer join 
flightdetails f on a.AirlineID = f.AirlineID;

----Display all airlines and flight details, including unmatched records from both tables.
select a.AirlineID , a.AirlineName , a.Country , f.FlightID,f.FlightNumber , f.Destination , 
f.TicketPrice from airlines a full outer join flightdetails f 
on a.AirlineID = f.AirlineID;

---Display flight numbers and airline names for flights going to Mumbai.
select a.AirlineName , f.FlightNumber , f.Destination from airlines a inner join flightdetails f
on a.AirlineID = f.AirlineID where f.Destination = 'Mumbai';

---Display airline names, flight numbers and ticket prices. Sort ticket prices from highest to lowest.
select * from airlines;
select * from flightdetails;

select a.AirlineName , f.FlightNumber , f.TicketPrice from airlines a inner join 
flightdetails f on a.AirlineID = f.AirlineID
order by f.TicketPrice desc;

--- Find the total number of flights operated by each airline.
select count(f.FlightID) as number_of_flight , a.AirlineName from airlines a inner join 
flightdetails f on a.AirlineID = f.AirlineID 
group by a.AirlineName;

----Display airlines operating more than one flight.
select count(f.FlightID) as number_of_flight , a.AirlineName from airlines a inner join 
flightdetails f on a.AirlineID = f.AirlineID 
group by a.AirlineName
having count(f.FlightID) > 1;

---Find the average ticket price for each airline.
select a.AirlineName , avg(f.TicketPrice) as avg_price from airlines a inner join 
flightdetails f on a.AirlineID = f.AirlineID
group by a.AirlineName;

---Multiple conditions with JOIN: Display airline names, flight numbers and ticket prices where the ticket price 
---is greater than ₹10,000 and the destination is either Dubai or London.

select a.AirlineName ,f.FlightNumber ,f.TicketPrice from airlines a inner join FlightDetails f 
on a.AirlineID = f.AirlineID where  f.TicketPrice > 10000
and f.Destination in ('Dubai', 'London');