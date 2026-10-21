CREATE TABLE library (
    BookID INT PRIMARY KEY,
    BookTitle VARCHAR(100),
    Author VARCHAR(50),
    Genre VARCHAR(30),
    PublishYear INT,
    Price DECIMAL(8,2),
    AvailableCopies INT
);


INSERT INTO library
(BookID, BookTitle, Author, Genre, PublishYear, Price, AvailableCopies)
VALUES
(1, 'The Silent Forest', 'Anita Sharma', 'Mystery', 2018, 450.00, 5),
(2, 'Beyond the Stars', 'Rahul Mehta', 'Science Fiction', 2021, 600.00, 3),
(3, 'The Art of Living', 'Neha Kapoor', 'Self-Help', 2019, 350.00, 8),
(4, 'Hidden Truths', 'Anita Sharma', 'Mystery', 2022, 520.00, 2),
(5, 'Ocean Secrets', 'Vikram Rao', 'Adventure', 2017, 400.00, 6),
(6, 'Future World', 'Rahul Mehta', 'Science Fiction', 2023, 750.00, 4),
(7, 'Mindful Moments', 'Priya Shah', 'Self-Help', 2020, 300.00, 10),
(8, 'Lost Kingdom', 'Vikram Rao', 'Adventure', 2016, 480.00, 0),
(9, 'The Final Clue', 'Anita Sharma', 'Mystery', 2024, 650.00, 7),
(10, 'Digital Dreams', 'Priya Shah', 'Science Fiction', 2022, 550.00, 1),
(11, 'Mountain Trails', 'Karan Joshi', 'Adventure', 2021, 420.00, 5),
(12, 'A Better You', 'Neha Kapoor', 'Self-Help', 2023, 380.00, 0);

select * from library;

----Display all books belonging to the Mystery genre.

select * from library where Genre = 'Mystery';

----Display the book title, author, and price of books priced above 500.
select BookTitle,Author , Price from library where Price > 500;

----Find all books published after 2020.
select * from library where PublishYear > 2020;

----Display all books that have zero available copies.
select * from library where AvailableCopies = 0;

----Display all books in descending order of price.
select * from library order by Price desc;

----Find the total number of books in the table.
select count(*) as total_number_of_books from library;

----Calculate the average price of all books.
select avg(Price) as avergae_price from library;

----Find the total available copies for each genre.
select Genre , sum(AvailableCopies) as total_available from library
group by Genre;

----Display each author and the number of books written by them.
select * from library;

select Author , count(BookID) as number_book from library 
group by Author;

----Display genres having more than 2 books, using GROUP BY and HAVING.
select *  from library;

select Genre , count(*) as copies_count from library 
group by Genre 
having count(*)  > 2;

