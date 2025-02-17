# Write your MySQL query statement below

select teacher_id, count(DISTINCT subject_id) as cnt
from Teacher
group by teacher_id

-- Optimized query for faster response 2025-02-16 14:53:11

-- Optimized query for faster response 2025-02-17 19:20:29
