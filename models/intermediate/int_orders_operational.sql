select 
m.orders_id
, date_date
, round(sum((margin+ shipping_fee-log_cost-ship_cost)),2)  as operational_margin
, revenue
, quantity
,purchase_cost
, margin
from {{ ref('int_sales_margin') }} m
left join {{ ref('stg_raw__ship') }} sh
on m.orders_id = sh.orders_id
group by m.orders_id
, m.date_date
, revenue
, quantity
,purchase_cost
, margin
