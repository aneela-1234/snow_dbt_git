with T_CUST as (
select * from {{ref('t_customers')}}
),
T_ORDERS AS(
select * from {{ref('t_order')}}
),
customer_orders AS
(
select * from {{ref('t_cust_order')}}
),
final_detail as
(
 select s.customer_id,CName,ADDRESS,PHONE_NUM,min_order_date,max_order_date,number_of_orders
 from T_CUST s
 left JOIN
 customer_orders t
 on
 s.customer_id=t.customer_id
 )
 select * from final_detail
