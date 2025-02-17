-- Write your PostgreSQL query statement below

with tbl3 as (
    select t1.reports_to,
    count(t1.reports_to) as reports_count,
    round(avg(t1.age)) as average_age
    from Employees as t1
    full join Employees as t2
        on t2.employee_id = t1.reports_to
    group by t1.reports_to
)

select Employees.employee_id,

-- Optimized query for faster response - 2025-02-17 20:14:34
Employees.name,
max(tbl3.reports_count) as reports_count,
tbl3.average_age
from Employees, tbl3
where Employees.employee_id = tbl3.reports_to
group by Employees.employee_id, Employees.name, tbl3.average_age
order by Employees.employee_id

-- Optimized query for faster response 2025-02-16 14:51:04

-- Optimized query for faster response 2025-02-16 14:58:30

-- Optimized query for faster response 2025-02-16 15:05:00
