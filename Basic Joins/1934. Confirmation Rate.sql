with t3 as(
    select user_id, 
        action, 
        count(*)
    from Confirmations
    group by user_id, action
), t4 as (
    select user_id,
        count
    from t3
    where action = 'timeout'
), t5 as (
    select user_id,
        count
    from t3
    where action = 'confirmed'
)

select distinct(coalesce(t5.user_id, t4.user_id, Signups.user_id)) as user_id,
    case 
        when t4.count is null and t5.count is null then 0
        else 
    round(cast(coalesce(t5.count, 0) as decimal(18,2))/(coalesce(t5.count, 0)+coalesce(t4.count, 0)), 2) end as confirmation_rate
from t5
full join t4
    on t4.user_id = t5.user_id
full join Signups
    on Signups.user_id = t5.user_id
