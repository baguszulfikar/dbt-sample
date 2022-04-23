{{ config(
    alias = 'debit_payment',
    materialized = 'view',
) }}

select * from payments
where payment_type = 'debit_card'
and payment_value >= 10