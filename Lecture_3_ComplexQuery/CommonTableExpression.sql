
# get all actors whose age is between 70 and 85

select actor_name, age
from (select name as actor_name, 
	year(curdate()) - birth_year as age
    from actors )
as actor_age
where age > 70 and age < 85;



with actors_age as (
	select 
		name as actor_name, 
		year(curdate()) - birth_year as age
    from actors 
)
select actor_name,age
from actors_age
where age > 70 and age < 85;


with actors_age(actor_name, age) as (
	select 
		name, 
		year(curdate()) - birth_year
    from actors 
)
select actor_name,age
from actors_age
where age > 70 and age < 85;


with actors_age(actor_name, age) as (
	select 
		name as x, 
		year(curdate()) - birth_year   as y
    from actors 
)
select actor_name,age
from actors_age
where age > 70 and age < 85;






# movies that produced 500% profit and their rating was less than avg rating for all movies

-- movies that produced 500% profit
select 
	*, 
    (revenue - budget)*100/budget as pct_profit
from financials
where (revenue - budget)*100/budget >= 500;

-- their rating was less than avg rating for all movies
select * from movies 
where imdb_rating < (select avg(imdb_rating) from movies);

-- select * from () x
-- join () y

select x.movie_id, x.pct_profit,
	y.title,  y.imdb_rating
 from (select 
	*, 
    (revenue - budget)*100/budget as pct_profit
from financials
where (revenue - budget)*100/budget >= 500
) x
join (select * from movies 
where imdb_rating < (select avg(imdb_rating) from movies)
) y
on x.movie_id = y.movie_id
where pct_profit >= 500;


-- using CTE
with 
	x as (select 
		*, 
		(revenue - budget)*100/budget as pct_profit
	from financials
	where (revenue - budget)*100/budget >= 500),
	y as (
    select * from movies 
	where imdb_rating < (select avg(imdb_rating) 
    from movies)
    )
select x.movie_id, x.pct_profit,
	y.title,  y.imdb_rating
from  x
join  y
on x.movie_id = y.movie_id
where pct_profit >= 500;


# Benefite
-- simple queries
-- same resultset can be referenced multiple times
-- code reusability 