select 
m.orders_id
, date_date
, round(sum((margin+ shipping_fee-log_cost-ship_cost)),2)  as operational_margin
, sum(revenue) as revenue
, sum(quantity) as quantity
,sum(purchase_cost) as purchase_cost 
, sum(margin) as margin
from {{ ref('int_orders_margin') }} m
left join {{ ref('stg_raw__ship') }} sh
on m.orders_id = sh.orders_id
group by m.orders_id
, m.date_date



