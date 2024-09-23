WITH FirstOrders AS (
    SELECT delivery_id,
           customer_id,
           order_date,
           customer_pref_delivery_date,
           ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS rn
    FROM Delivery
),
ImmediateOrders AS (
    SELECT delivery_id,
           customer_id,
           order_date,
           customer_pref_delivery_date,
           CASE 
               WHEN order_date = customer_pref_delivery_date THEN 1
               ELSE 0
           END AS is_immediate
    FROM FirstOrders
    WHERE rn = 1
),
OrderCounts AS (
    SELECT COUNT(*) AS total_first_orders,
           SUM(is_immediate) AS immediate_first_orders
    FROM ImmediateOrders
)

SELECT ROUND((immediate_first_orders * 100.0) / total_first_orders, 2) AS immediate_percentage
FROM OrderCounts;
