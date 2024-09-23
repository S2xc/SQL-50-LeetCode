select Products.product_name,
sum(Orders.unit) as unit
from Products
inner join Orders
    on Orders.product_id = Products.product_id
where Orders.order_date BETWEEN '2020-02-01' AND '2020-02-29'
group by Products.product_name
having sum(Orders.unit) >= 100
