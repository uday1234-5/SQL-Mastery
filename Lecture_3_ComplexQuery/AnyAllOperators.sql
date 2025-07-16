
# select actors who acted in any of these movies (101, 110, 121)
select * from movie_actor;
select actor_id from movie_actor where movie_id in (101, 110, 121);

select * from actors where actor_id in (
	select actor_id from movie_actor where movie_id in (101, 110, 121)
);


select * from actors where actor_id = any (
	select actor_id from movie_actor where movie_id in (101, 110, 121)
);



--  select all movies whose rating is greater than "any" of the marvel movies rating

select * from movies where studio like "%marvel%";
select * from movies where imdb_rating > any
(select imdb_rating from movies where studio like "%marvel%" );

select * from movies where studio like "%marvel%";
select * from movies where imdb_rating > some
(select imdb_rating from movies where studio like "%marvel%" );

select * from movies where imdb_rating >
(select min(imdb_rating) from movies where studio like "%marvel%" );

-- same
select * from movies where studio like "%marvel%";
select * from movies where imdb_rating > all
(select imdb_rating from movies where studio like "%marvel%" );

select * from movies where imdb_rating >
(select max(imdb_rating) from movies where studio like "%marvel%" );