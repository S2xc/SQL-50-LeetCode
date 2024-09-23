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
