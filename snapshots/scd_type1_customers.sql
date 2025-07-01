{% snapshot scd_type1_customers %}
    {{
        config(
            target_schema='snapshots',
            unique_key='customer_id',
            strategy='check',
            check_cols=['name', 'email', 'address']
        )
    }}

    SELECT * FROM PROD.DEV.customers
{% endsnapshot %}
