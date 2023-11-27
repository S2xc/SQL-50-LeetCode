-- Write your PostgreSQL query statement below
select name, bonus
from Employee
full join Bonus
    on Bonus.empId = Employee.empId
where bonus < 1000 or bonus is null
