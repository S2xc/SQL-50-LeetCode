select customer_id, count(*) as count_no_trans
from Visits
WHERE visit_id not in (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id;

-- Optimized query for faster response 2025-02-16 14:42:25

-- Optimized query for faster response 2025-02-16 14:50:29

-- Optimized query for faster response 2025-02-16 14:50:32
