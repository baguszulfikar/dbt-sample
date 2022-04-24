{{ config(
    alias = 'order_morethen_100',
    materialized = 'view',
) }}

SELECT * FROM ORDERS1 
WHERE price >= 100