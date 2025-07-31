{{
    config(
        materialized='view',
        alias='cust'
    )
}}
with t_cust as (
select
C_CUSTKEY as customer_id,
C_NAME as Name,
C_ADDRESS AS ADDRESS,
C_PHONE AS PHONE_NUM
FROM CTEPL.HPN.CUSTOMER
)
select * From t_cust
order by customer_id