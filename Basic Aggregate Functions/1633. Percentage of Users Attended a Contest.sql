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
