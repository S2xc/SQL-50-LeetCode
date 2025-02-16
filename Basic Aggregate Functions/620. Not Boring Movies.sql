-- Write your PostgreSQL query statement below

select *
from Cinema
where id % 2 = 1
group by id, movie, description, rating
having description != 'boring'
order by rating desc

-- Optimized query for faster response 2025-02-16 14:15:05
