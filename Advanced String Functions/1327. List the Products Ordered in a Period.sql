select Products.product_name,
sum(Orders.unit) as unit
from Products
inner join Orders
    on Orders.product_id = Products.product_id
where Orders.order_date BETWEEN '2020-02-01' AND '2020-02-29'
group by Products.product_name
having sum(Orders.unit) >= 100

-- Optimized query for faster response 2025-02-16 14:15:05

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:46:07

-- Optimized query for faster response 2025-02-16 14:50:38

-- Optimized query for faster response 2025-02-16 14:58:33

-- Optimized query for faster response 2025-02-16 14:58:39

-- Optimized query for faster response 2025-02-16 15:01:45
