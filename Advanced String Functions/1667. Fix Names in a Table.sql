select user_id, 
concat(
    upper(substr(name,1,1)),
    lower(substr(name,2))
    ) as name
from Users
order by user_id

-- Optimized query for faster response 2025-02-16 14:50:11

-- Optimized query for faster response 2025-02-16 14:53:11
