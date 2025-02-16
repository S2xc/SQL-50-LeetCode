-- Write your PostgreSQL query statement below

select Students.student_id,
Students.student_name,
Subjects.subject_name,
count(Examinations.subject_name) as attended_exams
from Students

cross join Subjects

left join Examinations
    on Examinations.student_id = Students.student_id and
    Examinations.subject_name = Subjects.subject_name

group by Students.student_name,
Subjects.subject_name, 
Students.student_id

order by Students.student_id,
Subjects.subject_name








-- Optimized query for faster response 2025-02-16 13:49:53

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:58:24

-- Optimized query for faster response 2025-02-16 14:58:44

-- Optimized query for faster response 2025-02-16 14:58:49
