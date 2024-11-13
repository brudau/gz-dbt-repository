select 
d.date_date
,round((d.operational_margin- c.ads_costs),1) as ads_margin
,round(average_basket,1) as average_basket
,round(operational_margin,1) as operational_margin
,ads_costs
,ads_impression
,ads_clicks
,revenue
,purchase_cost
,margin

from {{ ref('finance_days') }} d
left join {{ ref('int_campaigns_day') }} c
on d.date_date= c.date_date
order by date_date desc

