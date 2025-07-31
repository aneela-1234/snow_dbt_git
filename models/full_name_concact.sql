select
    FIRST_NAME,MIDDLE_NAME,LAST_NAME,{{ concat_name_macro('FIRST_NAME', 'MIDDLE_NAME', 'LAST_NAME') }} 
from EMP_DET
