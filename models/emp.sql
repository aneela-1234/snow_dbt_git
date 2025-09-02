select * from  {{ source('emp_var', 'EMP') }}
where EADDR='KNL'