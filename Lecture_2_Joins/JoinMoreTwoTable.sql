
SELECT  m.movie_id,m.title, GROUP_CONCAT(a.name) as "Hero Name"
FROM actors a
JOIN movie_actor ma
ON a.actor_id = ma.actor_id 
JOIN movies m 
ON ma.movie_id = m.movie_id
GROUP BY m.movie_id;


SELECT  m.movie_id,m.title, GROUP_CONCAT(a.name separator " |  ") as "Hero Name"
FROM actors a
JOIN movie_actor ma
ON a.actor_id = ma.actor_id 
JOIN movies m 
ON ma.movie_id = m.movie_id
GROUP BY m.movie_id;

SELECT  m.title, group_concat(a.name) 
FROM movies m
JOIN movie_actor ma
ON ma.movie_id = m.movie_id
JOIN actors a 
ON a.actor_id = ma.actor_id 
GROUP BY m.movie_id;


SELECT m.title , group_concat( a.name) FROM actors a
JOIN movie_actor ma
ON a.actor_id = ma.actor_id 
JOIN movies m 
ON ma.movie_id = m.movie_id
GROUP BY m.title;





