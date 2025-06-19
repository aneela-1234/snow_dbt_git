with customer_orders as (
select
O_CUSTKEY AS customer_id,
min(O_ORDERDATE) as min_order_date,
max(O_ORDERDATE) as max_order_date,
count(*) as number_of_orders
from CTEPL.HPN.ORDERS
group by 1
)
select * From customer_orders
order by customer_id

