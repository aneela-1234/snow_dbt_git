{{ 
    config(
        materialized = 'view',
        secure = true
    ) 
}}
SELECT 
    {{ concat_macro('FN', 'LN') }} AS FULL_NAME,
    {{remove_special_char('gmail')}} as gmail
FROM SAMPLE_DATA
