-- Use the `ref` function to select from other models

select *
from AIRBYTE_DATABASE.AIRBYTE_SCHEMA.my_first_dbt_model
where id = 1