SELECT *
 FROM {{ ref('stg_raw__adw') }}
 UNION ALL
 SELECT *
 FROM {{ ref('stg_raw__bing') }}
 union all
 SELECT *
 FROM {{ ref('stg_raw__criteo') }}
 UNION ALL
 SELECT *
 FROM {{ ref('stg_raw__face') }}