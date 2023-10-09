/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/


-- WITH deduplicated_data AS (
--  SELECT
--  "REG.NO" AS REGISTRATION_NUMBER,
--  "MAKE" AS BRAND,
--  "MODEL" AS VARIANT,
--  ROW_NUMBER() OVER (PARTITION BY REGISTRATION_NUMBER, BRAND, VARIANT) AS row_num
--  FROM AIRBYTE_SCHEMA.CONFIRMATIONS
--  -- You can include any additional transformations here
-- )
WITH source_data AS (
  SELECT
    "REG.NO" AS Registration_number,
    "MAKE" AS BRAND,
    "MODEL" AS MODEL
  FROM AIRBYTE_SCHEMA.CONFIRMATIONS

)
SELECT *
FROM source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null