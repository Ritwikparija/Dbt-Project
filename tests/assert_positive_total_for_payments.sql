with pay as (
    select * from {{ref('stg_payments')}}
)
select 
    order_id,
    sum(amount) as total_amount
from pay
group by 1
having not(total_amount >= 0)

