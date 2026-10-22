
CREATE TABLE hospital (
    AppointmentID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    DoctorName VARCHAR(50),
    Department VARCHAR(40),
    AppointmentDate DATE,
    ConsultationFee DECIMAL(8,2),
    AppointmentStatus VARCHAR(20),
    PatientAge INT
);


INSERT INTO hospital
(AppointmentID, PatientName, DoctorName, Department,
 AppointmentDate, ConsultationFee, AppointmentStatus, PatientAge)
VALUES
(1, 'Aarav Shah', 'Dr. Mehta', 'Cardiology', '2026-10-01', 800.00, 'Completed', 45),
(2, 'Priya Patil', 'Dr. Joshi', 'Dermatology', '2026-10-02', 600.00, 'Completed', 29),
(3, 'Rohan Desai', 'Dr. Mehta', 'Cardiology', '2026-10-03', 800.00, 'Cancelled', 52),
(4, 'Sneha Rao', 'Dr. Khan', 'Neurology', '2026-10-04', 1000.00, 'Completed', 38),
(5, 'Vivek Nair', 'Dr. Joshi', 'Dermatology', '2026-10-05', 600.00, 'Pending', 34),
(6, 'Ananya Singh', 'Dr. Khan', 'Neurology', '2026-10-06', 1000.00, 'Completed', 61),
(7, 'Karan Shah', 'Dr. Mehta', 'Cardiology', '2026-10-07', 800.00, 'Pending', 25),
(8, 'Pooja Kulkarni', 'Dr. Joshi', 'Dermatology', '2026-10-08', 600.00, 'Cancelled', 42),
(9, 'Rahul Verma', 'Dr. Khan', 'Neurology', '2026-10-09', 1000.00, 'Completed', 47),
(10, 'Meera Iyer', 'Dr. Mehta', 'Cardiology', '2026-10-10', 800.00, 'Completed', 31),
(11, 'Arjun Pawar', 'Dr. Joshi', 'Dermatology', '2026-10-11', 600.00, 'Pending', 56),
(12, 'Nisha Gupta', 'Dr. Khan', 'Neurology', '2026-10-12', 1000.00, 'Completed', 23),
(13, 'Sahil More', 'Dr. Mehta', 'Cardiology', '2026-10-13', 800.00, 'Cancelled', 67),
(14, 'Isha Malhotra', 'Dr. Joshi', 'Dermatology', '2026-10-14', 600.00, 'Completed', 36),
(15, 'Dev Mishra', 'Dr. Khan', 'Neurology', '2026-10-15', 1000.00, 'Pending', 50);


select * from hospital;

---Display all appointments with the status 'Completed'.
select * from  hospital where AppointmentStatus = 'Completed';

---Display the patient name, doctor name, and consultation fee for appointments costing more than 700.
select PatientName , DoctorName , ConsultationFee from hospital where ConsultationFee > 700;

---Find patients whose age is between 30 and 50, inclusive.
select * from hospital;

select PatientName , PatientAge from hospital where PatientAge between 30 and 50;

----Display all appointments that were cancelled.
select * from hospital;

select * from hospital where AppointmentStatus = 'Cancelled';

---Display all appointments in descending order of consultation fee.
select * from hospital order by ConsultationFee desc;

---Count the total number of appointments.
select count(*) as total_appointment from hospital;

----Calculate the average consultation fee for all appointments.
select * from hospital;

select avg(ConsultationFee) as avg_consultation from hospital;

----Find the number of appointments for each department.
select * from hospital;

select Department ,count(*) as number_of_appointment from hospital
group by Department;

---Find the total number of completed appointments for each doctor.
select DoctorName , count(*) as number_of_appointment from hospital
where AppointmentStatus =  'Completed'
group by DoctorName;

---Display departments having more than 4 appointments using GROUP BY and HAVING
select * from hospital;

select Department , count(*) as appointment_count from hospital 
group  by Department 
having count(*) > 4;


