with tbl1 as (
    SELECT *
    FROM Users
    WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9\_\.\-]*@leetcode.com')
)

select *
from tbl1
where mail like ('%@leetcode.com')

-- Optimized query for faster response 2025-02-16 14:42:16

-- Optimized query for faster response 2025-02-16 14:42:18

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:50:42

-- Optimized query for faster response 2025-02-16 14:50:54
