orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}
),

final as (
    select orders.order_id, orders.payment_id, payments.amount
    from orders join payments using (order_id)

),

select * from final
