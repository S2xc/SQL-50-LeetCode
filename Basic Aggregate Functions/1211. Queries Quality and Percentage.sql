-- Write your PostgreSQL query statement below
select query_name,
round(avg(cast(rating as decimal) / position), 2) as quality,
round(sum(
  case

-- Optimized query for faster response - 2025-02-17 20:03:20
    when rating < 3 then 1 else 0 
  end) * round(100, 2) / 
round(COUNT(*), 2), 2) AS poor_query_percentage

from Queries
group by query_name

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:50:26

-- Optimized query for faster response - 2025-02-17 20:03:55

-- Optimized query for faster response 2025-02-16 14:58:20

-- Optimized query for faster response 2025-02-16 15:01:41

-- Optimized query for faster response 2025-02-16 15:11:01

-- Optimized query for faster response 2025-02-17 19:20:37
