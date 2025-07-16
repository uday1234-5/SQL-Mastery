

select * from movies;

select * from movies where imdb_rating >= 6 and imdb_rating <= 8;

SELECT * FROM movies WHERE release_year = 2022 or release_year = 2023;

SELECT * FROM movies WHERE release_year in (2022, 2023);

SELECT * FROM movies WHERE imdb_rating is null;

SELECT * FROM movies WHERE industry = 'bollywood' order by imdb_rating desc;  -- default asc


SELECT  *  FROM movies WHERE industry = 'bollywood' order by imdb_rating desc  limit 5 offset 1;  -- default asc
SELECT  distinct imdb_rating,  title  FROM movies WHERE industry = 'bollywood' order by imdb_rating desc limit 2 offset 1;  -- default asc

SELECT  distinct imdb_rating,  title  FROM movies   order by imdb_rating desc ;  -- default asc

-- Unique IMDb ratings
SELECT DISTINCT imdb_rating
FROM movies
WHERE industry = 'bollywood'
union
-- Unique titles
SELECT DISTINCT title
FROM movies
WHERE industry = 'bollywood';





-- 1. Print all movies in the order of their release year (latest first)
SELECT  title,release_year  FROM movies  order by release_year desc;  -- default asc

-- 2. All movies released in the year 2022
SELECT  title,release_year  FROM movies  where  release_year = 2022;

-- 3. Now all the movies released after 2020
SELECT  title,release_year  FROM movies  where release_year > 2020;

-- 4. All movies after the year 2020 that have more than 8 rating
SELECT  *  FROM movies  where release_year > 2020 and imdb_rating > 8;

-- 5. Select all movies that are by Marvel studios and Hombale Films
SELECT  *  FROM movies  where studio in ('Marvel studios','Hombale Films');


-- 6. Select all THOR movies by their release year
SELECT  *  FROM movies  where title like '%thor%' order by release_year;

-- 7. Select all movies that are not from Marvel Studios
SELECT  *  FROM movies  where studio <> 'Marvel studios';
SELECT  *  FROM movies  where studio !=  'Marvel studios';

