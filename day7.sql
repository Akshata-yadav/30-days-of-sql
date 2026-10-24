
CREATE TABLE movies (
    MovieID INT PRIMARY KEY,
    MovieName VARCHAR(100),
    Genre VARCHAR(30),
    ReleaseYear INT,
    Rating DECIMAL(3,1),
    BoxOffice DECIMAL(10,2),
    Language VARCHAR(30)
);

INSERT INTO movies
(MovieID, MovieName, Genre, ReleaseYear, Rating, BoxOffice, Language)
VALUES
(1, 'Dangal', 'Drama', 2016, 8.3, 2000.00, 'Hindi'),
(2, 'Jawan', 'Action', 2023, 7.0, 1150.00, 'Hindi'),
(3, '3 Idiots', 'Comedy', 2009, 8.4, 400.00, 'Hindi'),
(4, 'Drishyam', 'Thriller', 2015, 8.2, 110.00, 'Hindi'),
(5, 'Pathaan', 'Action', 2023, 5.8, 1050.00, 'Hindi'),
(6, 'Kantara', 'Thriller', 2022, 8.2, 400.00, 'Kannada'),
(7, 'Leo', 'Action', 2023, 7.2, 600.00, 'Tamil'),
(8, 'Sairat', 'Romance', 2016, 8.3, 110.00, 'Marathi'),
(9, 'PK', 'Comedy', 2014, 8.1, 850.00, 'Hindi'),
(10, 'RRR', 'Action', 2022, 7.8, 1200.00, 'Telugu'),
(11, 'Queen', 'Drama', 2014, 8.1, 100.00, 'Hindi'),
(12, 'Vikram', 'Action', 2022, 8.3, 450.00, 'Tamil');

---View all records
select * from movies;

----Q1. Display all unique movie genres.
select distinct genre from movies;

----Q2. Find movies whose names start with the letter 'D'.
select MovieName from movies where MovieName like 'D%';

----Q3. Display movies released after 2020 with a rating greater than 7.0.

select * from movies where ReleaseYear > 2020 and Rating > 7.0;

----Q4. Display the top 5 movies with the highest ratings.
select top 5 * from movies order by Rating desc;

----Q5. Find the number of movies available in each language.
select Language , count(*) as number_of_movies from movies 
group by Language;

----Q6. Classify movies based on their ratings.

select MovieNAME , Rating, 
case when Rating >= 8.0 then 'Excellent'
when Rating >=7.0 then 'Good'
else 'Average'
end as RatingCategory 
from movies;

----Q7. Find movies whose names contain the letter 'a'.
select * from movies where MovieName like '%a%';

----Q8. Display genres that have more than 2 movies.
select Genre , count(*) as movie_genre from movies 
group by Genre 
having count(*) > 2;

----Q9. Find movies whose rating is greater than the average rating of all movies.
select MovieName, Rating
from movies
WHERE Rating > (select avg(Rating) as avg_all_rating from movies);

----Q10. Find the movie or movies with the highest box-office collection without using TOP or LIMIT.
select MovieName , BoxOffice from movies 
where BoxOffice = ( select max(BoxOffice) from movies);


