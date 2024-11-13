select
date_date
,count(orders_id) as nb_transactions
,round(sum(revenue),2) as revenue
,round(sum(revenue)/sum(quantity), 2) as average_basket
,sum(margin) as margin
,sum(operational_margin) as operational_margin

from {{ ref('int_orders_operational') }}
group by date_date