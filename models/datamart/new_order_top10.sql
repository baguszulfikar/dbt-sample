{{ config(
    alias = 'new_order_top10',
    materialized = 'view',
) }}

select * from {{ ref('new_order')}}
order by shipping_limit_date desc
limit 10