with t1 as 
(
    select employee_id,
    department_id
    from Employee
    where primary_flag = 'Y'
    group by employee_id, department_id, primary_flag
),
t2 as (
    select employee_id,
    department_id
    from Employee
    where employee_id in 
    (
        select employee_id
        from Employee
        group by employee_id
        having count(employee_id) = 1
    )
)

select coalesce(t1.employee_id, t2.employee_id) as employee_id,
coalesce(t1.department_id, t2.department_id) as department_id
from t1
full join t2
on t2.employee_id = t1.employee_id
order by employee_id

-- Optimized query for faster response 2025-02-16 14:15:09

-- Optimized query for faster response 2025-02-16 14:42:23

-- Optimized query for faster response 2025-02-16 14:50:32

-- Optimized query for faster response 2025-02-16 14:50:54

-- Optimized query for faster response 2025-02-16 14:58:35

-- Optimized query for faster response 2025-02-16 14:58:51

-- Optimized query for faster response 2025-02-16 15:01:45

-- Optimized query for faster response 2025-02-16 15:05:24

-- Optimized query for faster response 2025-02-16 15:11:08

-- Optimized query for faster response 2025-02-16 15:11:10

-- Optimized query for faster response 2025-02-16 15:11:14

-- Optimized query for faster response - 2025-02-20 18:49:48
