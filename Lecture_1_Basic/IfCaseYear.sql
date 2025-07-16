 
select curdate();

select year(curdate()) ;

select * from actors;

select *, year(curdate()) from actors;

select *, year(curdate())-birth_year as age from actors;

select * from financials;

select *,unit from financials;

select *, (revenue - budget) as profit from financials;

select *,
if (currency = 'USD', revenue*77, revenue) as revenue_INR
from financials;
-- If(condition, true , false)


select distinct unit from financials;

-- billions = millions *1000
-- thousands = millions / 1000;
SELECT 
    *,
    CASE
        WHEN unit = 'billions' THEN revenue * 1000
        WHEN unit = 'thousands' THEN revenue / 1000
        ELSE revenue
    END AS revenue_million
FROM
    financials;
 

-- 1. Print profit % for all the movies
select *, (revenue - budget) as profit from financials;

select 
        *, 
(revenue-budget) as profit, 
(revenue-budget)*100/budget as profit_pct 
from financials;
   
-- 2 You have a customers table with customer_id as a primary key. Write a query to select all ODD customer_id records
-- SELECT * from customers WHERE customer_id % 2 = 1

-- 3 You have a table with cricket scores of players and you want to retrieve second, third and fourth highest scores. Select the correct query for this
-- select * from cricket_score order by score desc limit 3 offset 1;



select * from financials order by revenue desc limit 3 offset 1;


-- For movies table, write a query to print (1) count of distinct imdb_rating (2) standard deviation of imdb_rating (HINT: Use your google skills)
SELECT count(distinct imdb_rating) as count, STDDEV(imdb_rating)as standard_deviation from movies;



