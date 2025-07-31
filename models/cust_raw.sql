{{
    config(
        materialized='table',
        transient=true
    )
}}
SELECT
    cust_id,
    cu_name,
    {{ remove_special_chars('cu_name') }} AS cleaned_name
FROM ctepl.dbt_schema.customer_raw