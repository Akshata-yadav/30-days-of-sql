CREATE TABLE event (
    RegistrationID INT PRIMARY KEY,
    ParticipantName VARCHAR(50),
    EventName VARCHAR(50),
    EventCategory VARCHAR(30),
    RegistrationFee DECIMAL(10,2),
    RegistrationStatus VARCHAR(30),
    EventDate DATE,
    Age INT,
    City VARCHAR(50)
);

INSERT INTO event
(RegistrationID, ParticipantName, EventName, EventCategory,
RegistrationFee, RegistrationStatus, EventDate, Age, City)
VALUES
(1, 'Aarav', 'Tech Summit', 'Technology', 2500, 'Confirmed', '2026-11-05', 25, 'Mumbai'),
(2, 'Priya', 'Music Fest', 'Entertainment', 1500, 'Pending', '2026-11-10', 22, 'Pune'),
(3, 'Rahul', 'Data Conference', 'Technology', 3000, 'Confirmed', '2026-11-15', 28, 'Mumbai'),
(4, 'Sneha', 'Art Exhibition', 'Arts', 800, 'Cancelled', '2026-11-20', 24, 'Thane'),
(5, 'Karan', 'Startup Meetup', 'Business', 1200, 'Confirmed', '2026-11-25', 30, 'Mumbai'),
(6, 'Neha', 'Dance Workshop', 'Entertainment', 1000, 'Pending', '2026-12-01', 21, 'Nashik'),
(7, 'Rohan', 'Tech Summit', 'Technology', 2500, 'Confirmed', '2026-12-05', 27, 'Pune'),
(8, 'Ananya', 'Photography Expo', 'Arts', 1800, 'Confirmed', '2026-12-10', 26, 'Mumbai'),
(9, 'Vikram', 'Business Forum', 'Business', 3500, 'Cancelled', '2026-12-15', 32, 'Thane'),
(10, 'Isha', 'Music Fest', 'Entertainment', 1500, 'Confirmed', '2026-12-20', 23, 'Mumbai'),
(11, 'Aditya', 'Data Conference', 'Technology', 3000, 'Pending', '2026-12-22', 29, 'Pune'),
(12, 'Meera', 'Startup Meetup', 'Business', 1200, 'Confirmed', '2026-12-25', 31, 'Nashik'),
(13, 'Kabir', 'Art Exhibition', 'Arts', 800, 'Confirmed', '2027-01-05', 24, 'Mumbai'),
(14, 'Pooja', 'Business Forum', 'Business', 3500, 'Pending', '2027-01-10', 35, 'Pune'),
(15, 'Arjun', 'Dance Workshop', 'Entertainment', 1000, 'Confirmed', '2027-01-15', 28, 'Thane');

----Display all records from the EventRegistrations table.
select * from event;

----Display only ParticipantName, EventName and RegistrationFee.
select ParticipantName, EventName ,RegistrationFee from event;

----Find all registrations with the status 'Confirmed'.
select * from event where RegistrationStatus = 'Confirmed';

----Find participants whose RegistrationFee is greater than 1500 and Age is greater than 25.
select * from event where RegistrationFee > 1500 and Age > 25 ;

----Display registrations where City is either Mumbai, Pune or Thane.
select * from event where City = 'Mumbai' or City = 'Pune' or City = 'Thane';

----Find participants whose names end with the letter 'a'.
select * from event where ParticipantName like '%a';

---Display registrations where RegistrationFee is between 1000 and 2500, inclusive.
select * from event where RegistrationFee between 1000 and 2500;

----Display the top 5 registrations with the highest RegistrationFee.
select top 5 RegistrationFee from event order by RegistrationFee desc;

----Find the average RegistrationFee for each EventCategory.
select * from event;

select EventCategory, avg(RegistrationFee) as avg_RegistrationFee from event 
group by EventCategory;

----Display EventCategories having more than 3 registrations.
select EventCategory, count(RegistrationFee) as reg_count from event 
group by EventCategory
having count(RegistrationFee) > 3;

