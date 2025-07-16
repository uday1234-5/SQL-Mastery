SELECT m.movie_id, title , budget, revenue, currency, unit, (revenue - budget) AS profit
FROM movies  m
JOIN financials f ON m.movie_id = f.movie_id WHERE industry = 'Bollywood'
ORDER BY profit DESC;



SELECT m.movie_id, title , budget, revenue, currency, unit, 
case 
	when unit = 'thousands' then round((revenue - budget)/1000,2)
    when unit = 'billions' then round((revenue - budget)*1000,2)
    else  (revenue - budget)
end as profit
FROM movies  m
JOIN financials f ON m.movie_id = f.movie_id WHERE industry = 'Bollywood'
ORDER BY profit DESC;