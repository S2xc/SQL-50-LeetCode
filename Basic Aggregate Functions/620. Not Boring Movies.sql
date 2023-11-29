-- Write your PostgreSQL query statement below

select *
from Cinema
where id % 2 = 1
group by id, movie, description, rating
having description != 'boring'
order by rating desc
