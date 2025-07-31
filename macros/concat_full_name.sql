{% macro concat_name_macro(FIRST_NAME,MIDDLE_NAME,LAST_NAME) %}
    initcap({{FIRST_NAME}}||' '||{{MIDDLE_NAME}}||' '||{{LAST_NAME}}) 
{% endmacro %}
