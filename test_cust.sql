with
    t_customers as (select * from {{ ref("t_cust") }}),
    t_orde as (select * from {{ ref("t_orders_tab") }}),
    customer_orders as (
        select
            tc.customer_id,
             Name,
             ADDRESS,
             PHONE_NUM,
            status,
            price,
            order_date
           from 
           t_customers tc
        left join 
        t_orde td 
        on tc.customer_id = td.customer_id
    )
select *
from customer_orders
