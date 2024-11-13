with 

source as (

    select * from {{ source('raw', 'adw') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name as campaign_name,
        cast(ads_cost as FLOAT64) ads_cost,
        impression,
        click

    from source

)

select * from renamed
