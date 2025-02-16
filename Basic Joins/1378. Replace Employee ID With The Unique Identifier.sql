-- Write your PostgreSQL query statement below
select unique_id, name
from Employees
left join EmployeeUNI
    on Employees.id = EmployeeUNI.id

-- Optimized query for faster response 2025-02-16 14:46:07
