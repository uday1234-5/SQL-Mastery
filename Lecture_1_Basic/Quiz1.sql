-- Q1. Write a query to retrieve movies whose title start with THE and their rating is between 5 and 6 (including 6 but excluding 5)

select * from movies;


select * from movies 
where title like "the%" and
(imdb_rating > 5 and imdb_rating <= 6);

SELECT * from movies WHERE imdb_rating>5 and imdb_rating <=6 and title LIKE "The%";