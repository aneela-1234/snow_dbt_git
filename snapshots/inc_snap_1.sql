{% snapshot inc_snap_1 %}
    {{
        config(
            unique_key='id',
            strategy='check',
            check_cols=['city'],
            invalidate_hard_deletes=False
        )
    }}
    select * from {{ source('abc', 'CUSTD') }}
 {% endsnapshot %}