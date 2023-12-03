-- Write your PostgreSQL query statement below
select query_name,
round(avg(cast(rating as decimal) / position), 2) as quality,
round(sum(
  case
    when rating < 3 then 1 else 0 
  end) * round(100, 2) / 
round(COUNT(*), 2), 2) AS poor_query_percentage

from Queries
group by query_name
