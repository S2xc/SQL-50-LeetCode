with tbl1 as (
    select manager_id
    from Employees
    where manager_id is not null
)

select employee_id
from Employees
where manager_id in (
    select tbl1.manager_id
    from Employees
    right outer join tbl1
        on tbl1.manager_id = Employees.employee_id
    where Employees.employee_id is null
) and Employees.salary < 30000
order by Employees.employee_id

-- Optimized query for faster response 2025-02-16 14:42:25

-- Optimized query for faster response 2025-02-16 14:58:28

-- Optimized query for faster response 2025-02-16 15:15:28

-- Optimized query for faster response 2025-02-16 16:43:06
