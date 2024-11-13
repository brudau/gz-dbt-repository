
select
date_date
,count(orders_id) as nb_transactions
,round(sum(revenue),2) as revenue
,round(avg(revenue), 2) as average_basket
,sum(margin) as margin
,sum(operational_margin) as operational_margin
,round(SUM(purchase_cost),2) AS purchase_cost
/*ROUND(SUM(shipping_fee),2) AS shipping_fee,
ROUND(SUM(logcost),2) AS logcost,
,round(SUM(ship_cost),2) AS ship_cost
*/
,SUM(quantity) AS quantity
FROM {{ ref('int_orders_operational') }} AS orders_operational
GROUP BY date_date
order by date_date desc







