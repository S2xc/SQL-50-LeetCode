select customer_id, count(*) as count_no_trans
from Visits
WHERE visit_id not in (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id;
