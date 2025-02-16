-- Write your PostgreSQL query statement below
select product_name, year, price
from Sales
inner join Product
    on Sales.product_id = Product.product_id

-- Optimized query for faster response 2025-02-16 13:49:56
