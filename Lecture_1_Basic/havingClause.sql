# print all the years where more than two movies were released.
SELECT * FROM movies;

SELECT release_year, COUNT(*)  AS movies_count
FROM movies 
GROUP BY release_year
HAVING  movies_count > 2
ORDER BY movies_count DESC ;

SELECT release_year
FROM movies 
GROUP BY release_year;



-- order of execution
# from ==> where ==> group by ==> having -->order by
# having is mainly use


-- from ==> where ==> group by ==> having ==> order by ==> limit ==> offset