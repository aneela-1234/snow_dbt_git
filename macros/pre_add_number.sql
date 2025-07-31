{% macro pre_add_number(phone_number) %}
    '+91-' || {{ phone_number }} AS phone_with_country_code
{% endmacro %}
