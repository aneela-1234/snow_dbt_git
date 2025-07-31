{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}
SELECT * FROM {{ source('INCR', 'CUSTOM_INCR') }}
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where ID > (select max(ID) from {{ this }}) 
{% endif %}