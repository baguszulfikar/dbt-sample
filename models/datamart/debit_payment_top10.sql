{{ config(
    alias = 'debit_payment_top10',
    materialized = 'view',
    bind = False
) }}

SELECT * FROM PAYMENTS 
WHERE payment_type = 'debit_card'
ORDER BY PAYMENT_VALUE DESC LIMIT 10 