# select a movie with highest imdb_rating
select * from movies
order by imdb_rating desc
limit 1 ;


select title from movies
where imdb_rating = (
	select max(imdb_rating) from movies -- return a single value
);


select * from movies
where imdb_rating < (
	select max(imdb_rating) from movies
)
limit 3 ;

# select a movie with highest imdb_rating and lowest imdb_rating

select * from movies
where imdb_rating in (  -- returned a list of value
	(select max(imdb_rating) from movies),
    (select min(imdb_rating) from movies)
);



-- subqueries return a table of value
-- select * from movies 
-- where 80  >= year(curdate())-release_year and  70  <= year(curdate())-release_year;

-- gives error
-- select name, year(curdate()) - birth_year as age from actors
-- where age > 50;

select * from
(select 
	name,
    year(curdate()) - birth_year as age
from actors) as actors_age
where age > 70 and age < 85;

