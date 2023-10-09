
  
    

        create or replace transient table INVX_DATABASE.CLEANED_DATA.logistics_dbt
         as
        (-- configuring data type to table



with source_data as (
SELECT
    "DELIVERY DATE" AS VEH_DELIVERY_DATA_DTC,
    "ETA" AS EXPECTED_TIME_ARRIVAL,
    "MONTH/YEAR" AS VEHICLE_PROCURED_MONTH,
    "CONSIGNMENT" AS CONSIGNMENT,
    "PLATFORM" AS PLATFORM_VEH_MOVING_TO,
    "MOVEMENT TYPE" AS VEH_MOVEMENT_TYEP,
    "PICK-UP LOCATION" AS VEHICLE_PICKUP_LOCATION,
    "DROP LOCATION" AS VEHICLE_DROP_LOCATION,
    "REG #" AS REGISTRATION_NUMBER,
    -- "MODEL" AS MODEL,
    -- "CHASSIS NUMBER" AS VEHICLE_CHASIS_NUMBER,
    -- "ENGINE NUMBER" AS VEHICLE_ENGINE_NUMBER,
    "KEY AVAILABILITY" AS VEH_KEY_AVAILABITY,
    "PARKING CHARGES" AS PARKING_CHARGES,
    "TRUCK COST/PETROL COST" AS VEHICLE_MOVEMENT_COST,
    "LABOUR COST" AS LABOUR_COST,
    "OVERALL COST FOR TRANSPORTATION" AS TOTAL_TRANSPORTATION_COST,
    "PER VEHICLE COST" AS TRANSPORTATION_COST_PER_VEHICLE,
    "TASK MASTER" AS VEHICLE_TASK_MASTER,
    "CURRENT STATUS" AS VEHICLE_REFURBISHMENT_STATUS,
    "LOCATION" AS VEHICLE_REGISTERED_STATE,
    "SORTING DECISION" AS VEHICLE_TO_RETAIL_OR_WHOLESALE

    FROM RAW_DATA.LOGISTICS
)

-- storing data to desination
SELECT * FROM source_data
        );
      
  