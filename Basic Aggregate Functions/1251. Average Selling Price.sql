1251. Average Selling Price

-- Write your PostgreSQL query statement below
select Prices.product_id as product_id,
    coalesce(round(round(sum(UnitsSold.units*Prices.price), 2)/sum(UnitsSold.units), 2), 0) as average_price
    from Prices
    left join UnitsSold
    on UnitsSold.product_id = Prices.product_id
    and UnitsSold.purchase_date between start_date and end_date

group by Prices.product_id
