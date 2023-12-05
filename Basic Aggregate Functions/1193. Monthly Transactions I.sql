/*with tbl1 as 
(
    select to_char(trans_date, 'YYYY-MM') as month,
    country,
    count(state) as trans_count,
    sum(amount) as trans_total_amount
    from Transactions
    group by month, country
), tbl2 as
(
    select to_char(trans_date, 'YYYY-MM') as month,
    count(state) as approved_count,
    sum(amount) as approved_total_amount
    from Transactions
    where state = 'approved'
    group by month, country
)

select distinct(tbl1.month), tbl1.country, tbl1.trans_count,
coalesce(tbl2.approved_count, 0) as approved_count, 
tbl1.trans_total_amount,
coalesce(tbl2.approved_total_amount, 0) as approved_total_amount
from tbl1
full join tbl2
    on tbl2.month = tbl1.month
*/

SELECT
    to_char(trans_date, 'YYYY-MM') as month,
    country,
    count(*) AS trans_count,
    sum(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    sum(amount) AS trans_total_amount,
    sum(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
group by month, country



