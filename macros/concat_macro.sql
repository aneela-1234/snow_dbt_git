{% macro concat_macro(f, L) %}
    {{ f }} || '-' || {{ L }}
{% endmacro %}
