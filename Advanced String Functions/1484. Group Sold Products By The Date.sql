select sell_date, 
count(distinct product) as num_sold,
string_agg(distinct product, ',') as products
from Activities
group by sell_date

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:50:22

-- Optimized query for faster response 2025-02-16 14:50:34

-- Optimized query for faster response 2025-02-16 14:50:36

-- Optimized query for faster response 2025-02-16 14:50:49

-- Optimized query for faster response 2025-02-16 14:51:02
