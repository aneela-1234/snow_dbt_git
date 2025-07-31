{{
    config(
        materialized='table',
        transient=false,
        alias='Tras_perm',
        query_tag='bdsr_tg'
    )
}}
select 1 id