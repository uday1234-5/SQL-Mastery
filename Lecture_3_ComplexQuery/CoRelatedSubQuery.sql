-- select the actor id , actor name and the total number of movies they acted in.
explain analyze -- for calculating time
select a.actor_id, a.name,  count((m.title)) as movies_count from movie_actor as ma
join actors as a on a.actor_id = ma.actor_id
join movies as m on m.movie_id = ma.movie_id
group by a.actor_id
order by movies_count desc;

select a.actor_id, a.name,  count(*) as movies_count from movie_actor as ma
join actors as a on a.actor_id = ma.actor_id
group by actor_id order by movies_count desc;

-- using sub query
select actor_id, count(*) as cnt from movie_actor
group by actor_id order by count(*) desc;


select actor_id, name, movie_count from actors;  -- I want to write query to replace movie_count
select count(*) from movie_actor where actor_id = 51;

explain analyze -- for calculating time
select actor_id,
	   name, 
        (select count(*) from movie_actor where actor_id = actors.actor_id) as movie_count
from actors 
order by movie_count desc;




-- 1. Select all the movies with minimum and maximum release_year. Note that there
-- can be more than one movie in min and a max year hence output rows can be more than 2
select * from movies
where release_year in (
	(select min(release_year) from movies),
    (select max(release_year) from movies)
);
    
    
-- 2. Select all the rows from the movies table whose imdb_rating is higher than the average rating
select * from movies
where imdb_rating > (
	select avg(imdb_rating) from movies
);