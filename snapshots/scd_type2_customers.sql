{% snapshot scd_type2_customers %}
    {{
        config(
            target_schema='snapshots',
            unique_key='customer_id',
            strategy='timestamp',
            updated_at='updated_at'
        )
    }}

    SELECT * FROM PROD.DEV.customers
{% endsnapshot %}
