{% macro remove_special_char(g) %}
        regexp_replace({{g}},'[^a-zA-Z0-9]','')
{% endmacro %}