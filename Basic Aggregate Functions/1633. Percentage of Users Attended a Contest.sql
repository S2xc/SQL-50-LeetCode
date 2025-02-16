-- Write your PostgreSQL query statement below
select Register.contest_id,
round(round(count(Register.user_id),2)/
(
  select count(*)
  from Users
)* 100, 2) as percentage
from Register
inner join Users
on Users.user_id = Register.user_id

group by Register.contest_id
order by percentage desc, Register.contest_id asc

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:50:07

-- Optimized query for faster response 2025-02-16 14:58:49

-- Optimized query for faster response 2025-02-16 14:58:54

-- Optimized query for faster response 2025-02-16 15:11:08
