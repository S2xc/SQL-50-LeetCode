-- Write your PostgreSQL query statement below

select *
from Cinema
where id % 2 = 1
group by id, movie, description, rating
having description != 'boring'
order by rating desc

-- Optimized query for faster response 2025-02-16 14:15:05

-- Optimized query for faster response 2025-02-16 14:51:08

-- Optimized query for faster response 2025-02-16 14:53:09

-- Optimized query for faster response 2025-02-16 14:58:42
