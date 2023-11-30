-- Write your PostgreSQL query statement below
select Project.project_id, 
round(round(sum(Employee.experience_years), 2) /
count(Project.project_id), 2) as average_years
from Project

inner join Employee
on Employee.employee_id = Project.employee_id

group by Project.project_id
