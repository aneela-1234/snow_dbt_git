{% macro copy_table_dbt_snowflake(args) %}
    {% set copydbttosnow %}
        COPY INTO CTEPL.HPN.COURSE_DETAILS
        FROM @CTEPL.HPN.STAGE_COURSE_DETAILS_DBT
        FILES = ('Course_Deatils.csv')
        FILE_FORMAT = (TYPE = 'CSV' ERROR_ON_COLUMN_COUNT_MISMATCH = FALSE)
        ON_ERROR = 'CONTINUE';
    {% endset %}
    {% do run_query(copydbttosnow) %}
{% endmacro %}

