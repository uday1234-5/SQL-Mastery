select * from movies;

select Max(imdb_rating) from movies;

select avg(imdb_rating) from movies where studio = 'marvel studios';

select round(avg(imdb_rating),2) as "average rating" from movies where studio = 'marvel studios';

select round(avg(imdb_rating),2) as avg,Max(imdb_rating) as max, min(imdb_rating) as min from movies ;

select  industry,count(imdb_rating)   from movies group by industry;

select  industry,max(imdb_rating)   from movies group by industry;

select  release_year, round(avg(imdb_rating),2)   from movies group by release_year;

select  studio, round(avg(imdb_rating),2) as average from movies group by studio order by average ;

select 
	studio, count(studio) as count ,
    round(avg(imdb_rating),2) as average 
from movies 
where studio <> "" 
group by studio 
order by average desc;

-- 1. How many movies were released between 2015 and 2022
select count(*) from movies where release_year between 2015 and 2022;

-- 2. Print the max and min movie release year
select max(release_year) as latest,  min(release_year) as 'old' from movies ;


-- 3. Print each year along with the number of movies released in that year, starting from the most recent year
select release_year,count(*) as 'no. of movie'  from movies group by release_year order by release_year desc;
