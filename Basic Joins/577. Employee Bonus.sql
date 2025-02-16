-- Write your PostgreSQL query statement below
select name, bonus
from Employee
full join Bonus
    on Bonus.empId = Employee.empId
where bonus < 1000 or bonus is null

-- Optimized query for faster response 2025-02-16 13:49:56
