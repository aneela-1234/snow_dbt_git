{% macro remove_special_chars(column_name) %}
    REGEXP_REPLACE({{ column_name }}, '[^a-zA-Z0-9 ]', '')
{% endmacro %}
