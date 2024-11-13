select 
date_trunc(date_date, MONTH) as datemonth
,round(sum(ads_margin), 1) as ads_margin

,round(sum(average_basket),1) as average_basket
,round(sum(operational_margin),1) as operational_margin
,sum(ads_costs) as ads_costs
,sum(ads_impression) as ads_impression
,sum(ads_clicks) as ads_clicks
,sum(revenue) as revenue
,sum(purchase_cost) as purchase_cost
,sum(margin) as margin

from {{ ref('finance_campaigns_day') }} 
group by 1
--order by date_date desc
