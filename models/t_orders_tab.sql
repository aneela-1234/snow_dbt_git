{{ config(materialized="view") }}
with
    t_orders_1 as (
        select o_orderkey as order_id,
        o_custkey as customer_id,
        o_orderstatus as status,
        o_totalprice as price,
        o_orderdate as order_date
        from ctepl.hpn.orders
    )
select *
from t_orders_1
order by order_id
