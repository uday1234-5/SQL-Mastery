SELECT * FROM movie_actor;
SELECT * FROM movies;
SELECT * FROM financials;

# default is inner join
SELECT  movies.movie_id,  title, budget, revenue, currency, unit
FROM movies 
JOIN financials
ON movies.movie_id = financials.movie_id;



SELECT  m.movie_id,  title, budget, revenue, currency, unit
FROM movies AS m
JOIN financials AS f
ON m.movie_id = f.movie_id;



SELECT  m.movie_id,  title, budget, revenue, currency, unit
FROM movies AS m
LEFT JOIN financials AS f
ON m.movie_id = f.movie_id;


SELECT  f.movie_id,  title, budget, revenue, currency, unit
FROM movies AS m
right JOIN financials AS f
ON m.movie_id = f.movie_id;



SELECT  m.movie_id,  title, budget, revenue, currency, unit
FROM movies AS m
LEFT outer JOIN financials AS f
ON m.movie_id = f.movie_id
union
SELECT  f.movie_id,  title, budget, revenue, currency, unit
FROM movies AS m
right outer JOIN financials AS f
ON m.movie_id = f.movie_id;


SELECT  movie_id,  title, budget, revenue, currency, unit
FROM movies AS m
right JOIN financials AS f
using (movie_id);



SELECT  f.movie_id,  title, budget, revenue, currency, unit
FROM movies AS m
right JOIN financials AS f
ON m.movie_id = f.movie_id and m.col2 = f.col2;
