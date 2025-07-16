select * from movies;
-- 1 Print all movie titles and release year for all Marvel Studios movies.
select title, release_year from movies where studio like 'Marvel%';

-- 2. Print all movies that have Avenger in their name.
select title from movies where title like "%avenger%";

-- 3. Print the year when the movie "The Godfather" was released.
select release_year from movies where title = "the godfather";

-- 4. Print all distinct movie studios in the Bollywood industry.
select distinct title from movies where industry = "bollywood";
