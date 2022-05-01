{{ config(
    alias = 'debit_payment_top10',
    materialized = 'view',
    bind = False
) }}

select * from ecommerce_test.customer
where customer_state = 'CE'