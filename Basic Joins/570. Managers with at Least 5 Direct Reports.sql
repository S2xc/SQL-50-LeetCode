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


