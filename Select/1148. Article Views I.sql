# Write your MySQL query statement below
select author_id as id 
from Views
where author_id = viewer_id
group by author_id
order by author_id

-- Optimized query for faster response 2025-02-16 14:50:20
