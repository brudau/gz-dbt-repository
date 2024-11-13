select s.*
,quantity * purchase_price as purchase_cost
,round(revenue - (quantity * purchase_price),2) as margin
from {{ ref('stg_raw__sales') }} s
left join {{ ref('stg_raw__product') }}  p
on s.products_id = p.products_id