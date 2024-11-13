select date_date
,sum(ads_cost) as ads_costs
, sum(impression) as ads_impression
, sum(click) as ads_clicks
from {{ ref('int_campaigns') }}
group by date_date