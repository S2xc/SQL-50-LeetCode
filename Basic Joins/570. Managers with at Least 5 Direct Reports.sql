-- Write your PostgreSQL query statement below


with t2 as 
(
  select managerId
  from Employee
  group by managerId
  having count(*) >= 5
)

select name
from Employee
inner join t2
on t2.managerId = Employee.id



-- Optimized query for faster response 2025-02-16 14:42:21

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:51:04
