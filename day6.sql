CREATE TABLE Bank (
    AccountID INT PRIMARY KEY,
    AccountHolder VARCHAR(50),
    AccountType VARCHAR(30),
    Balance DECIMAL(10,2),
    Branch VARCHAR(30),
    Age INT,
    AccountStatus VARCHAR(20)
);

INSERT INTO Bank
(AccountID, AccountHolder, AccountType, Balance, Branch, Age, AccountStatus)
VALUES
(1, 'Amit Sharma', 'Savings', 45000.00, 'Mumbai', 28, 'Active'),
(2, 'Priya Mehta', 'Current', 85000.00, 'Pune', 35, 'Active'),
(3, 'Rahul Patil', 'Savings', 12000.00, 'Mumbai', 42, 'Inactive'),
(4, 'Sneha Joshi', 'Salary', 65000.00, 'Nashik', 25, 'Active'),
(5, 'Vikas Shah', 'Savings', 32000.00, 'Pune', 31, 'Active'),
(6, 'Neha Verma', 'Current', 95000.00, 'Mumbai', 45, 'Active'),
(7, 'Karan Singh', 'Salary', 18000.00, 'Nashik', 29, 'Inactive'),
(8, 'Pooja Desai', 'Savings', 72000.00, 'Pune', 38, 'Active'),
(9, 'Rohan Kulkarni', 'Current', 55000.00, 'Mumbai', 33, 'Active'),
(10, 'Anjali Rao', 'Salary', 25000.00, 'Nashik', 22, 'Active'),
(11, 'Sahil Khan', 'Savings', 9000.00, 'Pune', 27, 'Inactive'),
(12, 'Meera Nair', 'Current', 110000.00, 'Mumbai', 40, 'Active');

---Display all records from the BankAccounts table.
select * from Bank;

----Display only AccountHolder, Balance, and Branch for all accounts.
select AccountHolder,Balance,Branch from Bank;

---Find all accounts with a balance greater than 50,000.
select * from Bank where Balance > 50000;

---Display all accounts belonging to the Mumbai branch.
select * from Bank where Branch = 'Mumbai';

----Find account holders whose balance is between 20,000 and 70,000, inclusive.
select AccountHolder from Bank where Balance between 20000 and 70000;

---Display all accounts in descending order of Balance.
select * from Bank order by Balance desc;

---Count the total number of bank accounts in the table.
select count(*) as total_bankaccount from Bank ;

----Find the average balance of all bank accounts.
select avg(Balance) as avg_balance from Bank;

---Display the total number of accounts in each branch.
select * from Bank;

select Branch , count(*) as total_bank_account  from Bank 
group by Branch;

---Display account types whose average balance is greater than 40,000. Show the AccountType and average balance only.
select * from Bank;

select AccountType,avg(Balance) as avg_balance from Bank 
group by AccountType 
having avg(Balance) > 40000;