select customer_id, count(*) as count_no_trans
from Visits
WHERE visit_id not in (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id;

-- Optimized query for faster response 2025-02-16 14:42:25

-- Optimized query for faster response 2025-02-16 14:50:29

-- Optimized query for faster response 2025-02-16 14:50:32

-- Optimized query for faster response 2025-02-16 14:50:47


-- Optimized query for faster response - 2025-02-17 20:03:36
-- Optimized query for faster response 2025-02-16 14:51:14


-- Optimized query for faster response 2025-02-16 14:58:28

-- Optimized query for faster response 2025-02-16 14:58:42

-- Optimized query for faster response 2025-02-16 15:05:21
