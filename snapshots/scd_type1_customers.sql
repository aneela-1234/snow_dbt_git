{% snapshot scd_type1_customers %}
    {{
        config(
            target_schema='HPN',
            unique_key='customer_id',
            strategy='check',
            check_cols=['name', 'email', 'address']
        )
    }}

    SELECT * FROM {{ref('customers')}}
{% endsnapshot %}
